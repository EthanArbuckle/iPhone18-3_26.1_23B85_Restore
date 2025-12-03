@interface PersonTypeResolutionResult
+ (id)confirmationRequiredWithObjectToConfirm:(id)confirm;
+ (id)confirmationRequiredWithPersonTypeToConfirm:(id)confirm;
+ (id)disambiguationWithObjectsToDisambiguate:(id)disambiguate;
+ (id)disambiguationWithPersonTypesToDisambiguate:(id)disambiguate;
+ (id)successWithResolvedObject:(id)object;
+ (id)successWithResolvedPersonType:(id)type;
- (PersonTypeResolutionResult)initWithJSONDictionary:(id)dictionary forIntent:(id)intent;
@end

@implementation PersonTypeResolutionResult

+ (id)successWithResolvedPersonType:(id)type
{
  swift_getObjCClassMetadata();
  typeCopy = type;
  v5 = sub_22F0CF61C(typeCopy);

  return v5;
}

+ (id)disambiguationWithPersonTypesToDisambiguate:(id)disambiguate
{
  type metadata accessor for PersonType();
  v3 = sub_22F0D0F4C();
  swift_getObjCClassMetadata();
  v4 = sub_22F0CF6D0(v3);

  return v4;
}

+ (id)confirmationRequiredWithPersonTypeToConfirm:(id)confirm
{
  swift_getObjCClassMetadata();
  confirmCopy = confirm;
  v5 = sub_22F0CF880(confirm);

  return v5;
}

+ (id)successWithResolvedObject:(id)object
{
  result = sub_22F0D169C();
  __break(1u);
  return result;
}

+ (id)disambiguationWithObjectsToDisambiguate:(id)disambiguate
{
  result = sub_22F0D169C();
  __break(1u);
  return result;
}

+ (id)confirmationRequiredWithObjectToConfirm:(id)confirm
{
  result = sub_22F0D169C();
  __break(1u);
  return result;
}

- (PersonTypeResolutionResult)initWithJSONDictionary:(id)dictionary forIntent:(id)intent
{
  sub_22F0D0AFC();
  intentCopy = intent;
  v7 = sub_22F0D0AEC();

  v10.receiver = self;
  v10.super_class = type metadata accessor for PersonTypeResolutionResult();
  v8 = [(PersonTypeResolutionResult *)&v10 initWithJSONDictionary:v7 forIntent:intentCopy];

  if (v8)
  {
  }

  return v8;
}

@end