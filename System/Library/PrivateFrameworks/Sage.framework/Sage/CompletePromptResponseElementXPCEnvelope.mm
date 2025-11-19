@interface CompletePromptResponseElementXPCEnvelope
- (void)encodeWithCoder:(id)a3;
@end

@implementation CompletePromptResponseElementXPCEnvelope

- (void)encodeWithCoder:(id)a3
{
  v4 = a3;
  v5 = self;
  CompletePromptResponseElementXPCEnvelope.encode(with:)(v4);
}

@end