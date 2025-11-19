@interface TRMessageEncoder
+ (id)encodeMessage:(id)a3;
@end

@implementation TRMessageEncoder

+ (id)encodeMessage:(id)a3
{
  v3 = MEMORY[0x277CCAAB0];
  v4 = a3;
  v5 = [[v3 alloc] initRequiringSecureCoding:1];
  [v5 encodeObject:v4 forKey:*MEMORY[0x277CCA308]];

  [v5 finishEncoding];
  v6 = [v5 encodedData];

  return v6;
}

@end