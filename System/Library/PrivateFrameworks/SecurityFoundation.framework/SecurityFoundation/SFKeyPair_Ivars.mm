@interface SFKeyPair_Ivars
- (void)dealloc;
@end

@implementation SFKeyPair_Ivars

- (void)dealloc
{
  secKey = self->secKey;
  if (secKey)
  {
    CFRelease(secKey);
  }

  v4.receiver = self;
  v4.super_class = SFKeyPair_Ivars;
  [(SFKeyPair_Ivars *)&v4 dealloc];
}

@end