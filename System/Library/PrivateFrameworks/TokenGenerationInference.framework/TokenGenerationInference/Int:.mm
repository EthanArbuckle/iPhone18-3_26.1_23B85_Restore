@interface Int:
- (unint64_t)Float;
- (void)Float;
- (void)LogitCollection;
@end

@implementation Int:

- (void)LogitCollection
{
  if (!lazy cache variable for type metadata for [Int : LogitCollection])
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&_s24TokenGenerationInference15LogitCollection_pMd);
    v0 = type metadata accessor for Dictionary();
    if (!v1)
    {
      atomic_store(v0, &lazy cache variable for type metadata for [Int : LogitCollection]);
    }
  }
}

- (unint64_t)Float
{
  result = lazy protocol witness table cache variable for type [Int : Float].Keys and conformance [A : B].Keys;
  if (!lazy protocol witness table cache variable for type [Int : Float].Keys and conformance [A : B].Keys)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&_sSD4KeysVySiSf_GMd);
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type [Int : Float].Keys and conformance [A : B].Keys);
  }

  return result;
}

- (void)Float
{
  if (!lazy cache variable for type metadata for [Int : Float])
  {
    v0 = type metadata accessor for Dictionary();
    if (!v1)
    {
      atomic_store(v0, &lazy cache variable for type metadata for [Int : Float]);
    }
  }
}

@end