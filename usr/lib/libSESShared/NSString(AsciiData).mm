@interface NSString(AsciiData)
+ (id)stringWithAsciiData:()AsciiData;
@end

@implementation NSString(AsciiData)

+ (id)stringWithAsciiData:()AsciiData
{
  v3 = MEMORY[0x1E696AEC0];
  v4 = a3;
  v5 = [[v3 alloc] initWithData:v4 encoding:1];

  return v5;
}

@end