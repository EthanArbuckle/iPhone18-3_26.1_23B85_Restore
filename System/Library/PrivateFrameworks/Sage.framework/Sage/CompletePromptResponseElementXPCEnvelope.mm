@interface CompletePromptResponseElementXPCEnvelope
- (void)encodeWithCoder:(id)coder;
@end

@implementation CompletePromptResponseElementXPCEnvelope

- (void)encodeWithCoder:(id)coder
{
  coderCopy = coder;
  selfCopy = self;
  CompletePromptResponseElementXPCEnvelope.encode(with:)(coderCopy);
}

@end