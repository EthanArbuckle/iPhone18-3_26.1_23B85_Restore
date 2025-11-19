@interface SessionConfigurationXPCEnvelope
- (void)encodeWithCoder:(id)a3;
@end

@implementation SessionConfigurationXPCEnvelope

- (void)encodeWithCoder:(id)a3
{
  v4 = a3;
  v5 = self;
  SessionConfigurationXPCEnvelope.encode(with:)(v4);
}

@end