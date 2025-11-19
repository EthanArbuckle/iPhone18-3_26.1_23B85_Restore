@interface PSSGMessageEnteringSleep
+ (id)messageWithSessionName:(id)a3;
@end

@implementation PSSGMessageEnteringSleep

+ (id)messageWithSessionName:(id)a3
{
  v3 = a3;
  v4 = [(PSSGMessageBase *)[PSSGMessageEnteringSleep alloc] initWithType:13 string1:v3];

  return v4;
}

@end