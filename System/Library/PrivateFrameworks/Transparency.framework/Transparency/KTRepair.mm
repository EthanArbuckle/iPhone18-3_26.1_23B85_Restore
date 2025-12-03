@interface KTRepair
+ (id)hardResetRepair;
- (_TtC12Transparency8KTRepair)init;
- (void)encodeWithCoder:(id)coder;
@end

@implementation KTRepair

- (void)encodeWithCoder:(id)coder
{
  coderCopy = coder;
  selfCopy = self;
  KTRepair.encode(with:)(coderCopy);
}

+ (id)hardResetRepair
{
  v2 = _s12Transparency8KTRepairC15hardResetRepairACyFZ_0();

  return v2;
}

- (_TtC12Transparency8KTRepair)init
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

@end