@interface PUILocationIndicatorSystemExplanationView
- (PUILocationIndicatorSystemExplanationView)initWithSpecifier:(id)specifier;
- (double)preferredHeightForWidth:(double)width inTableView:(id)view;
- (void)layoutForWidth:(double)width inTableView:(id)view;
@end

@implementation PUILocationIndicatorSystemExplanationView

- (PUILocationIndicatorSystemExplanationView)initWithSpecifier:(id)specifier
{
  v14.receiver = self;
  v14.super_class = PUILocationIndicatorSystemExplanationView;
  v3 = [(PUILocationIndicatorExplanationView *)&v14 initWithSpecifier:specifier];
  if (v3)
  {
    mEMORY[0x277D2BCF8] = [MEMORY[0x277D2BCF8] sharedInstance];
    isPaired = [mEMORY[0x277D2BCF8] isPaired];

    if (isPaired)
    {
      v6 = objc_alloc(MEMORY[0x277D756B8]);
      v7 = [v6 initWithFrame:{*MEMORY[0x277CBF3A0], *(MEMORY[0x277CBF3A0] + 8), *(MEMORY[0x277CBF3A0] + 16), *(MEMORY[0x277CBF3A0] + 24)}];
      additionalInfoLabel = v3->_additionalInfoLabel;
      v3->_additionalInfoLabel = v7;

      v9 = PUI_LocalizedStringForLocationServices(@"WATCH_EXPLANATION_ITEM");
      [(UILabel *)v3->_additionalInfoLabel setText:v9];

      v10 = PreferencesTableViewFooterFont();
      [(UILabel *)v3->_additionalInfoLabel setFont:v10];

      [(UILabel *)v3->_additionalInfoLabel setTextAlignment:0];
      v11 = PreferencesTableViewFooterColor();
      [(UILabel *)v3->_additionalInfoLabel setTextColor:v11];

      clearColor = [MEMORY[0x277D75348] clearColor];
      [(UILabel *)v3->_additionalInfoLabel setBackgroundColor:clearColor];

      [(UILabel *)v3->_additionalInfoLabel setLineBreakMode:0];
      [(UILabel *)v3->_additionalInfoLabel setNumberOfLines:0];
      [(PUILocationIndicatorSystemExplanationView *)v3 addSubview:v3->_additionalInfoLabel];
    }
  }

  return v3;
}

- (void)layoutForWidth:(double)width inTableView:(id)view
{
  v16.receiver = self;
  v16.super_class = PUILocationIndicatorSystemExplanationView;
  [(PUILocationIndicatorExplanationView *)&v16 layoutForWidth:view inTableView:?];
  if (self->_additionalInfoLabel)
  {
    [(UIImageView *)self->super._recentIcon frame];
    [(UILabel *)self->super._recentLabel frame];
    PSRoundToPixel();
    [(UILabel *)self->super._recentLabel frame];
    v7 = v6;
    [(UILabel *)self->_additionalInfoLabel frame];
    PSRoundToPixel();
    v9 = v8;
    text = [(UILabel *)self->_additionalInfoLabel text];
    font = [(UILabel *)self->_additionalInfoLabel font];
    [text _legacy_sizeWithFont:font constrainedToSize:-[UILabel lineBreakMode](self->_additionalInfoLabel lineBreakMode:{"lineBreakMode"), width - v7 - v7, 1.79769313e308}];
    v13 = v12;
    v15 = v14;

    [(UILabel *)self->_additionalInfoLabel setFrame:v7, v9, v13, v15];
  }
}

- (double)preferredHeightForWidth:(double)width inTableView:(id)view
{
  if (self->_additionalInfoLabel)
  {
    [(PUILocationIndicatorSystemExplanationView *)self layoutForWidth:view inTableView:width];
    [(UILabel *)self->_additionalInfoLabel frame];
    return v5 + v6 + 24.0;
  }

  else
  {
    v8.receiver = self;
    v8.super_class = PUILocationIndicatorSystemExplanationView;
    [(PUILocationIndicatorExplanationView *)&v8 preferredHeightForWidth:view inTableView:width];
  }

  return result;
}

@end