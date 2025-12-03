@interface SearchUILoadingView
- (SearchUILoadingView)init;
- (void)setLoadingState:(unint64_t)state;
@end

@implementation SearchUILoadingView

- (SearchUILoadingView)init
{
  v11[2] = *MEMORY[0x1E69E9840];
  v10.receiver = self;
  v10.super_class = SearchUILoadingView;
  v2 = [(SearchUILoadingView *)&v10 init];
  if (v2)
  {
    v3 = objc_opt_new();
    [v3 setHidesWhenStopped:0];
    [(SearchUILoadingView *)v2 setLoadingSpinner:v3];
    v4 = objc_opt_new();
    v5 = [MEMORY[0x1E69DB878] _lightSystemFontOfSize:18.0];
    [v4 setFont:v5];

    [(SearchUILoadingView *)v2 setLoadingLabel:v4];
    v6 = objc_alloc(MEMORY[0x1E698B730]);
    v11[0] = v3;
    v11[1] = v4;
    v7 = [MEMORY[0x1E695DEC8] arrayWithObjects:v11 count:2];
    v8 = [v6 initWithArrangedSubviews:v7];

    [v8 setAlignment:3];
    [v8 setSpacing:6.0];
    [(SearchUILoadingView *)v2 addArrangedSubview:v8];
    [(NUIContainerBoxView *)v2 setVerticalAlignment:1];
    [(NUIContainerBoxView *)v2 setHorizontalAlignment:3];
    [(SearchUILoadingView *)v2 setLayoutMarginsRelativeArrangement:1];
    [(SearchUILoadingView *)v2 setLayoutMargins:45.0, 0.0, 0.0, 0.0];
    [(SearchUILoadingView *)v2 setLoadingState:0];
  }

  return v2;
}

- (void)setLoadingState:(unint64_t)state
{
  self->_loadingState = state;
  if (state == 2)
  {
    loadingSpinner = [(SearchUILoadingView *)self loadingSpinner];
    [loadingSpinner setHidden:1];

    loadingSpinner2 = [SearchUIUtilities localizedStringForKey:@"CARD_LOADING_ERROR"];
    loadingLabel = [(SearchUILoadingView *)self loadingLabel];
    [loadingLabel setText:loadingSpinner2];
  }

  else if (state == 1)
  {
    loadingSpinner2 = [(SearchUILoadingView *)self loadingSpinner];
    [loadingSpinner2 stopAnimating];
  }

  else
  {
    if (state)
    {
      return;
    }

    v4 = [SearchUIUtilities localizedStringForKey:@"CARD_LOADING"];
    loadingLabel2 = [(SearchUILoadingView *)self loadingLabel];
    [loadingLabel2 setText:v4];

    loadingSpinner2 = [(SearchUILoadingView *)self loadingSpinner];
    [loadingSpinner2 startAnimating];
  }
}

@end