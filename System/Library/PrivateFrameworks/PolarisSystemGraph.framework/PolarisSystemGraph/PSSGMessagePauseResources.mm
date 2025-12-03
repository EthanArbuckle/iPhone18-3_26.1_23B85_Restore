@interface PSSGMessagePauseResources
+ (id)messageWithResourceKeys:(id)keys sender:(id)sender;
@end

@implementation PSSGMessagePauseResources

+ (id)messageWithResourceKeys:(id)keys sender:(id)sender
{
  senderCopy = sender;
  keysCopy = keys;
  v7 = [(PSSGMessageBase *)[PSSGMessagePauseResources alloc] initWithType:44 string1:senderCopy stringSet:keysCopy];

  return v7;
}

@end