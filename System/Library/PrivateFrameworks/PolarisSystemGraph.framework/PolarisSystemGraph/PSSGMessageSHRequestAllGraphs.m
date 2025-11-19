@interface PSSGMessageSHRequestAllGraphs
+ (id)messageWithFilter:(id)a3 sender:(id)a4;
@end

@implementation PSSGMessageSHRequestAllGraphs

+ (id)messageWithFilter:(id)a3 sender:(id)a4
{
  v5 = a4;
  v6 = a3;
  v7 = [PSSGMessageSHRequestAllGraphs alloc];
  v8 = [MEMORY[0x277CBEB98] setWithObject:v6];

  v9 = [(PSSGMessageBase *)v7 initWithType:6 string1:v5 stringSet:v8];

  return v9;
}

@end