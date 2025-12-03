@interface TRMessageEncoder
+ (id)encodeMessage:(id)message;
@end

@implementation TRMessageEncoder

+ (id)encodeMessage:(id)message
{
  v3 = MEMORY[0x277CCAAB0];
  messageCopy = message;
  v5 = [[v3 alloc] initRequiringSecureCoding:1];
  [v5 encodeObject:messageCopy forKey:*MEMORY[0x277CCA308]];

  [v5 finishEncoding];
  encodedData = [v5 encodedData];

  return encodedData;
}

@end