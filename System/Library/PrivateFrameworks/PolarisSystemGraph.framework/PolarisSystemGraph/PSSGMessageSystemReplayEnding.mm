@interface PSSGMessageSystemReplayEnding
+ (id)messageWithSessionName:(id)name;
@end

@implementation PSSGMessageSystemReplayEnding

+ (id)messageWithSessionName:(id)name
{
  nameCopy = name;
  v4 = [(PSSGMessageBase *)[PSSGMessageSystemReplayEnding alloc] initWithType:40 string1:nameCopy];

  return v4;
}

@end