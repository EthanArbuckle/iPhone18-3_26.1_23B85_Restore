@interface SearchUITabButtonIndicatorView
- (SearchUIFeedbackDelegate)feedbackDelegate;
- (SearchUITabButtonIndicatorView)init;
- (void)setRowModel:(id)model;
@end

@implementation SearchUITabButtonIndicatorView

- (SearchUITabButtonIndicatorView)init
{
  v19[2] = *MEMORY[0x1E69E9840];
  v3 = objc_opt_new();
  [(SearchUITabButtonIndicatorView *)self setTabButtonViewController:v3];
  v4 = [MEMORY[0x1E69D9138] cachedFontForTextStyle:*MEMORY[0x1E69DDD28] isBold:0 isMacStyle:{objc_msgSend(MEMORY[0x1E69D9240], "isMacOS")}];
  [v3 setButtonFont:v4];

  [v3 setButtonProminence:3];
  view = [v3 view];
  [view setCustomAlignmentRectInsets:{-1.0, 0.0, 0.0, 0.0}];

  v6 = [MEMORY[0x1E69D91C8] viewWithProminence:3];
  [v6 tlks_setCornerRadius:*MEMORY[0x1E69796E8] withStyle:5.0];
  secondaryLabel = [MEMORY[0x1E69D91A0] secondaryLabel];
  v8 = [MEMORY[0x1E69D9138] cachedFontForTextStyle:*MEMORY[0x1E69DDD80] isBold:0 isMacStyle:{objc_msgSend(MEMORY[0x1E69D9240], "isMacOS")}];
  [secondaryLabel setFont:v8];

  [secondaryLabel setCustomAlignmentRectInsets:{-2.0, -3.0, -2.0, -3.0}];
  v9 = [MEMORY[0x1E69D9108] appearanceWithStyle:3];
  [v9 overrideAppearanceForView:v6];

  v10 = objc_alloc(MEMORY[0x1E698B718]);
  v19[0] = v6;
  v19[1] = secondaryLabel;
  v11 = [MEMORY[0x1E695DEC8] arrayWithObjects:v19 count:2];
  v12 = [v10 initWithArrangedSubviews:v11];

  view2 = [v3 view];
  v18[0] = view2;
  v18[1] = v12;
  v14 = [MEMORY[0x1E695DEC8] arrayWithObjects:v18 count:2];
  v17.receiver = self;
  v17.super_class = SearchUITabButtonIndicatorView;
  v15 = [(NUIContainerStackView *)&v17 initWithArrangedSubviews:v14];

  if (v15)
  {
    [(NUIContainerStackView *)v15 setAlignment:3];
    [(NUIContainerStackView *)v15 setSpacing:5.0];
  }

  return v15;
}

- (void)setRowModel:(id)model
{
  modelCopy = model;
  if (self->_rowModel != modelCopy)
  {
    v19 = modelCopy;
    objc_storeStrong(&self->_rowModel, model);
    cardSection = [(SearchUIRowModel *)v19 cardSection];
    secondaryCommand = [cardSection secondaryCommand];

    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      tokenString = [secondaryCommand tokenString];
    }

    else
    {
      tokenString = &stru_1F55BC4E8;
    }

    v9 = objc_opt_new();
    v10 = MEMORY[0x1E696AEC0];
    v11 = [SearchUIUtilities localizedStringForKey:@"SCOPED_SEARCH_BUTTON_TITLE_FORMAT"];
    v12 = [v10 stringWithValidatedFormat:v11 validFormatSpecifiers:@"%@" error:0, tokenString];
    [v9 setTitle:v12];

    [v9 setCommand:secondaryCommand];
    v13 = [[SearchUIButtonItem alloc] initWithSFButtonItem:v9];
    rowModel = [(SearchUITabButtonIndicatorView *)self rowModel];
    tabButtonViewController = [(SearchUITabButtonIndicatorView *)self tabButtonViewController];
    [tabButtonViewController setRowModel:rowModel];

    feedbackDelegate = [(SearchUITabButtonIndicatorView *)self feedbackDelegate];
    tabButtonViewController2 = [(SearchUITabButtonIndicatorView *)self tabButtonViewController];
    [tabButtonViewController2 setFeedbackDelegate:feedbackDelegate];

    tabButtonViewController3 = [(SearchUITabButtonIndicatorView *)self tabButtonViewController];
    [tabButtonViewController3 updateWithButtonItem:v13 buttonItemViewType:0];

    modelCopy = v19;
  }
}

- (SearchUIFeedbackDelegate)feedbackDelegate
{
  WeakRetained = objc_loadWeakRetained(&self->_feedbackDelegate);

  return WeakRetained;
}

@end