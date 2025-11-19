@interface String:
- (uint64_t)JSONSchema;
- (uint64_t)String;
- (unint64_t)String;
- (void)PromptTemplateInfo.RichVariableBinding;
@end

@implementation String:

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

- (uint64_t)JSONSchema
{
  if (a3)
  {
  }

  return result;
}

- (uint64_t)String
{
  result = *a1;
  if (!result)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&_sSDyS2SGMd, &_sSDyS2SGMR);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

- (void)PromptTemplateInfo.RichVariableBinding
{
  if (!*a2)
  {
    v3 = type metadata accessor for Dictionary();
    if (!v4)
    {
      atomic_store(v3, a2);
    }
  }
}

@end