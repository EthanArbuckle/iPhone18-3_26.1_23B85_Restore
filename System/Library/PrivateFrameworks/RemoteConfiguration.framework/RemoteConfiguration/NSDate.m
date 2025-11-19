@interface NSDate
@end

@implementation NSDate

uint64_t __58__NSDate_RCAdditions___fr_sharedYearAndMonthDateFormatter__block_invoke()
{
  v0 = objc_opt_new();
  v1 = _fr_sharedYearAndMonthDateFormatter_sharedDateFormatter;
  _fr_sharedYearAndMonthDateFormatter_sharedDateFormatter = v0;

  v2 = _fr_sharedYearAndMonthDateFormatter_sharedDateFormatter;

  return [v2 setDateFormat:@"yyyy-MM"];
}

@end