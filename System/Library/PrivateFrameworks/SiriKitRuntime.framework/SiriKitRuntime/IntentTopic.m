@interface IntentTopic
- (unint64_t):;
@end

@implementation IntentTopic

- (unint64_t):
{
  result = lazy protocol witness table cache variable for type [IntentTopic : [String]] and conformance <> [A : B];
  if (!lazy protocol witness table cache variable for type [IntentTopic : [String]] and conformance <> [A : B])
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&_sSDy11SiriKitFlow11IntentTopicVSaySSGGMd, &_sSDy11SiriKitFlow11IntentTopicVSaySSGGMR);
    lazy protocol witness table accessor for type IntentTopic and conformance IntentTopic(&lazy protocol witness table cache variable for type IntentTopic and conformance IntentTopic, MEMORY[0x1E69CFD68]);
    lazy protocol witness table accessor for type [String] and conformance <A> [A]();
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type [IntentTopic : [String]] and conformance <> [A : B]);
  }

  return result;
}

@end