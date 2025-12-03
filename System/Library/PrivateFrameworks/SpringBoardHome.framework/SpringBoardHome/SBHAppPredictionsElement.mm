@interface SBHAppPredictionsElement
- (id)displayName;
- (id)icon:(id)icon imageWithInfo:(SBIconImageInfo *)info;
- (id)supportedGridSizeClasses;
@end

@implementation SBHAppPredictionsElement

- (id)displayName
{
  v2 = SBHBundle();
  v3 = [v2 localizedStringForKey:@"PROACTIVE_SUGGESTIONS_WIDGET_COLLECTION_NAME" value:&stru_1F3D472A8 table:@"SpringBoardHome"];

  return v3;
}

- (id)icon:(id)icon imageWithInfo:(SBIconImageInfo *)info
{
  v7 = v6;
  v8 = v5;
  v9 = v4;
  iconCopy = icon;
  v16 = 0;
  v17 = &v16;
  v18 = 0x2050000000;
  v11 = getAPUIAppPredictionViewControllerClass_softClass;
  v19 = getAPUIAppPredictionViewControllerClass_softClass;
  if (!getAPUIAppPredictionViewControllerClass_softClass)
  {
    v15[0] = MEMORY[0x1E69E9820];
    v15[1] = 3221225472;
    v15[2] = __getAPUIAppPredictionViewControllerClass_block_invoke;
    v15[3] = &unk_1E8089848;
    v15[4] = &v16;
    __getAPUIAppPredictionViewControllerClass_block_invoke(v15);
    v11 = v17[3];
  }

  v12 = v11;
  _Block_object_dispose(&v16, 8);
  v13 = [v11 imageForIconSize:v9 scale:{v8, v7}];

  return v13;
}

- (id)supportedGridSizeClasses
{
  v2 = [[SBHIconGridSizeClassSet alloc] initWithGridSizeClass:@"SBHIconGridSizeClassMedium"];

  return v2;
}

@end