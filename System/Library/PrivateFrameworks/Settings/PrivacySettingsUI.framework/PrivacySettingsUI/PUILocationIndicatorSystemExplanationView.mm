@interface PUILocationIndicatorSystemExplanationView
- (PUILocationIndicatorSystemExplanationView)initWithSpecifier:(id)a3;
- (double)preferredHeightForWidth:(double)a3 inTableView:(id)a4;
- (void)layoutForWidth:(double)a3 inTableView:(id)a4;
@end

@implementation PUILocationIndicatorSystemExplanationView

- (PUILocationIndicatorSystemExplanationView)initWithSpecifier:(id)a3
{
  v14.receiver = self;
  v14.super_class = PUILocationIndicatorSystemExplanationView;
  v3 = [(PUILocationIndicatorExplanationView *)&v14 initWithSpecifier:a3];
  if (v3)
  {
    v4 = [MEMORY[0x277D2BCF8] sharedInstance];
    v5 = [v4 isPaired];

    if (v5)
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

      v12 = [MEMORY[0x277D75348] clearColor];
      [(UILabel *)v3->_additionalInfoLabel setBackgroundColor:v12];

      [(UILabel *)v3->_additionalInfoLabel setLineBreakMode:0];
      [(UILabel *)v3->_additionalInfoLabel setNumberOfLines:0];
      [(PUILocationIndicatorSystemExplanationView *)v3 addSubview:v3->_additionalInfoLabel];
    }
  }

  return v3;
}

- (void)layoutForWidth:(double)a3 inTableView:(id)a4
{
  v16.receiver = self;
  v16.super_class = PUILocationIndicatorSystemExplanationView;
  [(PUILocationIndicatorExplanationView *)&v16 layoutForWidth:a4 inTableView:?];
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
    v10 = [(UILabel *)self->_additionalInfoLabel text];
    v11 = [(UILabel *)self->_additionalInfoLabel font];
    [v10 _legacy_sizeWithFont:v11 constrainedToSize:-[UILabel lineBreakMode](self->_additionalInfoLabel lineBreakMode:{"lineBreakMode"), a3 - v7 - v7, 1.79769313e308}];
    v13 = v12;
    v15 = v14;

    [(UILabel *)self->_additionalInfoLabel setFrame:v7, v9, v13, v15];
  }
}

- (double)preferredHeightForWidth:(double)a3 inTableView:(id)a4
{
  if (self->_additionalInfoLabel)
  {
    [(PUILocationIndicatorSystemExplanationView *)self layoutForWidth:a4 inTableView:a3];
    [(UILabel *)self->_additionalInfoLabel frame];
    return v5 + v6 + 24.0;
  }

  else
  {
    v8.receiver = self;
    v8.super_class = PUILocationIndicatorSystemExplanationView;
    [(PUILocationIndicatorExplanationView *)&v8 preferredHeightForWidth:a4 inTableView:a3];
  }

  return result;
}

@end