@interface DeviceCapability
- (_TtC9SEService16DeviceCapability)init;
- (_TtC9SEService16DeviceCapability)initWithCoder:(id)a3;
- (void)encodeWithCoder:(id)a3;
@end

@implementation DeviceCapability

- (void)encodeWithCoder:(id)a3
{
  v4 = *(&self->super.isa + OBJC_IVAR____TtC9SEService16DeviceCapability_supportsUWB);
  v5 = a3;
  v7 = self;
  v6 = sub_1C7C7D2E4();
  [v5 encodeBool:v4 forKey:v6];
}

- (_TtC9SEService16DeviceCapability)initWithCoder:(id)a3
{
  v4 = a3;
  v5 = sub_1C7C7D2E4();
  v6 = [v4 decodeBoolForKey_];

  *(&self->super.isa + OBJC_IVAR____TtC9SEService16DeviceCapability_supportsUWB) = v6;
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