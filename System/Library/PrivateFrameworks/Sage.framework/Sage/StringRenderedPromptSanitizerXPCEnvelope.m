@interface StringRenderedPromptSanitizerXPCEnvelope
- (void)encodeWithCoder:(id)a3;
@end

@implementation StringRenderedPromptSanitizerXPCEnvelope

- (void)encodeWithCoder:(id)a3
{
  v4 = a3;
  v5 = self;
  StringRenderedPromptSanitizerXPCEnvelope.encode(with:)(v4);
}

@end