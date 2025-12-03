@interface _UIWallpaperEffectEntry
- (void)addEffectToView:(id)view;
- (void)applyIdentityEffectToView:(id)view;
- (void)applyRequestedEffectToView:(id)view;
@end

@implementation _UIWallpaperEffectEntry

- (void)addEffectToView:(id)view
{
  viewCopy = view;
  backgroundColor = [(_UIWallpaperEffectEntry *)self backgroundColor];
  [viewCopy setBackgroundColor:backgroundColor];
}

- (void)applyRequestedEffectToView:(id)view
{
  viewCopy = view;
  backgroundColor = [(_UIWallpaperEffectEntry *)self backgroundColor];
  [viewCopy setBackgroundColor:backgroundColor];
}

- (void)applyIdentityEffectToView:(id)view
{
  viewCopy = view;
  _nilBackgroundColor = [viewCopy _nilBackgroundColor];
  [viewCopy setBackgroundColor:_nilBackgroundColor];
}

@end