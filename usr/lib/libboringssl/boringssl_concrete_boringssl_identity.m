@interface boringssl_concrete_boringssl_identity
- (void)dealloc;
@end

@implementation boringssl_concrete_boringssl_identity

- (void)dealloc
{
  private_key = self->private_key;
  if (private_key)
  {
    CFRelease(private_key);
  }

  self->private_key = 0;
  v4.receiver = self;
  v4.super_class = boringssl_concrete_boringssl_identity;
  [(boringssl_concrete_boringssl_identity *)&v4 dealloc];
}

@end