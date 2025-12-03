@interface ToolTypeXPCEnvelope
- (void)encodeWithCoder:(id)coder;
@end

@implementation ToolTypeXPCEnvelope

- (void)encodeWithCoder:(id)coder
{
  coderCopy = coder;
  selfCopy = self;
  ToolTypeXPCEnvelope.encode(with:)(coderCopy);
}

@end