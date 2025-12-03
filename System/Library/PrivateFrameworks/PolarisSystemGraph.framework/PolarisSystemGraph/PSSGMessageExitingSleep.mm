@interface PSSGMessageExitingSleep
+ (id)messageWithSessionName:(id)name;
@end

@implementation PSSGMessageExitingSleep

+ (id)messageWithSessionName:(id)name
{
  nameCopy = name;
  v4 = [(PSSGMessageBase *)[PSSGMessageExitingSleep alloc] initWithType:14 string1:nameCopy];

  return v4;
}

@end