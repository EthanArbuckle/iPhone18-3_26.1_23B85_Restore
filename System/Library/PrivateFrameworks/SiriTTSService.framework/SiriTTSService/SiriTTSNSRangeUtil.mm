@interface SiriTTSNSRangeUtil
+ (_NSRange)mapUtf8RangeToUtf16:(_NSRange)utf16 inText:(id)text;
@end

@implementation SiriTTSNSRangeUtil

+ (_NSRange)mapUtf8RangeToUtf16:(_NSRange)utf16 inText:(id)text
{
  length = utf16.length;
  location = utf16.location;
  v6 = sub_1B1C2CB58();
  v8 = static NSRangeUtil.mapUtf8RangeToUtf16(_:inText:)(location, length, v6, v7);
  v10 = v9;

  v11 = v8;
  v12 = v10;
  result.length = v12;
  result.location = v11;
  return result;
}

@end