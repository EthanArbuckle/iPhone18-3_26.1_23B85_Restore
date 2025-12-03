@interface AssistantConfiguration
- (NSString)description;
- (_TtC9SiriSetup22AssistantConfiguration)init;
- (_TtC9SiriSetup22AssistantConfiguration)initWithCoder:(id)coder;
- (void)encodeWithCoder:(id)coder;
@end

@implementation AssistantConfiguration

- (NSString)description
{
  selfCopy = self;
  sub_26902C320();

  v3 = sub_269057944();

  return v3;
}

- (void)encodeWithCoder:(id)coder
{
  coderCopy = coder;
  selfCopy = self;
  sub_26902D950(coderCopy);
}

- (_TtC9SiriSetup22AssistantConfiguration)initWithCoder:(id)coder
{
  coderCopy = coder;
  v4 = sub_26902E2A4(coderCopy);

  return v4;
}

- (_TtC9SiriSetup22AssistantConfiguration)init
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

@end