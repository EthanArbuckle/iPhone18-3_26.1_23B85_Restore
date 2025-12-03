@interface PSSGMessagePBSLockSuccess
+ (id)messageWithResourceKey:(id)key;
@end

@implementation PSSGMessagePBSLockSuccess

+ (id)messageWithResourceKey:(id)key
{
  keyCopy = key;
  v4 = [(PSSGMessageBase *)[PSSGMessagePBSLockSuccess alloc] initWithType:49 string1:keyCopy];

  return v4;
}

@end