@interface String:
- (uint64_t)NSNumber;
- (uint64_t)SAPerson;
- (uint64_t)Set<String>;
- (unint64_t)AnyEncodable;
- (unint64_t)Bool;
- (unint64_t)String;
@end

@implementation String:

- (unint64_t)AnyEncodable
{
  result = lazy protocol witness table cache variable for type [String : AnyEncodable] and conformance <> [A : B];
  if (!lazy protocol witness table cache variable for type [String : AnyEncodable] and conformance <> [A : B])
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&_sSDySS14SiriKitRuntime12AnyEncodableVGMd, &_sSDySS14SiriKitRuntime12AnyEncodableVGMR);
    lazy protocol witness table accessor for type AnyEncodable and conformance AnyEncodable();
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type [String : AnyEncodable] and conformance <> [A : B]);
  }

  return result;
}

- (unint64_t)Bool
{
  result = _sSD17dictionaryLiteralSDyxq_Gx_q_td_tcfCSS_SbTt0g5Tf4g_n(MEMORY[0x1E69E7CC0]);
  *self = result;
  return result;
}

- (uint64_t)NSNumber
{
  v4 = *__swift_project_boxed_opaque_existential_1((self + 32), *(self + 56));
  if (a3)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&_ss5Error_pMd, &_ss5Error_pMR);
    v5 = swift_allocError();
    *v6 = a3;
    v7 = a3;

    return MEMORY[0x1EEE6DEE8](v4, v5);
  }

  else
  {
    type metadata accessor for NSNumber();
    **(*(v4 + 64) + 40) = static Dictionary._unconditionallyBridgeFromObjectiveC(_:)();

    return MEMORY[0x1EEE6DEE0](v4);
  }
}

- (unint64_t)String
{
  result = lazy protocol witness table cache variable for type [String : String] and conformance <> [A : B];
  if (!lazy protocol witness table cache variable for type [String : String] and conformance <> [A : B])
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&_sSDyS2SGMd, &_sSDyS2SGMR);
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type [String : String] and conformance <> [A : B]);
  }

  return result;
}

- (uint64_t)Set<String>
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sSDySSShySSGGMd, &_sSDySSShySSGGMR);
  (*(*(v4 - 8) + 16))(a2, self, v4);
  return a2;
}

- (uint64_t)SAPerson
{
  v4 = *__swift_project_boxed_opaque_existential_1((self + 32), *(self + 56));
  if (a3)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&_ss5Error_pMd, &_ss5Error_pMR);
    v5 = swift_allocError();
    *v6 = a3;
    v7 = a3;

    return MEMORY[0x1EEE6DEE8](v4, v5);
  }

  else
  {
    type metadata accessor for OS_dispatch_queue(0, &lazy cache variable for type metadata for SAPerson, 0x1E69C7930);
    **(*(v4 + 64) + 40) = static Dictionary._unconditionallyBridgeFromObjectiveC(_:)();

    return MEMORY[0x1EEE6DEE0](v4);
  }
}

@end