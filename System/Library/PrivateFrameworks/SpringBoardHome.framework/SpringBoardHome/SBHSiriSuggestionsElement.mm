@interface SBHSiriSuggestionsElement
- (id)displayName;
- (id)icon:(id)icon imageWithInfo:(SBIconImageInfo *)info traitCollection:(id)collection options:(unint64_t)options;
- (id)supportedGridSizeClasses;
@end

@implementation SBHSiriSuggestionsElement

- (id)displayName
{
  v2 = SBHBundle();
  v3 = [v2 localizedStringForKey:@"PROACTIVE_SUGGESTIONS_WIDGET_COLLECTION_NAME" value:&stru_1F3D472A8 table:@"SpringBoardHome"];

  return v3;
}

- (id)icon:(id)icon imageWithInfo:(SBIconImageInfo *)info traitCollection:(id)collection options:(unint64_t)options
{
  collectionCopy = collection;
  v10 = v8;
  v11 = v7;
  v12 = v6;
  v13 = [MEMORY[0x1E69DD1B8] sbh_iconImageAppearanceFromTraitCollection:info];
  getAPUISuggestionsWidgetViewControllerClass();
  if (objc_opt_respondsToSelector())
  {
    widgetIcon = [getAPUISuggestionsWidgetViewControllerClass() widgetIcon];
  }

  else
  {
    widgetIcon = [objc_alloc(MEMORY[0x1E69A8A00]) initWithBundleIdentifier:@"com.apple.siri"];
  }

  v15 = widgetIcon;
  v16 = SBHIconServicesOptionsForImageOptions(collectionCopy);
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