@interface Int:
- (uint64_t)String;
@end

@implementation Int:

- (uint64_t)String
{
  result = *self;
  if (!result)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&_sSDySiSSGMd, &_sSDySiSSGMR);
    result = swift_getWitnessTable();
    atomic_store(result, self);
  }

  return result;
}

@end