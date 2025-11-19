@interface POError
+ (id)errorWithCode:(int64_t)a3 underlyingError:(id)a4 description:(id)a5;
+ (id)internalErrorWithMessage:(id)a3;
@end

@implementation POError

+ (id)errorWithCode:(int64_t)a3 underlyingError:(id)a4 description:(id)a5
{
  v7 = a4;
  v8 = a5;
  v9 = objc_alloc_init(MEMORY[0x277CBEB38]);
  v10 = v9;
  if (v7)
  {
    [v9 setObject:v7 forKeyedSubscript:*MEMORY[0x277CCA7E8]];
  }

  if (v8)
  {
    [v10 setObject:v8 forKeyedSubscript:*MEMORY[0x277CCA450]];
  }

  v11 = [[POError alloc] initWithDomain:@"com.apple.PlatformSSO" code:a3 userInfo:v10];

  return v11;
}

+ (id)internalErrorWithMessage:(id)a3
{
  v10[1] = *MEMORY[0x277D85DE8];
  v3 = a3;
  v4 = [POError alloc];
  v9 = *MEMORY[0x277CCA450];
  v10[0] = v3;
  v5 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v10 forKeys:&v9 count:1];

  v6 = [(POError *)v4 initWithDomain:@"com.apple.PlatformSSO" code:-1000 userInfo:v5];
  v7 = *MEMORY[0x277D85DE8];

  return v6;
}

@end