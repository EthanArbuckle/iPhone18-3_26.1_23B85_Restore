@interface PSSGMessageStopResourceAvailabilityUpdates
+ (id)messageWithResourceKeys:(id)keys sender:(id)sender;
@end

@implementation PSSGMessageStopResourceAvailabilityUpdates

+ (id)messageWithResourceKeys:(id)keys sender:(id)sender
{
  senderCopy = sender;
  keysCopy = keys;
  v7 = [(PSSGMessageBase *)[PSSGMessageStopResourceAvailabilityUpdates alloc] initWithType:23 string1:senderCopy stringSet:keysCopy];

  return v7;
}

@end