@interface PLSinopeBBMetricUtility
+ (id)convertToStringData:(id)data;
@end

@implementation PLSinopeBBMetricUtility

+ (id)convertToStringData:(id)data
{
  dataCopy = data;
  v4 = [dataCopy length];
  v5 = [objc_alloc(MEMORY[0x277CCAB68]) initWithCapacity:2 * v4];
  bytes = [dataCopy bytes];
  if (v4)
  {
    v7 = bytes;
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