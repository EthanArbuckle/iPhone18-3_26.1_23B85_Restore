@interface PSSGMessageSHRequestSystemActionStats
+ (id)messageWithSessionName:(id)name;
@end

@implementation PSSGMessageSHRequestSystemActionStats

+ (id)messageWithSessionName:(id)name
{
  nameCopy = name;
  v4 = [(PSSGMessageBase *)[PSSGMessageSHRequestSystemActionStats alloc] initWithType:8 string1:nameCopy];

  return v4;
}

@end