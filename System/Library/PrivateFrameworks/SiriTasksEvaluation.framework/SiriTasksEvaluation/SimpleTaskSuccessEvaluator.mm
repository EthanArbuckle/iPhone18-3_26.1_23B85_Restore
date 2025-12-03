@interface SimpleTaskSuccessEvaluator
- (_TtC19SiriTasksEvaluation26SimpleTaskSuccessEvaluator)init;
- (id)evaluateWithPseEvents:(id)events;
@end

@implementation SimpleTaskSuccessEvaluator

- (id)evaluateWithPseEvents:(id)events
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803027B0, &qword_26926C030);
  v4 = sub_26926B310();
  selfCopy = self;
  sub_2692666A0(v4);
  v7 = v6;

  return v7;
}

- (_TtC19SiriTasksEvaluation26SimpleTaskSuccessEvaluator)init
{
  *(&self->super.isa + OBJC_IVAR____TtC19SiriTasksEvaluation26SimpleTaskSuccessEvaluator_minStartCallDurationInMs) = 5000;
  v3.receiver = self;
  v3.super_class = type metadata accessor for SimpleTaskSuccessEvaluator();
  return [(SimpleTaskSuccessEvaluator *)&v3 init];
}

@end