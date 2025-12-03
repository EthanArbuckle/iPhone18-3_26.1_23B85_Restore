@interface VGHRTFAssetManager
+ (id)getAssetWithError:(id *)error;
@end

@implementation VGHRTFAssetManager

+ (id)getAssetWithError:(id *)error
{
  v6 = 0;
  v4 = vg::hrtf::getAssetWithError(&v6);
  if (error && v6)
  {
    *error = *v6;
  }

  return v4;
}

@end