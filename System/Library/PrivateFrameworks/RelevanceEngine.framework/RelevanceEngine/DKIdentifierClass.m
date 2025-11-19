@interface DKIdentifierClass
@end

@implementation DKIdentifierClass

Class __get_DKIdentifierClass_block_invoke(uint64_t a1)
{
  CoreDuetLibrary_0();
  result = objc_getClass("_DKIdentifier");
  *(*(*(a1 + 32) + 8) + 24) = result;
  if (*(*(*(a1 + 32) + 8) + 24))
  {
    get_DKIdentifierClass_softClass = *(*(*(a1 + 32) + 8) + 24);
  }

  else
  {
    v3 = __get_DKIdentifierClass_block_invoke_cold_1();
    return __get_DKCategoryClass_block_invoke(v3);
  }

  return result;
}

@end