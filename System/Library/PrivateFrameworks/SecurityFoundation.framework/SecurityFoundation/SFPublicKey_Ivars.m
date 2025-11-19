@interface SFPublicKey_Ivars
- (void)dealloc;
@end

@implementation SFPublicKey_Ivars

- (void)dealloc
{
  secKey = self->secKey;
  if (secKey)
  {
    CFRelease(secKey);
  }

  v4.receiver = self;
  v4.super_class = SFPublicKey_Ivars;
  [(SFPublicKey_Ivars *)&v4 dealloc];
}

@end