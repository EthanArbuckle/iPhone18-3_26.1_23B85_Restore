@interface NSNumber(ICSWriter)
- (void)_ICSBoolAppendingToString:()ICSWriter;
- (void)_ICSFBTypeAppendingToString:()ICSWriter;
- (void)_ICSStringWithOptions:()ICSWriter appendingToString:;
- (void)_ICSUTCOffsetAppendingToString:()ICSWriter;
@end

@implementation NSNumber(ICSWriter)

- (void)_ICSBoolAppendingToString:()ICSWriter
{
  v5 = a3;
  if ([self BOOLValue])
  {
    v4 = @"TRUE";
  }

  else
  {
    v4 = @"FALSE";
  }

  [v5 appendString:v4];
}

- (void)_ICSUTCOffsetAppendingToString:()ICSWriter
{
  v11 = a3;
  intValue = [self intValue];
  if (intValue >= 0)
  {
    v5 = @"+";
  }

  else
  {
    v5 = @"-";
  }

  [v11 appendString:v5];
  LODWORD(v6) = intValue % 86400 / 3600;
  if (v6 >= 0)
  {
    v6 = v6;
  }

  else
  {
    v6 = (intValue % 86400 / -3600);
  }

  v7 = intValue % 3600 + ((-30583 * (intValue % 3600)) >> 16);
  LODWORD(v8) = (v7 >> 5) + ((v7 & 0x8000) >> 15);
  if (v8 >= 0)
  {
    v8 = v8;
  }

  else
  {
    v8 = -v8;
  }

  LODWORD(v9) = intValue % 60;
  if (intValue % 60)
  {
    if (v9 >= 0)
    {
      v9 = v9;
    }

    else
    {
      v9 = -v9;
    }

    [v11 appendFormat:@"%02d%02d%02d", v6, v8, v9];
  }

  else
  {
    [v11 appendFormat:@"%02d%02d", v6, v8, v10];
  }
}

- (void)_ICSFBTypeAppendingToString:()ICSWriter
{
  v5 = a3;
  longValue = [self longValue];
  if (longValue <= 4)
  {
    [v5 appendString:off_27A64C170[longValue]];
  }
}

- (void)_ICSStringWithOptions:()ICSWriter appendingToString:
{
  v6 = a4;
  stringValue = [self stringValue];
  iCalendarAppendStringToStringWithOptions(stringValue, v6, a3);
}

@end