@interface PSSGMessageSHUpdateGraphs
+ (id)messageWithGraphData:(id)data sender:(id)sender;
@end

@implementation PSSGMessageSHUpdateGraphs

+ (id)messageWithGraphData:(id)data sender:(id)sender
{
  senderCopy = sender;
  dataCopy = data;
  v7 = [(PSSGMessageBase *)[PSSGMessageSHUpdateGraphs alloc] initWithType:5 string1:senderCopy data:dataCopy];

  return v7;
}

@end