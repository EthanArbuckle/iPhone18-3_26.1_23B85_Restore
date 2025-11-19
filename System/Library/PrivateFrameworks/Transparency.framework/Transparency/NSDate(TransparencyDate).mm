@interface NSDate(TransparencyDate)
+ (double)kt_currentTimeMs;
+ (uint64_t)kt_dateFromString:()TransparencyDate;
- (BOOL)kt_isEqualWithinOneMillisecond:()TransparencyDate;
- (id)kt_fuzzyDate;
- (id)kt_toISO_8601_UTCString;
- (uint64_t)kt_dateToString;
@end

@implementation NSDate(TransparencyDate)

+ (double)kt_currentTimeMs
{
  v0 = [MEMORY[0x1E695DF00] date];
  [v0 timeIntervalSince1970];
  v2 = v1 * 1000.0;

  return v2;
}

- (BOOL)kt_isEqualWithinOneMillisecond:()TransparencyDate
{
  v4 = a3;
  if (a1 == v4)
  {
    v5 = 1;
  }

  else
  {
    objc_opt_class();
    v5 = 0;
    if ((objc_opt_isKindOfClass() & 1) != 0 && a1 && v4)
    {
      [v4 timeIntervalSinceDate:a1];
      v5 = fabs(v6) * 1000.0 < 1.0;
    }
  }

  return v5;
}

- (uint64_t)kt_dateToString
{
  v1 = MEMORY[0x1E696AEC0];
  [a1 timeIntervalSince1970];
  return [v1 stringWithFormat:@"%f", v2];
}

+ (uint64_t)kt_dateFromString:()TransparencyDate
{
  v3 = MEMORY[0x1E695DF00];
  [a3 doubleValue];

  return [v3 dateWithTimeIntervalSince1970:?];
}

- (id)kt_toISO_8601_UTCString
{
  v2 = objc_alloc_init(MEMORY[0x1E696AC80]);
  v3 = [MEMORY[0x1E695DFE8] timeZoneWithName:@"UTC"];
  [v2 setTimeZone:v3];

  v4 = [v2 stringFromDate:a1];

  return v4;
}

- (id)kt_fuzzyDate
{
  if (kt_fuzzyDate_onceToken[0] != -1)
  {
    [NSDate(TransparencyDate) kt_fuzzyDate];
  }

  v2 = [kt_fuzzyDate_zulu components:28 fromDate:a1];
  v3 = [kt_fuzzyDate_zulu dateFromComponents:v2];

  return v3;
}

@end