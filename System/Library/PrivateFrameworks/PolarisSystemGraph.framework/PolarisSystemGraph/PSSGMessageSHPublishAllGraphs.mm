@interface PSSGMessageSHPublishAllGraphs
+ (id)messageWithData:(id)data sender:(id)sender;
@end

@implementation PSSGMessageSHPublishAllGraphs

+ (id)messageWithData:(id)data sender:(id)sender
{
  senderCopy = sender;
  dataCopy = data;
  v7 = [(PSSGMessageBase *)[PSSGMessageSHPublishAllGraphs alloc] initWithType:33 string1:senderCopy data:dataCopy];

  return v7;
}

@end