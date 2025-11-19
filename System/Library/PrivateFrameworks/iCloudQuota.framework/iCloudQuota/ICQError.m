@interface ICQError
+ (id)_errorWithCode:(int64_t)a3 retryAfter:(id)a4;
+ (id)_errorWithCode:(int64_t)a3 statusCode:(int64_t)a4;
+ (id)_formatterForHTTPDate;
+ (id)_retryAfterDateFromString:(id)a3;
+ (id)_retryAfterDelayFromString:(id)a3;
@end

@implementation ICQError

+ (id)_errorWithCode:(int64_t)a3 retryAfter:(id)a4
{
  v6 = a4;
  v7 = [a1 _retryAfterDelayFromString:v6];
  v8 = [a1 _retryAfterDateFromString:v6];

  v9 = [MEMORY[0x277CBEB38] dictionary];
  v10 = v9;
  if (v7)
  {
    [v9 setObject:v7 forKeyedSubscript:@"retryAfterDelay"];
  }

  if (v8)
  {
    [v10 setObject:v8 forKeyedSubscript:@"retryAfterDate"];
  }

  v11 = MEMORY[0x277CCA9B8];
  v12 = [v10 copy];
  v13 = [v11 errorWithDomain:@"com.apple.icloud.quota" code:a3 userInfo:v12];

  return v13;
}

+ (id)_retryAfterDelayFromString:(id)a3
{
  v3 = MEMORY[0x277CCABB8];
  v4 = a3;
  v5 = objc_alloc_init(v3);
  [v5 setNumberStyle:1];
  v6 = [v5 numberFromString:v4];

  return v6;
}

+ (id)_retryAfterDateFromString:(id)a3
{
  v4 = a3;
  v5 = [a1 _formatterForHTTPDate];
  v6 = [v5 dateFromString:v4];

  return v6;
}

+ (id)_formatterForHTTPDate
{
  v2 = objc_alloc_init(MEMORY[0x277CCA968]);
  v3 = [MEMORY[0x277CBEAF8] currentLocale];
  [v2 setLocale:v3];

  v4 = [MEMORY[0x277CBEBB0] timeZoneForSecondsFromGMT:0];
  [v2 setTimeZone:v4];

  [v2 setDateFormat:@"E, dd MMM yyyy HH:mm:ss 'GMT'"];

  return v2;
}

+ (id)_errorWithCode:(int64_t)a3 statusCode:(int64_t)a4
{
  v6 = [MEMORY[0x277CBEB38] dictionary];
  if (a4)
  {
    v7 = [MEMORY[0x277CCABB0] numberWithInteger:a4];
    [v6 setObject:v7 forKeyedSubscript:@"statusCode"];
  }

  v8 = MEMORY[0x277CCA9B8];
  v9 = [v6 copy];
  v10 = [v8 errorWithDomain:@"com.apple.icloud.quota" code:a3 userInfo:v9];

  return v10;
}

@end