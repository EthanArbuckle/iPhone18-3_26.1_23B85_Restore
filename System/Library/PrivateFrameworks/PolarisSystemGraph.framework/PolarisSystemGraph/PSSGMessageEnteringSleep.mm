@interface PSSGMessageEnteringSleep
+ (id)messageWithSessionName:(id)name;
@end

@implementation PSSGMessageEnteringSleep

+ (id)messageWithSessionName:(id)name
{
  nameCopy = name;
  v4 = [(PSSGMessageBase *)[PSSGMessageEnteringSleep alloc] initWithType:13 string1:nameCopy];

  return v4;
}

@end