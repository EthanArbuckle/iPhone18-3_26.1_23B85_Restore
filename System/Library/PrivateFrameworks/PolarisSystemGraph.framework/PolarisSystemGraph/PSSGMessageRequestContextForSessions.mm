@interface PSSGMessageRequestContextForSessions
+ (id)messageWithSessionNames:(id)names sender:(id)sender;
@end

@implementation PSSGMessageRequestContextForSessions

+ (id)messageWithSessionNames:(id)names sender:(id)sender
{
  senderCopy = sender;
  namesCopy = names;
  v7 = [(PSSGMessageBase *)[PSSGMessageRequestContextForSessions alloc] initWithType:3 string1:senderCopy stringSet:namesCopy];

  return v7;
}

@end