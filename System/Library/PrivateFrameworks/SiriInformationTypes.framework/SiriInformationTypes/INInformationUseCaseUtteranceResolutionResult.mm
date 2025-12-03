@interface INInformationUseCaseUtteranceResolutionResult
+ (id)confirmationRequiredWithINInformationUseCaseUtteranceToConfirm:(id)confirm;
+ (id)confirmationRequiredWithObjectToConfirm:(id)confirm;
+ (id)disambiguationWithINInformationUseCaseUtterancesToDisambiguate:(id)disambiguate;
+ (id)disambiguationWithObjectsToDisambiguate:(id)disambiguate;
+ (id)successWithResolvedINInformationUseCaseUtterance:(id)utterance;
+ (id)successWithResolvedObject:(id)object;
@end

@implementation INInformationUseCaseUtteranceResolutionResult

+ (id)successWithResolvedINInformationUseCaseUtterance:(id)utterance
{
  swift_getObjCClassMetadata();
  utteranceCopy = utterance;
  v5 = static INInformationUseCaseUtteranceResolutionResult.success(with:)(utteranceCopy);

  return v5;
}

+ (id)disambiguationWithINInformationUseCaseUtterancesToDisambiguate:(id)disambiguate
{
  type metadata accessor for INInformationUseCaseUtterance();
  v3 = static Array._unconditionallyBridgeFromObjectiveC(_:)();
  swift_getObjCClassMetadata();
  v4 = static INInformationUseCaseUtteranceResolutionResult.disambiguation(with:)(v3);

  return v4;
}

+ (id)confirmationRequiredWithINInformationUseCaseUtteranceToConfirm:(id)confirm
{
  swift_getObjCClassMetadata();
  confirmCopy = confirm;
  v5 = static INInformationUseCaseUtteranceResolutionResult.confirmationRequired(with:)(confirm);

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