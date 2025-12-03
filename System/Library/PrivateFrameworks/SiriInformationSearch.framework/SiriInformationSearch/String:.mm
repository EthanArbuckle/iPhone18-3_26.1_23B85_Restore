@interface String:
- (uint64_t)Float;
- (unint64_t)String;
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

- (uint64_t)Float
{
  result = *self;
  if (!result)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&_sSDySSSfGMd, &_sSDySSSfGMR);
    result = swift_getWitnessTable();
    atomic_store(result, self);
  }

  return result;
}

@end