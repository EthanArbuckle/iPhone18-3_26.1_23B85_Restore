@interface SKRSessionConfigurationXPC
- (SKRSessionConfigurationXPC)init;
- (void)encodeWithCoder:(id)coder;
@end

@implementation SKRSessionConfigurationXPC

- (void)encodeWithCoder:(id)coder
{
  coderCopy = coder;
  selfCopy = self;
  SessionConfigurationXPC.encode(with:)(coderCopy);
}

- (SKRSessionConfigurationXPC)init
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

@end