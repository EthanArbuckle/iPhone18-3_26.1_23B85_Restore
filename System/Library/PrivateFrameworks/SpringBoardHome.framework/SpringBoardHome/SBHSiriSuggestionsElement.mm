@interface SBHSiriSuggestionsElement
- (id)displayName;
- (id)icon:(id)a3 imageWithInfo:(SBIconImageInfo *)a4 traitCollection:(id)a5 options:(unint64_t)a6;
- (id)supportedGridSizeClasses;
@end

@implementation SBHSiriSuggestionsElement

- (id)displayName
{
  v2 = SBHBundle();
  v3 = [v2 localizedStringForKey:@"PROACTIVE_SUGGESTIONS_WIDGET_COLLECTION_NAME" value:&stru_1F3D472A8 table:@"SpringBoardHome"];

  return v3;
}

- (id)icon:(id)a3 imageWithInfo:(SBIconImageInfo *)a4 traitCollection:(id)a5 options:(unint64_t)a6
{
  v9 = a5;
  v10 = v8;
  v11 = v7;
  v12 = v6;
  v13 = [MEMORY[0x1E69DD1B8] sbh_iconImageAppearanceFromTraitCollection:a4];
  getAPUISuggestionsWidgetViewControllerClass();
  if (objc_opt_respondsToSelector())
  {
    v14 = [getAPUISuggestionsWidgetViewControllerClass() widgetIcon];
  }

  else
  {
    v14 = [objc_alloc(MEMORY[0x1E69A8A00]) initWithBundleIdentifier:@"com.apple.siri"];
  }

  v15 = v14;
  v16 = SBHIconServicesOptionsForImageOptions(v9);
  v17 = SBHGetIconImageWithImageAppearance(v15, v13, v16, v12, v11, v10);

  return v17;
}

- (id)supportedGridSizeClasses
{
  v2 = [SBHIconGridSizeClassSet alloc];
  v3 = [MEMORY[0x1E695DFD8] setWithObjects:{@"SBHIconGridSizeClassSmall", @"SBHIconGridSizeClassMedium", @"SBHIconGridSizeClassLarge", 0}];
  v4 = [(SBHIconGridSizeClassSet *)v2 initWithGridSizeClasses:v3];

  return v4;
}

@end