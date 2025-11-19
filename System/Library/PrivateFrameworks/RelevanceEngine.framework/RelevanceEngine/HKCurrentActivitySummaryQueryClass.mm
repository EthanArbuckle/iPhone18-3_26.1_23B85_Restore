@interface HKCurrentActivitySummaryQueryClass
@end

@implementation HKCurrentActivitySummaryQueryClass

void __get_HKCurrentActivitySummaryQueryClass_block_invoke(uint64_t a1)
{
  HealthKitLibrary();
  *(*(*(a1 + 32) + 8) + 24) = objc_getClass("_HKCurrentActivitySummaryQuery");
  if (*(*(*(a1 + 32) + 8) + 24))
  {
    get_HKCurrentActivitySummaryQueryClass_softClass = *(*(*(a1 + 32) + 8) + 24);
  }

  else
  {
    __get_HKCurrentActivitySummaryQueryClass_block_invoke_cold_1();
    HealthKitLibrary();
  }
}

@end