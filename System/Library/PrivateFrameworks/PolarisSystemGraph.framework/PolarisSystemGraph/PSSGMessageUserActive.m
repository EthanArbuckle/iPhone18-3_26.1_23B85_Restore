@interface PSSGMessageUserActive
+ (id)messageWithSessionName:(id)a3;
@end

@implementation PSSGMessageUserActive

+ (id)messageWithSessionName:(id)a3
{
  v3 = a3;
  v4 = [(PSSGMessageBase *)[PSSGMessageUserActive alloc] initWithType:46 string1:v3];

  return v4;
}

@end