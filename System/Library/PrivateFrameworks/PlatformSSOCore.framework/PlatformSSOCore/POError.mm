@interface POError
+ (id)errorWithCode:(int64_t)code underlyingError:(id)error description:(id)description;
+ (id)internalErrorWithMessage:(id)message;
@end

@implementation POError

+ (id)errorWithCode:(int64_t)code underlyingError:(id)error description:(id)description
{
  errorCopy = error;
  descriptionCopy = description;
  v9 = objc_alloc_init(MEMORY[0x277CBEB38]);
  v10 = v9;
  if (errorCopy)
  {
    [v9 setObject:errorCopy forKeyedSubscript:*MEMORY[0x277CCA7E8]];
  }

  if (descriptionCopy)
  {
    [v10 setObject:descriptionCopy forKeyedSubscript:*MEMORY[0x277CCA450]];
  }

  v11 = [[POError alloc] initWithDomain:@"com.apple.PlatformSSO" code:code userInfo:v10];

  return v11;
}

+ (id)internalErrorWithMessage:(id)message
{
  v10[1] = *MEMORY[0x277D85DE8];
  messageCopy = message;
  v4 = [POError alloc];
  v9 = *MEMORY[0x277CCA450];
  v10[0] = messageCopy;
  v5 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v10 forKeys:&v9 count:1];

  v6 = [(POError *)v4 initWithDomain:@"com.apple.PlatformSSO" code:-1000 userInfo:v5];
  v7 = *MEMORY[0x277D85DE8];

  return v6;
}

@end