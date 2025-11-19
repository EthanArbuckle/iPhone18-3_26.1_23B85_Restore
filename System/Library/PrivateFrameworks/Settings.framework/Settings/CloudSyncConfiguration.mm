@interface CloudSyncConfiguration
- (_TtC8Settings22CloudSyncConfiguration)init;
- (_TtC8Settings22CloudSyncConfiguration)initWithCoder:(id)a3;
- (void)encodeWithCoder:(id)a3;
@end

@implementation CloudSyncConfiguration

- (void)encodeWithCoder:(id)a3
{
  v4 = a3;
  v5 = self;
  sub_21CE0DB74(v4);
}

- (_TtC8Settings22CloudSyncConfiguration)initWithCoder:(id)a3
{
  v3 = a3;
  v4 = sub_21CE0E644(v3);

  return v4;
}

- (_TtC8Settings22CloudSyncConfiguration)init
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

@end