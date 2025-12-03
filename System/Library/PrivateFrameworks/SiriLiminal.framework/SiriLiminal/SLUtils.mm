@interface SLUtils
+ (id)createErrorWithMsg:(id)msg code:(unint64_t)code;
@end

@implementation SLUtils

+ (id)createErrorWithMsg:(id)msg code:(unint64_t)code
{
  v13[1] = *MEMORY[0x277D85DE8];
  v5 = MEMORY[0x277CCA9B8];
  v12 = @"reason";
  v13[0] = msg;
  v6 = MEMORY[0x277CBEAC0];
  msgCopy = msg;
  v8 = [v6 dictionaryWithObjects:v13 forKeys:&v12 count:1];
  v9 = [v5 errorWithDomain:@"com.apple.sl" code:code userInfo:v8];

  v10 = *MEMORY[0x277D85DE8];

  return v9;
}

@end