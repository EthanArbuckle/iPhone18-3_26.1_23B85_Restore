@interface NSError(TRICloudKit)
+ (id)triCloudKitErrorWithMessage:()TRICloudKit;
+ (id)triCloudKitErrorWithMessage:()TRICloudKit code:;
@end

@implementation NSError(TRICloudKit)

+ (id)triCloudKitErrorWithMessage:()TRICloudKit code:
{
  v16[2] = *MEMORY[0x277D85DE8];
  v15[0] = *MEMORY[0x277CCA450];
  v5 = MEMORY[0x277CCA8D8];
  v6 = a3;
  mainBundle = [v5 mainBundle];
  v8 = [mainBundle localizedStringForKey:@"CloudKit error" value:&stru_287FA0430 table:0];
  v16[0] = v8;
  v15[1] = *MEMORY[0x277CCA470];
  mainBundle2 = [MEMORY[0x277CCA8D8] mainBundle];
  v10 = [mainBundle2 localizedStringForKey:v6 value:&stru_287FA0430 table:0];

  v16[1] = v10;
  v11 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v16 forKeys:v15 count:2];

  v12 = [MEMORY[0x277CCA9B8] errorWithDomain:@"com.apple.trial.cloudkit" code:a4 userInfo:v11];

  v13 = *MEMORY[0x277D85DE8];

  return v12;
}

+ (id)triCloudKitErrorWithMessage:()TRICloudKit
{
  v9 = MEMORY[0x277CCACA8];
  v10 = a3;
  v11 = [[v9 alloc] initWithFormat:v10 arguments:&a9];

  v12 = [MEMORY[0x277CCA9B8] triCloudKitErrorWithMessage:v11 code:1];

  return v12;
}

@end