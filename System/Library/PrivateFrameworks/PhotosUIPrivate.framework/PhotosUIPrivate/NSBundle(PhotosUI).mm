@interface NSBundle(PhotosUI)
+ (id)pu_PhotosUIFrameworkBundle;
@end

@implementation NSBundle(PhotosUI)

+ (id)pu_PhotosUIFrameworkBundle
{
  if (pu_PhotosUIFrameworkBundle_onceToken != -1)
  {
    dispatch_once(&pu_PhotosUIFrameworkBundle_onceToken, &__block_literal_global_25107);
  }

  v1 = pu_PhotosUIFrameworkBundle_frameworkBundle;

  return v1;
}

@end