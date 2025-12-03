@interface _UIAssertionBase
- (NSString)description;
- (_UIAssertionController)parentController;
- (id)_initWithType:(unint64_t)type initialState:(BOOL)state reason:(id)reason requiresExplicitInvalidation:(BOOL)invalidation;
- (void)_invalidate;
- (void)dealloc;
@end

@implementation _UIAssertionBase

- (void)dealloc
{
  if (!self->_invalidated)
  {
    if (self->_requiresExplicitInvalidation)
    {
      WeakRetained = [MEMORY[0x1E696AAA8] currentHandler];
      [WeakRetained handleFailureInMethod:a2 object:self file:@"_UIAssertionController.m" lineNumber:70 description:{@"Assertion deallocated before it was invalidated. %@", self}];
    }

    else
    {
      WeakRetained = objc_loadWeakRetained(&self->_parentController);
      [WeakRetained _endTrackingAssertion:self];
    }
  }

  v5.receiver = self;
  v5.super_class = _UIAssertionBase;
  [(_UIAssertionBase *)&v5 dealloc];
}

- (id)_initWithType:(unint64_t)type initialState:(BOOL)state reason:(id)reason requiresExplicitInvalidation:(BOOL)invalidation
{
  reasonCopy = reason;
  v16.receiver = self;
  v16.super_class = _UIAssertionBase;
  v11 = [(_UIAssertionBase *)&v16 init];
  v12 = v11;
  if (v11)
  {
    v11->_type = type;
    v13 = [reasonCopy copy];
    reason = v12->_reason;
    v12->_reason = v13;

    v12->_initialState = state;
    v12->_requiresExplicitInvalidation = invalidation;
  }

  return v12;
}

- (void)_invalidate
{
  if (self->_invalidated)
  {
    currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
    [currentHandler handleFailureInMethod:a2 object:self file:@"_UIAssertionController.m" lineNumber:56 description:{@"Tried to invalidate an assertion that is already invalid. %@", self}];
  }

  self->_invalidated = 1;
  WeakRetained = objc_loadWeakRetained(&self->_parentController);
  [WeakRetained _endTrackingAssertion:self];
}

- (NSString)description
{
  v3 = MEMORY[0x1E696AEC0];
  v4 = objc_opt_class();
  v5 = NSStringFromClass(v4);
  v6 = [v3 stringWithFormat:@"<%@:%p %lux %@>", v5, self, self->_type, self->_reason];

  return v6;
}

- (_UIAssertionController)parentController
{
  WeakRetained = objc_loadWeakRetained(&self->_parentController);

  return WeakRetained;
}

@end