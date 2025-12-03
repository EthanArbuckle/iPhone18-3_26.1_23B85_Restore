@interface PSSGMessagePauseResourcesFailed
+ (id)messageWithResourceKeys:(id)keys sender:(id)sender;
@end

@implementation PSSGMessagePauseResourcesFailed

+ (id)messageWithResourceKeys:(id)keys sender:(id)sender
{
  senderCopy = sender;
  keysCopy = keys;
  v7 = [(PSSGMessageBase *)[PSSGMessagePauseResourcesFailed alloc] initWithType:21 string1:senderCopy stringSet:keysCopy];

  return v7;
}

@end