@interface WOHeartRatePrecisionStartAccumulator
- (BOOL)disabledForSession;
- (WOHeartRatePrecisionStartAccumulator)init;
- (WOHeartRatePrecisionStartAccumulator)initWithHealthStore:(id)store;
- (WOHeartRatePrecisionStartAccumulator)initWithHealthStore:(id)store staleTimeout:(double)timeout delegate:(id)delegate heartRateSupported:(BOOL)supported;
- (void)accumulatorDidStartWithStartDate:(id)date handler:(id)handler;
- (void)accumulatorDidStop;
- (void)setDisabledForSession:(BOOL)session;
- (void)setHeartRateData:(id *)data;
@end

@implementation WOHeartRatePrecisionStartAccumulator

- (void)setHeartRateData:(id *)data
{
  var0 = data->var0;
  var1 = data->var1;
  v6 = self + OBJC_IVAR___WOHeartRatePrecisionStartAccumulator_heartRateData;
  v8 = *&data->var4;
  v9 = *&data->var2;
  swift_beginAccess();
  *v6 = var0;
  *(v6 + 1) = var1;
  *(v6 + 1) = v9;
  *(v6 + 2) = v8;
  selfCopy = self;
  HeartRatePrecisionStartAccumulator.heartRateData.didset();
}

- (BOOL)disabledForSession
{
  v3 = OBJC_IVAR___WOHeartRatePrecisionStartAccumulator_disabledForSession;
  swift_beginAccess();
  return *(&self->super.super.super.isa + v3);
}

- (void)setDisabledForSession:(BOOL)session
{
  sessionCopy = session;
  v5 = type metadata accessor for Date();
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x28223BE20](v5);
  v9 = &v13 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = OBJC_IVAR___WOHeartRatePrecisionStartAccumulator_disabledForSession;
  swift_beginAccess();
  v11 = *(&self->super.super.super.isa + v10);
  *(&self->super.super.super.isa + v10) = sessionCopy;
  if (v11 != sessionCopy)
  {
    selfCopy = self;
    if (sessionCopy)
    {
      HeartRatePrecisionStartAccumulator.stopQuery()();
    }

    else
    {
      Date.init()();
      HeartRatePrecisionStartAccumulator.startQuery(startDate:)();

      (*(v6 + 8))(v9, v5);
    }
  }
}

- (WOHeartRatePrecisionStartAccumulator)initWithHealthStore:(id)store staleTimeout:(double)timeout delegate:(id)delegate heartRateSupported:(BOOL)supported
{
  storeCopy = store;
  swift_unknownObjectRetain();
  v10 = specialized HeartRatePrecisionStartAccumulator.init(healthStore:staleTimeout:delegate:heartRateSupported:)(storeCopy, timeout, delegate, supported);

  swift_unknownObjectRelease();
  return v10;
}

- (void)accumulatorDidStartWithStartDate:(id)date handler:(id)handler
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation4DateVSgMd, &_s10Foundation4DateVSgMR);
  v7 = *(*(v6 - 8) + 64);
  v8 = MEMORY[0x28223BE20](v6 - 8);
  v10 = &v16 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v8);
  v12 = &v16 - v11;
  if (date)
  {
    static Date._unconditionallyBridgeFromObjectiveC(_:)();
    v13 = type metadata accessor for Date();
    (*(*(v13 - 8) + 56))(v12, 0, 1, v13);
  }

  else
  {
    v13 = type metadata accessor for Date();
    (*(*(v13 - 8) + 56))(v12, 1, 1, v13);
  }

  outlined init with copy of Date?(v12, v10);
  type metadata accessor for Date();
  v14 = *(v13 - 8);
  if ((*(v14 + 48))(v10, 1, v13) == 1)
  {
    __break(1u);
  }

  else
  {
    selfCopy = self;
    HeartRatePrecisionStartAccumulator.startQuery(startDate:)();

    outlined destroy of Date?(v12);
    (*(v14 + 8))(v10, v13);
  }
}

- (void)accumulatorDidStop
{
  v3 = OBJC_IVAR___WOHeartRatePrecisionStartAccumulator_staleDataTimer;
  v4 = *(&self->super.super.super.isa + OBJC_IVAR___WOHeartRatePrecisionStartAccumulator_staleDataTimer);
  selfCopy = self;
  [v4 invalidate];
  v5 = *(&self->super.super.super.isa + v3);
  *(&self->super.super.super.isa + v3) = 0;

  HeartRatePrecisionStartAccumulator.stopQuery()();
}

- (WOHeartRatePrecisionStartAccumulator)initWithHealthStore:(id)store
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

- (WOHeartRatePrecisionStartAccumulator)init
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

@end