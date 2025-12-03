@interface String:
- (unint64_t)Data;
- (unint64_t)String;
@end

@implementation String:

- (unint64_t)String
{
  result = OUTLINED_FUNCTION_135(self);
  if (!result)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&_sSDyS2SGMd, &_sSDyS2SGMR);
    result = swift_getWitnessTable();
    atomic_store(result, v1);
  }

  return result;
}

- (unint64_t)Data
{
  result = OUTLINED_FUNCTION_135(self);
  if (!result)
  {
    OUTLINED_FUNCTION_40();
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&_sSDySS10Foundation4DataVGMd, &_sSDySS10Foundation4DataVGMR);
    v2();
    OUTLINED_FUNCTION_99();
    result = swift_getWitnessTable();
    atomic_store(result, v1);
  }

  return result;
}

@end