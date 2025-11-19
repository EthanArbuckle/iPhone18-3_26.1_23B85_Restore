@interface NLSessionActivityLocationPositionAccumulator
- (NLSessionActivityLocationPositionAccumulator)initWithBuilder:(id)a3;
- (NSArray)locationPoints;
- (NSDictionary)metadata;
- (NSTimer)invalidationTimer;
- (void)accumulatorDidStartWithStartDate:(id)a3 handler:(id)a4;
- (void)accumulatorDidStop;
- (void)didUpdate:(id)a3;
- (void)locationDidUpdateWithLocations:(id)a3 locationManager:(id)a4;
- (void)queryForPointsWithTimestampAnchor:(double)a3 numberOfPoints:(int64_t)a4 completion:(id)a5;
- (void)recoverLocationsFromStartDate:(id)a3 healthStore:(id)a4 workoutUUID:(id)a5;
- (void)recoverWith:(id)a3 metadata:(id)a4;
- (void)setInvalidationTimer:(id)a3;
- (void)setLocationPoints:(id)a3;
@end

@implementation NLSessionActivityLocationPositionAccumulator

- (NSTimer)invalidationTimer
{
  v3 = OBJC_IVAR___NLSessionActivityLocationPositionAccumulator_invalidationTimer;
  swift_beginAccess();
  return *(self + v3);
}

- (void)setInvalidationTimer:(id)a3
{
  v5 = OBJC_IVAR___NLSessionActivityLocationPositionAccumulator_invalidationTimer;
  swift_beginAccess();
  v6 = *(self + v5);
  *(self + v5) = a3;
  v7 = a3;
}

- (NSArray)locationPoints
{
  v3 = OBJC_IVAR___NLSessionActivityLocationPositionAccumulator_locationPoints;
  swift_beginAccess();
  v4 = *(self + v3);
  _sSo10CLLocationCMaTm_0(0, &lazy cache variable for type metadata for CLLocation, 0x277CE41F8);

  v5.super.isa = Array._bridgeToObjectiveC()().super.isa;

  return v5.super.isa;
}

- (void)setLocationPoints:(id)a3
{
  _sSo10CLLocationCMaTm_0(0, &lazy cache variable for type metadata for CLLocation, 0x277CE41F8);
  v4 = static Array._unconditionallyBridgeFromObjectiveC(_:)();
  v5 = OBJC_IVAR___NLSessionActivityLocationPositionAccumulator_locationPoints;
  swift_beginAccess();
  v6 = *(self + v5);
  *(self + v5) = v4;
}

- (void)accumulatorDidStartWithStartDate:(id)a3 handler:(id)a4
{
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation4DateVSgMd, &_s10Foundation4DateVSgMR);
  v8 = *(*(v7 - 8) + 64);
  MEMORY[0x28223BE20](v7 - 8);
  v10 = &v16 - v9;
  v11 = _Block_copy(a4);
  if (a3)
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
    v14 = swift_allocObject();
    *(v14 + 16) = v11;
    v11 = _sIeyB_Ieg_TRTA_1;
  }

  else
  {
    v14 = 0;
  }

  v15 = self;
  LocationPositionAccumulator.accumulatorDidStart(withStart:handler:)(v10, v11, v14);
  _sSaySo12CLRoutePointCGIegg_SgWOe_0(v11);

  outlined destroy of WorkoutPlan.Route?(v10, &_s10Foundation4DateVSgMd, &_s10Foundation4DateVSgMR);
}

- (void)accumulatorDidStop
{
  v2 = self;
  LocationPositionAccumulator.accumulatorDidStop()();
}

- (void)recoverLocationsFromStartDate:(id)a3 healthStore:(id)a4 workoutUUID:(id)a5
{
  v7 = type metadata accessor for UUID();
  v8 = *(v7 - 8);
  v9 = *(v8 + 64);
  MEMORY[0x28223BE20](v7);
  v11 = &v19 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = type metadata accessor for Date();
  v13 = *(v12 - 8);
  v14 = *(v13 + 64);
  MEMORY[0x28223BE20](v12);
  v16 = &v19 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  static Date._unconditionallyBridgeFromObjectiveC(_:)();
  static UUID._unconditionallyBridgeFromObjectiveC(_:)();
  v17 = a4;
  v18 = self;
  LocationPositionAccumulator.recoverLocations(fromStartDate:healthStore:workoutUUID:)(v18, v17);

  (*(v8 + 8))(v11, v7);
  (*(v13 + 8))(v16, v12);
}

- (NLSessionActivityLocationPositionAccumulator)initWithBuilder:(id)a3
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

- (void)locationDidUpdateWithLocations:(id)a3 locationManager:(id)a4
{
  _sSo10CLLocationCMaTm_0(0, &lazy cache variable for type metadata for CLLocation, 0x277CE41F8);
  v5 = static Array._unconditionallyBridgeFromObjectiveC(_:)();
  v6 = self;
  LocationPositionAccumulator.process(locations:)(v5);
}

- (void)queryForPointsWithTimestampAnchor:(double)a3 numberOfPoints:(int64_t)a4 completion:(id)a5
{
  v8 = _Block_copy(a5);
  if (v8)
  {
    *(swift_allocObject() + 16) = v8;
    v8 = partial apply for thunk for @escaping @callee_unowned @convention(block) (@unowned NSArray) -> ();
  }

  v9 = self;
  LocationPositionAccumulator.queryForPoints(timestampAnchor:numberOfPoints:completion:)(a4, v8, a3);
  _sSaySo12CLRoutePointCGIegg_SgWOe_0(v8);
}

- (NSDictionary)metadata
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCySS_yptGMd, &_ss23_ContiguousArrayStorageCySS_yptGMR);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_20B423A90;
  *(inited + 32) = 0xD000000000000026;
  v4 = inited + 32;
  *(inited + 40) = 0x800000020B45B2B0;
  v5 = *(self + OBJC_IVAR___NLSessionActivityLocationPositionAccumulator_lastPosition + 12);
  if (*(self + OBJC_IVAR___NLSessionActivityLocationPositionAccumulator_lastPosition) != 2 || *(self + OBJC_IVAR___NLSessionActivityLocationPositionAccumulator_lastPosition + 8) != 0)
  {
    v5 = 0;
  }

  *(inited + 72) = MEMORY[0x277D839B0];
  *(inited + 48) = v5;
  _sSD17dictionaryLiteralSDyxq_Gx_q_td_tcfCSS_ypTt0g5Tf4g_n(inited);
  swift_setDeallocating();
  outlined destroy of WorkoutPlan.Route?(v4, &_sSS_yptMd, &_sSS_yptMR);
  v7.super.isa = Dictionary._bridgeToObjectiveC()().super.isa;

  return v7.super.isa;
}

- (void)didUpdate:(id)a3
{
  v4 = a3;
  v5 = self;
  LocationPositionAccumulator.didUpdate(_:)(v4);
}

- (void)recoverWith:(id)a3 metadata:(id)a4
{
  v5 = a3;
  v6 = self;
  specialized LocationPositionAccumulator.recover(with:metadata:)(v5);
}

@end