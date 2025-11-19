@interface PSSGMessageSystemReplayStarting
+ (id)messageWithSessionName:(id)a3;
@end

@implementation PSSGMessageSystemReplayStarting

+ (id)messageWithSessionName:(id)a3
{
  v3 = a3;
  v4 = [(PSSGMessageBase *)[PSSGMessageSystemReplayStarting alloc] initWithType:39 string1:v3];

  return v4;
}

@end