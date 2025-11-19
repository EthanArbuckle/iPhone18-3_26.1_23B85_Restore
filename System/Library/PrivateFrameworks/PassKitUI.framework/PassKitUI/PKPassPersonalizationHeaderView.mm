@interface PKPassPersonalizationHeaderView
- (CGSize)sizeThatFits:(CGSize)a3;
- (PKPassPersonalizationHeaderView)initWithLogoImage:(id)a3 description:(id)a4;
- (void)_configureForCurrentState;
- (void)dealloc;
- (void)layoutSubviews;
- (void)setState:(unint64_t)a3;
@end

@implementation PKPassPersonalizationHeaderView

- (PKPassPersonalizationHeaderView)initWithLogoImage:(id)a3 description:(id)a4
{
  v6 = a3;
  v7 = a4;
  v22.receiver = self;
  v22.super_class = PKPassPersonalizationHeaderView;
  v8 = [(PKTableHeaderView *)&v22 initWithFrame:*MEMORY[0x1E695F058], *(MEMORY[0x1E695F058] + 8), *(MEMORY[0x1E695F058] + 16), *(MEMORY[0x1E695F058] + 24)];
  if (v8)
  {
    v9 = objc_alloc_init(MEMORY[0x1E69DB7C8]);
    v10 = [objc_alloc(MEMORY[0x1E696AD40]) initWithString:v7];
    v11 = objc_alloc_init(PKTableHeaderView);
    tableHeaderView = v8->_tableHeaderView;
    v8->_tableHeaderView = v11;

    [v9 setLineSpacing:-2.0];
    [v10 addAttribute:*MEMORY[0x1E69DB688] value:v9 range:{0, objc_msgSend(v10, "length")}];
    [(PKTableHeaderView *)v8->_tableHeaderView setStyle:2];
    if (v6)
    {
      v13 = [objc_alloc(MEMORY[0x1E69DCAE0]) initWithImage:v6];
      [v13 setContentMode:1];
      [v13 setFrame:{*MEMORY[0x1E695EFF8], *(MEMORY[0x1E695EFF8] + 8), 150.0, 40.0}];
      [(PKTableHeaderView *)v8->_tableHeaderView setImageView:v13];
    }

    v14 = [(PKTableHeaderView *)v8->_tableHeaderView titleLabel];
    [v14 setNumberOfLines:1];

    v15 = [(PKTableHeaderView *)v8->_tableHeaderView titleLabel];
    [v15 setAdjustsFontSizeToFitWidth:1];

    v16 = [(PKTableHeaderView *)v8->_tableHeaderView titleLabel];
    [v16 setMinimumScaleFactor:0.5];

    v17 = [(PKTableHeaderView *)v8->_tableHeaderView subtitleLabel];
    [v17 setNumberOfLines:3];

    v18 = [(PKTableHeaderView *)v8->_tableHeaderView subtitleLabel];
    [v18 setAttributedText:v10];

    v19 = [(PKTableHeaderView *)v8->_tableHeaderView subtitleLabel];
    [v19 setAdjustsFontSizeToFitWidth:1];

    v20 = [(PKTableHeaderView *)v8->_tableHeaderView subtitleLabel];
    [v20 setMinimumScaleFactor:0.2];

    [(PKPassPersonalizationHeaderView *)v8 addSubview:v8->_tableHeaderView];
    [(PKPassPersonalizationHeaderView *)v8 _configureForCurrentState];
  }

  return v8;
}

- (void)dealloc
{
  v2.receiver = self;
  v2.super_class = PKPassPersonalizationHeaderView;
  [(PKPassPersonalizationHeaderView *)&v2 dealloc];
}

- (void)setState:(unint64_t)a3
{
  if (self->_state != a3)
  {
    self->_state = a3;
    [(PKPassPersonalizationHeaderView *)self _configureForCurrentState];
  }
}

- (CGSize)sizeThatFits:(CGSize)a3
{
  [(PKTableHeaderView *)self->_tableHeaderView sizeThatFits:a3.width, a3.height];
  result.height = v4;
  result.width = v3;
  return result;
}

- (void)layoutSubviews
{
  v4.receiver = self;
  v4.super_class = PKPassPersonalizationHeaderView;
  [(PKTableHeaderView *)&v4 layoutSubviews];
  tableHeaderView = self->_tableHeaderView;
  [(PKPassPersonalizationHeaderView *)self bounds];
  [(PKTableHeaderView *)tableHeaderView setFrame:?];
}

- (void)_configureForCurrentState
{
  v3 = 0;
  state = self->_state;
  switch(state)
  {
    case 0uLL:
      v6 = @"PERSONALZIATION_HEADER_READY_TITLE";
      v5 = 0;
      goto LABEL_7;
    case 2uLL:
      v3 = 0;
      v5 = 1;
      v6 = @"PERSONALZIATION_HEADER_SUCCESS_TITLE";
      goto LABEL_7;
    case 1uLL:
      v5 = 0;
      v3 = 1;
      v6 = @"PERSONALZIATION_HEADER_PERSONALIZING_TITLE";
LABEL_7:
      v12 = PKLocalizedString(&v6->isa);
      goto LABEL_9;
  }

  v12 = 0;
  v5 = 0;
LABEL_9:
  v7 = [(PKTableHeaderView *)self->_tableHeaderView titleLabel];
  [v7 setText:v12];

  v8 = [(PKTableHeaderView *)self->_tableHeaderView activityIndicator];
  v9 = v3 ^ 1u;
  [v8 setHidden:v9];

  [(PKTableHeaderView *)self->_tableHeaderView showCheckmark:v5 animated:0];
  v10 = [(PKTableHeaderView *)self->_tableHeaderView activityIndicator];
  v11 = v10;
  if (v9)
  {
    [v10 stopAnimating];
  }

  else
  {
    [v10 startAnimating];
  }

  [(PKTableHeaderView *)self->_tableHeaderView setNeedsLayout];
}

@end