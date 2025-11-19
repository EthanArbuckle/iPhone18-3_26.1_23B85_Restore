@interface SBHSmartStackElement
- (id)displayName;
- (id)supportedGridSizeClassesForIcon:(id)a3;
@end

@implementation SBHSmartStackElement

- (id)displayName
{
  v2 = SBHBundle();
  v3 = [v2 localizedStringForKey:@"SMART_STACK_WIDGET_COLLECTION_NAME" value:&stru_1F3D472A8 table:@"SpringBoardHome"];

  return v3;
}

- (id)supportedGridSizeClassesForIcon:(id)a3
{
  v3 = [SBHIconGridSizeClassSet alloc];
  v4 = [MEMORY[0x1E695DFD8] setWithObjects:{@"SBHIconGridSizeClassSmall", @"SBHIconGridSizeClassMedium", 0}];
  v5 = [(SBHIconGridSizeClassSet *)v3 initWithGridSizeClasses:v4];

  return v5;
}

@end