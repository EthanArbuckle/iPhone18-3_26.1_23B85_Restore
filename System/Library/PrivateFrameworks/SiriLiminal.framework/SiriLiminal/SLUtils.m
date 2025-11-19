@interface SLUtils
+ (id)createErrorWithMsg:(id)a3 code:(unint64_t)a4;
@end

@implementation SLUtils

+ (id)createErrorWithMsg:(id)a3 code:(unint64_t)a4
{
  v13[1] = *MEMORY[0x277D85DE8];
  v5 = MEMORY[0x277CCA9B8];
  v12 = @"reason";
  v13[0] = a3;
  v6 = MEMORY[0x277CBEAC0];
  v7 = a3;
  v8 = [v6 dictionaryWithObjects:v13 forKeys:&v12 count:1];
  v9 = [v5 errorWithDomain:@"com.apple.sl" code:a4 userInfo:v8];

  v10 = *MEMORY[0x277D85DE8];

  return v9;
}

@end