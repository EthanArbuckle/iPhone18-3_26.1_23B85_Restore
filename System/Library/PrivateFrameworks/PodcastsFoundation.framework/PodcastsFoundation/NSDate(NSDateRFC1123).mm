@interface NSDate(NSDateRFC1123)
+ (id)dateFromRFC1123:()NSDateRFC1123;
- (uint64_t)rfc1123String;
@end

@implementation NSDate(NSDateRFC1123)

+ (id)dateFromRFC1123:()NSDateRFC1123
{
  v3 = a3;
  if (v3)
  {
    v4 = dateFromRFC1123__rfc1123;
    if (!dateFromRFC1123__rfc1123)
    {
      v5 = objc_alloc_init(MEMORY[0x1E696AB78]);
      v6 = dateFromRFC1123__rfc1123;
      dateFromRFC1123__rfc1123 = v5;

      v7 = [objc_alloc(MEMORY[0x1E695DF58]) initWithLocaleIdentifier:@"en_US"];
      [dateFromRFC1123__rfc1123 setLocale:v7];

      v8 = [MEMORY[0x1E695DFE8] timeZoneWithAbbreviation:@"GMT"];
      [dateFromRFC1123__rfc1123 setTimeZone:v8];

      [dateFromRFC1123__rfc1123 setDateFormat:@"EEE', ' dd MMM yyyy HH':'mm':'ss z"];
      v4 = dateFromRFC1123__rfc1123;
    }

    v9 = [v4 dateFromString:v3];
    if (!v9)
    {
      v10 = dateFromRFC1123__rfc850;
      if (!dateFromRFC1123__rfc850)
      {
        v11 = objc_alloc_init(MEMORY[0x1E696AB78]);
        v12 = dateFromRFC1123__rfc850;
        dateFromRFC1123__rfc850 = v11;

        v13 = [dateFromRFC1123__rfc1123 locale];
        [dateFromRFC1123__rfc850 setLocale:v13];

        v14 = [dateFromRFC1123__rfc1123 timeZone];
        [dateFromRFC1123__rfc850 setTimeZone:v14];

        [dateFromRFC1123__rfc850 setDateFormat:@"EEEE', ' dd'-'MMM'-'yy HH':'mm':'ss z"];
        v10 = dateFromRFC1123__rfc850;
      }

      v9 = [v10 dateFromString:v3];
      if (!v9)
      {
        v15 = dateFromRFC1123__asctime;
        if (!dateFromRFC1123__asctime)
        {
          v16 = objc_alloc_init(MEMORY[0x1E696AB78]);
          v17 = dateFromRFC1123__asctime;
          dateFromRFC1123__asctime = v16;

          v18 = [dateFromRFC1123__rfc1123 locale];
          [dateFromRFC1123__asctime setLocale:v18];

          v19 = [dateFromRFC1123__rfc1123 timeZone];
          [dateFromRFC1123__asctime setTimeZone:v19];

          [dateFromRFC1123__asctime setDateFormat:@"EEE MMM d HH':'mm':'ss yyyy"];
          v15 = dateFromRFC1123__asctime;
        }

        v9 = [v15 dateFromString:v3];
      }
    }

    v20 = v9;
  }

  else
  {
    v20 = 0;
  }

  return v20;
}

- (uint64_t)rfc1123String
{
  v2 = rfc1123String_df;
  if (!rfc1123String_df)
  {
    v3 = objc_alloc_init(MEMORY[0x1E696AB78]);
    v4 = rfc1123String_df;
    rfc1123String_df = v3;

    v5 = [objc_alloc(MEMORY[0x1E695DF58]) initWithLocaleIdentifier:@"en_US"];
    [rfc1123String_df setLocale:v5];

    v6 = [MEMORY[0x1E695DFE8] timeZoneWithAbbreviation:@"GMT"];
    [rfc1123String_df setTimeZone:v6];

    [rfc1123String_df setDateFormat:@"EEE', ' dd MMM yyyy HH':'mm':'ss 'GMT'"];
    v2 = rfc1123String_df;
  }

  return [v2 stringFromDate:a1];
}

@end