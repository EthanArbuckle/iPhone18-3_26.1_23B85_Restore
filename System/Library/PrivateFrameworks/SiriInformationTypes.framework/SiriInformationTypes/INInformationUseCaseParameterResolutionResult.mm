@interface INInformationUseCaseParameterResolutionResult
+ (id)confirmationRequiredWithINInformationUseCaseParameterToConfirm:(id)confirm;
+ (id)confirmationRequiredWithObjectToConfirm:(id)confirm;
+ (id)disambiguationWithINInformationUseCaseParametersToDisambiguate:(id)disambiguate;
+ (id)disambiguationWithObjectsToDisambiguate:(id)disambiguate;
+ (id)successWithResolvedINInformationUseCaseParameter:(id)parameter;
+ (id)successWithResolvedObject:(id)object;
@end

@implementation INInformationUseCaseParameterResolutionResult

+ (id)successWithResolvedINInformationUseCaseParameter:(id)parameter
{
  swift_getObjCClassMetadata();
  parameterCopy = parameter;
  v5 = static INInformationUseCaseParameterResolutionResult.success(with:)(parameterCopy);

  return v5;
}

+ (id)disambiguationWithINInformationUseCaseParametersToDisambiguate:(id)disambiguate
{
  type metadata accessor for INInformationUseCaseParameter();
  v3 = static Array._unconditionallyBridgeFromObjectiveC(_:)();
  swift_getObjCClassMetadata();
  v4 = static INInformationUseCaseParameterResolutionResult.disambiguation(with:)(v3);

  return v4;
}

+ (id)confirmationRequiredWithINInformationUseCaseParameterToConfirm:(id)confirm
{
  swift_getObjCClassMetadata();
  confirmCopy = confirm;
  v5 = static INInformationUseCaseParameterResolutionResult.confirmationRequired(with:)(confirm);

  return v5;
}

+ (id)successWithResolvedObject:(id)object
{
  result = _assertionFailure(_:_:file:line:flags:)();
  __break(1u);
  return result;
}

+ (id)disambiguationWithObjectsToDisambiguate:(id)disambiguate
{
  result = _assertionFailure(_:_:file:line:flags:)();
  __break(1u);
  return result;
}

+ (id)confirmationRequiredWithObjectToConfirm:(id)confirm
{
  result = _assertionFailure(_:_:file:line:flags:)();
  __break(1u);
  return result;
}

@end