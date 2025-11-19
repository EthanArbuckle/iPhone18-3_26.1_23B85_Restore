@interface NSString
@end

@implementation NSString

uint64_t __35__NSString_MatchScore__containsCJK__block_invoke()
{
  containsCJK_sRegex = [MEMORY[0x1E696AE70] regularExpressionWithPattern:@"(\\p{script=Han})|(\\p{script=Hangul})" options:1 error:0];

  return MEMORY[0x1EEE66BB8]();
}

@end