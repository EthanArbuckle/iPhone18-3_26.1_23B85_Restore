@interface PSSGMessageSetupResourcesFailed
+ (id)messageWithResourceKeys:(id)keys sender:(id)sender;
@end

@implementation PSSGMessageSetupResourcesFailed

+ (id)messageWithResourceKeys:(id)keys sender:(id)sender
{
  senderCopy = sender;
  keysCopy = keys;
  v7 = [(PSSGMessageBase *)[PSSGMessageSetupResourcesFailed alloc] initWithType:19 string1:senderCopy stringSet:keysCopy];

  return v7;
}

@end