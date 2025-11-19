@interface INInformationUseCaseUtteranceResolutionResult
+ (id)confirmationRequiredWithINInformationUseCaseUtteranceToConfirm:(id)a3;
+ (id)confirmationRequiredWithObjectToConfirm:(id)a3;
+ (id)disambiguationWithINInformationUseCaseUtterancesToDisambiguate:(id)a3;
+ (id)disambiguationWithObjectsToDisambiguate:(id)a3;
+ (id)successWithResolvedINInformationUseCaseUtterance:(id)a3;
+ (id)successWithResolvedObject:(id)a3;
@end

@implementation INInformationUseCaseUtteranceResolutionResult

+ (id)successWithResolvedINInformationUseCaseUtterance:(id)a3
{
  swift_getObjCClassMetadata();
  v4 = a3;
  v5 = static INInformationUseCaseUtteranceResolutionResult.success(with:)(v4);

  return v5;
}

+ (id)disambiguationWithINInformationUseCaseUtterancesToDisambiguate:(id)a3
{
  type metadata accessor for INInformationUseCaseUtterance();
  v3 = static Array._unconditionallyBridgeFromObjectiveC(_:)();
  swift_getObjCClassMetadata();
  v4 = static INInformationUseCaseUtteranceResolutionResult.disambiguation(with:)(v3);

  return v4;
}

+ (id)confirmationRequiredWithINInformationUseCaseUtteranceToConfirm:(id)a3
{
  swift_getObjCClassMetadata();
  v4 = a3;
  v5 = static INInformationUseCaseUtteranceResolutionResult.confirmationRequired(with:)(a3);

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