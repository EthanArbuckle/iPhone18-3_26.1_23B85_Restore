@interface SamplingParametersXPCEnvelope
- (void)encodeWithCoder:(id)a3;
@end

@implementation SamplingParametersXPCEnvelope

- (void)encodeWithCoder:(id)a3
{
  v4 = a3;
  v5 = self;
  SamplingParametersXPCEnvelope.encode(with:)(v4);
}

@end