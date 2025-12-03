@interface NSString(TSPersistence)
+ (id)tsp_stringForDigest:()TSPersistence length:;
- (id)tsp_stringByAppendingExtensionFieldComponent:()TSPersistence;
@end

@implementation NSString(TSPersistence)

+ (id)tsp_stringForDigest:()TSPersistence length:
{
  v6 = [MEMORY[0x277CCAB68] stringWithCapacity:2 * a4];
  if (a4)
  {
    v7 = 0;
    v8 = 1;
    do
    {
      [v6 appendFormat:@"%02x", *(a3 + v7)];
      v7 = v8++;
    }

    while (v7 < a4);
  }

  return v6;
}

- (id)tsp_stringByAppendingExtensionFieldComponent:()TSPersistence
{
  v2 = [MEMORY[0x277CCACA8] tsp_stringWithExtensionFieldComponent:?];
  v3 = [self stringByAppendingPathComponent:v2];

  return v3;
}

@end