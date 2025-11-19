@interface PersonTypeResolutionResult
+ (id)confirmationRequiredWithObjectToConfirm:(id)a3;
+ (id)confirmationRequiredWithPersonTypeToConfirm:(id)a3;
+ (id)disambiguationWithObjectsToDisambiguate:(id)a3;
+ (id)disambiguationWithPersonTypesToDisambiguate:(id)a3;
+ (id)successWithResolvedObject:(id)a3;
+ (id)successWithResolvedPersonType:(id)a3;
- (PersonTypeResolutionResult)initWithJSONDictionary:(id)a3 forIntent:(id)a4;
@end

@implementation PersonTypeResolutionResult

+ (id)successWithResolvedPersonType:(id)a3
{
  swift_getObjCClassMetadata();
  v4 = a3;
  v5 = sub_22F0CF61C(v4);

  return v5;
}

+ (id)disambiguationWithPersonTypesToDisambiguate:(id)a3
{
  type metadata accessor for PersonType();
  v3 = sub_22F0D0F4C();
  swift_getObjCClassMetadata();
  v4 = sub_22F0CF6D0(v3);

  return v4;
}

+ (id)confirmationRequiredWithPersonTypeToConfirm:(id)a3
{
  swift_getObjCClassMetadata();
  v4 = a3;
  v5 = sub_22F0CF880(a3);

  return v5;
}

+ (id)successWithResolvedObject:(id)a3
{
  result = sub_22F0D169C();
  __break(1u);
  return result;
}

+ (id)disambiguationWithObjectsToDisambiguate:(id)a3
{
  result = sub_22F0D169C();
  __break(1u);
  return result;
}

+ (id)confirmationRequiredWithObjectToConfirm:(id)a3
{
  result = sub_22F0D169C();
  __break(1u);
  return result;
}

- (PersonTypeResolutionResult)initWithJSONDictionary:(id)a3 forIntent:(id)a4
{
  sub_22F0D0AFC();
  v6 = a4;
  v7 = sub_22F0D0AEC();

  v10.receiver = self;
  v10.super_class = type metadata accessor for PersonTypeResolutionResult();
  v8 = [(PersonTypeResolutionResult *)&v10 initWithJSONDictionary:v7 forIntent:v6];

  if (v8)
  {
  }

  return v8;
}

@end