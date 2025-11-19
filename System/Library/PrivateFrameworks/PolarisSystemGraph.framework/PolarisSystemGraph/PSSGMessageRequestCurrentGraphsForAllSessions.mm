@interface PSSGMessageRequestCurrentGraphsForAllSessions
+ (id)messageWithSessionName:(id)a3;
@end

@implementation PSSGMessageRequestCurrentGraphsForAllSessions

+ (id)messageWithSessionName:(id)a3
{
  v3 = a3;
  v4 = [(PSSGMessageBase *)[PSSGMessageRequestCurrentGraphsForAllSessions alloc] initWithType:10 string1:v3];

  return v4;
}

@end