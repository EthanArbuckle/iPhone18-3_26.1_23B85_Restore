@interface String:
- (uint64_t)Double;
@end

@implementation String:

- (uint64_t)Double
{
  result = *self;
  if (!result)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(a2);
    result = swift_getWitnessTable();
    atomic_store(result, self);
  }

  return result;
}

@end