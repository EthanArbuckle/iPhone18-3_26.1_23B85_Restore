@interface SessionConfigurationXPCEnvelope
- (void)encodeWithCoder:(id)coder;
@end

@implementation SessionConfigurationXPCEnvelope

- (void)encodeWithCoder:(id)coder
{
  coderCopy = coder;
  selfCopy = self;
  SessionConfigurationXPCEnvelope.encode(with:)(coderCopy);
}

@end