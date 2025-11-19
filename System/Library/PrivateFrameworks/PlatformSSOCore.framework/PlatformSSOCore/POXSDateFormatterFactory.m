@interface POXSDateFormatterFactory
+ (id)newDateFormatter;
+ (id)newDateFormatters;
+ (id)newDateTimeFormatterWithTimeZoneStyle:(int64_t)a3;
+ (id)newDateTimeFormatters;
+ (id)newTimeFormatterWithTimeZoneStyle:(int64_t)a3;
+ (id)newTimeFormatters;
@end

@implementation POXSDateFormatterFactory

+ (id)newDateTimeFormatterWithTimeZoneStyle:(int64_t)a3
{
  if (a3 > 2)
  {
    return 0;
  }

  v3 = off_279A3E450[a3];
  v4 = objc_opt_new();
  v5 = [objc_alloc(MEMORY[0x277CBEAF8]) initWithLocaleIdentifier:@"en_US_POSIX"];
  [v4 setLocale:v5];
  [v4 setDateFormat:v3];
  v6 = [objc_alloc(MEMORY[0x277CBEBB0]) initWithName:@"UTC"];
  [v4 setTimeZone:v6];
  v7 = [v4 calendar];
  [v7 setTimeZone:v6];

  return v4;
}

+ (id)newDateTimeFormatters
{
  v21[4] = *MEMORY[0x277D85DE8];
  v2 = objc_opt_new();
  v3 = [objc_alloc(MEMORY[0x277CBEAF8]) initWithLocaleIdentifier:@"en_US_POSIX"];
  [v2 setLocale:v3];
  [v2 setDateFormat:@"y'-'M'-'d'T'HH':'mm':'ssXXX"];
  v4 = [objc_alloc(MEMORY[0x277CBEBB0]) initWithName:@"UTC"];
  [v2 setTimeZone:v4];
  v5 = [v2 calendar];
  [v5 setTimeZone:v4];

  [v2 setLenient:1];
  v6 = objc_opt_new();
  v7 = [objc_alloc(MEMORY[0x277CBEAF8]) initWithLocaleIdentifier:@"en_US_POSIX"];
  [v6 setLocale:v7];
  [v6 setDateFormat:@"y'-'M'-'d'T'HH':'mm':'ss"];
  v8 = [objc_alloc(MEMORY[0x277CBEBB0]) initWithName:@"UTC"];
  [v6 setTimeZone:v8];
  v9 = [v6 calendar];
  [v9 setTimeZone:v8];

  [v6 setLenient:1];
  v10 = objc_opt_new();
  v11 = [objc_alloc(MEMORY[0x277CBEAF8]) initWithLocaleIdentifier:@"en_US_POSIX"];
  [v10 setLocale:v11];
  [v10 setDateFormat:@"y'-'M'-'d'T'HH':'mm':'ss'.'SXXX"];
  v12 = [objc_alloc(MEMORY[0x277CBEBB0]) initWithName:@"UTC"];
  [v10 setTimeZone:v12];
  v13 = [v10 calendar];
  [v13 setTimeZone:v12];

  [v10 setLenient:1];
  v14 = objc_opt_new();
  v15 = [objc_alloc(MEMORY[0x277CBEAF8]) initWithLocaleIdentifier:@"en_US_POSIX"];
  [v14 setLocale:v15];
  [v14 setDateFormat:@"y'-'M'-'d'T'HH':'mm':'ss'.'S"];
  v16 = [objc_alloc(MEMORY[0x277CBEBB0]) initWithName:@"UTC"];
  [v14 setTimeZone:v16];
  v17 = [v14 calendar];
  [v17 setTimeZone:v16];

  [v14 setLenient:1];
  v21[0] = v2;
  v21[1] = v6;
  v21[2] = v10;
  v21[3] = v14;
  v18 = [MEMORY[0x277CBEA60] arrayWithObjects:v21 count:4];

  v19 = *MEMORY[0x277D85DE8];
  return v18;
}

+ (id)newDateFormatter
{
  v2 = objc_opt_new();
  v3 = [objc_alloc(MEMORY[0x277CBEAF8]) initWithLocaleIdentifier:@"en_US_POSIX"];
  [v2 setLocale:v3];
  [v2 setDateFormat:@"uuuu'-'MM'-'dd"];
  v4 = [objc_alloc(MEMORY[0x277CBEBB0]) initWithName:@"UTC"];
  [v2 setTimeZone:v4];
  v5 = [v2 calendar];
  [v5 setTimeZone:v4];

  return v2;
}

+ (id)newDateFormatters
{
  v13[2] = *MEMORY[0x277D85DE8];
  v2 = objc_opt_new();
  v3 = [objc_alloc(MEMORY[0x277CBEAF8]) initWithLocaleIdentifier:@"en_US_POSIX"];
  [v2 setLocale:v3];
  [v2 setDateFormat:@"y'-'M'-'dXXX"];
  v4 = [objc_alloc(MEMORY[0x277CBEBB0]) initWithName:@"UTC"];
  [v2 setTimeZone:v4];
  v5 = [v2 calendar];
  [v5 setTimeZone:v4];

  [v2 setLenient:1];
  v6 = objc_opt_new();
  v7 = [objc_alloc(MEMORY[0x277CBEAF8]) initWithLocaleIdentifier:@"en_US_POSIX"];
  [v6 setLocale:v7];
  [v6 setDateFormat:@"y'-'M'-'d"];
  v8 = [objc_alloc(MEMORY[0x277CBEBB0]) initWithName:@"UTC"];
  [v6 setTimeZone:v8];
  v9 = [v6 calendar];
  [v9 setTimeZone:v8];

  [v6 setLenient:1];
  v13[0] = v2;
  v13[1] = v6;
  v10 = [MEMORY[0x277CBEA60] arrayWithObjects:v13 count:2];

  v11 = *MEMORY[0x277D85DE8];
  return v10;
}

+ (id)newTimeFormatterWithTimeZoneStyle:(int64_t)a3
{
  if (a3 > 2)
  {
    return 0;
  }

  v3 = off_279A3E468[a3];
  v4 = objc_opt_new();
  v5 = [objc_alloc(MEMORY[0x277CBEAF8]) initWithLocaleIdentifier:@"en_US_POSIX"];
  [v4 setLocale:v5];
  [v4 setDateFormat:v3];
  v6 = [objc_alloc(MEMORY[0x277CBEBB0]) initWithName:@"UTC"];
  [v4 setTimeZone:v6];
  v7 = [v4 calendar];
  [v7 setTimeZone:v6];

  return v4;
}

+ (id)newTimeFormatters
{
  v21[4] = *MEMORY[0x277D85DE8];
  v2 = objc_opt_new();
  v3 = [objc_alloc(MEMORY[0x277CBEAF8]) initWithLocaleIdentifier:@"en_US_POSIX"];
  [v2 setLocale:v3];
  [v2 setDateFormat:@"HH':'mm':'ssXXX"];
  v4 = [objc_alloc(MEMORY[0x277CBEBB0]) initWithName:@"UTC"];
  [v2 setTimeZone:v4];
  v5 = [v2 calendar];
  [v5 setTimeZone:v4];

  [v2 setLenient:1];
  v6 = objc_opt_new();
  v7 = [objc_alloc(MEMORY[0x277CBEAF8]) initWithLocaleIdentifier:@"en_US_POSIX"];
  [v6 setLocale:v7];
  [v6 setDateFormat:@"HH':'mm':'ss"];
  v8 = [objc_alloc(MEMORY[0x277CBEBB0]) initWithName:@"UTC"];
  [v6 setTimeZone:v8];
  v9 = [v6 calendar];
  [v9 setTimeZone:v8];

  [v6 setLenient:1];
  v10 = objc_opt_new();
  v11 = [objc_alloc(MEMORY[0x277CBEAF8]) initWithLocaleIdentifier:@"en_US_POSIX"];
  [v10 setLocale:v11];
  [v10 setDateFormat:@"HH':'mm':'ss'.'SXXX"];
  v12 = [objc_alloc(MEMORY[0x277CBEBB0]) initWithName:@"UTC"];
  [v10 setTimeZone:v12];
  v13 = [v10 calendar];
  [v13 setTimeZone:v12];

  [v10 setLenient:1];
  v14 = objc_opt_new();
  v15 = [objc_alloc(MEMORY[0x277CBEAF8]) initWithLocaleIdentifier:@"en_US_POSIX"];
  [v14 setLocale:v15];
  [v14 setDateFormat:@"HH':'mm':'ss'.'S"];
  v16 = [objc_alloc(MEMORY[0x277CBEBB0]) initWithName:@"UTC"];
  [v14 setTimeZone:v16];
  v17 = [v14 calendar];
  [v17 setTimeZone:v16];

  [v14 setLenient:1];
  v21[0] = v2;
  v21[1] = v6;
  v21[2] = v10;
  v21[3] = v14;
  v18 = [MEMORY[0x277CBEA60] arrayWithObjects:v21 count:4];

  v19 = *MEMORY[0x277D85DE8];
  return v18;
}

@end