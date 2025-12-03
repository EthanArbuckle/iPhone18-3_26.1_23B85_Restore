@interface PSSGMessageFlushCurrentGraphsForAllSessions
+ (id)messageWithSessionName:(id)name;
@end

@implementation PSSGMessageFlushCurrentGraphsForAllSessions

+ (id)messageWithSessionName:(id)name
{
  nameCopy = name;
  v4 = [(PSSGMessageBase *)[PSSGMessageFlushCurrentGraphsForAllSessions alloc] initWithType:11 string1:nameCopy];

  return v4;
}

@end