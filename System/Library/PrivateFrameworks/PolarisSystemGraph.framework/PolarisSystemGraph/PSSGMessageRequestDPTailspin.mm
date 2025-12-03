@interface PSSGMessageRequestDPTailspin
+ (id)messageWithSessionName:(id)name reason:(id)reason;
@end

@implementation PSSGMessageRequestDPTailspin

+ (id)messageWithSessionName:(id)name reason:(id)reason
{
  reasonCopy = reason;
  nameCopy = name;
  v7 = [PSSGMessageRequestDPTailspin alloc];
  v8 = [MEMORY[0x277CBEB98] setWithObject:reasonCopy];

  v9 = [(PSSGMessageBase *)v7 initWithType:51 string1:nameCopy stringSet:v8];

  return v9;
}

@end