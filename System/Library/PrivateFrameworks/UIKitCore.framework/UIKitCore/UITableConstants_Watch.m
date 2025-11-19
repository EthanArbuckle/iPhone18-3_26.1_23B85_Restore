@interface UITableConstants_Watch
+ (id)sharedConstants;
- (_UITableConstantsBackgroundProperties)defaultHeaderFooterBackgroundPropertiesForTableViewStyle:(SEL)a3 cellConfigurationState:(int64_t)a4 traitCollection:(id)a5 floating:(id)a6;
- (id)defaultCheckmarkImageForCell:(id)a3;
@end

@implementation UITableConstants_Watch

+ (id)sharedConstants
{
  v2 = sharedConstants___sharedConstants_3;
  if (!sharedConstants___sharedConstants_3)
  {
    v3 = objc_opt_new();
    v4 = sharedConstants___sharedConstants_3;
    sharedConstants___sharedConstants_3 = v3;

    v2 = sharedConstants___sharedConstants_3;
  }

  return v2;
}

- (_UITableConstantsBackgroundProperties)defaultHeaderFooterBackgroundPropertiesForTableViewStyle:(SEL)a3 cellConfigurationState:(int64_t)a4 traitCollection:(id)a5 floating:(id)a6
{
  result = [UIColor blackColor:a4];
  *&retstr->var0 = 0u;
  *&retstr->var2 = 0u;
  *&retstr->var4 = 0u;
  *&retstr->var6 = 0u;
  *&retstr->var8 = 0u;
  *&retstr->var10 = 0u;
  *&retstr->var12 = 0u;
  *&retstr->var13.leading = 0u;
  retstr->var13.trailing = 0.0;
  retstr->var1 = result;
  return result;
}

- (id)defaultCheckmarkImageForCell:(id)a3
{
  v3 = [MEMORY[0x1E696AAE8] bundleWithIdentifier:@"com.apple.PepperUICore"];
  v4 = [UIImage imageNamed:@"UIPreferencesBlueCheck" inBundle:v3];
  v5 = [v4 imageWithRenderingMode:2];

  return v5;
}

@end