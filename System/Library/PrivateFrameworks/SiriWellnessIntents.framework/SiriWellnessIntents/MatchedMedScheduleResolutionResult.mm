@interface MatchedMedScheduleResolutionResult
+ (id)confirmationRequiredWithMatchedMedScheduleToConfirm:(id)confirm;
+ (id)confirmationRequiredWithObjectToConfirm:(id)confirm;
+ (id)disambiguationWithMatchedMedSchedulesToDisambiguate:(id)disambiguate;
+ (id)disambiguationWithObjectsToDisambiguate:(id)disambiguate;
+ (id)successWithResolvedMatchedMedSchedule:(id)schedule;
+ (id)successWithResolvedObject:(id)object;
- (MatchedMedScheduleResolutionResult)initWithJSONDictionary:(id)dictionary forIntent:(id)intent;
@end

@implementation MatchedMedScheduleResolutionResult

+ (id)successWithResolvedMatchedMedSchedule:(id)schedule
{
  swift_getObjCClassMetadata();
  MEMORY[0x277D82BE0](schedule);
  swift_getObjCClassMetadata();
  v5 = static MatchedMedScheduleResolutionResult.success(with:)(schedule);
  MEMORY[0x277D82BD8](schedule);

  return v5;
}

+ (id)disambiguationWithMatchedMedSchedulesToDisambiguate:(id)disambiguate
{
  swift_getObjCClassMetadata();
  MEMORY[0x277D82BE0](disambiguate);
  type metadata accessor for MatchedMedSchedule();
  v4 = static Array._unconditionallyBridgeFromObjectiveC(_:)();
  swift_getObjCClassMetadata();
  v6 = static MatchedMedScheduleResolutionResult.disambiguation(with:)(v4);

  MEMORY[0x277D82BD8](disambiguate);

  return v6;
}

+ (id)confirmationRequiredWithMatchedMedScheduleToConfirm:(id)confirm
{
  swift_getObjCClassMetadata();
  MEMORY[0x277D82BE0](confirm);
  swift_getObjCClassMetadata();
  v5 = static MatchedMedScheduleResolutionResult.confirmationRequired(with:)(confirm);
  MEMORY[0x277D82BD8](confirm);

  return v5;
}

+ (id)successWithResolvedObject:(id)object
{
  swift_getObjCClassMetadata();
  MEMORY[0x277D82BE0](object);
  swift_getObjCClassMetadata();
  static MatchedMedScheduleResolutionResult.success(with:)();
}

+ (id)disambiguationWithObjectsToDisambiguate:(id)disambiguate
{
  swift_getObjCClassMetadata();
  MEMORY[0x277D82BE0](disambiguate);
  type metadata accessor for INObject();
  static Array._unconditionallyBridgeFromObjectiveC(_:)();
  swift_getObjCClassMetadata();
  static MatchedMedScheduleResolutionResult.disambiguation(with:)();
}

+ (id)confirmationRequiredWithObjectToConfirm:(id)confirm
{
  swift_getObjCClassMetadata();
  MEMORY[0x277D82BE0](confirm);
  swift_getObjCClassMetadata();
  static MatchedMedScheduleResolutionResult.confirmationRequired(with:)();
}

- (MatchedMedScheduleResolutionResult)initWithJSONDictionary:(id)dictionary forIntent:(id)intent
{
  MEMORY[0x277D82BE0](dictionary);
  MEMORY[0x277D82BE0](intent);
  v4 = static Dictionary._unconditionallyBridgeFromObjectiveC(_:)();
  v8 = MatchedMedScheduleResolutionResult.init(JSONDictionary:intent:)(v4, intent);
  MEMORY[0x277D82BD8](dictionary);
  return v8;
}

@end