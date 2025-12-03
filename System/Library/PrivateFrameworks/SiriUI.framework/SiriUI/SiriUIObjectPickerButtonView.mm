@interface SiriUIObjectPickerButtonView
+ (double)defaultHeight;
- (CGSize)sizeThatFits:(CGSize)fits;
- (SiriUIObjectPickerButtonView)initWithFrame:(CGRect)frame;
- (void)layoutSubviews;
@end

@implementation SiriUIObjectPickerButtonView

- (SiriUIObjectPickerButtonView)initWithFrame:(CGRect)frame
{
  v15.receiver = self;
  v15.super_class = SiriUIObjectPickerButtonView;
  v3 = [(SiriUIObjectPickerButtonView *)&v15 initWithFrame:frame.origin.x, frame.origin.y, frame.size.width, frame.size.height];
  if (v3)
  {
    v4 = [MEMORY[0x277D75220] buttonWithType:1];
    button = v3->_button;
    v3->_button = v4;

    v6 = v3->_button;
    [(SiriUIObjectPickerButtonView *)v3 bounds];
    [(UIButton *)v6 setFrame:?];
    titleLabel = [(UIButton *)v3->_button titleLabel];
    siriui_mediumWeightBodySizeFont = [MEMORY[0x277D74300] siriui_mediumWeightBodySizeFont];
    [titleLabel setFont:siriui_mediumWeightBodySizeFont];

    v9 = v3->_button;
    siriui_textColor = [MEMORY[0x277D75348] siriui_textColor];
    [(UIButton *)v9 setTintColor:siriui_textColor];

    v11 = v3->_button;
    v12 = [MEMORY[0x277CCA8D8] bundleWithIdentifier:@"com.apple.SiriUI"];
    v13 = [v12 siriUILocalizedStringForKey:@"CHOOSE_CONTACT_BUTTON_TITLE"];
    [(UIButton *)v11 setTitle:v13 forState:0];

    [(SiriUIObjectPickerButtonView *)v3 addSubview:v3->_button];
  }

  return v3;
}

- (void)layoutSubviews
{
  v3.receiver = self;
  v3.super_class = SiriUIObjectPickerButtonView;
  [(SiriUIObjectPickerButtonView *)&v3 layoutSubviews];
  [(SiriUIObjectPickerButtonView *)self bounds];
  [(UIButton *)self->_button setFrame:?];
}

- (CGSize)sizeThatFits:(CGSize)fits
{
  width = fits.width;
  [objc_opt_class() defaultHeight];
  v5 = v4;
  v6 = width;
  result.height = v5;
  result.width = v6;
  return result;
}

+ (double)defaultHeight
{
  v2 = SiriUIIsCompactWidth();
  mainScreen = [MEMORY[0x277D759A0] mainScreen];
  [mainScreen scale];

  result = 50.0;
  if (v2)
  {
    return 44.0;
  }

  return result;
}

@end