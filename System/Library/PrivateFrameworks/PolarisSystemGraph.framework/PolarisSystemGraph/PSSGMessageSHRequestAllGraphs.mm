@interface PSSGMessageSHRequestAllGraphs
+ (id)messageWithFilter:(id)filter sender:(id)sender;
@end

@implementation PSSGMessageSHRequestAllGraphs

+ (id)messageWithFilter:(id)filter sender:(id)sender
{
  senderCopy = sender;
  filterCopy = filter;
  v7 = [PSSGMessageSHRequestAllGraphs alloc];
  v8 = [MEMORY[0x277CBEB98] setWithObject:filterCopy];

  v9 = [(PSSGMessageBase *)v7 initWithType:6 string1:senderCopy stringSet:v8];

  return v9;
}

@end