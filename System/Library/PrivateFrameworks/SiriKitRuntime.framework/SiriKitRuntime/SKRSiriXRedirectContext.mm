@interface SKRSiriXRedirectContext
- (SKRSiriXRedirectContext)init;
- (void)encodeWithCoder:(id)coder;
@end

@implementation SKRSiriXRedirectContext

- (void)encodeWithCoder:(id)coder
{
  v4 = *(&self->super.isa + OBJC_IVAR___SKRSiriXRedirectContext_reason);
  coderCopy = coder;
  selfCopy = self;
  v6 = MEMORY[0x1E12A1410](0x6E6F73616572, 0xE600000000000000);
  [coderCopy encodeObject:v4 forKey:v6];
}

- (SKRSiriXRedirectContext)init
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

@end