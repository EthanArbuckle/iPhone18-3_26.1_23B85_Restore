@interface SamplingParametersXPCEnvelope
- (void)encodeWithCoder:(id)coder;
@end

@implementation SamplingParametersXPCEnvelope

- (void)encodeWithCoder:(id)coder
{
  coderCopy = coder;
  selfCopy = self;
  SamplingParametersXPCEnvelope.encode(with:)(coderCopy);
}

@end