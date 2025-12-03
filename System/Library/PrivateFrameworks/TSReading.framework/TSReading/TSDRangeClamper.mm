@interface TSDRangeClamper
+ (_NSRange)clampSelectedRange:(_NSRange)range inFullString:(id)string toWordLimit:(unint64_t)limit;
@end

@implementation TSDRangeClamper

+ (_NSRange)clampSelectedRange:(_NSRange)range inFullString:(id)string toWordLimit:(unint64_t)limit
{
  length = range.length;
  location = range.location;
  v8 = [string substringWithRange:?];
  if ([v8 tsdWordCount] > limit)
  {
    length = [v8 endingCharIndexForWordLimit:limit];
  }

  v9 = location;
  v10 = length;
  result.length = v10;
  result.location = v9;
  return result;
}

@end