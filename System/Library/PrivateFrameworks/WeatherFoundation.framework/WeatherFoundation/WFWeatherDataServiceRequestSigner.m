@interface WFWeatherDataServiceRequestSigner
+ (id)buildAuthHeader:(id)a3 withSecret:(id)a4 andDate:(id)a5;
+ (id)roundDate:(id)a3 toMinutes:(unint64_t)a4;
+ (void)signRequest:(id)a3 withDate:(id)a4;
+ (void)signRequest:(id)a3 withSecret:(id)a4 andDate:(id)a5;
@end

@implementation WFWeatherDataServiceRequestSigner

+ (void)signRequest:(id)a3 withDate:(id)a4
{
  v5 = a4;
  v6 = a3;
  [objc_opt_class() signRequest:v6 withSecret:@"m7K5xE7hT9lf4luzWj6CO9PDWdtkoNQbI3akfwHNu+A=" andDate:v5];
}

+ (void)signRequest:(id)a3 withSecret:(id)a4 andDate:(id)a5
{
  v9 = a3;
  v6 = a5;
  v7 = [v9 URL];
  if (v7)
  {
    v8 = [objc_opt_class() buildAuthHeader:v7 withSecret:@"m7K5xE7hT9lf4luzWj6CO9PDWdtkoNQbI3akfwHNu+A=" andDate:v6];
    [v9 addValue:v8 forHTTPHeaderField:@"Authorization"];
  }
}

+ (id)buildAuthHeader:(id)a3 withSecret:(id)a4 andDate:(id)a5
{
  v27 = *MEMORY[0x277D85DE8];
  v7 = MEMORY[0x277CBEA90];
  v8 = a5;
  v9 = a4;
  v10 = a3;
  v11 = [[v7 alloc] initWithBase64EncodedString:v9 options:0];

  v12 = [@"GET" dataUsingEncoding:4];
  v13 = [objc_alloc(MEMORY[0x277CCACE0]) initWithURL:v10 resolvingAgainstBaseURL:0];

  [v13 setScheme:0];
  v14 = [v13 string];
  v15 = [v14 stringByReplacingOccurrencesOfString:@"//" withString:&stru_28823D638];

  v24 = v15;
  v16 = [v15 dataUsingEncoding:4];
  if (buildAuthHeader_withSecret_andDate__onceToken != -1)
  {
    +[WFWeatherDataServiceRequestSigner buildAuthHeader:withSecret:andDate:];
  }

  v17 = [objc_opt_class() roundDate:v8 toMinutes:3];

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

+ (id)roundDate:(id)a3 toMinutes:(unint64_t)a4
{
  v5 = MEMORY[0x277CBEA80];
  v6 = a3;
  v7 = [v5 currentCalendar];
  v8 = [v7 components:3145852 fromDate:v6];

  [v8 setCalendar:v7];
  [v8 setMinute:{objc_msgSend(v8, "minute") / a4 * a4}];
  v9 = [v7 dateFromComponents:v8];

  return v9;
}

@end