@interface SFClientGetDeviceAssetsResults
- (SFClientGetDeviceAssetsResults)initWithCoder:(id)a3;
- (void)encodeWithCoder:(id)a3;
@end

@implementation SFClientGetDeviceAssetsResults

- (SFClientGetDeviceAssetsResults)initWithCoder:(id)a3
{
  v4 = a3;
  v9.receiver = self;
  v9.super_class = SFClientGetDeviceAssetsResults;
  v5 = [(SFClientGetDeviceAssetsResults *)&v9 init];
  if (v5)
  {
    v6 = v4;
    objc_opt_class();
    NSDecodeObjectIfPresent();

    v7 = v5;
  }

  return v5;
}

- (void)encodeWithCoder:(id)a3
{
  assetBundlePath = self->_assetBundlePath;
  if (assetBundlePath)
  {
    [a3 encodeObject:assetBundlePath forKey:@"abp"];
  }
}

@end