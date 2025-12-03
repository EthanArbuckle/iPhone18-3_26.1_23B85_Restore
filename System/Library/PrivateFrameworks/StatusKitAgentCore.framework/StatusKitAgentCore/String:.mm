@interface String:
- (Class)NSObject;
- (unint64_t)SKAPowerLogger.SKAPowerLogEventMetadata;
- (void)SKAPowerLogger.SKAPowerLogMetadata;
@end

@implementation String:

- (Class)NSObject
{
  v1 = *(self + 32);
  v2 = *(self + 40);

  v4 = v1(v3);

  if (v4)
  {
    type metadata accessor for OS_dispatch_queue(0, &lazy cache variable for type metadata for NSObject, 0x277D82BB8);
    v5.super.isa = Dictionary._bridgeToObjectiveC()().super.isa;
  }

  else
  {
    v5.super.isa = 0;
  }

  return v5.super.isa;
}

- (void)SKAPowerLogger.SKAPowerLogMetadata
{
  if (!lazy cache variable for type metadata for [String : SKAPowerLogger.SKAPowerLogMetadata])
  {
    v0 = type metadata accessor for Dictionary();
    if (!v1)
    {
      atomic_store(v0, &lazy cache variable for type metadata for [String : SKAPowerLogger.SKAPowerLogMetadata]);
    }
  }
}

- (unint64_t)SKAPowerLogger.SKAPowerLogEventMetadata
{
  result = lazy protocol witness table cache variable for type [String : SKAPowerLogger.SKAPowerLogEventMetadata] and conformance <> [A : B];
  if (!lazy protocol witness table cache variable for type [String : SKAPowerLogger.SKAPowerLogEventMetadata] and conformance <> [A : B])
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&_sSDySS18StatusKitAgentCore14SKAPowerLoggerC0E16LogEventMetadataVGMd, &_sSDySS18StatusKitAgentCore14SKAPowerLoggerC0E16LogEventMetadataVGMR);
    lazy protocol witness table accessor for type SKAPowerLogger.SKAPowerLogEventMetadata and conformance SKAPowerLogger.SKAPowerLogEventMetadata();
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type [String : SKAPowerLogger.SKAPowerLogEventMetadata] and conformance <> [A : B]);
  }

  return result;
}

@end