@interface PSSGMessageResourcesNoLongerWantedFailed
+ (id)messageWithResourceKeys:(id)keys sender:(id)sender;
@end

@implementation PSSGMessageResourcesNoLongerWantedFailed

+ (id)messageWithResourceKeys:(id)keys sender:(id)sender
{
  senderCopy = sender;
  keysCopy = keys;
  v7 = [(PSSGMessageBase *)[PSSGMessageResourcesNoLongerWantedFailed alloc] initWithType:17 string1:senderCopy stringSet:keysCopy];

  return v7;
}

@end