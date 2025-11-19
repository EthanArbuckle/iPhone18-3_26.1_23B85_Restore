@interface DKEventClass
@end

@implementation DKEventClass

Class __get_DKEventClass_block_invoke(uint64_t a1)
{
  CoreDuetLibrary();
  result = objc_getClass("_DKEvent");
  *(*(*(a1 + 32) + 8) + 24) = result;
  if (*(*(*(a1 + 32) + 8) + 24))
  {
    get_DKEventClass_softClass = *(*(*(a1 + 32) + 8) + 24);
  }

  else
  {
    __get_DKEventClass_block_invoke_cold_1();
    return CoreDuetLibrary();
  }

  return result;
}

Class __get_DKEventClass_block_invoke_0(uint64_t a1)
{
  CoreDuetLibrary_2();
  result = objc_getClass("_DKEvent");
  *(*(*(a1 + 32) + 8) + 24) = result;
  if (!*(*(*(a1 + 32) + 8) + 24))
  {
    __get_DKEventClass_block_invoke_cold_1_0();
  }

  get_DKEventClass_softClass_0 = *(*(*(a1 + 32) + 8) + 24);
  return result;
}

@end