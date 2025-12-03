@interface PSSGMessageSystemReplayStarting
+ (id)messageWithSessionName:(id)name;
@end

@implementation PSSGMessageSystemReplayStarting

+ (id)messageWithSessionName:(id)name
{
  nameCopy = name;
  v4 = [(PSSGMessageBase *)[PSSGMessageSystemReplayStarting alloc] initWithType:39 string1:nameCopy];

  return v4;
}

@end