@interface INInformationUseCaseParameterValueResolutionResult
+ (id)confirmationRequiredWithINInformationUseCaseParameterValueToConfirm:(id)a3;
+ (id)confirmationRequiredWithObjectToConfirm:(id)a3;
+ (id)disambiguationWithINInformationUseCaseParameterValuesToDisambiguate:(id)a3;
+ (id)disambiguationWithObjectsToDisambiguate:(id)a3;
+ (id)successWithResolvedINInformationUseCaseParameterValue:(id)a3;
+ (id)successWithResolvedObject:(id)a3;
@end

@implementation INInformationUseCaseParameterValueResolutionResult

+ (id)successWithResolvedINInformationUseCaseParameterValue:(id)a3
{
  swift_getObjCClassMetadata();
  v4 = a3;
  v5 = static INInformationUseCaseParameterValueResolutionResult.success(with:)(v4);

  return v5;
}

+ (id)disambiguationWithINInformationUseCaseParameterValuesToDisambiguate:(id)a3
{
  type metadata accessor for INInformationUseCaseParameterValue();
  v3 = static Array._unconditionallyBridgeFromObjectiveC(_:)();
  swift_getObjCClassMetadata();
  v4 = static INInformationUseCaseParameterValueResolutionResult.disambiguation(with:)(v3);

  return v4;
}

+ (id)confirmationRequiredWithINInformationUseCaseParameterValueToConfirm:(id)a3
{
  swift_getObjCClassMetadata();
  v4 = a3;
  v5 = static INInformationUseCaseParameterValueResolutionResult.confirmationRequired(with:)(a3);

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