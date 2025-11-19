@interface MatchedMedScheduleResolutionResult
+ (id)confirmationRequiredWithMatchedMedScheduleToConfirm:(id)a3;
+ (id)confirmationRequiredWithObjectToConfirm:(id)a3;
+ (id)disambiguationWithMatchedMedSchedulesToDisambiguate:(id)a3;
+ (id)disambiguationWithObjectsToDisambiguate:(id)a3;
+ (id)successWithResolvedMatchedMedSchedule:(id)a3;
+ (id)successWithResolvedObject:(id)a3;
- (MatchedMedScheduleResolutionResult)initWithJSONDictionary:(id)a3 forIntent:(id)a4;
@end

@implementation MatchedMedScheduleResolutionResult

+ (id)successWithResolvedMatchedMedSchedule:(id)a3
{
  swift_getObjCClassMetadata();
  MEMORY[0x277D82BE0](a3);
  swift_getObjCClassMetadata();
  v5 = static MatchedMedScheduleResolutionResult.success(with:)(a3);
  MEMORY[0x277D82BD8](a3);

  return v5;
}

+ (id)disambiguationWithMatchedMedSchedulesToDisambiguate:(id)a3
{
  swift_getObjCClassMetadata();
  MEMORY[0x277D82BE0](a3);
  type metadata accessor for MatchedMedSchedule();
  v4 = static Array._unconditionallyBridgeFromObjectiveC(_:)();
  swift_getObjCClassMetadata();
  v6 = static MatchedMedScheduleResolutionResult.disambiguation(with:)(v4);

  MEMORY[0x277D82BD8](a3);

  return v6;
}

+ (id)confirmationRequiredWithMatchedMedScheduleToConfirm:(id)a3
{
  swift_getObjCClassMetadata();
  MEMORY[0x277D82BE0](a3);
  swift_getObjCClassMetadata();
  v5 = static MatchedMedScheduleResolutionResult.confirmationRequired(with:)(a3);
  MEMORY[0x277D82BD8](a3);

  return v5;
}

+ (id)successWithResolvedObject:(id)a3
{
  swift_getObjCClassMetadata();
  MEMORY[0x277D82BE0](a3);
  swift_getObjCClassMetadata();
  static MatchedMedScheduleResolutionResult.success(with:)();
}

+ (id)disambiguationWithObjectsToDisambiguate:(id)a3
{
  swift_getObjCClassMetadata();
  MEMORY[0x277D82BE0](a3);
  type metadata accessor for INObject();
  static Array._unconditionallyBridgeFromObjectiveC(_:)();
  swift_getObjCClassMetadata();
  static MatchedMedScheduleResolutionResult.disambiguation(with:)();
}

+ (id)confirmationRequiredWithObjectToConfirm:(id)a3
{
  swift_getObjCClassMetadata();
  MEMORY[0x277D82BE0](a3);
  swift_getObjCClassMetadata();
  static MatchedMedScheduleResolutionResult.confirmationRequired(with:)();
}

- (MatchedMedScheduleResolutionResult)initWithJSONDictionary:(id)a3 forIntent:(id)a4
{
  MEMORY[0x277D82BE0](a3);
  MEMORY[0x277D82BE0](a4);
  v4 = static Dictionary._unconditionallyBridgeFromObjectiveC(_:)();
  v8 = MatchedMedScheduleResolutionResult.init(JSONDictionary:intent:)(v4, a4);
  MEMORY[0x277D82BD8](a3);
  return v8;
}

@end