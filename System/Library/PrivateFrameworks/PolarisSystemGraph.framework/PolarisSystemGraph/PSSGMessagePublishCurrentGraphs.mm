@interface PSSGMessagePublishCurrentGraphs
+ (id)messageWithGraphs:(id)graphs sender:(id)sender;
@end

@implementation PSSGMessagePublishCurrentGraphs

+ (id)messageWithGraphs:(id)graphs sender:(id)sender
{
  senderCopy = sender;
  graphsCopy = graphs;
  v7 = [(PSSGMessageBase *)[PSSGMessagePublishCurrentGraphs alloc] initWithType:28 string1:senderCopy data:graphsCopy];

  return v7;
}

@end