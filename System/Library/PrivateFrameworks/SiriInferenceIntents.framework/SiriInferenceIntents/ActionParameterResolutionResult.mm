@interface ActionParameterResolutionResult
+ (id)confirmationRequiredWithActionParameterToConfirm:(id)confirm;
+ (id)confirmationRequiredWithObjectToConfirm:(id)confirm;
+ (id)disambiguationWithActionParametersToDisambiguate:(id)disambiguate;
+ (id)disambiguationWithObjectsToDisambiguate:(id)disambiguate;
+ (id)successWithResolvedActionParameter:(id)parameter;
+ (id)successWithResolvedObject:(id)object;
@end

@implementation ActionParameterResolutionResult

+ (id)successWithResolvedActionParameter:(id)parameter
{
  swift_getObjCClassMetadata();
  parameterCopy = parameter;
  v5 = sub_266EC0238(parameterCopy);

  return v5;
}

+ (id)disambiguationWithActionParametersToDisambiguate:(id)disambiguate
{
  type metadata accessor for ActionParameter();
  v3 = sub_266EC1E98();
  swift_getObjCClassMetadata();
  v4 = sub_266EC02EC(v3);

  return v4;
}

+ (id)confirmationRequiredWithActionParameterToConfirm:(id)confirm
{
  swift_getObjCClassMetadata();
  confirmCopy = confirm;
  v5 = sub_266EC0450(confirm);

  return v5;
}

+ (id)successWithResolvedObject:(id)object
{
  result = sub_266EC1EA8();
  __break(1u);
  return result;
}

+ (id)disambiguationWithObjectsToDisambiguate:(id)disambiguate
{
  result = sub_266EC1EA8();
  __break(1u);
  return result;
}

+ (id)confirmationRequiredWithObjectToConfirm:(id)confirm
{
  result = sub_266EC1EA8();
  __break(1u);
  return result;
}

@end