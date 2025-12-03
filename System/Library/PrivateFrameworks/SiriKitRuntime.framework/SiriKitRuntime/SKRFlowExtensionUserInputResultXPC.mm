@interface SKRFlowExtensionUserInputResultXPC
- (SKRFlowExtensionUserInputResultXPC)init;
- (void)encodeWithCoder:(id)coder;
@end

@implementation SKRFlowExtensionUserInputResultXPC

- (void)encodeWithCoder:(id)coder
{
  coderCopy = coder;
  selfCopy = self;
  FlowExtensionUserInputResultXPC.encode(with:)(coderCopy);
}

- (SKRFlowExtensionUserInputResultXPC)init
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

@end