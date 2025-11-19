@interface NSDateFormatter
@end

@implementation NSDateFormatter

void __94__NSDateFormatter_HKSPSleep__hksp_timeStringFromDate_designatorString_designatorIsBeforeTime___block_invoke(uint64_t a1, void *a2, uint64_t a3, uint64_t a4)
{
  v12 = [a2 objectForKeyedSubscript:*MEMORY[0x277CBE628]];
  if ([v12 hasPrefix:@"a"])
  {
    v7 = [*(a1 + 32) string];
    v8 = [v7 substringWithRange:{a3, a4}];
    v9 = *(*(a1 + 40) + 8);
    v10 = *(v9 + 40);
    *(v9 + 40) = v8;

    v11 = *(*(a1 + 48) + 8);
    *(v11 + 32) = a3;
    *(v11 + 40) = a4;
  }
}

@end