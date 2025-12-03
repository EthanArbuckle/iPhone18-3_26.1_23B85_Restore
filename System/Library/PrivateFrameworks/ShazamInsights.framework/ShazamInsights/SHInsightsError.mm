@interface SHInsightsError
+ (id)errorWithCode:(int64_t)code underlyingError:(id)error keyOverrides:(id)overrides;
+ (id)messageForCode:(int64_t)code;
@end

@implementation SHInsightsError

+ (id)messageForCode:(int64_t)code
{
  v3 = @"There was a problem fetching the data";
  if (code == 200)
  {
    v3 = @"The requested data was not found, please amend your query";
  }

  if (code == 201)
  {
    return @"The data was found but it was invalid";
  }

  else
  {
    return v3;
  }
}

+ (id)errorWithCode:(int64_t)code underlyingError:(id)error keyOverrides:(id)overrides
{
  v8 = MEMORY[0x277CBEB38];
  overridesCopy = overrides;
  errorCopy = error;
  dictionary = [v8 dictionary];
  [dictionary setValue:errorCopy forKey:*MEMORY[0x277CCA7E8]];

  v12 = [self messageForCode:code];
  [dictionary setValue:v12 forKey:*MEMORY[0x277CCA068]];

  [dictionary setValuesForKeysWithDictionary:overridesCopy];
  v13 = [MEMORY[0x277CCA9B8] errorWithDomain:@"com.apple.ShazamInsights" code:code userInfo:dictionary];

  return v13;
}

@end