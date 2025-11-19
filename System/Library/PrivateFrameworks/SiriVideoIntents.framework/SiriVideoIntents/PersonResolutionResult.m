@interface PersonResolutionResult
+ (id)confirmationRequiredWithPersonToConfirm:(id)a3;
+ (id)disambiguationWithObjectsToDisambiguate:(id)a3;
+ (id)disambiguationWithPersonsToDisambiguate:(id)a3;
+ (id)successWithResolvedPerson:(id)a3;
@end

@implementation PersonResolutionResult

+ (id)successWithResolvedPerson:(id)a3
{
  swift_getObjCClassMetadata();
  v4 = a3;
  v5 = static PersonResolutionResult.success(with:)(v4);

  return v5;
}

+ (id)disambiguationWithPersonsToDisambiguate:(id)a3
{
  type metadata accessor for Person();
  v3 = sub_269854CB4();
  swift_getObjCClassMetadata();
  v4 = static PersonResolutionResult.disambiguation(with:)(v3);

  return v4;
}

+ (id)confirmationRequiredWithPersonToConfirm:(id)a3
{
  swift_getObjCClassMetadata();
  v4 = a3;
  v5 = static PersonResolutionResult.confirmationRequired(with:)(a3);

  return v5;
}

+ (id)disambiguationWithObjectsToDisambiguate:(id)a3
{
  sub_26984C7F8();
  sub_269854CB4();
  static PersonResolutionResult.disambiguation(with:)();
}

@end