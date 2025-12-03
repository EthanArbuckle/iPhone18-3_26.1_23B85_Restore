@interface UIImage(SBFWallpapers)
- (CGImage)sbf_imageHashData;
@end

@implementation UIImage(SBFWallpapers)

- (CGImage)sbf_imageHashData
{
  v7 = *MEMORY[0x1E69E9840];
  DataProvider = [self CGImage];
  if (DataProvider)
  {
    DataProvider = CGImageGetDataProvider(DataProvider);
    if (DataProvider)
    {
      DataProvider = CGDataProviderCopyData(DataProvider);
      if (DataProvider)
      {
        v2 = DataProvider;
        BytePtr = CFDataGetBytePtr(DataProvider);
        Length = CFDataGetLength(v2);
        CC_SHA1(BytePtr, Length, md);
        CFRelease(v2);
        DataProvider = [MEMORY[0x1E695DEF0] dataWithBytes:md length:20];
      }
    }
  }

  return DataProvider;
}

@end