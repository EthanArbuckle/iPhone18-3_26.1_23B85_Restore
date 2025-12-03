@interface PSSGMessagePublishResourceStreams
+ (id)messageWithStreams:(id)streams sender:(id)sender;
- (id)description;
@end

@implementation PSSGMessagePublishResourceStreams

+ (id)messageWithStreams:(id)streams sender:(id)sender
{
  senderCopy = sender;
  streamsCopy = streams;
  v7 = [(PSSGMessageBase *)[PSSGMessagePublishResourceStreams alloc] initWithType:25 string1:senderCopy data:streamsCopy];

  return v7;
}

- (id)description
{
  v3 = MEMORY[0x277CCACA8];
  sender = [(PSSGMessagePublishResourceStreams *)self sender];
  data = [(PSSGMessageBase *)self data];
  v6 = [v3 stringWithFormat:@"%@: %@", sender, data];

  return v6;
}

@end