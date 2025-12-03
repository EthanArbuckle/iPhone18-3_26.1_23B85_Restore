@interface STSSearchNoticeView
- (STSSearchNoticeView)init;
- (UIEdgeInsets)contentInsets;
- (void)_continuePressed:(id)pressed;
- (void)layoutSubviews;
- (void)setContentCentered:(BOOL)centered;
- (void)setContentInsets:(UIEdgeInsets)insets;
- (void)setContinueButtonAction:(id)action;
- (void)setText:(id)text;
@end

@implementation STSSearchNoticeView

- (STSSearchNoticeView)init
{
  v11.receiver = self;
  v11.super_class = STSSearchNoticeView;
  v2 = [(STSSearchNoticeView *)&v11 init];
  if (v2)
  {
    sts_defaultBackgroundColor = [MEMORY[0x277D75348] sts_defaultBackgroundColor];
    [(STSSearchNoticeView *)v2 setBackgroundColor:sts_defaultBackgroundColor];

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
    array = [MEMORY[0x277CBEB18] array];
    constraints = v2->_constraints;
    v2->_constraints = array;
  }

  return v2;
}

- (void)layoutSubviews
{
  [MEMORY[0x277CCAAD0] deactivateConstraints:self->_constraints];
  [(NSMutableArray *)self->_constraints removeAllObjects];
  readableContentGuide = [(STSSearchNoticeView *)self readableContentGuide];
  constraints = self->_constraints;
  leadingAnchor = [(UILabel *)self->_textLabel leadingAnchor];
  leadingAnchor2 = [readableContentGuide leadingAnchor];
  v6 = [leadingAnchor constraintEqualToAnchor:leadingAnchor2];
  [(NSMutableArray *)constraints addObject:v6];

  v7 = self->_constraints;
  trailingAnchor = [(UILabel *)self->_textLabel trailingAnchor];
  trailingAnchor2 = [readableContentGuide trailingAnchor];
  v10 = [trailingAnchor constraintEqualToAnchor:trailingAnchor2];
  [(NSMutableArray *)v7 addObject:v10];

  v11 = self->_constraints;
  centerXAnchor = [(UILabel *)self->_textLabel centerXAnchor];
  centerXAnchor2 = [(STSSearchNoticeView *)self centerXAnchor];
  v14 = [centerXAnchor constraintEqualToAnchor:centerXAnchor2];
  [(NSMutableArray *)v11 addObject:v14];

  v15 = self->_constraints;
  topAnchor = [(UILabel *)self->_textLabel topAnchor];
  topAnchor2 = [(STSSearchNoticeView *)self topAnchor];
  v18 = [topAnchor constraintEqualToAnchor:topAnchor2 constant:16.0];
  [(NSMutableArray *)v15 addObject:v18];

  continueButton = self->_continueButton;
  if (continueButton)
  {
    v20 = self->_constraints;
    centerXAnchor3 = [(UIButton *)continueButton centerXAnchor];
    centerXAnchor4 = [(STSSearchNoticeView *)self centerXAnchor];
    v23 = [centerXAnchor3 constraintEqualToAnchor:centerXAnchor4];
    [(NSMutableArray *)v20 addObject:v23];

    v24 = self->_constraints;
    topAnchor3 = [(UIButton *)self->_continueButton topAnchor];
    bottomAnchor = [(UILabel *)self->_textLabel bottomAnchor];
    v27 = [topAnchor3 constraintEqualToAnchor:bottomAnchor constant:16.0];
    [(NSMutableArray *)v24 addObject:v27];
  }

  [MEMORY[0x277CCAAD0] activateConstraints:self->_constraints];
}

- (void)_continuePressed:(id)pressed
{
  continueButtonAction = self->_continueButtonAction;
  if (continueButtonAction)
  {
    continueButtonAction[2]();
  }
}

- (void)setText:(id)text
{
  textCopy = text;
  if (![(NSString *)self->_text isEqualToString:?])
  {
    objc_storeStrong(&self->_text, text);
    [(UILabel *)self->_textLabel setText:self->_text];
    [(STSSearchNoticeView *)self setNeedsLayout];
  }
}

- (void)setContentInsets:(UIEdgeInsets)insets
{
  v3.f64[0] = insets.top;
  v3.f64[1] = insets.left;
  v4.f64[0] = insets.bottom;
  v4.f64[1] = insets.right;
  if ((vminv_u16(vmovn_s32(vuzp1q_s32(vceqq_f64(*&self->_contentInsets.top, v3), vceqq_f64(*&self->_contentInsets.bottom, v4)))) & 1) == 0)
  {
    self->_contentInsets = insets;
    [(STSSearchNoticeView *)self setNeedsLayout];
  }
}

- (void)setContentCentered:(BOOL)centered
{
  if (self->_contentCentered != centered)
  {
    self->_contentCentered = centered;
    [(STSSearchNoticeView *)self setNeedsLayout];
  }
}

- (void)setContinueButtonAction:(id)action
{
  if (self->_continueButtonAction != action)
  {
    continueButton = self->_continueButton;
    actionCopy = action;
    [(UIButton *)continueButton removeFromSuperview];
    v6 = MEMORY[0x266751FB0](actionCopy);

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

      titleLabel = [(UIButton *)self->_continueButton titleLabel];
      v13 = [MEMORY[0x277D74300] preferredFontForTextStyle:*MEMORY[0x277D76918]];
      [titleLabel setFont:v13];

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