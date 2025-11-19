@interface MatchedMedNameResolutionResult
+ (id)confirmationRequiredWithMatchedMedNameToConfirm:(id)a3;
+ (id)confirmationRequiredWithObjectToConfirm:(id)a3;
+ (id)disambiguationWithMatchedMedNamesToDisambiguate:(id)a3;
+ (id)disambiguationWithObjectsToDisambiguate:(id)a3;
+ (id)successWithResolvedMatchedMedName:(id)a3;
+ (id)successWithResolvedObject:(id)a3;
- (MatchedMedNameResolutionResult)initWithJSONDictionary:(id)a3 forIntent:(id)a4;
@end

@implementation MatchedMedNameResolutionResult

+ (id)successWithResolvedMatchedMedName:(id)a3
{
  swift_getObjCClassMetadata();
  MEMORY[0x277D82BE0](a3);
  swift_getObjCClassMetadata();
  v5 = static MatchedMedNameResolutionResult.success(with:)(a3);
  MEMORY[0x277D82BD8](a3);

  return v5;
}

+ (id)disambiguationWithMatchedMedNamesToDisambiguate:(id)a3
{
  swift_getObjCClassMetadata();
  MEMORY[0x277D82BE0](a3);
  type metadata accessor for MatchedMedName();
  v4 = static Array._unconditionallyBridgeFromObjectiveC(_:)();
  swift_getObjCClassMetadata();
  v6 = static MatchedMedNameResolutionResult.disambiguation(with:)(v4);

  MEMORY[0x277D82BD8](a3);

  return v6;
}

+ (id)confirmationRequiredWithMatchedMedNameToConfirm:(id)a3
{
  swift_getObjCClassMetadata();
  MEMORY[0x277D82BE0](a3);
  swift_getObjCClassMetadata();
  v5 = static MatchedMedNameResolutionResult.confirmationRequired(with:)(a3);
  MEMORY[0x277D82BD8](a3);

  return v5;
}

+ (id)successWithResolvedObject:(id)a3
{
  swift_getObjCClassMetadata();
  MEMORY[0x277D82BE0](a3);
  swift_getObjCClassMetadata();
  static MatchedMedNameResolutionResult.success(with:)();
}

+ (id)disambiguationWithObjectsToDisambiguate:(id)a3
{
  swift_getObjCClassMetadata();
  MEMORY[0x277D82BE0](a3);
  type metadata accessor for INObject();
  static Array._unconditionallyBridgeFromObjectiveC(_:)();
  swift_getObjCClassMetadata();
  static MatchedMedNameResolutionResult.disambiguation(with:)();
}

+ (id)confirmationRequiredWithObjectToConfirm:(id)a3
{
  swift_getObjCClassMetadata();
  MEMORY[0x277D82BE0](a3);
  swift_getObjCClassMetadata();
  static MatchedMedNameResolutionResult.confirmationRequired(with:)();
}

- (MatchedMedNameResolutionResult)initWithJSONDictionary:(id)a3 forIntent:(id)a4
{
  MEMORY[0x277D82BE0](a3);
  MEMORY[0x277D82BE0](a4);
  v4 = static Dictionary._unconditionallyBridgeFromObjectiveC(_:)();
  v8 = MatchedMedNameResolutionResult.init(JSONDictionary:intent:)(v4, a4);
  MEMORY[0x277D82BD8](a3);
  return v8;
}

@end