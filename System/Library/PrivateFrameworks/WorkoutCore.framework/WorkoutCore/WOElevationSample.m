@interface WOElevationSample
- (HKQuantity)value;
- (NSDate)date;
- (WOElevationSample)init;
- (WOElevationSample)initWithDate:(id)a3 value:(id)a4;
@end

@implementation WOElevationSample

- (NSDate)date
{
  v3 = type metadata accessor for Date();
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  MEMORY[0x28223BE20](v3);
  v7 = &v10 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v4 + 16))(v7, self + OBJC_IVAR___WOElevationSample_bridgedValue, v3);
  v8.super.isa = Date._bridgeToObjectiveC()().super.isa;
  (*(v4 + 8))(v7, v3);

  return v8.super.isa;
}

- (HKQuantity)value
{
  v2 = self + OBJC_IVAR___WOElevationSample_bridgedValue;
  v3 = *&v2[*(type metadata accessor for ElevationSample() + 20)];

  return v3;
}

- (WOElevationSample)initWithDate:(id)a3 value:(id)a4
{
  v6 = type metadata accessor for Date();
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  MEMORY[0x28223BE20](v6);
  v10 = &v16 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  static Date._unconditionallyBridgeFromObjectiveC(_:)();
  v11 = self + OBJC_IVAR___WOElevationSample_bridgedValue;
  (*(v7 + 16))(self + OBJC_IVAR___WOElevationSample_bridgedValue, v10, v6);
  *&v11[*(type metadata accessor for ElevationSample() + 20)] = a4;
  v12 = type metadata accessor for ElevationSampleBridge();
  v16.receiver = self;
  v16.super_class = v12;
  v13 = a4;
  v14 = [(WOElevationSample *)&v16 init];
  (*(v7 + 8))(v10, v6);
  return v14;
}

- (WOElevationSample)init
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

@end