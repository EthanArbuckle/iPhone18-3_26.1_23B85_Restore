@interface PSSGMessageRequestCurrentGraphsForAllSessions
+ (id)messageWithSessionName:(id)name;
@end

@implementation PSSGMessageRequestCurrentGraphsForAllSessions

+ (id)messageWithSessionName:(id)name
{
  nameCopy = name;
  v4 = [(PSSGMessageBase *)[PSSGMessageRequestCurrentGraphsForAllSessions alloc] initWithType:10 string1:nameCopy];

  return v4;
}

@end