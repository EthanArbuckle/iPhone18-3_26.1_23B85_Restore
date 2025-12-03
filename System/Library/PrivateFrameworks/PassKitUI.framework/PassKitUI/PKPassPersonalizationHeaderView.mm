@interface PKPassPersonalizationHeaderView
- (CGSize)sizeThatFits:(CGSize)fits;
- (PKPassPersonalizationHeaderView)initWithLogoImage:(id)image description:(id)description;
- (void)_configureForCurrentState;
- (void)dealloc;
- (void)layoutSubviews;
- (void)setState:(unint64_t)state;
@end

@implementation PKPassPersonalizationHeaderView

- (PKPassPersonalizationHeaderView)initWithLogoImage:(id)image description:(id)description
{
  imageCopy = image;
  descriptionCopy = description;
  v22.receiver = self;
  v22.super_class = PKPassPersonalizationHeaderView;
  v8 = [(PKTableHeaderView *)&v22 initWithFrame:*MEMORY[0x1E695F058], *(MEMORY[0x1E695F058] + 8), *(MEMORY[0x1E695F058] + 16), *(MEMORY[0x1E695F058] + 24)];
  if (v8)
  {
    v9 = objc_alloc_init(MEMORY[0x1E69DB7C8]);
    v10 = [objc_alloc(MEMORY[0x1E696AD40]) initWithString:descriptionCopy];
    v11 = objc_alloc_init(PKTableHeaderView);
    tableHeaderView = v8->_tableHeaderView;
    v8->_tableHeaderView = v11;

    [v9 setLineSpacing:-2.0];
    [v10 addAttribute:*MEMORY[0x1E69DB688] value:v9 range:{0, objc_msgSend(v10, "length")}];
    [(PKTableHeaderView *)v8->_tableHeaderView setStyle:2];
    if (imageCopy)
    {
      v13 = [objc_alloc(MEMORY[0x1E69DCAE0]) initWithImage:imageCopy];
      [v13 setContentMode:1];
      [v13 setFrame:{*MEMORY[0x1E695EFF8], *(MEMORY[0x1E695EFF8] + 8), 150.0, 40.0}];
      [(PKTableHeaderView *)v8->_tableHeaderView setImageView:v13];
    }

    titleLabel = [(PKTableHeaderView *)v8->_tableHeaderView titleLabel];
    [titleLabel setNumberOfLines:1];

    titleLabel2 = [(PKTableHeaderView *)v8->_tableHeaderView titleLabel];
    [titleLabel2 setAdjustsFontSizeToFitWidth:1];

    titleLabel3 = [(PKTableHeaderView *)v8->_tableHeaderView titleLabel];
    [titleLabel3 setMinimumScaleFactor:0.5];

    subtitleLabel = [(PKTableHeaderView *)v8->_tableHeaderView subtitleLabel];
    [subtitleLabel setNumberOfLines:3];

    subtitleLabel2 = [(PKTableHeaderView *)v8->_tableHeaderView subtitleLabel];
    [subtitleLabel2 setAttributedText:v10];

    subtitleLabel3 = [(PKTableHeaderView *)v8->_tableHeaderView subtitleLabel];
    [subtitleLabel3 setAdjustsFontSizeToFitWidth:1];

    subtitleLabel4 = [(PKTableHeaderView *)v8->_tableHeaderView subtitleLabel];
    [subtitleLabel4 setMinimumScaleFactor:0.2];

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

- (void)setState:(unint64_t)state
{
  if (self->_state != state)
  {
    self->_state = state;
    [(PKPassPersonalizationHeaderView *)self _configureForCurrentState];
  }
}

- (CGSize)sizeThatFits:(CGSize)fits
{
  [(PKTableHeaderView *)self->_tableHeaderView sizeThatFits:fits.width, fits.height];
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
  titleLabel = [(PKTableHeaderView *)self->_tableHeaderView titleLabel];
  [titleLabel setText:v12];

  activityIndicator = [(PKTableHeaderView *)self->_tableHeaderView activityIndicator];
  v9 = v3 ^ 1u;
  [activityIndicator setHidden:v9];

  [(PKTableHeaderView *)self->_tableHeaderView showCheckmark:v5 animated:0];
  activityIndicator2 = [(PKTableHeaderView *)self->_tableHeaderView activityIndicator];
  v11 = activityIndicator2;
  if (v9)
  {
    [activityIndicator2 stopAnimating];
  }

  else
  {
    [activityIndicator2 startAnimating];
  }

  [(PKTableHeaderView *)self->_tableHeaderView setNeedsLayout];
}

@end