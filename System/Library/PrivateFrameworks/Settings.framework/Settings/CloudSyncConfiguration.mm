@interface CloudSyncConfiguration
- (_TtC8Settings22CloudSyncConfiguration)init;
- (_TtC8Settings22CloudSyncConfiguration)initWithCoder:(id)coder;
- (void)encodeWithCoder:(id)coder;
@end

@implementation CloudSyncConfiguration

- (void)encodeWithCoder:(id)coder
{
  coderCopy = coder;
  selfCopy = self;
  sub_21CE0DB74(coderCopy);
}

- (_TtC8Settings22CloudSyncConfiguration)initWithCoder:(id)coder
{
  coderCopy = coder;
  v4 = sub_21CE0E644(coderCopy);

  return v4;
}

- (_TtC8Settings22CloudSyncConfiguration)init
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

@end