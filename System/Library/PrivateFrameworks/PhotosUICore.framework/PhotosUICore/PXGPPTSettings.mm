@interface PXGPPTSettings
+ (id)settingsControllerModule;
+ (id)sharedInstance;
- (id)createLayout;
- (void)setDefaultValues;
- (void)setDefaultValuesWithPresetName:(id)a3;
@end

@implementation PXGPPTSettings

- (void)setDefaultValues
{
  v3.receiver = self;
  v3.super_class = PXGPPTSettings;
  [(PTSettings *)&v3 setDefaultValues];
  [(PXGPPTSettings *)self setNumberOfItems:100000];
  [(PXGPPTSettings *)self setNumberOfSections:1];
  [(PXGPPTSettings *)self setNumberOfColumns:4];
  [(PXGPPTSettings *)self setUseAssetBadgeDecoration:0];
  [(PXGPPTSettings *)self setSelectionDecorationStlye:0];
  [(PXGPPTSettings *)self setUseMultipleScrollableRows:0];
  [(PXGPPTSettings *)self setShouldTestNestedScrollView:0];
}

- (id)createLayout
{
  v3 = [(PXGPPTSettings *)self useMultipleScrollableRows];
  v4 = off_1E771E010;
  if (!v3)
  {
    v4 = off_1E771DFE8;
  }

  v5 = [objc_alloc(*v4) initWithSettings:self];

  return v5;
}

- (void)setDefaultValuesWithPresetName:(id)a3
{
  v8 = a3;
  [(PXGPPTSettings *)self setDefaultValues];
  if ([v8 isEqualToString:@"10k_Grid"])
  {
    v5 = self;
    v6 = 10000;
LABEL_5:
    [(PXGPPTSettings *)v5 setNumberOfItems:v6];
    goto LABEL_6;
  }

  if ([v8 isEqualToString:@"100k_Grid"])
  {
    v5 = self;
    v6 = 100000;
    goto LABEL_5;
  }

  if ([v8 isEqualToString:@"10k_Sections"])
  {
    [(PXGPPTSettings *)self setNumberOfItems:500000];
    [(PXGPPTSettings *)self setNumberOfSections:10000];
  }

  else if ([v8 isEqualToString:@"10k_Sections_Decorated"])
  {
    [(PXGPPTSettings *)self setNumberOfItems:500000];
    [(PXGPPTSettings *)self setNumberOfSections:10000];
    [(PXGPPTSettings *)self setUseAssetBadgeDecoration:1];
    [(PXGPPTSettings *)self setSelectionDecorationStlye:3];
  }

  else
  {
    if (![v8 hasPrefix:@"ScrollableRows_"])
    {
      v7 = [MEMORY[0x1E696AAA8] currentHandler];
      [v7 handleFailureInMethod:a2 object:self file:@"PXGPPTSettings.m" lineNumber:74 description:{@"unknown presetName %@", v8}];

      abort();
    }

    [(PXGPPTSettings *)self setUseMultipleScrollableRows:1];
    [(PXGPPTSettings *)self setNumberOfSections:10000];
    if ([v8 hasSuffix:@"_HorizontalRow"])
    {
      [(PXGPPTSettings *)self setShouldTestNestedScrollView:1];
    }
  }

LABEL_6:
}

+ (id)sharedInstance
{
  if (sharedInstance_onceToken_28049 != -1)
  {
    dispatch_once(&sharedInstance_onceToken_28049, &__block_literal_global_28050);
  }

  v3 = sharedInstance_sharedInstance_28051;

  return v3;
}

void __32__PXGPPTSettings_sharedInstance__block_invoke()
{
  v2 = +[PXRootSettings sharedInstance];
  v0 = [v2 tungstenPPTSettings];
  v1 = sharedInstance_sharedInstance_28051;
  sharedInstance_sharedInstance_28051 = v0;
}

+ (id)settingsControllerModule
{
  v11[1] = *MEMORY[0x1E69E9840];
  v3 = [a1 sharedInstance];
  v4 = MEMORY[0x1E69C6638];
  v5 = MEMORY[0x1E69C65E8];
  v10[0] = MEMORY[0x1E69E9820];
  v10[1] = 3221225472;
  v10[2] = __46__PXGPPTSettings_UI__settingsControllerModule__block_invoke;
  v10[3] = &unk_1E773B578;
  v6 = v3;
  v10[4] = v6;
  v7 = [v5 px_rowWithTitle:@"Show Benchmarked View" action:v10];
  v11[0] = v7;
  v8 = [MEMORY[0x1E695DEC8] arrayWithObjects:v11 count:1];
  [v4 sectionWithRows:v8 title:@"(Double-tap to dismiss)"];
  objc_claimAutoreleasedReturnValue();

  [a1 allPresetNames];
  objc_claimAutoreleasedReturnValue();
  v6;
  PXMap();
}

void __46__PXGPPTSettings_UI__settingsControllerModule__block_invoke(uint64_t a1, void *a2)
{
  v2 = *(a1 + 32);
  v3 = a2;
  v5 = [v2 createLayout];
  v4 = [[PXGPPTViewController alloc] initWithLayout:v5];
  [v3 presentViewController:v4 animated:1 completion:0];
}

id __46__PXGPPTSettings_UI__settingsControllerModule__block_invoke_2(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = MEMORY[0x1E69C65E8];
  v8[0] = MEMORY[0x1E69E9820];
  v8[1] = 3221225472;
  v8[2] = __46__PXGPPTSettings_UI__settingsControllerModule__block_invoke_3;
  v8[3] = &unk_1E7735F78;
  v9 = *(a1 + 32);
  v10 = v3;
  v5 = v3;
  v6 = [v4 px_rowWithTitle:v5 action:v8];

  return v6;
}

@end