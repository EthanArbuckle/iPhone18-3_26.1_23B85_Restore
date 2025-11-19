@interface PSSGMessagePBSLockSuccess
+ (id)messageWithResourceKey:(id)a3;
@end

@implementation PSSGMessagePBSLockSuccess

+ (id)messageWithResourceKey:(id)a3
{
  v3 = a3;
  v4 = [(PSSGMessageBase *)[PSSGMessagePBSLockSuccess alloc] initWithType:49 string1:v3];

  return v4;
}

@end