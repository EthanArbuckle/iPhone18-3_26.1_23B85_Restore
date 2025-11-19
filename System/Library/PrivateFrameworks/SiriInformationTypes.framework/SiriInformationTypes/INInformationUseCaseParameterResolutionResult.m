@interface INInformationUseCaseParameterResolutionResult
+ (id)confirmationRequiredWithINInformationUseCaseParameterToConfirm:(id)a3;
+ (id)confirmationRequiredWithObjectToConfirm:(id)a3;
+ (id)disambiguationWithINInformationUseCaseParametersToDisambiguate:(id)a3;
+ (id)disambiguationWithObjectsToDisambiguate:(id)a3;
+ (id)successWithResolvedINInformationUseCaseParameter:(id)a3;
+ (id)successWithResolvedObject:(id)a3;
@end

@implementation INInformationUseCaseParameterResolutionResult

+ (id)successWithResolvedINInformationUseCaseParameter:(id)a3
{
  swift_getObjCClassMetadata();
  v4 = a3;
  v5 = static INInformationUseCaseParameterResolutionResult.success(with:)(v4);

  return v5;
}

+ (id)disambiguationWithINInformationUseCaseParametersToDisambiguate:(id)a3
{
  type metadata accessor for INInformationUseCaseParameter();
  v3 = static Array._unconditionallyBridgeFromObjectiveC(_:)();
  swift_getObjCClassMetadata();
  v4 = static INInformationUseCaseParameterResolutionResult.disambiguation(with:)(v3);

  return v4;
}

+ (id)confirmationRequiredWithINInformationUseCaseParameterToConfirm:(id)a3
{
  swift_getObjCClassMetadata();
  v4 = a3;
  v5 = static INInformationUseCaseParameterResolutionResult.confirmationRequired(with:)(a3);

  return v5;
}

+ (id)successWithResolvedObject:(id)a3
{
  result = _assertionFailure(_:_:file:line:flags:)();
  __break(1u);
  return result;
}

+ (id)disambiguationWithObjectsToDisambiguate:(id)a3
{
  result = _assertionFailure(_:_:file:line:flags:)();
  __break(1u);
  return result;
}

+ (id)confirmationRequiredWithObjectToConfirm:(id)a3
{
  result = _assertionFailure(_:_:file:line:flags:)();
  __break(1u);
  return result;
}

@end