@interface PersonResolutionResult
+ (id)confirmationRequiredWithPersonToConfirm:(id)confirm;
+ (id)disambiguationWithObjectsToDisambiguate:(id)disambiguate;
+ (id)disambiguationWithPersonsToDisambiguate:(id)disambiguate;
+ (id)successWithResolvedPerson:(id)person;
@end

@implementation PersonResolutionResult

+ (id)successWithResolvedPerson:(id)person
{
  swift_getObjCClassMetadata();
  personCopy = person;
  v5 = static PersonResolutionResult.success(with:)(personCopy);

  return v5;
}

+ (id)disambiguationWithPersonsToDisambiguate:(id)disambiguate
{
  type metadata accessor for Person();
  v3 = sub_269854CB4();
  swift_getObjCClassMetadata();
  v4 = static PersonResolutionResult.disambiguation(with:)(v3);

  return v4;
}

+ (id)confirmationRequiredWithPersonToConfirm:(id)confirm
{
  swift_getObjCClassMetadata();
  confirmCopy = confirm;
  v5 = static PersonResolutionResult.confirmationRequired(with:)(confirm);

  return v5;
}

+ (id)disambiguationWithObjectsToDisambiguate:(id)disambiguate
{
  sub_26984C7F8();
  sub_269854CB4();
  static PersonResolutionResult.disambiguation(with:)();
}

@end