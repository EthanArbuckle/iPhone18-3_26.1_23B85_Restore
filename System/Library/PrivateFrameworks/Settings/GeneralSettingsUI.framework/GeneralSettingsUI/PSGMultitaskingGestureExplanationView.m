@interface PSGMultitaskingGestureExplanationView
- (BOOL)isRTL;
- (PSGMultitaskingGestureExplanationView)initWithSpecifier:(id)a3;
- (double)preferredHeightForWidth:(double)a3;
- (id)newRegionSampleLabelUnderlined;
- (void)layoutSubviews;
@end

@implementation PSGMultitaskingGestureExplanationView

- (id)newRegionSampleLabelUnderlined
{
  v3 = objc_alloc(MEMORY[0x277D756B8]);
  v4 = [v3 initWithFrame:{*MEMORY[0x277CBF3A0], *(MEMORY[0x277CBF3A0] + 8), *(MEMORY[0x277CBF3A0] + 16), *(MEMORY[0x277CBF3A0] + 24)}];
  v5 = PreferencesTableViewFooterFont();
  [v4 setFont:v5];

  [v4 setTextColor:self->_footerTextColor];
  [v4 setLineBreakMode:0];
  v6 = [MEMORY[0x277D75348] clearColor];
  [v4 setBackgroundColor:v6];

  [v4 setNumberOfLines:0];
  [(PSGMultitaskingGestureExplanationView *)self addSubview:v4];
  return v4;
}

- (PSGMultitaskingGestureExplanationView)initWithSpecifier:(id)a3
{
  v15.receiver = self;
  v15.super_class = PSGMultitaskingGestureExplanationView;
  v3 = [(PSGMultitaskingGestureExplanationView *)&v15 initWithFrame:a3, *MEMORY[0x277CBF3A0], *(MEMORY[0x277CBF3A0] + 8), *(MEMORY[0x277CBF3A0] + 16), *(MEMORY[0x277CBF3A0] + 24)];
  if (v3)
  {
    v4 = PreferencesTableViewFooterColor();
    footerTextColor = v3->_footerTextColor;
    v3->_footerTextColor = v4;

    for (i = 0; i != 4; ++i)
    {
      v7 = [(PSGMultitaskingGestureExplanationView *)v3 newRegionSampleLabelUnderlined];
      v8 = v3->_labels[i];
      v3->_labels[i] = v7;
    }

    v9 = PSG_LocalizedStringForGeneral(@"Use four or five fingers to:");
    [(UILabel *)v3->_labels[0] setText:v9];

    v10 = PSG_LocalizedStringForGeneral(@"Pinch to the Home Screen");
    [(UILabel *)v3->_labels[1] setText:v10];

    v11 = PSG_LocalizedStringForGeneral(@"Swipe up to reveal multitasking bar");
    [(UILabel *)v3->_labels[2] setText:v11];

    v12 = PSG_LocalizedStringForGeneral(@"Swipe left or right between apps");
    [(UILabel *)v3->_labels[3] setText:v12];

    v3->_sized = 0.0;
    [(PSGMultitaskingGestureExplanationView *)v3 setNeedsLayout];
    v13 = [MEMORY[0x277D75348] clearColor];
    [(PSGMultitaskingGestureExplanationView *)v3 setBackgroundColor:v13];
  }

  return v3;
}

- (double)preferredHeightForWidth:(double)a3
{
  if (self->_width == a3)
  {
    return self->_sized;
  }

  v5 = 0;
  self->_sized = 0.0;
  labels = self->_labels;
  do
  {
    [(UILabel *)labels[v5] frame];
    v8 = v7;
    v10 = v9;
    v12 = v11;
    PreferencesTableViewCellLeftPad();
    v14 = v13;
    PreferencesTableViewCellRightPad();
    [(UILabel *)labels[v5] setFrame:v8, v10, a3 - floorf(v14 + v15), v12];
    [(UILabel *)labels[v5] sizeToFit];
    [(UILabel *)labels[v5] bounds];
    v17 = self->_sized + v16 + 1.0;
    self->_sized = v17;
    ++v5;
  }

  while (v5 != 4);
  result = v17 + 10.0;
  self->_sized = result;
  return result;
}

- (BOOL)isRTL
{
  if ((isRTL_isSet & 1) == 0)
  {
    isRTL_isSet = 1;
    v2 = [MEMORY[0x277D75128] sharedApplication];
    isRTL_isRTL = [v2 userInterfaceLayoutDirection] == 1;
  }

  return isRTL_isRTL;
}

- (void)layoutSubviews
{
  v3 = [(PSGMultitaskingGestureExplanationView *)self isRTL];
  [(PSGMultitaskingGestureExplanationView *)self bounds];
  v5 = v4;
  [(PSGMultitaskingGestureExplanationView *)self preferredHeightForWidth:v5];
  v6 = 0;
  labels = self->_labels;
  v8 = 5.0;
  v9 = 0.0;
  v10 = 0.0;
  v11 = 0.0;
  do
  {
    [(UILabel *)labels[v6] frame];
    v13 = v12;
    v15 = v14;
    PreferencesTableViewCellLeftPad();
    v17 = v16;
    if (v3)
    {
      [(PSGMultitaskingGestureExplanationView *)self frame];
      v19 = v18 - v17 - v13;
    }

    else
    {
      v19 = v16;
    }

    v29.origin.x = v9;
    v29.origin.y = v8;
    v29.size.width = v10;
    v29.size.height = v11;
    v8 = CGRectGetMaxY(v29) + 1.0;
    [(UILabel *)labels[v6++] setFrame:v19, v8, v13, v15];
    v9 = v19;
    v10 = v13;
    v11 = v15;
  }

  while (v6 != 4);
  [(PSGUnderlineButton *)self->_videoLinkButton frame];
  v21 = v20;
  v23 = v22;
  PreferencesTableViewCellLeftPad();
  v25 = v24;
  v30.origin.x = v19;
  v30.origin.y = v8;
  v30.size.width = v13;
  v30.size.height = v15;
  MaxY = CGRectGetMaxY(v30);
  videoLinkButton = self->_videoLinkButton;

  [(PSGUnderlineButton *)videoLinkButton setFrame:v25, MaxY + 1.0, v21, v23];
}

@end