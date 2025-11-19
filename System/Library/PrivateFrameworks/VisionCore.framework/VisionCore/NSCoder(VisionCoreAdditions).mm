@interface NSCoder(VisionCoreAdditions)
- (void)VisionCoreEncodeNSData:()VisionCoreAdditions forKey:;
@end

@implementation NSCoder(VisionCoreAdditions)

- (void)VisionCoreEncodeNSData:()VisionCoreAdditions forKey:
{
  v6 = a4;
  v7 = [a3 copy];
  [a1 encodeObject:v7 forKey:v6];
}

@end