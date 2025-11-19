@interface NSByteCountFormatter
+ (id)tsu_stringWithNonBreakingSpacesFromByteCount:(int64_t)a3 countStyle:(int64_t)a4;
@end

@implementation NSByteCountFormatter

+ (id)tsu_stringWithNonBreakingSpacesFromByteCount:(int64_t)a3 countStyle:(int64_t)a4
{
  v4 = [NSByteCountFormatter stringFromByteCount:a3 countStyle:a4];
  v5 = [v4 stringByReplacingOccurrencesOfString:@" " withString:@" "];

  return v5;
}

@end