@interface PSSGMessagePauseResourcesCompleted
+ (id)messageWithResourceKeys:(id)keys sender:(id)sender;
@end

@implementation PSSGMessagePauseResourcesCompleted

+ (id)messageWithResourceKeys:(id)keys sender:(id)sender
{
  senderCopy = sender;
  keysCopy = keys;
  v7 = [(PSSGMessageBase *)[PSSGMessagePauseResourcesCompleted alloc] initWithType:20 string1:senderCopy stringSet:keysCopy];

  return v7;
}

@end