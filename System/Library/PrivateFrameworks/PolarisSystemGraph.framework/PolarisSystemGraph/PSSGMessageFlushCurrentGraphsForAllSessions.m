@interface PSSGMessageFlushCurrentGraphsForAllSessions
+ (id)messageWithSessionName:(id)a3;
@end

@implementation PSSGMessageFlushCurrentGraphsForAllSessions

+ (id)messageWithSessionName:(id)a3
{
  v3 = a3;
  v4 = [(PSSGMessageBase *)[PSSGMessageFlushCurrentGraphsForAllSessions alloc] initWithType:11 string1:v3];

  return v4;
}

@end