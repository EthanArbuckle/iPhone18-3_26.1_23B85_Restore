@interface SBHShortcutsSingleElement
- (id)displayName;
- (id)supportedGridSizeClasses;
@end

@implementation SBHShortcutsSingleElement

- (id)displayName
{
  v2 = SBHBundle();
  v3 = [v2 localizedStringForKey:@"SHORTCUTS_WIDGET_COLLECTION_NAME" value:&stru_1F3D472A8 table:@"SpringBoardHome"];

  return v3;
}

- (id)supportedGridSizeClasses
{
  v2 = [[SBHIconGridSizeClassSet alloc] initWithGridSizeClass:@"SBHIconGridSizeClassSmall"];

  return v2;
}

@end