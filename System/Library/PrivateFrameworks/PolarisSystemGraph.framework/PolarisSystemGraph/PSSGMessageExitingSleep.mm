@interface PSSGMessageExitingSleep
+ (id)messageWithSessionName:(id)a3;
@end

@implementation PSSGMessageExitingSleep

+ (id)messageWithSessionName:(id)a3
{
  v3 = a3;
  v4 = [(PSSGMessageBase *)[PSSGMessageExitingSleep alloc] initWithType:14 string1:v3];

  return v4;
}

@end