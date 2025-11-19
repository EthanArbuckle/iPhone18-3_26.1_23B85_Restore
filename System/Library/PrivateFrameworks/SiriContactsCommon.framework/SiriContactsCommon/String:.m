@interface String:
- (uint64_t)Data;
- (unint64_t)String;
@end

@implementation String:

- (uint64_t)Data
{
  result = *a1;
  if (!result)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&_sSDySS10Foundation4DataVGMd, &_sSDySS10Foundation4DataVGMR);
    a2();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

- (unint64_t)String
{
  result = OUTLINED_FUNCTION_59(a1);
  if (!result)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&_sSDyS2SGMd, &_sSDyS2SGMR);
    OUTLINED_FUNCTION_99();
    result = swift_getWitnessTable();
    atomic_store(result, v1);
  }

  return result;
}

@end