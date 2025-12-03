@interface SearchUILeadingEncapsulatedTextViewController
+ (BOOL)supportsRowModel:(id)model;
- (id)setupView;
- (void)updateWithRowModel:(id)model;
@end

@implementation SearchUILeadingEncapsulatedTextViewController

+ (BOOL)supportsRowModel:(id)model
{
  pinText = [model pinText];
  v4 = [pinText length] != 0;

  return v4;
}

- (id)setupView
{
  v2 = objc_opt_new();

  return v2;
}

- (void)updateWithRowModel:(id)model
{
  v16.receiver = self;
  v16.super_class = SearchUILeadingEncapsulatedTextViewController;
  modelCopy = model;
  [(SearchUILeadingViewController *)&v16 updateWithRowModel:modelCopy];
  pinText = [modelCopy pinText];

  v6 = MEMORY[0x1E696AEC0];
  lowercaseString = [pinText lowercaseString];
  v8 = [v6 stringWithFormat:@"%@.square.fill", lowercaseString];

  v9 = [SearchUISymbolImage uiImageWithSymbolName:v8];

  v10 = objc_opt_new();
  v11 = v10;
  if (v9)
  {
    v12 = [MEMORY[0x1E69D9138] cachedFontForTextStyle:*MEMORY[0x1E69DDD40]];
    v13 = [[SearchUISymbolImage alloc] initWithSymbolName:v8 font:v12 scale:2];
    [v11 setGlyph:v13];
  }

  else
  {
    [v10 setText:pinText];
    [v11 setEncapsulationStyle:2];
    [v11 setIsEmphasized:1];
    v12 = [MEMORY[0x1E69D9138] preferredMonospacedFontForTextStyle:*MEMORY[0x1E69DDD40]];
  }

  view = [(SearchUILeadingViewController *)self view];
  [view setSfText:v11];

  view2 = [(SearchUILeadingViewController *)self view];
  [view2 setFont:v12];
}

@end