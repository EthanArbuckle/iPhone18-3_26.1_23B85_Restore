@interface PSSGMessageResourcesNoLongerWantedProcessed
+ (id)messageWithResourceKeys:(id)keys sender:(id)sender;
@end

@implementation PSSGMessageResourcesNoLongerWantedProcessed

+ (id)messageWithResourceKeys:(id)keys sender:(id)sender
{
  senderCopy = sender;
  keysCopy = keys;
  v7 = [(PSSGMessageBase *)[PSSGMessageResourcesNoLongerWantedProcessed alloc] initWithType:16 string1:senderCopy stringSet:keysCopy];

  return v7;
}

@end