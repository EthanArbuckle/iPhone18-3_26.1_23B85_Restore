@interface PSSGMessageUserInactive
+ (id)messageWithSessionName:(id)name;
@end

@implementation PSSGMessageUserInactive

+ (id)messageWithSessionName:(id)name
{
  nameCopy = name;
  v4 = [(PSSGMessageBase *)[PSSGMessageUserInactive alloc] initWithType:47 string1:nameCopy];

  return v4;
}

@end