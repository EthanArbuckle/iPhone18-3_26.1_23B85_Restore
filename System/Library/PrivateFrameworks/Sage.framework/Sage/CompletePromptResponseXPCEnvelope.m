@interface CompletePromptResponseXPCEnvelope
- (void)encodeWithCoder:(id)a3;
@end

@implementation CompletePromptResponseXPCEnvelope

- (void)encodeWithCoder:(id)a3
{
  v4 = a3;
  v5 = self;
  CompletePromptResponseXPCEnvelope.encode(with:)(v4);
}

@end