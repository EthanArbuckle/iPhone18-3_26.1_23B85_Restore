@interface SPParameterizedTool
- (_TtC25ProactivePredictionClient19SPParameterizedTool)init;
- (_TtC25ProactivePredictionClient19SPParameterizedTool)initWithToolInvocationData:(id)data toolInvocationSummaryData:(id)summaryData parameterizedTitle:(id)title;
@end

@implementation SPParameterizedTool

- (_TtC25ProactivePredictionClient19SPParameterizedTool)initWithToolInvocationData:(id)data toolInvocationSummaryData:(id)summaryData parameterizedTitle:(id)title
{
  *(&self->super.isa + OBJC_IVAR____TtC25ProactivePredictionClient19SPParameterizedTool_toolInvocationData) = data;
  *(&self->super.isa + OBJC_IVAR____TtC25ProactivePredictionClient19SPParameterizedTool_toolInvocationSummaryData) = summaryData;
  *(&self->super.isa + OBJC_IVAR____TtC25ProactivePredictionClient19SPParameterizedTool_parameterizedTitle) = title;
  v12.receiver = self;
  v12.super_class = type metadata accessor for SPParameterizedTool();
  dataCopy = data;
  summaryDataCopy = summaryData;
  titleCopy = title;
  return [(SPParameterizedTool *)&v12 init];
}

- (_TtC25ProactivePredictionClient19SPParameterizedTool)init
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

@end