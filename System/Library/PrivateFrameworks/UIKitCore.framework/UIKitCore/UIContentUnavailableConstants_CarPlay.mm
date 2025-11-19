@interface UIContentUnavailableConstants_CarPlay
+ (id)sharedConstants;
@end

@implementation UIContentUnavailableConstants_CarPlay

+ (id)sharedConstants
{
  v3 = sharedConstants___sharedConstants_114;
  if (!sharedConstants___sharedConstants_114)
  {
    v4 = objc_alloc_init(a1);
    v5 = sharedConstants___sharedConstants_114;
    sharedConstants___sharedConstants_114 = v4;

    v3 = sharedConstants___sharedConstants_114;
  }

  return v3;
}

@end