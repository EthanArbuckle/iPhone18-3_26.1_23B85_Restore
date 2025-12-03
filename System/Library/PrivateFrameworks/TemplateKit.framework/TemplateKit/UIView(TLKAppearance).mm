@interface UIView(TLKAppearance)
- (void)tlk_updateWithCurrentAppearance;
@end

@implementation UIView(TLKAppearance)

- (void)tlk_updateWithCurrentAppearance
{
  window = [self window];

  if (window)
  {
    traitCollection = [self traitCollection];
    if (traitCollection)
    {
      v7 = traitCollection;
      currentTraitCollection = [MEMORY[0x1E69DD1B8] currentTraitCollection];
      if ([v7 isEqual:currentTraitCollection])
      {
        v5 = [TLKAppearance bestAppearanceForView:self];
        [self tlk_updateForAppearance:v5];
      }

      else
      {
        [MEMORY[0x1E69DD1B8] setCurrentTraitCollection:v7];
        v6 = [TLKAppearance bestAppearanceForView:self];
        [self tlk_updateForAppearance:v6];

        [MEMORY[0x1E69DD1B8] setCurrentTraitCollection:currentTraitCollection];
      }

      traitCollection = v7;
    }
  }
}

@end