@interface PSSGMessageSHTriggerHealthUpdate
+ (id)messageWithHealthData:(id)data sender:(id)sender;
@end

@implementation PSSGMessageSHTriggerHealthUpdate

+ (id)messageWithHealthData:(id)data sender:(id)sender
{
  senderCopy = sender;
  dataCopy = data;
  v7 = [(PSSGMessageBase *)[PSSGMessageSHTriggerHealthUpdate alloc] initWithType:12 string1:senderCopy data:dataCopy];

  return v7;
}

@end