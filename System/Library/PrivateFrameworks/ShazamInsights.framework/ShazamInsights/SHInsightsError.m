@interface SHInsightsError
+ (id)errorWithCode:(int64_t)a3 underlyingError:(id)a4 keyOverrides:(id)a5;
+ (id)messageForCode:(int64_t)a3;
@end

@implementation SHInsightsError

+ (id)messageForCode:(int64_t)a3
{
  v3 = @"There was a problem fetching the data";
  if (a3 == 200)
  {
    v3 = @"The requested data was not found, please amend your query";
  }

  if (a3 == 201)
  {
    return @"The data was found but it was invalid";
  }

  else
  {
    return v3;
  }
}

+ (id)errorWithCode:(int64_t)a3 underlyingError:(id)a4 keyOverrides:(id)a5
{
  v8 = MEMORY[0x277CBEB38];
  v9 = a5;
  v10 = a4;
  v11 = [v8 dictionary];
  [v11 setValue:v10 forKey:*MEMORY[0x277CCA7E8]];

  v12 = [a1 messageForCode:a3];
  [v11 setValue:v12 forKey:*MEMORY[0x277CCA068]];

  [v11 setValuesForKeysWithDictionary:v9];
  v13 = [MEMORY[0x277CCA9B8] errorWithDomain:@"com.apple.ShazamInsights" code:a3 userInfo:v11];

  return v13;
}

@end