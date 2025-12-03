@interface PSSGMessageStoppedResources
+ (id)messageWithResourceKeys:(id)keys sender:(id)sender;
@end

@implementation PSSGMessageStoppedResources

+ (id)messageWithResourceKeys:(id)keys sender:(id)sender
{
  senderCopy = sender;
  keysCopy = keys;
  v7 = [(PSSGMessageBase *)[PSSGMessageStoppedResources alloc] initWithType:15 string1:senderCopy stringSet:keysCopy];

  return v7;
}

@end