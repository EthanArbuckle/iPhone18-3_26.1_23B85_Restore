@interface INInformationUseCaseParameterValueResolutionResult
+ (id)confirmationRequiredWithINInformationUseCaseParameterValueToConfirm:(id)confirm;
+ (id)confirmationRequiredWithObjectToConfirm:(id)confirm;
+ (id)disambiguationWithINInformationUseCaseParameterValuesToDisambiguate:(id)disambiguate;
+ (id)disambiguationWithObjectsToDisambiguate:(id)disambiguate;
+ (id)successWithResolvedINInformationUseCaseParameterValue:(id)value;
+ (id)successWithResolvedObject:(id)object;
@end

@implementation INInformationUseCaseParameterValueResolutionResult

+ (id)successWithResolvedINInformationUseCaseParameterValue:(id)value
{
  swift_getObjCClassMetadata();
  valueCopy = value;
  v5 = static INInformationUseCaseParameterValueResolutionResult.success(with:)(valueCopy);

  return v5;
}

+ (id)disambiguationWithINInformationUseCaseParameterValuesToDisambiguate:(id)disambiguate
{
  type metadata accessor for INInformationUseCaseParameterValue();
  v3 = static Array._unconditionallyBridgeFromObjectiveC(_:)();
  swift_getObjCClassMetadata();
  v4 = static INInformationUseCaseParameterValueResolutionResult.disambiguation(with:)(v3);

  return v4;
}

+ (id)confirmationRequiredWithINInformationUseCaseParameterValueToConfirm:(id)confirm
{
  swift_getObjCClassMetadata();
  confirmCopy = confirm;
  v5 = static INInformationUseCaseParameterValueResolutionResult.confirmationRequired(with:)(confirm);

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