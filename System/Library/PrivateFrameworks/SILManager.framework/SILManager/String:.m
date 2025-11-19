@interface String:
- (uint64_t)Double;
@end

@implementation String:

- (uint64_t)Double
{
  result = *a1;
  if (!result)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(a2);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

@end