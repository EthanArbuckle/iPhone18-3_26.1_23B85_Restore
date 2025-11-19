@interface PSBrightnessController
+ (id)sharedController;
@end

@implementation PSBrightnessController

+ (id)sharedController
{
  v2 = sharedController___sharedController;
  if (!sharedController___sharedController)
  {
    v3 = objc_alloc_init(PSBrightnessController);
    v4 = sharedController___sharedController;
    sharedController___sharedController = v3;

    v2 = sharedController___sharedController;
  }

  return v2;
}

@end