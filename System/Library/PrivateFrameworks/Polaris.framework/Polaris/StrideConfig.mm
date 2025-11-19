@interface StrideConfig
- (_TtC7Polaris12StrideConfig)init;
- (_TtC7Polaris12StrideConfig)initWithGraphName:(id)a3 sessionName:(id)a4 stride:(id)a5;
@end

@implementation StrideConfig

- (_TtC7Polaris12StrideConfig)initWithGraphName:(id)a3 sessionName:(id)a4 stride:(id)a5
{
  v9.receiver = self;
  v9.super_class = type metadata accessor for StrideConfig();
  return [(PSCStrideConfig *)&v9 initWithGraphName:a3 sessionName:a4 stride:a5];
}

- (_TtC7Polaris12StrideConfig)init
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

@end