@interface PLSinopeBBMetricUtility
+ (id)convertToStringData:(id)a3;
@end

@implementation PLSinopeBBMetricUtility

+ (id)convertToStringData:(id)a3
{
  v3 = a3;
  v4 = [v3 length];
  v5 = [objc_alloc(MEMORY[0x277CCAB68]) initWithCapacity:2 * v4];
  v6 = [v3 bytes];
  if (v4)
  {
    v7 = v6;
    do
    {
      v8 = *v7++;
      [v5 appendFormat:@"%02x", v8];
      --v4;
    }

    while (v4);
  }

  return v5;
}

@end