@interface DKAnyStringIdentifierClass
@end

@implementation DKAnyStringIdentifierClass

void __get_DKAnyStringIdentifierClass_block_invoke(uint64_t a1)
{
  CoreDuetLibrary();
  *(*(*(a1 + 32) + 8) + 24) = objc_getClass("_DKAnyStringIdentifier");
  if (*(*(*(a1 + 32) + 8) + 24))
  {
    get_DKAnyStringIdentifierClass_softClass = *(*(*(a1 + 32) + 8) + 24);
  }

  else
  {
    abort_report_np();
    CoreDuetLibrary();
  }
}

@end