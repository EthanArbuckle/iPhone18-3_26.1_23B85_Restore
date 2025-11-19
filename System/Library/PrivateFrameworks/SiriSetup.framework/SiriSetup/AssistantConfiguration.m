@interface AssistantConfiguration
- (NSString)description;
- (_TtC9SiriSetup22AssistantConfiguration)init;
- (_TtC9SiriSetup22AssistantConfiguration)initWithCoder:(id)a3;
- (void)encodeWithCoder:(id)a3;
@end

@implementation AssistantConfiguration

- (NSString)description
{
  v2 = self;
  sub_26902C320();

  v3 = sub_269057944();

  return v3;
}

- (void)encodeWithCoder:(id)a3
{
  v4 = a3;
  v5 = self;
  sub_26902D950(v4);
}

- (_TtC9SiriSetup22AssistantConfiguration)initWithCoder:(id)a3
{
  v3 = a3;
  v4 = sub_26902E2A4(v3);

  return v4;
}

- (_TtC9SiriSetup22AssistantConfiguration)init
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

@end