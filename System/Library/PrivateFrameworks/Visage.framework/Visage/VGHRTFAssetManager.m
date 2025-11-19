@interface VGHRTFAssetManager
+ (id)getAssetWithError:(id *)a3;
@end

@implementation VGHRTFAssetManager

+ (id)getAssetWithError:(id *)a3
{
  v6 = 0;
  v4 = vg::hrtf::getAssetWithError(&v6);
  if (a3 && v6)
  {
    *a3 = *v6;
  }

  return v4;
}

@end