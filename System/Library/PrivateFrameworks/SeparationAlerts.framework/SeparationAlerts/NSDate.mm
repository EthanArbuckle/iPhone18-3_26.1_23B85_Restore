@interface NSDate
@end

@implementation NSDate

uint64_t __37__NSDate_TADateFormat__getDateString__block_invoke()
{
  v0 = objc_alloc_init(MEMORY[0x277CCAA68]);
  v1 = gTADateFormatDateFormatter;
  gTADateFormatDateFormatter = v0;

  v2 = [MEMORY[0x277CBEBB0] localTimeZone];
  [gTADateFormatDateFormatter setTimeZone:v2];

  v3 = gTADateFormatDateFormatter;

  return [v3 setFormatOptions:1907];
}

@end