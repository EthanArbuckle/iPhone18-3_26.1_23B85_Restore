@interface NSData(Random)
+ (id)randomData:()Random;
@end

@implementation NSData(Random)

+ (id)randomData:()Random
{
  v0 = [MEMORY[0x1E695DF88] dataWithLength:?];
  arc4random_buf([v0 mutableBytes], objc_msgSend(v0, "length"));

  return v0;
}

@end