@interface String:
- (uint64_t)String;
@end

@implementation String:

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

@end