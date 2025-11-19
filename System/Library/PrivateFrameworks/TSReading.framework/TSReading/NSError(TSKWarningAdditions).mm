@interface NSError(TSKWarningAdditions)
+ (uint64_t)errorWithTSKWarning:()TSKWarningAdditions;
@end

@implementation NSError(TSKWarningAdditions)

+ (uint64_t)errorWithTSKWarning:()TSKWarningAdditions
{
  v4 = MEMORY[0x277CCA9B8];
  v5 = [a3 kind];
  v6 = MEMORY[0x277CBEAC0];
  v7 = [a3 message];
  v8 = [v6 dictionaryWithObjectsAndKeys:{v7, *MEMORY[0x277CCA450], 0}];

  return [v4 errorWithDomain:@"com.apple.iWork.TSKWarningErrorDomain" code:v5 userInfo:v8];
}

@end