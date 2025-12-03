@interface FedStatsError
+ (id)errorWithCode:(int64_t)code description:(id)description;
+ (id)errorWithCode:(int64_t)code underlyingError:(id)error description:(id)description;
+ (id)errorWithCode:(int64_t)code underlyingErrors:(id)errors description:(id)description;
@end

@implementation FedStatsError

+ (id)errorWithCode:(int64_t)code description:(id)description
{
  v13[1] = *MEMORY[0x277D85DE8];
  v5 = MEMORY[0x277CCA9B8];
  descriptionCopy = description;
  v7 = [v5 alloc];
  v12 = *MEMORY[0x277CCA450];
  v13[0] = descriptionCopy;
  v8 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v13 forKeys:&v12 count:1];

  v9 = [v7 initWithDomain:@"com.apple.FedStats" code:code userInfo:v8];
  v10 = *MEMORY[0x277D85DE8];

  return v9;
}

+ (id)errorWithCode:(int64_t)code underlyingError:(id)error description:(id)description
{
  v19[2] = *MEMORY[0x277D85DE8];
  if (error)
  {
    v7 = MEMORY[0x277CCA9B8];
    descriptionCopy = description;
    errorCopy = error;
    v10 = [v7 alloc];
    v11 = *MEMORY[0x277CCA7E8];
    v18[0] = *MEMORY[0x277CCA450];
    v18[1] = v11;
    v19[0] = descriptionCopy;
    v19[1] = errorCopy;
    v12 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v19 forKeys:v18 count:2];

    v13 = [v10 initWithDomain:@"com.apple.FedStats" code:code userInfo:v12];
  }

  else
  {
    descriptionCopy2 = description;
    v15 = 0;
    v13 = [FedStatsError errorWithCode:code description:descriptionCopy2];
  }

  v16 = *MEMORY[0x277D85DE8];

  return v13;
}

+ (id)errorWithCode:(int64_t)code underlyingErrors:(id)errors description:(id)description
{
  v17[2] = *MEMORY[0x277D85DE8];
  v7 = MEMORY[0x277CCA9B8];
  descriptionCopy = description;
  errorsCopy = errors;
  v10 = [v7 alloc];
  v11 = *MEMORY[0x277CCA578];
  v16[0] = *MEMORY[0x277CCA450];
  v16[1] = v11;
  v17[0] = descriptionCopy;
  v17[1] = errorsCopy;
  v12 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v17 forKeys:v16 count:2];

  v13 = [v10 initWithDomain:@"com.apple.FedStats" code:code userInfo:v12];
  v14 = *MEMORY[0x277D85DE8];

  return v13;
}

@end