@interface FedStatsError
+ (id)errorWithCode:(int64_t)a3 description:(id)a4;
+ (id)errorWithCode:(int64_t)a3 underlyingError:(id)a4 description:(id)a5;
+ (id)errorWithCode:(int64_t)a3 underlyingErrors:(id)a4 description:(id)a5;
@end

@implementation FedStatsError

+ (id)errorWithCode:(int64_t)a3 description:(id)a4
{
  v13[1] = *MEMORY[0x277D85DE8];
  v5 = MEMORY[0x277CCA9B8];
  v6 = a4;
  v7 = [v5 alloc];
  v12 = *MEMORY[0x277CCA450];
  v13[0] = v6;
  v8 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v13 forKeys:&v12 count:1];

  v9 = [v7 initWithDomain:@"com.apple.FedStats" code:a3 userInfo:v8];
  v10 = *MEMORY[0x277D85DE8];

  return v9;
}

+ (id)errorWithCode:(int64_t)a3 underlyingError:(id)a4 description:(id)a5
{
  v19[2] = *MEMORY[0x277D85DE8];
  if (a4)
  {
    v7 = MEMORY[0x277CCA9B8];
    v8 = a5;
    v9 = a4;
    v10 = [v7 alloc];
    v11 = *MEMORY[0x277CCA7E8];
    v18[0] = *MEMORY[0x277CCA450];
    v18[1] = v11;
    v19[0] = v8;
    v19[1] = v9;
    v12 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v19 forKeys:v18 count:2];

    v13 = [v10 initWithDomain:@"com.apple.FedStats" code:a3 userInfo:v12];
  }

  else
  {
    v14 = a5;
    v15 = 0;
    v13 = [FedStatsError errorWithCode:a3 description:v14];
  }

  v16 = *MEMORY[0x277D85DE8];

  return v13;
}

+ (id)errorWithCode:(int64_t)a3 underlyingErrors:(id)a4 description:(id)a5
{
  v17[2] = *MEMORY[0x277D85DE8];
  v7 = MEMORY[0x277CCA9B8];
  v8 = a5;
  v9 = a4;
  v10 = [v7 alloc];
  v11 = *MEMORY[0x277CCA578];
  v16[0] = *MEMORY[0x277CCA450];
  v16[1] = v11;
  v17[0] = v8;
  v17[1] = v9;
  v12 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v17 forKeys:v16 count:2];

  v13 = [v10 initWithDomain:@"com.apple.FedStats" code:a3 userInfo:v12];
  v14 = *MEMORY[0x277D85DE8];

  return v13;
}

@end