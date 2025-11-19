@interface String
- (uint64_t):(unint64_t *)a1;
- (unint64_t):;
@end

@implementation String

- (unint64_t):
{
  result = lazy protocol witness table cache variable for type [String : [String]] and conformance <> [A : B];
  if (!lazy protocol witness table cache variable for type [String : [String]] and conformance <> [A : B])
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&_sSDySSSaySSGGMd, &_sSDySSSaySSGGMR);
    lazy protocol witness table accessor for type [String] and conformance <A> [A](&lazy protocol witness table cache variable for type [String] and conformance <A> [A]);
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type [String : [String]] and conformance <> [A : B]);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type [String : [String]] and conformance <> [A : B];
  if (!lazy protocol witness table cache variable for type [String : [String]] and conformance <> [A : B])
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&_sSDySSSaySSGGMd, &_sSDySSSaySSGGMR);
    lazy protocol witness table accessor for type [String] and conformance <A> [A](&lazy protocol witness table cache variable for type [String] and conformance <A> [A]);
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type [String : [String]] and conformance <> [A : B]);
  }

  return result;
}

- (uint64_t):(unint64_t *)a1
{
  result = *a1;
  if (!result)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&_sSDySSSay19TokenGenerationCore14AutomationJSONV19RichVariableBindingOGGMd, &_sSDySSSay19TokenGenerationCore14AutomationJSONV19RichVariableBindingOGGMR);
    a2();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

@end