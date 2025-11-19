@interface NSString(Hex)
+ (id)hexStringFromBytes:()Hex length:;
@end

@implementation NSString(Hex)

+ (id)hexStringFromBytes:()Hex length:
{
  v4 = [MEMORY[0x277CBEA90] dataWithBytesNoCopy:a3 length:a4 freeWhenDone:0];
  v5 = [v4 asHexString];

  return v5;
}

@end