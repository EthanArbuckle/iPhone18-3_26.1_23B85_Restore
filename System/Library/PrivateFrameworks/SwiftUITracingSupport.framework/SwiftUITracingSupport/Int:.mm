@interface Int:
- (uint64_t)String;
@end

@implementation Int:

- (uint64_t)String
{
  result = *a1;
  if (!result)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&_sSDySiSSGMd, &_sSDySiSSGMR);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

@end