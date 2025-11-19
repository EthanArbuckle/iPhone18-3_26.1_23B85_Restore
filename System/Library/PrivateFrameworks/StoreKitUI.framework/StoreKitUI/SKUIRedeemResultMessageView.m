@interface SKUIRedeemResultMessageView
- (CGSize)sizeThatFits:(CGSize)a3;
- (void)layoutSubviews;
- (void)setBackgroundColor:(id)a3;
- (void)setMessage:(id)a3;
- (void)setTitle:(id)a3;
@end

@implementation SKUIRedeemResultMessageView

- (void)setMessage:(id)a3
{
  v15 = a3;
  v4 = [(SKUIRedeemResultMessageView *)self message];
  if (v4 != v15 && ([v15 isEqualToString:v4] & 1) == 0)
  {
    messageLabel = self->_messageLabel;
    if (v15)
    {
      if (!messageLabel)
      {
        v6 = objc_alloc_init(MEMORY[0x277D756B8]);
        v7 = self->_messageLabel;
        self->_messageLabel = v6;

        v8 = self->_messageLabel;
        v9 = [(SKUIRedeemResultMessageView *)self backgroundColor];
        [(UILabel *)v8 setBackgroundColor:v9];

        v10 = self->_messageLabel;
        v11 = [MEMORY[0x277D74300] systemFontOfSize:14.0];
        [(UILabel *)v10 setFont:v11];

        [(UILabel *)self->_messageLabel setNumberOfLines:0];
        [(UILabel *)self->_messageLabel setTextAlignment:1];
        v12 = self->_messageLabel;
        v13 = [MEMORY[0x277D75348] colorWithWhite:0.0 alpha:0.6];
        [(UILabel *)v12 setTextColor:v13];

        [(SKUIRedeemResultMessageView *)self addSubview:self->_messageLabel];
        messageLabel = self->_messageLabel;
      }

      [(UILabel *)messageLabel setText:?];
    }

    else
    {
      [(UILabel *)messageLabel removeFromSuperview];
      v14 = self->_messageLabel;
      self->_messageLabel = 0;
    }

    [(SKUIRedeemResultMessageView *)self setNeedsLayout];
  }
}

- (void)setTitle:(id)a3
{
  v15 = a3;
  v4 = [(SKUIRedeemResultMessageView *)self title];
  if (v4 != v15 && ([v15 isEqualToString:v4] & 1) == 0)
  {
    titleLabel = self->_titleLabel;
    if (v15)
    {
      if (!titleLabel)
      {
        v6 = objc_alloc_init(MEMORY[0x277D756B8]);
        v7 = self->_titleLabel;
        self->_titleLabel = v6;

        v8 = self->_titleLabel;
        v9 = [(SKUIRedeemResultMessageView *)self backgroundColor];
        [(UILabel *)v8 setBackgroundColor:v9];

        v10 = self->_titleLabel;
        v11 = [MEMORY[0x277D74300] boldSystemFontOfSize:17.0];
        [(UILabel *)v10 setFont:v11];

        [(UILabel *)self->_titleLabel setNumberOfLines:3];
        [(UILabel *)self->_titleLabel setTextAlignment:1];
        v12 = self->_titleLabel;
        v13 = [MEMORY[0x277D75348] blackColor];
        [(UILabel *)v12 setTextColor:v13];

        [(SKUIRedeemResultMessageView *)self addSubview:self->_titleLabel];
        titleLabel = self->_titleLabel;
      }

      [(UILabel *)titleLabel setText:?];
    }

    else
    {
      [(UILabel *)titleLabel removeFromSuperview];
      v14 = self->_titleLabel;
      self->_titleLabel = 0;
    }

    [(SKUIRedeemResultMessageView *)self setNeedsLayout];
  }
}

- (void)layoutSubviews
{
  v2 = *MEMORY[0x277D85DE8];
  v0 = 136446210;
  v1 = "[SKUIRedeemResultMessageView layoutSubviews]";
}

- (void)setBackgroundColor:(id)a3
{
  messageLabel = self->_messageLabel;
  v5 = a3;
  [(UILabel *)messageLabel setBackgroundColor:v5];
  [(UILabel *)self->_titleLabel setBackgroundColor:v5];
  v6.receiver = self;
  v6.super_class = SKUIRedeemResultMessageView;
  [(SKUIRedeemResultMessageView *)&v6 setBackgroundColor:v5];
}

- (CGSize)sizeThatFits:(CGSize)a3
{
  width = a3.width;
  v5 = [MEMORY[0x277D75418] currentDevice];
  v6 = [v5 userInterfaceIdiom];

  v7 = 60.0;
  if ((v6 & 0xFFFFFFFFFFFFFFFBLL) != 1)
  {
    v7 = 30.0;
  }

  v8 = width - v7;
  titleLabel = self->_titleLabel;
  if (titleLabel)
  {
    [(UILabel *)titleLabel sizeThatFits:width - v7, 1.79769313e308];
    v11 = v10 + 0.0;
  }

  else
  {
    v11 = 0.0;
  }

  messageLabel = self->_messageLabel;
  if (messageLabel)
  {
    [(UILabel *)messageLabel sizeThatFits:v8, 1.79769313e308];
    v11 = v11 + v13;
  }

  if (self->_titleLabel && self->_messageLabel)
  {
    v11 = v11 + 13.0;
  }

  v14 = width;
  v15 = v11;
  result.height = v15;
  result.width = v14;
  return result;
}

@end