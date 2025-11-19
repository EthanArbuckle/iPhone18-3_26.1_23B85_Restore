@interface TSDRangeClamper
+ (_NSRange)clampSelectedRange:(_NSRange)a3 inFullString:(id)a4 toWordLimit:(unint64_t)a5;
@end

@implementation TSDRangeClamper

+ (_NSRange)clampSelectedRange:(_NSRange)a3 inFullString:(id)a4 toWordLimit:(unint64_t)a5
{
  length = a3.length;
  location = a3.location;
  v8 = [a4 substringWithRange:?];
  if ([v8 tsdWordCount] > a5)
  {
    length = [v8 endingCharIndexForWordLimit:a5];
  }

  v9 = location;
  v10 = length;
  result.length = v10;
  result.location = v9;
  return result;
}

@end