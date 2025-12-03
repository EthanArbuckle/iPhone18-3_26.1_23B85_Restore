@interface TelemetryHelpers
+ (void)emitFileResidentInfoWithAssetIdentifier:(id)identifier residentPages:(int64_t)pages totalPages:(int64_t)totalPages;
- (_TtC24TokenGenerationInference16TelemetryHelpers)init;
@end

@implementation TelemetryHelpers

+ (void)emitFileResidentInfoWithAssetIdentifier:(id)identifier residentPages:(int64_t)pages totalPages:(int64_t)totalPages
{
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s27IntelligencePlatformLibrary39GenerativeFunctionsInstrumentationEventVSgMd);
  MEMORY[0x28223BE20](v7 - 8);
  v9 = &v14[-v8];
  v10 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v12 = v11;
  type metadata accessor for EventReporter();
  swift_allocObject();
  EventReporter.init()();
  v15 = v10;
  v16 = v12;
  pagesCopy = pages;
  totalPagesCopy = totalPages;
  EventReporter.send(eventBuiltWithPresetsAnd:)();

  v13 = type metadata accessor for GenerativeFunctionsInstrumentationEvent();
  (*(*(v13 - 8) + 56))(v9, 0, 1, v13);
  outlined destroy of GenerativeFunctionsInstrumentationEvent?(v9);
}

- (_TtC24TokenGenerationInference16TelemetryHelpers)init
{
  v3.receiver = self;
  v3.super_class = swift_getObjectType();
  return [(TelemetryHelpers *)&v3 init];
}

@end