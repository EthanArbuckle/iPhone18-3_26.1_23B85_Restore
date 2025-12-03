@interface WFWeatherDataServiceRequestSigner
+ (id)buildAuthHeader:(id)header withSecret:(id)secret andDate:(id)date;
+ (id)roundDate:(id)date toMinutes:(unint64_t)minutes;
+ (void)signRequest:(id)request withDate:(id)date;
+ (void)signRequest:(id)request withSecret:(id)secret andDate:(id)date;
@end

@implementation WFWeatherDataServiceRequestSigner

+ (void)signRequest:(id)request withDate:(id)date
{
  dateCopy = date;
  requestCopy = request;
  [objc_opt_class() signRequest:requestCopy withSecret:@"m7K5xE7hT9lf4luzWj6CO9PDWdtkoNQbI3akfwHNu+A=" andDate:dateCopy];
}

+ (void)signRequest:(id)request withSecret:(id)secret andDate:(id)date
{
  requestCopy = request;
  dateCopy = date;
  v7 = [requestCopy URL];
  if (v7)
  {
    v8 = [objc_opt_class() buildAuthHeader:v7 withSecret:@"m7K5xE7hT9lf4luzWj6CO9PDWdtkoNQbI3akfwHNu+A=" andDate:dateCopy];
    [requestCopy addValue:v8 forHTTPHeaderField:@"Authorization"];
  }
}

+ (id)buildAuthHeader:(id)header withSecret:(id)secret andDate:(id)date
{
  v27 = *MEMORY[0x277D85DE8];
  v7 = MEMORY[0x277CBEA90];
  dateCopy = date;
  secretCopy = secret;
  headerCopy = header;
  v11 = [[v7 alloc] initWithBase64EncodedString:secretCopy options:0];

  v12 = [@"GET" dataUsingEncoding:4];
  v13 = [objc_alloc(MEMORY[0x277CCACE0]) initWithURL:headerCopy resolvingAgainstBaseURL:0];

  [v13 setScheme:0];
  string = [v13 string];
  v15 = [string stringByReplacingOccurrencesOfString:@"//" withString:&stru_28823D638];

  v24 = v15;
  v16 = [v15 dataUsingEncoding:4];
  if (buildAuthHeader_withSecret_andDate__onceToken != -1)
  {
    +[WFWeatherDataServiceRequestSigner buildAuthHeader:withSecret:andDate:];
  }

  v17 = [objc_opt_class() roundDate:dateCopy toMinutes:3];

  v18 = [buildAuthHeader_withSecret_andDate__formatter stringFromDate:v17];
  v19 = [v18 dataUsingEncoding:4];
  memset(&ctx, 0, sizeof(ctx));
  CCHmacInit(&ctx, 2u, [v11 bytes], objc_msgSend(v11, "length"));
  CCHmacUpdate(&ctx, [v12 bytes], objc_msgSend(v12, "length"));
  CCHmacUpdate(&ctx, [v16 bytes], objc_msgSend(v16, "length"));
  CCHmacUpdate(&ctx, [v19 bytes], objc_msgSend(v19, "length"));
  CCHmacFinal(&ctx, macOut);
  v20 = [MEMORY[0x277CBEA90] dataWithBytes:macOut length:32];
  v21 = [v20 base64EncodedStringWithOptions:0];
  v22 = [MEMORY[0x277CCACA8] stringWithFormat:@"HHMACdate=%@;signature=%@", v18, v21];;

  return v22;
}

uint64_t __72__WFWeatherDataServiceRequestSigner_buildAuthHeader_withSecret_andDate___block_invoke()
{
  v0 = objc_opt_new();
  v1 = buildAuthHeader_withSecret_andDate__formatter;
  buildAuthHeader_withSecret_andDate__formatter = v0;

  return MEMORY[0x2821F96F8](v0, v1);
}

+ (id)roundDate:(id)date toMinutes:(unint64_t)minutes
{
  v5 = MEMORY[0x277CBEA80];
  dateCopy = date;
  currentCalendar = [v5 currentCalendar];
  v8 = [currentCalendar components:3145852 fromDate:dateCopy];

  [v8 setCalendar:currentCalendar];
  [v8 setMinute:{objc_msgSend(v8, "minute") / minutes * minutes}];
  v9 = [currentCalendar dateFromComponents:v8];

  return v9;
}

@end