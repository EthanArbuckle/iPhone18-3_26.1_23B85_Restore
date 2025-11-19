@interface PSSGMessageUserInactive
+ (id)messageWithSessionName:(id)a3;
@end

@implementation PSSGMessageUserInactive

+ (id)messageWithSessionName:(id)a3
{
  v3 = a3;
  v4 = [(PSSGMessageBase *)[PSSGMessageUserInactive alloc] initWithType:47 string1:v3];

  return v4;
}

@end