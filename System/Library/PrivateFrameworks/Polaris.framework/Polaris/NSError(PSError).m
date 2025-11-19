@interface NSError(PSError)
+ (id)polarisErrorWithCode:()PSError description:;
+ (id)polarisErrorWithCode:()PSError description:recoverySuggestion:;
+ (id)polarisErrorWithCode:()PSError underlyingError:;
@end

@implementation NSError(PSError)

+ (id)polarisErrorWithCode:()PSError description:
{
  v13[1] = *MEMORY[0x277D85DE8];
  v5 = MEMORY[0x277CCA9B8];
  v12 = *MEMORY[0x277CCA450];
  v13[0] = a4;
  v6 = MEMORY[0x277CBEAC0];
  v7 = a4;
  v8 = [v6 dictionaryWithObjects:v13 forKeys:&v12 count:1];
  v9 = [v5 polarisErrorWithCode:a3 userInfo:v8];

  v10 = *MEMORY[0x277D85DE8];

  return v9;
}

+ (id)polarisErrorWithCode:()PSError description:recoverySuggestion:
{
  v17[2] = *MEMORY[0x277D85DE8];
  v7 = MEMORY[0x277CCA9B8];
  v8 = *MEMORY[0x277CCA498];
  v16[0] = *MEMORY[0x277CCA450];
  v16[1] = v8;
  v17[0] = a4;
  v17[1] = a5;
  v9 = MEMORY[0x277CBEAC0];
  v10 = a5;
  v11 = a4;
  v12 = [v9 dictionaryWithObjects:v17 forKeys:v16 count:2];
  v13 = [v7 polarisErrorWithCode:a3 userInfo:v12];

  v14 = *MEMORY[0x277D85DE8];

  return v13;
}

+ (id)polarisErrorWithCode:()PSError underlyingError:
{
  v14[2] = *MEMORY[0x277D85DE8];
  v5 = MEMORY[0x277CCA9B8];
  v6 = *MEMORY[0x277CCA7E8];
  v13[0] = *MEMORY[0x277CCA450];
  v13[1] = v6;
  v14[0] = @"Subsystem error";
  v14[1] = a4;
  v7 = MEMORY[0x277CBEAC0];
  v8 = a4;
  v9 = [v7 dictionaryWithObjects:v14 forKeys:v13 count:2];
  v10 = [v5 polarisErrorWithCode:a3 userInfo:v9];

  v11 = *MEMORY[0x277D85DE8];

  return v10;
}

@end