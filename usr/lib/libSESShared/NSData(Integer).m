@interface NSData(Integer)
+ (id)withU16BE:()Integer;
@end

@implementation NSData(Integer)

+ (id)withU16BE:()Integer
{
  v4 = [MEMORY[0x1E695DF88] dataWithLength:2];
  *[v4 mutableBytes] = __rev16(a3);

  return v4;
}

@end