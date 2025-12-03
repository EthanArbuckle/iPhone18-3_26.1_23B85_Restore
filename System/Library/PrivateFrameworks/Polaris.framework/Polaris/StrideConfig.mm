@interface StrideConfig
- (_TtC7Polaris12StrideConfig)init;
- (_TtC7Polaris12StrideConfig)initWithGraphName:(id)name sessionName:(id)sessionName stride:(id)stride;
@end

@implementation StrideConfig

- (_TtC7Polaris12StrideConfig)initWithGraphName:(id)name sessionName:(id)sessionName stride:(id)stride
{
  v9.receiver = self;
  v9.super_class = type metadata accessor for StrideConfig();
  return [(PSCStrideConfig *)&v9 initWithGraphName:name sessionName:sessionName stride:stride];
}

- (_TtC7Polaris12StrideConfig)init
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

@end