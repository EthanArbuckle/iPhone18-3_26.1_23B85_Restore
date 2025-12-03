@interface SKUIRedeemITunesPassLearnMoreView
- (UIControl)button;
- (void)layoutSubviews;
- (void)setBackgroundColor:(id)color;
- (void)setButtonTitle:(id)title;
- (void)setExplanationString:(id)string;
- (void)setHeaderImage:(id)image;
@end

@implementation SKUIRedeemITunesPassLearnMoreView

- (UIControl)button
{
  button = self->_button;
  if (!button)
  {
    v4 = [MEMORY[0x277D75220] buttonWithType:1];
    v5 = self->_button;
    self->_button = v4;

    v6 = self->_button;
    backgroundColor = [(SKUIRedeemITunesPassLearnMoreView *)self backgroundColor];
    [(UIButton *)v6 setBackgroundColor:backgroundColor];

    titleLabel = [(UIButton *)self->_button titleLabel];
    v9 = [MEMORY[0x277D74300] systemFontOfSize:18.0];
    [titleLabel setFont:v9];

    [(SKUIRedeemITunesPassLearnMoreView *)self addSubview:self->_button];
    button = self->_button;
  }

  return button;
}

- (void)setButtonTitle:(id)title
{
  titleCopy = title;
  button = [(SKUIRedeemITunesPassLearnMoreView *)self button];
  [button setTitle:titleCopy forState:0];

  [(SKUIRedeemITunesPassLearnMoreView *)self setNeedsLayout];
}

- (void)setExplanationString:(id)string
{
  stringCopy = string;
  explanationLabel = self->_explanationLabel;
  v14 = stringCopy;
  if (!explanationLabel)
  {
    v6 = objc_alloc_init(MEMORY[0x277D756B8]);
    v7 = self->_explanationLabel;
    self->_explanationLabel = v6;

    v8 = self->_explanationLabel;
    backgroundColor = [(SKUIRedeemITunesPassLearnMoreView *)self backgroundColor];
    [(UILabel *)v8 setBackgroundColor:backgroundColor];

    v10 = self->_explanationLabel;
    v11 = [MEMORY[0x277D74300] systemFontOfSize:14.0];
    [(UILabel *)v10 setFont:v11];

    [(UILabel *)self->_explanationLabel setNumberOfLines:0];
    [(UILabel *)self->_explanationLabel setTextAlignment:1];
    v12 = self->_explanationLabel;
    v13 = [MEMORY[0x277D75348] colorWithWhite:0.0 alpha:0.600000024];
    [(UILabel *)v12 setTextColor:v13];

    [(SKUIRedeemITunesPassLearnMoreView *)self addSubview:self->_explanationLabel];
    stringCopy = v14;
    explanationLabel = self->_explanationLabel;
  }

  [(UILabel *)explanationLabel setText:stringCopy];
  [(SKUIRedeemITunesPassLearnMoreView *)self setNeedsLayout];
}

- (void)setHeaderImage:(id)image
{
  imageCopy = image;
  headerImageView = self->_headerImageView;
  v10 = imageCopy;
  if (!headerImageView)
  {
    v6 = objc_alloc_init(MEMORY[0x277D755E8]);
    v7 = self->_headerImageView;
    self->_headerImageView = v6;

    v8 = self->_headerImageView;
    backgroundColor = [(SKUIRedeemITunesPassLearnMoreView *)self backgroundColor];
    [(UIImageView *)v8 setBackgroundColor:backgroundColor];

    [(SKUIRedeemITunesPassLearnMoreView *)self addSubview:self->_headerImageView];
    imageCopy = v10;
    headerImageView = self->_headerImageView;
  }

  [(UIImageView *)headerImageView setImage:imageCopy];
  [(SKUIRedeemITunesPassLearnMoreView *)self setNeedsLayout];
}

- (void)layoutSubviews
{
  v2 = *MEMORY[0x277D85DE8];
  v0 = 136446210;
  v1 = "[SKUIRedeemITunesPassLearnMoreView layoutSubviews]";
}

- (void)setBackgroundColor:(id)color
{
  button = self->_button;
  colorCopy = color;
  [(UIButton *)button setBackgroundColor:colorCopy];
  [(UILabel *)self->_explanationLabel setBackgroundColor:colorCopy];
  [(UIImageView *)self->_headerImageView setBackgroundColor:colorCopy];
  v6.receiver = self;
  v6.super_class = SKUIRedeemITunesPassLearnMoreView;
  [(SKUIRedeemITunesPassLearnMoreView *)&v6 setBackgroundColor:colorCopy];
}

@end