@interface NSBundle(PhotosUICore)
+ (id)px_bundle;
+ (id)px_sharedLibraryBundle;
@end

@implementation NSBundle(PhotosUICore)

+ (id)px_bundle
{
  if (px_bundle_onceToken != -1)
  {
    dispatch_once(&px_bundle_onceToken, &__block_literal_global_242279);
  }

  v1 = px_bundle_frameworkBundle;

  return v1;
}

+ (id)px_sharedLibraryBundle
{
  if (px_sharedLibraryBundle_onceToken != -1)
  {
    dispatch_once(&px_sharedLibraryBundle_onceToken, &__block_literal_global_8_242272);
  }

  v1 = px_sharedLibraryBundle_sharedLibraryFrameworkBundle;

  return v1;
}

@end