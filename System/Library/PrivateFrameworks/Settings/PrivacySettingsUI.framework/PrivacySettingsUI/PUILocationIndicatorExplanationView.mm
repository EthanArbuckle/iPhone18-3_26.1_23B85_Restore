@interface PUILocationIndicatorExplanationView
- (PUILocationIndicatorExplanationView)initWithSpecifier:(id)specifier;
- (double)preferredHeightForWidth:(double)width inTableView:(id)view;
- (void)layoutForWidth:(double)width inTableView:(id)view;
- (void)layoutSubviews;
@end

@implementation PUILocationIndicatorExplanationView

- (PUILocationIndicatorExplanationView)initWithSpecifier:(id)specifier
{
  specifierCopy = specifier;
  if (loadLocationFillSystemImage_onceToken != -1)
  {
    [PUILocationIndicatorExplanationView initWithSpecifier:];
  }

  v35.receiver = self;
  v35.super_class = PUILocationIndicatorExplanationView;
  v5 = *MEMORY[0x277CBF3A0];
  v6 = *(MEMORY[0x277CBF3A0] + 8);
  v7 = *(MEMORY[0x277CBF3A0] + 16);
  v8 = *(MEMORY[0x277CBF3A0] + 24);
  v9 = [(PUILocationIndicatorExplanationView *)&v35 initWithFrame:*MEMORY[0x277CBF3A0], v6, v7, v8];
  if (v9)
  {
    v10 = objc_alloc(MEMORY[0x277D755E8]);
    v11 = [v10 initWithImage:locationFillSystemImageWithSystemPurpleColor];
    activeIcon = v9->_activeIcon;
    v9->_activeIcon = v11;

    v13 = [objc_alloc(MEMORY[0x277D756B8]) initWithFrame:{v5, v6, v7, v8}];
    activeLabel = v9->_activeLabel;
    v9->_activeLabel = v13;

    v15 = PUI_LocalizedStringForLocationServices(@"ACTIVE_EXPLANATION_ITEM");
    [(UILabel *)v9->_activeLabel setText:v15];

    v16 = PreferencesTableViewFooterFont();
    [(UILabel *)v9->_activeLabel setFont:v16];

    v17 = PreferencesTableViewFooterColor();
    [(UILabel *)v9->_activeLabel setTextColor:v17];

    clearColor = [MEMORY[0x277D75348] clearColor];
    [(UILabel *)v9->_activeLabel setBackgroundColor:clearColor];

    [(UILabel *)v9->_activeLabel setTextAlignment:4];
    [(UILabel *)v9->_activeLabel setLineBreakMode:0];
    [(UILabel *)v9->_activeLabel setNumberOfLines:0];
    v19 = objc_alloc(MEMORY[0x277D755E8]);
    v20 = [v19 initWithImage:locationFillSystemImageWithSecondaryLabelColor];
    recentIcon = v9->_recentIcon;
    v9->_recentIcon = v20;

    v22 = [objc_alloc(MEMORY[0x277D756B8]) initWithFrame:{v5, v6, v7, v8}];
    recentLabel = v9->_recentLabel;
    v9->_recentLabel = v22;

    v24 = PUI_LocalizedStringForLocationServices(@"RECENT_EXPLANATION_ITEM");
    [(UILabel *)v9->_recentLabel setText:v24];

    v25 = PreferencesTableViewFooterFont();
    [(UILabel *)v9->_recentLabel setFont:v25];

    [(UILabel *)v9->_recentLabel setTextAlignment:4];
    v26 = PreferencesTableViewFooterColor();
    [(UILabel *)v9->_recentLabel setTextColor:v26];

    clearColor2 = [MEMORY[0x277D75348] clearColor];
    [(UILabel *)v9->_recentLabel setBackgroundColor:clearColor2];

    [(UILabel *)v9->_recentLabel setLineBreakMode:0];
    [(UILabel *)v9->_recentLabel setNumberOfLines:0];
    v28 = [objc_alloc(MEMORY[0x277D756B8]) initWithFrame:{v5, v6, v7, v8}];
    explanationLabel = v9->_explanationLabel;
    v9->_explanationLabel = v28;

    generalExplanationItemString = [(PUILocationIndicatorExplanationView *)v9 generalExplanationItemString];
    [(UILabel *)v9->_explanationLabel setText:generalExplanationItemString];

    v31 = PreferencesTableViewFooterFont();
    [(UILabel *)v9->_explanationLabel setFont:v31];

    v32 = PreferencesTableViewFooterColor();
    [(UILabel *)v9->_explanationLabel setTextColor:v32];

    clearColor3 = [MEMORY[0x277D75348] clearColor];
    [(UILabel *)v9->_explanationLabel setBackgroundColor:clearColor3];

    [(UILabel *)v9->_explanationLabel setTextAlignment:4];
    [(UILabel *)v9->_explanationLabel setLineBreakMode:0];
    [(UILabel *)v9->_explanationLabel setNumberOfLines:0];
    [(PUILocationIndicatorExplanationView *)v9 addSubview:v9->_activeIcon];
    [(PUILocationIndicatorExplanationView *)v9 addSubview:v9->_activeLabel];
    [(PUILocationIndicatorExplanationView *)v9 addSubview:v9->_recentIcon];
    [(PUILocationIndicatorExplanationView *)v9 addSubview:v9->_recentLabel];
    [(PUILocationIndicatorExplanationView *)v9 addSubview:v9->_explanationLabel];
  }

  return v9;
}

- (void)layoutForWidth:(double)width inTableView:(id)view
{
  [view _backgroundInset];
  v7 = v6 + 12.0;
  [(UIImageView *)self->_activeIcon frame];
  v9 = v8;
  v60 = v10;
  [(UILabel *)self->_activeLabel frame];
  [(UIImageView *)self->_recentIcon frame];
  v12 = v11;
  v59 = v13;
  [(UILabel *)self->_recentLabel frame];
  [(UILabel *)self->_explanationLabel frame];
  text = [(UILabel *)self->_explanationLabel text];
  font = [(UILabel *)self->_explanationLabel font];
  [text _legacy_sizeWithFont:font constrainedToSize:-[UILabel lineBreakMode](self->_explanationLabel lineBreakMode:{"lineBreakMode"), width + (v7 + 4.0) * -2.0, 1.79769313e308}];
  v58 = v16;
  v18 = v17;

  mEMORY[0x277D75128] = [MEMORY[0x277D75128] sharedApplication];
  userInterfaceLayoutDirection = [mEMORY[0x277D75128] userInterfaceLayoutDirection];

  if (userInterfaceLayoutDirection)
  {
    currentDevice = [MEMORY[0x277D75418] currentDevice];
    userInterfaceIdiom = [currentDevice userInterfaceIdiom];

    if ((userInterfaceIdiom & 0xFFFFFFFFFFFFFFFBLL) == 1)
    {
      v23 = v7 + 4.0;
    }

    else
    {
      v23 = v7;
    }

    v57 = v9 + v23;
  }

  else
  {
    v57 = v7 + 4.0;
  }

  mEMORY[0x277D75128]2 = [MEMORY[0x277D75128] sharedApplication];
  userInterfaceLayoutDirection2 = [mEMORY[0x277D75128]2 userInterfaceLayoutDirection];

  if (userInterfaceLayoutDirection2)
  {
    v26 = width - v7 - v9;
  }

  else
  {
    v26 = v7;
  }

  PSRoundToPixel();
  v28 = v27;
  PSRoundToPixel();
  v56 = v18;
  v30 = v29;
  PSRoundToPixel();
  v55 = v12;
  v32 = width + v7 * -2.0 + -10.0 - v31;
  mEMORY[0x277D75128]3 = [MEMORY[0x277D75128] sharedApplication];
  userInterfaceLayoutDirection3 = [mEMORY[0x277D75128]3 userInterfaceLayoutDirection];

  v35 = v30 + 10.0;
  if (userInterfaceLayoutDirection3)
  {
    v35 = v7;
  }

  v54 = v35;
  text2 = [(UILabel *)self->_activeLabel text];
  font2 = [(UILabel *)self->_activeLabel font];
  [text2 _legacy_sizeWithFont:font2 constrainedToSize:-[UILabel lineBreakMode](self->_activeLabel lineBreakMode:{"lineBreakMode"), v32, 1.79769313e308}];
  v52 = v38;
  v53 = v39;

  PSRoundToPixel();
  v41 = v40;
  text3 = [(UILabel *)self->_recentLabel text];
  font3 = [(UILabel *)self->_recentLabel font];
  [text3 _legacy_sizeWithFont:font3 constrainedToSize:-[UILabel lineBreakMode](self->_recentLabel lineBreakMode:{"lineBreakMode"), v32, 1.79769313e308}];
  v45 = v44;
  v51 = v46;

  mEMORY[0x277D75128]4 = [MEMORY[0x277D75128] sharedApplication];
  userInterfaceLayoutDirection4 = [mEMORY[0x277D75128]4 userInterfaceLayoutDirection];

  if (userInterfaceLayoutDirection4 == 1)
  {
    v49 = v32;
  }

  else
  {
    v49 = v58;
  }

  if (userInterfaceLayoutDirection4 == 1)
  {
    v45 = v32;
  }

  else
  {
    v32 = v52;
  }

  [(UIImageView *)self->_activeIcon setFrame:v26, v28, v9, v60];
  [(UILabel *)self->_activeLabel setFrame:v54, v28 + -3.0, v32, v53];
  [(UIImageView *)self->_recentIcon setFrame:v26, v41, v55, v59];
  [(UILabel *)self->_recentLabel setFrame:v54, v41 + -3.0, v45, v51];
  explanationLabel = self->_explanationLabel;

  [(UILabel *)explanationLabel setFrame:v57, 12.0, v49, v56];
}

- (void)layoutSubviews
{
  v6.receiver = self;
  v6.super_class = PUILocationIndicatorExplanationView;
  [(PUILocationIndicatorExplanationView *)&v6 layoutSubviews];
  [(PUILocationIndicatorExplanationView *)self bounds];
  v4 = v3;
  superview = [(PUILocationIndicatorExplanationView *)self superview];
  [(PUILocationIndicatorExplanationView *)self layoutForWidth:superview inTableView:v4];
}

- (double)preferredHeightForWidth:(double)width inTableView:(id)view
{
  [(PUILocationIndicatorExplanationView *)self layoutForWidth:view inTableView:width];
  [(UIImageView *)self->_recentIcon frame];
  v7 = v5 + v6;
  [(UILabel *)self->_recentLabel frame];
  v10 = v8 + v9;
  if (v7 >= v8 + v9)
  {
    v10 = v7;
  }

  return v10 + 24.0;
}

@end