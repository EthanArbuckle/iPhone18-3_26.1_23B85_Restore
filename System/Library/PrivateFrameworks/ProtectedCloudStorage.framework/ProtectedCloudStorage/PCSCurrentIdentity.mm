@interface PCSCurrentIdentity
- (PCSCurrentIdentity)initWithIdentity:(_PCSIdentityData *)identity currentItemPointerModificationTime:(id)time;
- (void)dealloc;
@end

@implementation PCSCurrentIdentity

- (void)dealloc
{
  identity = self->_identity;
  if (identity)
  {
    self->_identity = 0;
    CFRelease(identity);
  }

  v4.receiver = self;
  v4.super_class = PCSCurrentIdentity;
  [(PCSCurrentIdentity *)&v4 dealloc];
}

- (PCSCurrentIdentity)initWithIdentity:(_PCSIdentityData *)identity currentItemPointerModificationTime:(id)time
{
  timeCopy = time;
  v10.receiver = self;
  v10.super_class = PCSCurrentIdentity;
  v7 = [(PCSCurrentIdentity *)&v10 init];
  if (v7)
  {
    v7->_identity = CFRetain(identity);
    [(PCSCurrentIdentity *)v7 setCurrentItemPointerModificationTime:timeCopy];
    v8 = v7;
  }

  return v7;
}

@end