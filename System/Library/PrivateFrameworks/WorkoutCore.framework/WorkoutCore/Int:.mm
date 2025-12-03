@interface Int:
- (unint64_t)Double;
@end

@implementation Int:

- (unint64_t)Double
{
  result = lazy protocol witness table cache variable for type [Int : Double] and conformance <> [A : B];
  if (!lazy protocol witness table cache variable for type [Int : Double] and conformance <> [A : B])
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&_sSDySiSdGMd, &_sSDySiSdGMR);
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type [Int : Double] and conformance <> [A : B]);
  }

  return result;
}

@end