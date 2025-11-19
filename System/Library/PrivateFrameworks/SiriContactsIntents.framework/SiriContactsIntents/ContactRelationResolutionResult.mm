@interface ContactRelationResolutionResult
+ (id)confirmationRequiredWithContactRelationToConfirm:(id)a3;
+ (id)confirmationRequiredWithObjectToConfirm:(id)a3;
+ (id)disambiguationWithContactRelationsToDisambiguate:(id)a3;
+ (id)disambiguationWithObjectsToDisambiguate:(id)a3;
+ (id)successWithResolvedContactRelation:(id)a3;
+ (id)successWithResolvedObject:(id)a3;
@end

@implementation ContactRelationResolutionResult

+ (id)successWithResolvedContactRelation:(id)a3
{
  swift_getObjCClassMetadata();
  v4 = a3;
  v5 = static ContactRelationResolutionResult.success(with:)(v4);

  return v5;
}

+ (id)disambiguationWithContactRelationsToDisambiguate:(id)a3
{
  type metadata accessor for ContactRelation();
  v3 = static Array._unconditionallyBridgeFromObjectiveC(_:)();
  swift_getObjCClassMetadata();
  v4 = static ContactRelationResolutionResult.disambiguation(with:)(v3);

  return v4;
}

+ (id)confirmationRequiredWithContactRelationToConfirm:(id)a3
{
  swift_getObjCClassMetadata();
  v4 = a3;
  v5 = static ContactRelationResolutionResult.confirmationRequired(with:)(a3);

  return v5;
}

+ (id)successWithResolvedObject:(id)a3
{
  v3 = a3;
  static ContactRelationResolutionResult.success(with:)();
  return static ContactRelationResolutionResult.disambiguation(with:)();
}

+ (id)disambiguationWithObjectsToDisambiguate:(id)a3
{
  type metadata accessor for INObject();
  static Array._unconditionallyBridgeFromObjectiveC(_:)();
  static ContactRelationResolutionResult.success(with:)();
  return static ContactRelationResolutionResult.confirmationRequired(with:)();
}

+ (id)confirmationRequiredWithObjectToConfirm:(id)a3
{
  v3 = a3;
  static ContactRelationResolutionResult.confirmationRequired(with:)();
  return ContactRelationResolutionResult.__allocating_init(JSONDictionary:intent:)();
}

@end