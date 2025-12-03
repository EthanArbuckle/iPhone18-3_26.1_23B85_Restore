@interface PSSGMessageRequestContextForResourceKeys
+ (id)messageWithResourceKeys:(id)keys sender:(id)sender;
@end

@implementation PSSGMessageRequestContextForResourceKeys

+ (id)messageWithResourceKeys:(id)keys sender:(id)sender
{
  senderCopy = sender;
  keysCopy = keys;
  v7 = [(PSSGMessageBase *)[PSSGMessageRequestContextForResourceKeys alloc] initWithType:4 string1:senderCopy stringSet:keysCopy];

  return v7;
}

@end