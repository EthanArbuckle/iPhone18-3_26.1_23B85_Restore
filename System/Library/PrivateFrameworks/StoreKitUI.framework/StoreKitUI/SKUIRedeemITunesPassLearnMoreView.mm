@interface SKUIRedeemITunesPassLearnMoreView
- (UIControl)button;
- (void)layoutSubviews;
- (void)setBackgroundColor:(id)a3;
- (void)setButtonTitle:(id)a3;
- (void)setExplanationString:(id)a3;
- (void)setHeaderImage:(id)a3;
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
    v7 = [(SKUIRedeemITunesPassLearnMoreView *)self backgroundColor];
    [(UIButton *)v6 setBackgroundColor:v7];

    v8 = [(UIButton *)self->_button titleLabel];
    v9 = [MEMORY[0x277D74300] systemFontOfSize:18.0];
    [v8 setFont:v9];

    [(SKUIRedeemITunesPassLearnMoreView *)self addSubview:self->_button];
    button = self->_button;
  }

  return button;
}

- (void)setButtonTitle:(id)a3
{
  v4 = a3;
  v5 = [(SKUIRedeemITunesPassLearnMoreView *)self button];
  [v5 setTitle:v4 forState:0];

  [(SKUIRedeemITunesPassLearnMoreView *)self setNeedsLayout];
}

- (void)setExplanationString:(id)a3
{
  v4 = a3;
  explanationLabel = self->_explanationLabel;
  v14 = v4;
  if (!explanationLabel)
  {
    v6 = objc_alloc_init(MEMORY[0x277D756B8]);
    v7 = self->_explanationLabel;
    self->_explanationLabel = v6;

    v8 = self->_explanationLabel;
    v9 = [(SKUIRedeemITunesPassLearnMoreView *)self backgroundColor];
    [(UILabel *)v8 setBackgroundColor:v9];

    v10 = self->_explanationLabel;
    v11 = [MEMORY[0x277D74300] systemFontOfSize:14.0];
    [(UILabel *)v10 setFont:v11];

    [(UILabel *)self->_explanationLabel setNumberOfLines:0];
    [(UILabel *)self->_explanationLabel setTextAlignment:1];
    v12 = self->_explanationLabel;
    v13 = [MEMORY[0x277D75348] colorWithWhite:0.0 alpha:0.600000024];
    [(UILabel *)v12 setTextColor:v13];

    [(SKUIRedeemITunesPassLearnMoreView *)self addSubview:self->_explanationLabel];
    v4 = v14;
    explanationLabel = self->_explanationLabel;
  }

  [(UILabel *)explanationLabel setText:v4];
  [(SKUIRedeemITunesPassLearnMoreView *)self setNeedsLayout];
}

- (void)setHeaderImage:(id)a3
{
  v4 = a3;
  headerImageView = self->_headerImageView;
  v10 = v4;
  if (!headerImageView)
  {
    v6 = objc_alloc_init(MEMORY[0x277D755E8]);
    v7 = self->_headerImageView;
    self->_headerImageView = v6;

    v8 = self->_headerImageView;
    v9 = [(SKUIRedeemITunesPassLearnMoreView *)self backgroundColor];
    [(UIImageView *)v8 setBackgroundColor:v9];

    [(SKUIRedeemITunesPassLearnMoreView *)self addSubview:self->_headerImageView];
    v4 = v10;
    headerImageView = self->_headerImageView;
  }

  [(UIImageView *)headerImageView setImage:v4];
  [(SKUIRedeemITunesPassLearnMoreView *)self setNeedsLayout];
}

- (void)layoutSubviews
{
  v2 = *MEMORY[0x277D85DE8];
  v0 = 136446210;
  v1 = "[SKUIRedeemITunesPassLearnMoreView layoutSubviews]";
}

- (void)setBackgroundColor:(id)a3
{
  button = self->_button;
  v5 = a3;
  [(UIButton *)button setBackgroundColor:v5];
  [(UILabel *)self->_explanationLabel setBackgroundColor:v5];
  [(UIImageView *)self->_headerImageView setBackgroundColor:v5];
  v6.receiver = self;
  v6.super_class = SKUIRedeemITunesPassLearnMoreView;
  [(SKUIRedeemITunesPassLearnMoreView *)&v6 setBackgroundColor:v5];
}

@end