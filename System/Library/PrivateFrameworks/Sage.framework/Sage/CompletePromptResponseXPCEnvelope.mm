@interface CompletePromptResponseXPCEnvelope
- (void)encodeWithCoder:(id)coder;
@end

@implementation CompletePromptResponseXPCEnvelope

- (void)encodeWithCoder:(id)coder
{
  coderCopy = coder;
  selfCopy = self;
  CompletePromptResponseXPCEnvelope.encode(with:)(coderCopy);
}

@end