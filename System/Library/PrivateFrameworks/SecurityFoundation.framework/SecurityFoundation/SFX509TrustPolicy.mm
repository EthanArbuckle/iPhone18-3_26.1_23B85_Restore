@interface SFX509TrustPolicy
- (SFX509TrustPolicy)init;
- (SFX509TrustPolicy)initWithCoder:(id)coder;
@end

@implementation SFX509TrustPolicy

- (SFX509TrustPolicy)init
{
  v3.receiver = self;
  v3.super_class = SFX509TrustPolicy;
  return [(SFX509TrustPolicy *)&v3 init];
}

- (SFX509TrustPolicy)initWithCoder:(id)coder
{
  v4.receiver = self;
  v4.super_class = SFX509TrustPolicy;
  return [(SFX509TrustPolicy *)&v4 init];
}

@end