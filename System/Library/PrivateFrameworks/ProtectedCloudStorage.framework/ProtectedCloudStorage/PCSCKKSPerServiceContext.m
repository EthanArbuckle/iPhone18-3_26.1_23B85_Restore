@interface PCSCKKSPerServiceContext
- (PCSCKKSPerServiceContext)init;
- (void)dealloc;
- (void)resetIdentity;
- (void)setCurrentIdentity:(_PCSIdentityData *)a3 persistentReference:(id)a4;
@end

@implementation PCSCKKSPerServiceContext

- (PCSCKKSPerServiceContext)init
{
  v6.receiver = self;
  v6.super_class = PCSCKKSPerServiceContext;
  v2 = [(PCSCKKSPerServiceContext *)&v6 init];
  v3 = v2;
  if (v2)
  {
    v4 = v2;
  }

  return v3;
}

- (void)resetIdentity
{
  currentIdentity = self->_currentIdentity;
  if (currentIdentity)
  {
    self->_currentIdentity = 0;
    CFRelease(currentIdentity);
  }

  rollIdentity = self->_rollIdentity;
  if (rollIdentity)
  {
    self->_rollIdentity = 0;
    CFRelease(rollIdentity);
  }

  currentItemReference = self->_currentItemReference;
  self->_currentItemReference = 0;

  existingItemSHA1 = self->_existingItemSHA1;
  self->_existingItemSHA1 = 0;

  existingItemReference = self->_existingItemReference;
  self->_existingItemReference = 0;

  rollItemSHA1 = self->_rollItemSHA1;
  self->_rollItemSHA1 = 0;

  rollItemReference = self->_rollItemReference;
  self->_rollItemReference = 0;
}

- (void)setCurrentIdentity:(_PCSIdentityData *)a3 persistentReference:(id)a4
{
  v6 = a4;
  currentIdentity = self->_currentIdentity;
  if (currentIdentity)
  {
    self->_currentIdentity = 0;
    CFRelease(currentIdentity);
  }

  if (a3)
  {
    self->_currentIdentity = CFRetain(a3);
  }

  currentItemReference = self->_currentItemReference;
  self->_currentItemReference = v6;
}

- (void)dealloc
{
  [(PCSCKKSPerServiceContext *)self resetIdentity];
  rollAttributes = self->_rollAttributes;
  if (rollAttributes)
  {
    CFRelease(rollAttributes);
  }

  v4.receiver = self;
  v4.super_class = PCSCKKSPerServiceContext;
  [(PCSCKKSPerServiceContext *)&v4 dealloc];
}

@end