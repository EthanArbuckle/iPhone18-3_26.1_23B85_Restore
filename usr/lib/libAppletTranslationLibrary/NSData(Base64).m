@interface NSData(Base64)
+ (id)dataWithBase64:()Base64;
@end

@implementation NSData(Base64)

+ (id)dataWithBase64:()Base64
{
  v3 = MEMORY[0x277CBEA90];
  v4 = a3;
  v5 = [[v3 alloc] initWithBase64EncodedString:v4 options:0];

  return v5;
}

@end