@interface ToolChoiceXPCEnvelope
- (void)encodeWithCoder:(id)coder;
@end

@implementation ToolChoiceXPCEnvelope

- (void)encodeWithCoder:(id)coder
{
  coderCopy = coder;
  selfCopy = self;
  ToolChoiceXPCEnvelope.encode(with:)(coderCopy);
}

@end