@interface NSError(PSGraphError)
+ (id)internalErrorWithCode:()PSGraphError description:;
+ (id)internalErrorWithCode:()PSGraphError underlyingError:;
@end

@implementation NSError(PSGraphError)

+ (id)internalErrorWithCode:()PSGraphError description:
{
  v13[1] = *MEMORY[0x277D85DE8];
  v5 = MEMORY[0x277CCA9B8];
  v12 = *MEMORY[0x277CCA450];
  v13[0] = a4;
  v6 = MEMORY[0x277CBEAC0];
  v7 = a4;
  v8 = [v6 dictionaryWithObjects:v13 forKeys:&v12 count:1];
  v9 = [v5 internalErrorWithCode:a3 userInfo:v8];

  v10 = *MEMORY[0x277D85DE8];

  return v9;
}

+ (id)internalErrorWithCode:()PSGraphError underlyingError:
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
  v10 = [v5 internalErrorWithCode:a3 userInfo:v9];

  v11 = *MEMORY[0x277D85DE8];

  return v10;
}

@end