@interface PSSGMessageRequestResourceAvailabilityUpdates
+ (id)messageWithResourceKeys:(id)keys sender:(id)sender;
@end

@implementation PSSGMessageRequestResourceAvailabilityUpdates

+ (id)messageWithResourceKeys:(id)keys sender:(id)sender
{
  senderCopy = sender;
  keysCopy = keys;
  v7 = [(PSSGMessageBase *)[PSSGMessageRequestResourceAvailabilityUpdates alloc] initWithType:22 string1:senderCopy stringSet:keysCopy];

  return v7;
}

@end