@interface ICQError
+ (id)_errorWithCode:(int64_t)code retryAfter:(id)after;
+ (id)_errorWithCode:(int64_t)code statusCode:(int64_t)statusCode;
+ (id)_formatterForHTTPDate;
+ (id)_retryAfterDateFromString:(id)string;
+ (id)_retryAfterDelayFromString:(id)string;
@end

@implementation ICQError

+ (id)_errorWithCode:(int64_t)code retryAfter:(id)after
{
  afterCopy = after;
  v7 = [self _retryAfterDelayFromString:afterCopy];
  v8 = [self _retryAfterDateFromString:afterCopy];

  dictionary = [MEMORY[0x277CBEB38] dictionary];
  v10 = dictionary;
  if (v7)
  {
    [dictionary setObject:v7 forKeyedSubscript:@"retryAfterDelay"];
  }

  if (v8)
  {
    [v10 setObject:v8 forKeyedSubscript:@"retryAfterDate"];
  }

  v11 = MEMORY[0x277CCA9B8];
  v12 = [v10 copy];
  v13 = [v11 errorWithDomain:@"com.apple.icloud.quota" code:code userInfo:v12];

  return v13;
}

+ (id)_retryAfterDelayFromString:(id)string
{
  v3 = MEMORY[0x277CCABB8];
  stringCopy = string;
  v5 = objc_alloc_init(v3);
  [v5 setNumberStyle:1];
  v6 = [v5 numberFromString:stringCopy];

  return v6;
}

+ (id)_retryAfterDateFromString:(id)string
{
  stringCopy = string;
  _formatterForHTTPDate = [self _formatterForHTTPDate];
  v6 = [_formatterForHTTPDate dateFromString:stringCopy];

  return v6;
}

+ (id)_formatterForHTTPDate
{
  v2 = objc_alloc_init(MEMORY[0x277CCA968]);
  currentLocale = [MEMORY[0x277CBEAF8] currentLocale];
  [v2 setLocale:currentLocale];

  v4 = [MEMORY[0x277CBEBB0] timeZoneForSecondsFromGMT:0];
  [v2 setTimeZone:v4];

  [v2 setDateFormat:@"E, dd MMM yyyy HH:mm:ss 'GMT'"];

  return v2;
}

+ (id)_errorWithCode:(int64_t)code statusCode:(int64_t)statusCode
{
  dictionary = [MEMORY[0x277CBEB38] dictionary];
  if (statusCode)
  {
    v7 = [MEMORY[0x277CCABB0] numberWithInteger:statusCode];
    [dictionary setObject:v7 forKeyedSubscript:@"statusCode"];
  }

  v8 = MEMORY[0x277CCA9B8];
  v9 = [dictionary copy];
  v10 = [v8 errorWithDomain:@"com.apple.icloud.quota" code:code userInfo:v9];

  return v10;
}

@end