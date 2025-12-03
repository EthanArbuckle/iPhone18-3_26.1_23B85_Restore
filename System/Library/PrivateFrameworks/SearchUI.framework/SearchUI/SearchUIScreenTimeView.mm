@interface SearchUIScreenTimeView
- (SearchUIScreenTimeView)init;
- (void)updateWithRowModel:(id)model;
@end

@implementation SearchUIScreenTimeView

- (SearchUIScreenTimeView)init
{
  v12.receiver = self;
  v12.super_class = SearchUIScreenTimeView;
  v2 = [(SearchUIScreenTimeView *)&v12 init];
  v3 = v2;
  if (v2)
  {
    [(NUIContainerStackView *)v2 setAlignment:3];
    +[SearchUIUtilities standardTableCellContentInset];
    v5 = v4;
    +[SearchUIUtilities standardTableCellContentInset];
    [(SearchUIScreenTimeView *)v3 setLayoutMargins:36.0, v5, 36.0, v6];
    [(SearchUIScreenTimeView *)v3 setLayoutMarginsRelativeArrangement:1];
    [(NUIContainerStackView *)v3 setSpacing:12.0];
    v7 = +[SearchUIUtilities imageForBlockedApp];
    v8 = [SearchUIImageView imageViewWithImage:v7];

    [SearchUIAutoLayout requireIntrinsicSizeForView:v8];
    [(SearchUIScreenTimeView *)v3 addArrangedSubview:v8];
    secondaryLabel = [MEMORY[0x1E69D91A0] secondaryLabel];
    shortSubheadFont = [MEMORY[0x1E69D9138] shortSubheadFont];
    [secondaryLabel setFont:shortSubheadFont];

    [secondaryLabel setNumberOfLines:0];
    [(SearchUIScreenTimeView *)v3 addArrangedSubview:secondaryLabel];
    [(SearchUIScreenTimeView *)v3 setLabel:secondaryLabel];
  }

  return v3;
}

- (void)updateWithRowModel:(id)model
{
  title = [model title];
  label = [(SearchUIScreenTimeView *)self label];
  [label setText:title];
}

@end