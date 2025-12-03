@interface PKAuthenticatorPreflightContext
- (BOOL)isInvalidated;
- (id)context;
- (id)initForLocationBasedAuthorization:(BOOL)authorization;
- (void)_clearIfPossibleUnsafe;
- (void)dealloc;
- (void)decrementValidReferenceCount;
- (void)incrementValidReferenceCount;
- (void)invalidate;
@end

@implementation PKAuthenticatorPreflightContext

- (id)initForLocationBasedAuthorization:(BOOL)authorization
{
  authorizationCopy = authorization;
  v9.receiver = self;
  v9.super_class = PKAuthenticatorPreflightContext;
  v4 = [(PKAuthenticatorPreflightContext *)&v9 init];
  v5 = v4;
  if (v4)
  {
    v4->_lock._os_unfair_lock_opaque = 0;
    v6 = objc_alloc_init(MEMORY[0x277CD4790]);
    context = v5->_context;
    v5->_context = v6;

    if (authorizationCopy)
    {
      [(LAContext *)v5->_context setOptionDTO:MEMORY[0x277CBEC38]];
    }

    v5->_validReferenceCount = 0;
    v5->_useLocationBasedAuthorization = authorizationCopy;
  }

  return v5;
}

- (void)dealloc
{
  [(LAContext *)self->_context invalidate];
  v3.receiver = self;
  v3.super_class = PKAuthenticatorPreflightContext;
  [(PKAuthenticatorPreflightContext *)&v3 dealloc];
}

- (id)context
{
  os_unfair_lock_lock(&self->_lock);
  v3 = self->_context;
  os_unfair_lock_unlock(&self->_lock);

  return v3;
}

- (void)incrementValidReferenceCount
{
  os_unfair_lock_lock(&self->_lock);
  if (self->_invalidated)
  {
    __break(1u);
  }

  else
  {
    ++self->_validReferenceCount;

    os_unfair_lock_unlock(&self->_lock);
  }
}

- (void)decrementValidReferenceCount
{
  os_unfair_lock_lock(&self->_lock);
  validReferenceCount = self->_validReferenceCount;
  if (validReferenceCount)
  {
    self->_validReferenceCount = validReferenceCount - 1;
    [(PKAuthenticatorPreflightContext *)self _clearIfPossibleUnsafe];

    os_unfair_lock_unlock(&self->_lock);
  }

  else
  {
    __break(1u);
  }
}

- (void)invalidate
{
  os_unfair_lock_lock(&self->_lock);
  self->_invalidated = 1;
  [(PKAuthenticatorPreflightContext *)self _clearIfPossibleUnsafe];

  os_unfair_lock_unlock(&self->_lock);
}

- (BOOL)isInvalidated
{
  os_unfair_lock_lock(&self->_lock);
  invalidated = self->_invalidated;
  os_unfair_lock_unlock(&self->_lock);
  return invalidated;
}

- (void)_clearIfPossibleUnsafe
{
  if (self->_invalidated && !self->_validReferenceCount)
  {
    [(LAContext *)self->_context invalidate];
    context = self->_context;
    self->_context = 0;
  }
}

@end