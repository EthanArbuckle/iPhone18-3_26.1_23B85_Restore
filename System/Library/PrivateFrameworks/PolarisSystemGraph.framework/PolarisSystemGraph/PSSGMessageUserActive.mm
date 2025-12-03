@interface PSSGMessageUserActive
+ (id)messageWithSessionName:(id)name;
@end

@implementation PSSGMessageUserActive

+ (id)messageWithSessionName:(id)name
{
  nameCopy = name;
  v4 = [(PSSGMessageBase *)[PSSGMessageUserActive alloc] initWithType:46 string1:nameCopy];

  return v4;
}

@end