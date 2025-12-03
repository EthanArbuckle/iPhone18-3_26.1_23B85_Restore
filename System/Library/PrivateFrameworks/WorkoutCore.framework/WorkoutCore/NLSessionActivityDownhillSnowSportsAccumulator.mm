@interface NLSessionActivityDownhillSnowSportsAccumulator
- (BOOL)isPaceAvailable;
- (NSDate)distanceEndDate;
- (double)averagePaceInMetersPerSecond;
- (double)descent;
- (double)distance;
- (double)fastestPaceInMetersPerSecond;
- (unint64_t)downhillRunCount;
- (void)accumulatorDidStartWithStartDate:(id)date handler:(id)handler;
- (void)downhillRunDidComplete:(id)complete;
- (void)recoverWithDownhillRunEvents:(NSArray *)events pauseResumeEvents:(NSArray *)resumeEvents healthStore:(HKHealthStore *)store completionHandler:(id)handler;
- (void)setDescent:(double)descent;
- (void)setDistance:(double)distance;
- (void)setDownhillRunCount:(unint64_t)count;
@end

@implementation NLSessionActivityDownhillSnowSportsAccumulator

- (NSDate)distanceEndDate
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation4DateVSgMd, &_s10Foundation4DateVSgMR);
  v4 = *(*(v3 - 8) + 64);
  MEMORY[0x28223BE20](v3 - 8);
  v6 = &v14 - v5;
  v7 = OBJC_IVAR___NLSessionActivityDownhillSnowSportsAccumulator_lastUpdated;
  swift_beginAccess();
  _s10Foundation4DateVSgWOcTm_8(self + v7, v6, &_s10Foundation4DateVSgMd, &_s10Foundation4DateVSgMR);
  v8 = type metadata accessor for Date();
  v9 = *(v8 - 8);
  v10 = (*(v9 + 48))(v6, 1, v8);
  v11 = 0;
  if (v10 != 1)
  {
    isa = Date._bridgeToObjectiveC()().super.isa;
    (*(v9 + 8))(v6, v8);
    v11 = isa;
  }

  return v11;
}

- (double)distance
{
  v3 = OBJC_IVAR___NLSessionActivityDownhillSnowSportsAccumulator_distance;
  swift_beginAccess();
  return *(&self->super.super.isa + v3);
}

- (void)setDistance:(double)distance
{
  v5 = OBJC_IVAR___NLSessionActivityDownhillSnowSportsAccumulator_distance;
  swift_beginAccess();
  *(&self->super.super.isa + v5) = distance;
}

- (double)descent
{
  v3 = OBJC_IVAR___NLSessionActivityDownhillSnowSportsAccumulator_descent;
  swift_beginAccess();
  return *(&self->super.super.isa + v3);
}

- (void)setDescent:(double)descent
{
  v5 = OBJC_IVAR___NLSessionActivityDownhillSnowSportsAccumulator_descent;
  swift_beginAccess();
  *(&self->super.super.isa + v5) = descent;
}

- (unint64_t)downhillRunCount
{
  v3 = OBJC_IVAR___NLSessionActivityDownhillSnowSportsAccumulator_downhillRunCount;
  swift_beginAccess();
  return *(&self->super.super.isa + v3);
}

- (void)setDownhillRunCount:(unint64_t)count
{
  v5 = OBJC_IVAR___NLSessionActivityDownhillSnowSportsAccumulator_downhillRunCount;
  swift_beginAccess();
  *(&self->super.super.isa + v5) = count;
}

- (void)accumulatorDidStartWithStartDate:(id)date handler:(id)handler
{
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation4DateVSgMd, &_s10Foundation4DateVSgMR);
  v8 = *(*(v7 - 8) + 64);
  MEMORY[0x28223BE20](v7 - 8);
  v10 = &v15 - v9;
  v11 = _Block_copy(handler);
  if (date)
  {
    static Date._unconditionallyBridgeFromObjectiveC(_:)();
    v12 = type metadata accessor for Date();
    (*(*(v12 - 8) + 56))(v10, 0, 1, v12);
  }

  else
  {
    v13 = type metadata accessor for Date();
    (*(*(v13 - 8) + 56))(v10, 1, 1, v13);
  }

  if (v11)
  {
    *(swift_allocObject() + 16) = v11;
    v11 = _sIeyB_Ieg_TRTA_7;
  }

  selfCopy = self;
  specialized DownhillSnowSportsAccumulator.accumulatorDidStart(withStart:handler:)();
  outlined consume of (@escaping @callee_guaranteed () -> ())?(v11);

  _sSo8NSObjectCSgWOhTm_16(v10, &_s10Foundation4DateVSgMd, &_s10Foundation4DateVSgMR);
}

- (void)downhillRunDidComplete:(id)complete
{
  completeCopy = complete;
  selfCopy = self;
  DownhillSnowSportsAccumulator.downhillRunDidComplete(_:)(completeCopy);
}

- (void)recoverWithDownhillRunEvents:(NSArray *)events pauseResumeEvents:(NSArray *)resumeEvents healthStore:(HKHealthStore *)store completionHandler:(id)handler
{
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sScPSgMd, &_sScPSgMR);
  v12 = *(*(v11 - 8) + 64);
  MEMORY[0x28223BE20](v11 - 8);
  v14 = &v24 - v13;
  v15 = _Block_copy(handler);
  v16 = swift_allocObject();
  v16[2] = events;
  v16[3] = resumeEvents;
  v16[4] = store;
  v16[5] = v15;
  v16[6] = self;
  v17 = type metadata accessor for TaskPriority();
  (*(*(v17 - 8) + 56))(v14, 1, 1, v17);
  v18 = swift_allocObject();
  v18[2] = 0;
  v18[3] = 0;
  v18[4] = &async function pointer to partial apply for @objc closure #1 in DownhillSnowSportsAccumulator.recover(downhillRunEvents:pauseResumeEvents:healthStore:);
  v18[5] = v16;
  v19 = swift_allocObject();
  v19[2] = 0;
  v19[3] = 0;
  v19[4] = &_sIeghH_IeAgH_TRTATu;
  v19[5] = v18;
  eventsCopy = events;
  resumeEventsCopy = resumeEvents;
  storeCopy = store;
  selfCopy = self;
  _sScTss5NeverORs_rlE4name8priority9operationScTyxABGSSSg_ScPSgxyYaYAcntcfCyt_Tt2gq5(0, 0, v14, &_sIeAgH_ytIeAgHr_TRTATu, v19);
}

- (BOOL)isPaceAvailable
{
  if (*(&self->super.super.isa + OBJC_IVAR___NLSessionActivityDownhillSnowSportsAccumulator_fakeDownhillRuns))
  {
    return 1;
  }

  v4 = objc_opt_self();

  return [v4 isAvailable];
}

- (double)averagePaceInMetersPerSecond
{
  v3 = OBJC_IVAR___NLSessionActivityDownhillSnowSportsAccumulator_averageSpeed;
  swift_beginAccess();
  return *(&self->super.super.isa + v3);
}

- (double)fastestPaceInMetersPerSecond
{
  v3 = OBJC_IVAR___NLSessionActivityDownhillSnowSportsAccumulator_maximumSpeed;
  swift_beginAccess();
  return *(&self->super.super.isa + v3);
}

@end