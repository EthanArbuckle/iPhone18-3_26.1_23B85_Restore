@interface NSTextCheckingResult(TextsMatch)
+ (id)matchText:()TextsMatch withPattern:;
@end

@implementation NSTextCheckingResult(TextsMatch)

+ (id)matchText:()TextsMatch withPattern:
{
  v5 = MEMORY[0x277CCAC68];
  v10 = 0;
  v6 = a3;
  v7 = [v5 regularExpressionWithPattern:a4 options:0 error:&v10];
  v8 = [v7 firstMatchInString:v6 options:0 range:{0, objc_msgSend(v6, "length")}];

  return v8;
}

@end