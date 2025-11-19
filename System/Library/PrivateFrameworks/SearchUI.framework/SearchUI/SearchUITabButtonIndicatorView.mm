@interface SearchUITabButtonIndicatorView
- (SearchUIFeedbackDelegate)feedbackDelegate;
- (SearchUITabButtonIndicatorView)init;
- (void)setRowModel:(id)a3;
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
  v5 = [v3 view];
  [v5 setCustomAlignmentRectInsets:{-1.0, 0.0, 0.0, 0.0}];

  v6 = [MEMORY[0x1E69D91C8] viewWithProminence:3];
  [v6 tlks_setCornerRadius:*MEMORY[0x1E69796E8] withStyle:5.0];
  v7 = [MEMORY[0x1E69D91A0] secondaryLabel];
  v8 = [MEMORY[0x1E69D9138] cachedFontForTextStyle:*MEMORY[0x1E69DDD80] isBold:0 isMacStyle:{objc_msgSend(MEMORY[0x1E69D9240], "isMacOS")}];
  [v7 setFont:v8];

  [v7 setCustomAlignmentRectInsets:{-2.0, -3.0, -2.0, -3.0}];
  v9 = [MEMORY[0x1E69D9108] appearanceWithStyle:3];
  [v9 overrideAppearanceForView:v6];

  v10 = objc_alloc(MEMORY[0x1E698B718]);
  v19[0] = v6;
  v19[1] = v7;
  v11 = [MEMORY[0x1E695DEC8] arrayWithObjects:v19 count:2];
  v12 = [v10 initWithArrangedSubviews:v11];

  v13 = [v3 view];
  v18[0] = v13;
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

- (void)setRowModel:(id)a3
{
  v5 = a3;
  if (self->_rowModel != v5)
  {
    v19 = v5;
    objc_storeStrong(&self->_rowModel, a3);
    v6 = [(SearchUIRowModel *)v19 cardSection];
    v7 = [v6 secondaryCommand];

    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v8 = [v7 tokenString];
    }

    else
    {
      v8 = &stru_1F55BC4E8;
    }

    v9 = objc_opt_new();
    v10 = MEMORY[0x1E696AEC0];
    v11 = [SearchUIUtilities localizedStringForKey:@"SCOPED_SEARCH_BUTTON_TITLE_FORMAT"];
    v12 = [v10 stringWithValidatedFormat:v11 validFormatSpecifiers:@"%@" error:0, v8];
    [v9 setTitle:v12];

    [v9 setCommand:v7];
    v13 = [[SearchUIButtonItem alloc] initWithSFButtonItem:v9];
    v14 = [(SearchUITabButtonIndicatorView *)self rowModel];
    v15 = [(SearchUITabButtonIndicatorView *)self tabButtonViewController];
    [v15 setRowModel:v14];

    v16 = [(SearchUITabButtonIndicatorView *)self feedbackDelegate];
    v17 = [(SearchUITabButtonIndicatorView *)self tabButtonViewController];
    [v17 setFeedbackDelegate:v16];

    v18 = [(SearchUITabButtonIndicatorView *)self tabButtonViewController];
    [v18 updateWithButtonItem:v13 buttonItemViewType:0];

    v5 = v19;
  }
}

- (SearchUIFeedbackDelegate)feedbackDelegate
{
  WeakRetained = objc_loadWeakRetained(&self->_feedbackDelegate);

  return WeakRetained;
}

@end