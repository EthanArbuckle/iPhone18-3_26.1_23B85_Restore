@interface MatchedMedNameResolutionResult
+ (id)confirmationRequiredWithMatchedMedNameToConfirm:(id)confirm;
+ (id)confirmationRequiredWithObjectToConfirm:(id)confirm;
+ (id)disambiguationWithMatchedMedNamesToDisambiguate:(id)disambiguate;
+ (id)disambiguationWithObjectsToDisambiguate:(id)disambiguate;
+ (id)successWithResolvedMatchedMedName:(id)name;
+ (id)successWithResolvedObject:(id)object;
- (MatchedMedNameResolutionResult)initWithJSONDictionary:(id)dictionary forIntent:(id)intent;
@end

@implementation MatchedMedNameResolutionResult

+ (id)successWithResolvedMatchedMedName:(id)name
{
  swift_getObjCClassMetadata();
  MEMORY[0x277D82BE0](name);
  swift_getObjCClassMetadata();
  v5 = static MatchedMedNameResolutionResult.success(with:)(name);
  MEMORY[0x277D82BD8](name);

  return v5;
}

+ (id)disambiguationWithMatchedMedNamesToDisambiguate:(id)disambiguate
{
  swift_getObjCClassMetadata();
  MEMORY[0x277D82BE0](disambiguate);
  type metadata accessor for MatchedMedName();
  v4 = static Array._unconditionallyBridgeFromObjectiveC(_:)();
  swift_getObjCClassMetadata();
  v6 = static MatchedMedNameResolutionResult.disambiguation(with:)(v4);

  MEMORY[0x277D82BD8](disambiguate);

  return v6;
}

+ (id)confirmationRequiredWithMatchedMedNameToConfirm:(id)confirm
{
  swift_getObjCClassMetadata();
  MEMORY[0x277D82BE0](confirm);
  swift_getObjCClassMetadata();
  v5 = static MatchedMedNameResolutionResult.confirmationRequired(with:)(confirm);
  MEMORY[0x277D82BD8](confirm);

  return v5;
}

+ (id)successWithResolvedObject:(id)object
{
  swift_getObjCClassMetadata();
  MEMORY[0x277D82BE0](object);
  swift_getObjCClassMetadata();
  static MatchedMedNameResolutionResult.success(with:)();
}

+ (id)disambiguationWithObjectsToDisambiguate:(id)disambiguate
{
  swift_getObjCClassMetadata();
  MEMORY[0x277D82BE0](disambiguate);
  type metadata accessor for INObject();
  static Array._unconditionallyBridgeFromObjectiveC(_:)();
  swift_getObjCClassMetadata();
  static MatchedMedNameResolutionResult.disambiguation(with:)();
}

+ (id)confirmationRequiredWithObjectToConfirm:(id)confirm
{
  swift_getObjCClassMetadata();
  MEMORY[0x277D82BE0](confirm);
  swift_getObjCClassMetadata();
  static MatchedMedNameResolutionResult.confirmationRequired(with:)();
}

- (MatchedMedNameResolutionResult)initWithJSONDictionary:(id)dictionary forIntent:(id)intent
{
  MEMORY[0x277D82BE0](dictionary);
  MEMORY[0x277D82BE0](intent);
  v4 = static Dictionary._unconditionallyBridgeFromObjectiveC(_:)();
  v8 = MatchedMedNameResolutionResult.init(JSONDictionary:intent:)(v4, intent);
  MEMORY[0x277D82BD8](dictionary);
  return v8;
}

@end