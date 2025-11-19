@interface PSSGMessageSystemReplayEnding
+ (id)messageWithSessionName:(id)a3;
@end

@implementation PSSGMessageSystemReplayEnding

+ (id)messageWithSessionName:(id)a3
{
  v3 = a3;
  v4 = [(PSSGMessageBase *)[PSSGMessageSystemReplayEnding alloc] initWithType:40 string1:v3];

  return v4;
}

@end