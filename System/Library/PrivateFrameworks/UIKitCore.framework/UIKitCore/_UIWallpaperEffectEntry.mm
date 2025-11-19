@interface _UIWallpaperEffectEntry
- (void)addEffectToView:(id)a3;
- (void)applyIdentityEffectToView:(id)a3;
- (void)applyRequestedEffectToView:(id)a3;
@end

@implementation _UIWallpaperEffectEntry

- (void)addEffectToView:(id)a3
{
  v4 = a3;
  v5 = [(_UIWallpaperEffectEntry *)self backgroundColor];
  [v4 setBackgroundColor:v5];
}

- (void)applyRequestedEffectToView:(id)a3
{
  v4 = a3;
  v5 = [(_UIWallpaperEffectEntry *)self backgroundColor];
  [v4 setBackgroundColor:v5];
}

- (void)applyIdentityEffectToView:(id)a3
{
  v3 = a3;
  v4 = [v3 _nilBackgroundColor];
  [v3 setBackgroundColor:v4];
}

@end