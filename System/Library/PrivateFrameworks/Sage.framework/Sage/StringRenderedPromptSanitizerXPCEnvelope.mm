@interface StringRenderedPromptSanitizerXPCEnvelope
- (void)encodeWithCoder:(id)coder;
@end

@implementation StringRenderedPromptSanitizerXPCEnvelope

- (void)encodeWithCoder:(id)coder
{
  coderCopy = coder;
  selfCopy = self;
  StringRenderedPromptSanitizerXPCEnvelope.encode(with:)(coderCopy);
}

@end