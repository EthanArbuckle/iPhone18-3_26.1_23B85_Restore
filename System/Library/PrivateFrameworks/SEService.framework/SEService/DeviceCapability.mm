@interface DeviceCapability
- (_TtC9SEService16DeviceCapability)init;
- (_TtC9SEService16DeviceCapability)initWithCoder:(id)coder;
- (void)encodeWithCoder:(id)coder;
@end

@implementation DeviceCapability

- (void)encodeWithCoder:(id)coder
{
  v4 = *(&self->super.isa + OBJC_IVAR____TtC9SEService16DeviceCapability_supportsUWB);
  coderCopy = coder;
  selfCopy = self;
  v6 = sub_1C7C7D2E4();
  [coderCopy encodeBool:v4 forKey:v6];
}

- (_TtC9SEService16DeviceCapability)initWithCoder:(id)coder
{
  coderCopy = coder;
  v5 = sub_1C7C7D2E4();
  decodeBoolForKey_ = [coderCopy decodeBoolForKey_];

  *(&self->super.isa + OBJC_IVAR____TtC9SEService16DeviceCapability_supportsUWB) = decodeBoolForKey_;
  v9.receiver = self;
  v9.super_class = type metadata accessor for DeviceCapability();
  v7 = [(DeviceCapability *)&v9 init];

  return v7;
}

- (_TtC9SEService16DeviceCapability)init
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

@end