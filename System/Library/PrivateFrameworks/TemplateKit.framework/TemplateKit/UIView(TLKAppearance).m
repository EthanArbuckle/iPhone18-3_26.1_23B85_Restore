@interface UIView(TLKAppearance)
- (void)tlk_updateWithCurrentAppearance;
@end

@implementation UIView(TLKAppearance)

- (void)tlk_updateWithCurrentAppearance
{
  v2 = [a1 window];

  if (v2)
  {
    v3 = [a1 traitCollection];
    if (v3)
    {
      v7 = v3;
      v4 = [MEMORY[0x1E69DD1B8] currentTraitCollection];
      if ([v7 isEqual:v4])
      {
        v5 = [TLKAppearance bestAppearanceForView:a1];
        [a1 tlk_updateForAppearance:v5];
      }

      else
      {
        [MEMORY[0x1E69DD1B8] setCurrentTraitCollection:v7];
        v6 = [TLKAppearance bestAppearanceForView:a1];
        [a1 tlk_updateForAppearance:v6];

        [MEMORY[0x1E69DD1B8] setCurrentTraitCollection:v4];
      }

      v3 = v7;
    }
  }
}

@end