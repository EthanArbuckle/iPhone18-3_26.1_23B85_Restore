@interface String:
- (unint64_t)String;
@end

@implementation String:

- (unint64_t)String
{
  v2 = lazy protocol witness table cache variable for type [String : String] and conformance [A : B];
  if (!lazy protocol witness table cache variable for type [String : String] and conformance [A : B])
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&_sSDyS2SGMd, &_sSDyS2SGMR);
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &lazy protocol witness table cache variable for type [String : String] and conformance [A : B]);
    return WitnessTable;
  }

  return v2;
}

@end