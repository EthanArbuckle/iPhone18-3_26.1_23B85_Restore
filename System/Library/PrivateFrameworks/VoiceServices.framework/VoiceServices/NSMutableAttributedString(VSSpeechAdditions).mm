@interface NSMutableAttributedString(VSSpeechAdditions)
- (uint64_t)appendString:()VSSpeechAdditions withAttributes:;
@end

@implementation NSMutableAttributedString(VSSpeechAdditions)

- (uint64_t)appendString:()VSSpeechAdditions withAttributes:
{
  v7 = [a3 length];
  v8 = [self length];
  [self replaceCharactersInRange:v8 withString:{0, a3}];

  return [self setAttributes:a4 range:{v8, v7}];
}

@end