@interface SPParameterizedTool
- (_TtC25ProactivePredictionClient19SPParameterizedTool)init;
- (_TtC25ProactivePredictionClient19SPParameterizedTool)initWithToolInvocationData:(id)a3 toolInvocationSummaryData:(id)a4 parameterizedTitle:(id)a5;
@end

@implementation SPParameterizedTool

- (_TtC25ProactivePredictionClient19SPParameterizedTool)initWithToolInvocationData:(id)a3 toolInvocationSummaryData:(id)a4 parameterizedTitle:(id)a5
{
  *(&self->super.isa + OBJC_IVAR____TtC25ProactivePredictionClient19SPParameterizedTool_toolInvocationData) = a3;
  *(&self->super.isa + OBJC_IVAR____TtC25ProactivePredictionClient19SPParameterizedTool_toolInvocationSummaryData) = a4;
  *(&self->super.isa + OBJC_IVAR____TtC25ProactivePredictionClient19SPParameterizedTool_parameterizedTitle) = a5;
  v12.receiver = self;
  v12.super_class = type metadata accessor for SPParameterizedTool();
  v8 = a3;
  v9 = a4;
  v10 = a5;
  return [(SPParameterizedTool *)&v12 init];
}

- (_TtC25ProactivePredictionClient19SPParameterizedTool)init
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

@end