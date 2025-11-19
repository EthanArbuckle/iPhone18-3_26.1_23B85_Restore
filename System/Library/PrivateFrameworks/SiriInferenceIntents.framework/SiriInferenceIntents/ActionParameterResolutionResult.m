@interface ActionParameterResolutionResult
+ (id)confirmationRequiredWithActionParameterToConfirm:(id)a3;
+ (id)confirmationRequiredWithObjectToConfirm:(id)a3;
+ (id)disambiguationWithActionParametersToDisambiguate:(id)a3;
+ (id)disambiguationWithObjectsToDisambiguate:(id)a3;
+ (id)successWithResolvedActionParameter:(id)a3;
+ (id)successWithResolvedObject:(id)a3;
@end

@implementation ActionParameterResolutionResult

+ (id)successWithResolvedActionParameter:(id)a3
{
  swift_getObjCClassMetadata();
  v4 = a3;
  v5 = sub_266EC0238(v4);

  return v5;
}

+ (id)disambiguationWithActionParametersToDisambiguate:(id)a3
{
  type metadata accessor for ActionParameter();
  v3 = sub_266EC1E98();
  swift_getObjCClassMetadata();
  v4 = sub_266EC02EC(v3);

  return v4;
}

+ (id)confirmationRequiredWithActionParameterToConfirm:(id)a3
{
  swift_getObjCClassMetadata();
  v4 = a3;
  v5 = sub_266EC0450(a3);

  return v5;
}

+ (id)successWithResolvedObject:(id)a3
{
  result = sub_266EC1EA8();
  __break(1u);
  return result;
}

+ (id)disambiguationWithObjectsToDisambiguate:(id)a3
{
  result = sub_266EC1EA8();
  __break(1u);
  return result;
}

+ (id)confirmationRequiredWithObjectToConfirm:(id)a3
{
  result = sub_266EC1EA8();
  __break(1u);
  return result;
}

@end