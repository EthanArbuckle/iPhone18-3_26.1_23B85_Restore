@interface PSSGMessagePBSLockFailure
+ (id)messageWithResourceKey:(id)key;
@end

@implementation PSSGMessagePBSLockFailure

+ (id)messageWithResourceKey:(id)key
{
  keyCopy = key;
  v4 = [(PSSGMessageBase *)[PSSGMessagePBSLockFailure alloc] initWithType:50 string1:keyCopy];

  return v4;
}

@end