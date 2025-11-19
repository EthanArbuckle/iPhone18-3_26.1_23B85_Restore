@interface STSSearchNoticeView
- (STSSearchNoticeView)init;
- (UIEdgeInsets)contentInsets;
- (void)_continuePressed:(id)a3;
- (void)layoutSubviews;
- (void)setContentCentered:(BOOL)a3;
- (void)setContentInsets:(UIEdgeInsets)a3;
- (void)setContinueButtonAction:(id)a3;
- (void)setText:(id)a3;
@end

@implementation STSSearchNoticeView

- (STSSearchNoticeView)init
{
  v11.receiver = self;
  v11.super_class = STSSearchNoticeView;
  v2 = [(STSSearchNoticeView *)&v11 init];
  if (v2)
  {
    v3 = [MEMORY[0x277D75348] sts_defaultBackgroundColor];
    [(STSSearchNoticeView *)v2 setBackgroundColor:v3];

    [(STSSearchNoticeView *)v2 setTranslatesAutoresizingMaskIntoConstraints:0];
    v4 = objc_alloc_init(MEMORY[0x277D756B8]);
    textLabel = v2->_textLabel;
    v2->_textLabel = v4;

    v6 = v2->_textLabel;
    v7 = [MEMORY[0x277D74300] preferredFontForTextStyle:*MEMORY[0x277D76918]];
    [(UILabel *)v6 setFont:v7];

    [(UILabel *)v2->_textLabel setTextAlignment:1];
    [(UILabel *)v2->_textLabel setNumberOfLines:0];
    [(UILabel *)v2->_textLabel setTranslatesAutoresizingMaskIntoConstraints:0];
    [(STSSearchNoticeView *)v2 addSubview:v2->_textLabel];
    v8 = [MEMORY[0x277CBEB18] array];
    constraints = v2->_constraints;
    v2->_constraints = v8;
  }

  return v2;
}

- (void)layoutSubviews
{
  [MEMORY[0x277CCAAD0] deactivateConstraints:self->_constraints];
  [(NSMutableArray *)self->_constraints removeAllObjects];
  v28 = [(STSSearchNoticeView *)self readableContentGuide];
  constraints = self->_constraints;
  v4 = [(UILabel *)self->_textLabel leadingAnchor];
  v5 = [v28 leadingAnchor];
  v6 = [v4 constraintEqualToAnchor:v5];
  [(NSMutableArray *)constraints addObject:v6];

  v7 = self->_constraints;
  v8 = [(UILabel *)self->_textLabel trailingAnchor];
  v9 = [v28 trailingAnchor];
  v10 = [v8 constraintEqualToAnchor:v9];
  [(NSMutableArray *)v7 addObject:v10];

  v11 = self->_constraints;
  v12 = [(UILabel *)self->_textLabel centerXAnchor];
  v13 = [(STSSearchNoticeView *)self centerXAnchor];
  v14 = [v12 constraintEqualToAnchor:v13];
  [(NSMutableArray *)v11 addObject:v14];

  v15 = self->_constraints;
  v16 = [(UILabel *)self->_textLabel topAnchor];
  v17 = [(STSSearchNoticeView *)self topAnchor];
  v18 = [v16 constraintEqualToAnchor:v17 constant:16.0];
  [(NSMutableArray *)v15 addObject:v18];

  continueButton = self->_continueButton;
  if (continueButton)
  {
    v20 = self->_constraints;
    v21 = [(UIButton *)continueButton centerXAnchor];
    v22 = [(STSSearchNoticeView *)self centerXAnchor];
    v23 = [v21 constraintEqualToAnchor:v22];
    [(NSMutableArray *)v20 addObject:v23];

    v24 = self->_constraints;
    v25 = [(UIButton *)self->_continueButton topAnchor];
    v26 = [(UILabel *)self->_textLabel bottomAnchor];
    v27 = [v25 constraintEqualToAnchor:v26 constant:16.0];
    [(NSMutableArray *)v24 addObject:v27];
  }

  [MEMORY[0x277CCAAD0] activateConstraints:self->_constraints];
}

- (void)_continuePressed:(id)a3
{
  continueButtonAction = self->_continueButtonAction;
  if (continueButtonAction)
  {
    continueButtonAction[2]();
  }
}

- (void)setText:(id)a3
{
  v5 = a3;
  if (![(NSString *)self->_text isEqualToString:?])
  {
    objc_storeStrong(&self->_text, a3);
    [(UILabel *)self->_textLabel setText:self->_text];
    [(STSSearchNoticeView *)self setNeedsLayout];
  }
}

- (void)setContentInsets:(UIEdgeInsets)a3
{
  v3.f64[0] = a3.top;
  v3.f64[1] = a3.left;
  v4.f64[0] = a3.bottom;
  v4.f64[1] = a3.right;
  if ((vminv_u16(vmovn_s32(vuzp1q_s32(vceqq_f64(*&self->_contentInsets.top, v3), vceqq_f64(*&self->_contentInsets.bottom, v4)))) & 1) == 0)
  {
    self->_contentInsets = a3;
    [(STSSearchNoticeView *)self setNeedsLayout];
  }
}

- (void)setContentCentered:(BOOL)a3
{
  if (self->_contentCentered != a3)
  {
    self->_contentCentered = a3;
    [(STSSearchNoticeView *)self setNeedsLayout];
  }
}

- (void)setContinueButtonAction:(id)a3
{
  if (self->_continueButtonAction != a3)
  {
    continueButton = self->_continueButton;
    v5 = a3;
    [(UIButton *)continueButton removeFromSuperview];
    v6 = MEMORY[0x266751FB0](v5);

    continueButtonAction = self->_continueButtonAction;
    self->_continueButtonAction = v6;

    if (self->_continueButtonAction)
    {
      v8 = [MEMORY[0x277D75220] buttonWithType:1];
      v9 = self->_continueButton;
      self->_continueButton = v8;

      v10 = self->_continueButton;
      v11 = STSLocalizedString(@"NOTICE_CONTINUE_BUTTON_TITLE");
      [(UIButton *)v10 setTitle:v11 forState:0];

      v12 = [(UIButton *)self->_continueButton titleLabel];
      v13 = [MEMORY[0x277D74300] preferredFontForTextStyle:*MEMORY[0x277D76918]];
      [v12 setFont:v13];

      [(UIButton *)self->_continueButton addTarget:self action:sel__continuePressed_ forControlEvents:64];
      [(UIButton *)self->_continueButton setTranslatesAutoresizingMaskIntoConstraints:0];
      [(STSSearchNoticeView *)self addSubview:self->_continueButton];
    }

    [(STSSearchNoticeView *)self setNeedsLayout];
  }
}

- (UIEdgeInsets)contentInsets
{
  top = self->_contentInsets.top;
  left = self->_contentInsets.left;
  bottom = self->_contentInsets.bottom;
  right = self->_contentInsets.right;
  result.right = right;
  result.bottom = bottom;
  result.left = left;
  result.top = top;
  return result;
}

@end