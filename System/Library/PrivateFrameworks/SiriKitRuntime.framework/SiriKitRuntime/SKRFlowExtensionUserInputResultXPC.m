@interface SKRFlowExtensionUserInputResultXPC
- (SKRFlowExtensionUserInputResultXPC)init;
- (void)encodeWithCoder:(id)a3;
@end

@implementation SKRFlowExtensionUserInputResultXPC

- (void)encodeWithCoder:(id)a3
{
  v4 = a3;
  v5 = self;
  FlowExtensionUserInputResultXPC.encode(with:)(v4);
}

- (SKRFlowExtensionUserInputResultXPC)init
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

@end