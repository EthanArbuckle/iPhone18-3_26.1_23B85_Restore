@interface PSSGMessageRequestDPTailspin
+ (id)messageWithSessionName:(id)a3 reason:(id)a4;
@end

@implementation PSSGMessageRequestDPTailspin

+ (id)messageWithSessionName:(id)a3 reason:(id)a4
{
  v5 = a4;
  v6 = a3;
  v7 = [PSSGMessageRequestDPTailspin alloc];
  v8 = [MEMORY[0x277CBEB98] setWithObject:v5];

  v9 = [(PSSGMessageBase *)v7 initWithType:51 string1:v6 stringSet:v8];

  return v9;
}

@end