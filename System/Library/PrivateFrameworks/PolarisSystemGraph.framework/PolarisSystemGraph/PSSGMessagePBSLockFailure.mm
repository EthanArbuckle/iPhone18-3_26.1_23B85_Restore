@interface PSSGMessagePBSLockFailure
+ (id)messageWithResourceKey:(id)a3;
@end

@implementation PSSGMessagePBSLockFailure

+ (id)messageWithResourceKey:(id)a3
{
  v3 = a3;
  v4 = [(PSSGMessageBase *)[PSSGMessagePBSLockFailure alloc] initWithType:50 string1:v3];

  return v4;
}

@end