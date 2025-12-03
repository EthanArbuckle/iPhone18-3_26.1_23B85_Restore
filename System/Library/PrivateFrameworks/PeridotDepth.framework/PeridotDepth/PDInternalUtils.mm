@interface PDInternalUtils
+ (id)currTimeAsString;
@end

@implementation PDInternalUtils

+ (id)currTimeAsString
{
  date = [MEMORY[0x277CBEAA8] date];
  v3 = objc_alloc_init(MEMORY[0x277CCA968]);
  [v3 setDateFormat:@"yyyy-MM-dd_HH-mm-ss-SSS"];
  v4 = [v3 stringFromDate:date];

  return v4;
}

@end