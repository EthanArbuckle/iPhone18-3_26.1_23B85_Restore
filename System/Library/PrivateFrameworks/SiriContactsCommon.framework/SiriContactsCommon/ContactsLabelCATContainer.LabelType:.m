@interface ContactsLabelCATContainer.LabelType:
- (unint64_t)String;
@end

@implementation ContactsLabelCATContainer.LabelType:

- (unint64_t)String
{
  result = OUTLINED_FUNCTION_59(a1);
  if (!result)
  {
    v4 = v3;
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&_sSDy18SiriContactsCommon0B17LabelCATContainerV0D4TypeOSSGMd, &_sSDy18SiriContactsCommon0B17LabelCATContainerV0D4TypeOSSGMR);
    v4();
    OUTLINED_FUNCTION_99();
    result = swift_getWitnessTable();
    atomic_store(result, v1);
  }

  return result;
}

@end