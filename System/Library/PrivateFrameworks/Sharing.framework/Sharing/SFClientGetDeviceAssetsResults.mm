@interface SFClientGetDeviceAssetsResults
- (SFClientGetDeviceAssetsResults)initWithCoder:(id)coder;
- (void)encodeWithCoder:(id)coder;
@end

@implementation SFClientGetDeviceAssetsResults

- (SFClientGetDeviceAssetsResults)initWithCoder:(id)coder
{
  coderCopy = coder;
  v9.receiver = self;
  v9.super_class = SFClientGetDeviceAssetsResults;
  v5 = [(SFClientGetDeviceAssetsResults *)&v9 init];
  if (v5)
  {
    v6 = coderCopy;
    objc_opt_class();
    NSDecodeObjectIfPresent();

    v7 = v5;
  }

  return v5;
}

- (void)encodeWithCoder:(id)coder
{
  assetBundlePath = self->_assetBundlePath;
  if (assetBundlePath)
  {
    [coder encodeObject:assetBundlePath forKey:@"abp"];
  }
}

@end