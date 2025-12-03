@interface NSByteCountFormatter
+ (id)tsu_stringWithNonBreakingSpacesFromByteCount:(int64_t)count countStyle:(int64_t)style;
@end

@implementation NSByteCountFormatter

+ (id)tsu_stringWithNonBreakingSpacesFromByteCount:(int64_t)count countStyle:(int64_t)style
{
  v4 = [NSByteCountFormatter stringFromByteCount:count countStyle:style];
  v5 = [v4 stringByReplacingOccurrencesOfString:@" " withString:@" "];

  return v5;
}

@end