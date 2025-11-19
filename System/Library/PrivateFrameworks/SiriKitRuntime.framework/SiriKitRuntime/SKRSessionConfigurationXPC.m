@interface SKRSessionConfigurationXPC
- (SKRSessionConfigurationXPC)init;
- (void)encodeWithCoder:(id)a3;
@end

@implementation SKRSessionConfigurationXPC

- (void)encodeWithCoder:(id)a3
{
  v4 = a3;
  v5 = self;
  SessionConfigurationXPC.encode(with:)(v4);
}

- (SKRSessionConfigurationXPC)init
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

@end