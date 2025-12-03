@interface TemplateXPCEnvelope
- (void)encodeWithCoder:(id)coder;
@end

@implementation TemplateXPCEnvelope

- (void)encodeWithCoder:(id)coder
{
  coderCopy = coder;
  selfCopy = self;
  TemplateXPCEnvelope.encode(with:)(coderCopy);
}

@end