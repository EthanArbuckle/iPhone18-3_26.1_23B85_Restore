@interface SBHFilesElement
- (id)displayName;
- (id)supportedGridSizeClasses;
@end

@implementation SBHFilesElement

- (id)displayName
{
  v2 = SBHBundle();
  v3 = [v2 localizedStringForKey:@"FILES_WIDGET_COLLECTION_NAME" value:&stru_1F3D472A8 table:@"SpringBoardHome"];

  return v3;
}

- (id)supportedGridSizeClasses
{
  v2 = [SBHIconGridSizeClassSet alloc];
  v3 = [MEMORY[0x1E695DFD8] setWithObjects:{@"SBHIconGridSizeClassSmall", @"SBHIconGridSizeClassMedium", @"SBHIconGridSizeClassLarge", @"SBHIconGridSizeClassExtraLarge", 0}];
  v4 = [(SBHIconGridSizeClassSet *)v2 initWithGridSizeClasses:v3];

  return v4;
}

@end