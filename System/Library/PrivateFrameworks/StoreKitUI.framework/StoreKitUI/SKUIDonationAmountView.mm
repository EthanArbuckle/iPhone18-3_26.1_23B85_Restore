@interface SKUIDonationAmountView
- (SKUIDonationAmountView)initWithCharity:(id)charity;
- (SKUIGiftAmount)selectedAmount;
- (void)_amountButtonDown:(id)down;
- (void)_amountButtonUpInside:(id)inside;
- (void)_amountButtonUpOutside:(id)outside;
- (void)dealloc;
- (void)layoutSubviews;
- (void)setLogoImage:(id)image;
@end

@implementation SKUIDonationAmountView

- (SKUIDonationAmountView)initWithCharity:(id)charity
{
  v61 = *MEMORY[0x277D85DE8];
  charityCopy = charity;
  if (os_variant_has_internal_content() && _os_feature_enabled_impl() && os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_FAULT))
  {
    [SKUIDonationAmountView initWithCharity:];
  }

  v59.receiver = self;
  v59.super_class = SKUIDonationAmountView;
  v6 = [(SKUIDonationAmountView *)&v59 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_charity, charity);
    v7->_selectedAmountIndex = 0x7FFFFFFFFFFFFFFFLL;
    _systemBackgroundColor = [MEMORY[0x277D75348] _systemBackgroundColor];
    v9 = objc_alloc_init(MEMORY[0x277D759D8]);
    scrollView = v7->_scrollView;
    v7->_scrollView = v9;

    [(UIScrollView *)v7->_scrollView setAlwaysBounceVertical:0];
    [(UIScrollView *)v7->_scrollView setBackgroundColor:_systemBackgroundColor];
    [(SKUIDonationAmountView *)v7 addSubview:v7->_scrollView];
    amountDisclaimer = [(SKUIGiftCharity *)v7->_charity amountDisclaimer];
    if (amountDisclaimer)
    {
      v12 = objc_alloc_init(MEMORY[0x277D756B8]);
      amountDisclaimerLabel = v7->_amountDisclaimerLabel;
      v7->_amountDisclaimerLabel = v12;

      [(UILabel *)v7->_amountDisclaimerLabel setBackgroundColor:_systemBackgroundColor];
      v14 = v7->_amountDisclaimerLabel;
      v15 = [MEMORY[0x277D74300] systemFontOfSize:13.0];
      [(UILabel *)v14 setFont:v15];

      [(UILabel *)v7->_amountDisclaimerLabel setNumberOfLines:0];
      [(UILabel *)v7->_amountDisclaimerLabel setText:amountDisclaimer];
      [(UILabel *)v7->_amountDisclaimerLabel setTextAlignment:1];
      v16 = v7->_amountDisclaimerLabel;
      _secondaryLabelColor = [MEMORY[0x277D75348] _secondaryLabelColor];
      [(UILabel *)v16 setTextColor:_secondaryLabelColor];

      [(UIScrollView *)v7->_scrollView addSubview:v7->_amountDisclaimerLabel];
    }

    charityDescription = [(SKUIGiftCharity *)v7->_charity charityDescription];

    if (charityDescription)
    {
      v19 = objc_alloc_init(MEMORY[0x277D756B8]);
      descriptionLabel = v7->_descriptionLabel;
      v7->_descriptionLabel = v19;

      [(UILabel *)v7->_descriptionLabel setBackgroundColor:_systemBackgroundColor];
      v21 = v7->_descriptionLabel;
      v22 = [MEMORY[0x277D74300] boldSystemFontOfSize:17.0];
      [(UILabel *)v21 setFont:v22];

      [(UILabel *)v7->_descriptionLabel setNumberOfLines:0];
      [(UILabel *)v7->_descriptionLabel setText:charityDescription];
      [(UILabel *)v7->_descriptionLabel setTextAlignment:1];
      v23 = v7->_descriptionLabel;
      _labelColor = [MEMORY[0x277D75348] _labelColor];
      [(UILabel *)v23 setTextColor:_labelColor];

      [(UIScrollView *)v7->_scrollView addSubview:v7->_descriptionLabel];
    }

    legalText = [(SKUIGiftCharity *)v7->_charity legalText];

    if (legalText)
    {
      v26 = objc_alloc_init(MEMORY[0x277D756B8]);
      legalTextLabel = v7->_legalTextLabel;
      v7->_legalTextLabel = v26;

      [(UILabel *)v7->_legalTextLabel setBackgroundColor:_systemBackgroundColor];
      v28 = v7->_legalTextLabel;
      v29 = [MEMORY[0x277D74300] systemFontOfSize:13.0];
      [(UILabel *)v28 setFont:v29];

      [(UILabel *)v7->_legalTextLabel setNumberOfLines:0];
      [(UILabel *)v7->_legalTextLabel setText:legalText];
      v30 = v7->_legalTextLabel;
      _labelColor2 = [MEMORY[0x277D75348] _labelColor];
      [(UILabel *)v30 setTextColor:_labelColor2];

      [(UIScrollView *)v7->_scrollView addSubview:v7->_legalTextLabel];
    }

    legalText2 = [(SKUIGiftCharity *)v7->_charity legalText2];

    if (legalText2)
    {
      v33 = objc_alloc_init(MEMORY[0x277D756B8]);
      legalText2Label = v7->_legalText2Label;
      v7->_legalText2Label = v33;

      [(UILabel *)v7->_legalText2Label setBackgroundColor:_systemBackgroundColor];
      v35 = v7->_legalText2Label;
      v36 = [MEMORY[0x277D74300] systemFontOfSize:11.0];
      [(UILabel *)v35 setFont:v36];

      [(UILabel *)v7->_legalText2Label setNumberOfLines:0];
      [(UILabel *)v7->_legalText2Label setText:legalText2];
      v37 = v7->_legalText2Label;
      _secondaryLabelColor2 = [MEMORY[0x277D75348] _secondaryLabelColor];
      [(UILabel *)v37 setTextColor:_secondaryLabelColor2];

      [(UIScrollView *)v7->_scrollView addSubview:v7->_legalText2Label];
    }

    v53 = legalText2;
    v54 = _systemBackgroundColor;
    donationAmounts = [(SKUIGiftCharity *)v7->_charity donationAmounts];
    v40 = SKUIGiftAmountButtonsWithAmounts(donationAmounts);
    amountButtons = v7->_amountButtons;
    v7->_amountButtons = v40;

    v57 = 0u;
    v58 = 0u;
    v55 = 0u;
    v56 = 0u;
    v42 = v7->_amountButtons;
    v43 = [(NSArray *)v42 countByEnumeratingWithState:&v55 objects:v60 count:16];
    if (v43)
    {
      v44 = v43;
      v45 = *v56;
      do
      {
        for (i = 0; i != v44; ++i)
        {
          if (*v56 != v45)
          {
            objc_enumerationMutation(v42);
          }

          v47 = *(*(&v55 + 1) + 8 * i);
          [v47 addTarget:v7 action:sel__amountButtonDown_ forControlEvents:1];
          [v47 addTarget:v7 action:sel__amountButtonUpInside_ forControlEvents:64];
          [v47 addTarget:v7 action:sel__amountButtonUpOutside_ forControlEvents:128];
          [(UIScrollView *)v7->_scrollView addSubview:v47];
        }

        v44 = [(NSArray *)v42 countByEnumeratingWithState:&v55 objects:v60 count:16];
      }

      while (v44);
    }

    v48 = objc_alloc_init(MEMORY[0x277D75D18]);
    separatorView = v7->_separatorView;
    v7->_separatorView = v48;

    v50 = v7->_separatorView;
    tableSeparatorColor = [MEMORY[0x277D75348] tableSeparatorColor];
    [(UIView *)v50 setBackgroundColor:tableSeparatorColor];

    [(UIScrollView *)v7->_scrollView addSubview:v7->_separatorView];
  }

  return v7;
}

- (void)dealloc
{
  v14 = *MEMORY[0x277D85DE8];
  v9 = 0u;
  v10 = 0u;
  v11 = 0u;
  v12 = 0u;
  v3 = self->_amountButtons;
  v4 = [(NSArray *)v3 countByEnumeratingWithState:&v9 objects:v13 count:16];
  if (v4)
  {
    v5 = v4;
    v6 = *v10;
    do
    {
      v7 = 0;
      do
      {
        if (*v10 != v6)
        {
          objc_enumerationMutation(v3);
        }

        [*(*(&v9 + 1) + 8 * v7++) removeTarget:self action:0 forControlEvents:0xFFFFFFFFLL];
      }

      while (v5 != v7);
      v5 = [(NSArray *)v3 countByEnumeratingWithState:&v9 objects:v13 count:16];
    }

    while (v5);
  }

  v8.receiver = self;
  v8.super_class = SKUIDonationAmountView;
  [(SKUIDonationAmountView *)&v8 dealloc];
}

- (SKUIGiftAmount)selectedAmount
{
  donationAmounts = [(SKUIGiftCharity *)self->_charity donationAmounts];
  selectedAmountIndex = self->_selectedAmountIndex;
  if (selectedAmountIndex >= [donationAmounts count])
  {
    v5 = 0;
  }

  else
  {
    v5 = [donationAmounts objectAtIndex:self->_selectedAmountIndex];
  }

  return v5;
}

- (void)setLogoImage:(id)image
{
  imageCopy = image;
  logoImage = [(SKUIDonationAmountView *)self logoImage];

  v6 = imageCopy;
  if (logoImage != imageCopy)
  {
    logoImageView = self->_logoImageView;
    if (imageCopy)
    {
      if (!logoImageView)
      {
        v8 = objc_alloc_init(MEMORY[0x277D755E8]);
        v9 = self->_logoImageView;
        self->_logoImageView = v8;

        v10 = self->_logoImageView;
        name = [(SKUIGiftCharity *)self->_charity name];
        [(UIImageView *)v10 setAccessibilityLabel:name];

        v12 = self->_logoImageView;
        backgroundColor = [(SKUIDonationAmountView *)self backgroundColor];
        [(UIImageView *)v12 setBackgroundColor:backgroundColor];

        [(UIImageView *)self->_logoImageView setContentMode:1];
        [(UIScrollView *)self->_scrollView addSubview:self->_logoImageView];
        logoImageView = self->_logoImageView;
      }

      [(UIImageView *)logoImageView setImage:imageCopy];
      setNeedsLayout = [(SKUIDonationAmountView *)self setNeedsLayout];
    }

    else
    {
      [(UIImageView *)logoImageView removeFromSuperview];
      v14 = self->_logoImageView;
      self->_logoImageView = 0;
    }

    v6 = imageCopy;
  }

  MEMORY[0x2821F96F8](setNeedsLayout, v6);
}

- (void)layoutSubviews
{
  [(SKUIDonationAmountView *)self bounds];
  v4 = v3;
  [(UIScrollView *)self->_scrollView setFrame:?];
  currentDevice = [MEMORY[0x277D75418] currentDevice];
  userInterfaceIdiom = [currentDevice userInterfaceIdiom];

  if ((userInterfaceIdiom & 0xFFFFFFFFFFFFFFFBLL) == 1)
  {
    v7 = 30.0;
  }

  else
  {
    v7 = 15.0;
  }

  currentDevice2 = [MEMORY[0x277D75418] currentDevice];
  userInterfaceIdiom2 = [currentDevice2 userInterfaceIdiom];

  if ((userInterfaceIdiom2 & 0xFFFFFFFFFFFFFFFBLL) == 1)
  {
    v10 = 30.0;
  }

  else
  {
    v10 = 15.0;
  }

  v11 = v4 - v10;
  logoArtwork = [(SKUIGiftCharity *)self->_charity logoArtwork];
  v13 = logoArtwork;
  if (logoArtwork)
  {
    height = [logoArtwork height];
    mainScreen = [MEMORY[0x277D759A0] mainScreen];
    [mainScreen scale];
    *&v16 = height / v16;
    v17 = floorf(*&v16);

    logoImageView = self->_logoImageView;
    if (logoImageView)
    {
      [(UIImageView *)logoImageView frame];
      [(UIImageView *)self->_logoImageView setFrame:v7, 20.0, v11 - v7, v17];
    }

    currentDevice3 = [MEMORY[0x277D75418] currentDevice];
    userInterfaceIdiom3 = [currentDevice3 userInterfaceIdiom];

    v21 = 5.0;
    if ((userInterfaceIdiom3 & 0xFFFFFFFFFFFFFFFBLL) == 1)
    {
      v21 = 16.0;
    }

    v22 = v21 + v17 + 20.0;
  }

  else
  {
    v22 = 20.0;
  }

  descriptionLabel = self->_descriptionLabel;
  if (descriptionLabel)
  {
    [(UILabel *)descriptionLabel sizeThatFits:v11 - v7, 1.79769313e308];
    v25 = v24;
    [(UILabel *)self->_descriptionLabel setFrame:v7, v22, v11 - v7, v24];
    v77.origin.x = v7;
    v77.origin.y = v22;
    v77.size.width = v11 - v7;
    v77.size.height = v25;
    MaxY = CGRectGetMaxY(v77);
    currentDevice4 = [MEMORY[0x277D75418] currentDevice];
    userInterfaceIdiom4 = [currentDevice4 userInterfaceIdiom];

    v29 = 35.0;
    if ((userInterfaceIdiom4 & 0xFFFFFFFFFFFFFFFBLL) != 1)
    {
      v29 = 25.0;
    }

    v22 = MaxY + v29;
  }

  if ([(NSArray *)self->_amountButtons count])
  {
    v30 = (v4 + -223.0) * 0.5;
    v73 = 0;
    v74 = &v73;
    v75 = 0x2020000000;
    v76 = 0;
    amountButtons = self->_amountButtons;
    v72[0] = MEMORY[0x277D85DD0];
    v72[1] = 3221225472;
    v72[2] = __40__SKUIDonationAmountView_layoutSubviews__block_invoke;
    v72[3] = &unk_278200540;
    *&v72[6] = floorf(v30);
    *&v72[7] = v7;
    *&v72[8] = v22;
    v72[4] = &v73;
    v72[5] = 3;
    [(NSArray *)amountButtons enumerateObjectsUsingBlock:v72];
    v32 = v74[3];
    currentDevice5 = [MEMORY[0x277D75418] currentDevice];
    userInterfaceIdiom5 = [currentDevice5 userInterfaceIdiom];

    v35 = 16.0;
    if ((userInterfaceIdiom5 & 0xFFFFFFFFFFFFFFFBLL) == 1)
    {
      v35 = 26.0;
    }

    v22 = v32 + v35;
    _Block_object_dispose(&v73, 8);
  }

  amountDisclaimerLabel = self->_amountDisclaimerLabel;
  if (amountDisclaimerLabel)
  {
    [(UILabel *)amountDisclaimerLabel sizeThatFits:v11 - v7, 1.79769313e308];
    v38 = v37;
    [(UILabel *)self->_amountDisclaimerLabel setFrame:v7, v22, v11 - v7, v37];
    v78.origin.x = v7;
    v78.origin.y = v22;
    v78.size.width = v11 - v7;
    v78.size.height = v38;
    v39 = CGRectGetMaxY(v78);
    currentDevice6 = [MEMORY[0x277D75418] currentDevice];
    userInterfaceIdiom6 = [currentDevice6 userInterfaceIdiom];

    v42 = 17.0;
    if ((userInterfaceIdiom6 & 0xFFFFFFFFFFFFFFFBLL) == 1)
    {
      v42 = 21.0;
    }

    v22 = v39 + v42;
  }

  [(UIView *)self->_separatorView frame];
  currentDevice7 = [MEMORY[0x277D75418] currentDevice];
  userInterfaceIdiom7 = [currentDevice7 userInterfaceIdiom];

  if ((userInterfaceIdiom7 & 0xFFFFFFFFFFFFFFFBLL) == 1)
  {
    v45 = 30.0;
  }

  else
  {
    v45 = 15.0;
  }

  mainScreen2 = [MEMORY[0x277D759A0] mainScreen];
  [mainScreen2 scale];
  v48 = 1.0 / v47;

  currentDevice8 = [MEMORY[0x277D75418] currentDevice];
  userInterfaceIdiom8 = [currentDevice8 userInterfaceIdiom];

  if ((userInterfaceIdiom8 & 0xFFFFFFFFFFFFFFFBLL) == 1)
  {
    v51 = 30.0;
  }

  else
  {
    v51 = 15.0;
  }

  v52 = v4 - v51 - v45;
  [(UIView *)self->_separatorView setFrame:v45, v22, v52, v48];
  v79.origin.x = v45;
  v79.origin.y = v22;
  v79.size.width = v52;
  v79.size.height = v48;
  v53 = CGRectGetMaxY(v79);
  currentDevice9 = [MEMORY[0x277D75418] currentDevice];
  userInterfaceIdiom9 = [currentDevice9 userInterfaceIdiom];

  v56 = 16.0;
  if ((userInterfaceIdiom9 & 0xFFFFFFFFFFFFFFFBLL) == 1)
  {
    v56 = 20.0;
  }

  v57 = v53 + v56;
  legalTextLabel = self->_legalTextLabel;
  if (legalTextLabel)
  {
    [(UILabel *)legalTextLabel sizeThatFits:v11 - v7, 1.79769313e308];
    v60 = v59;
    v62 = v61;
    [(UILabel *)self->_legalTextLabel setFrame:v7, v57, v59, v61];
    v80.origin.x = v7;
    v80.origin.y = v57;
    v80.size.width = v60;
    v80.size.height = v62;
    v63 = CGRectGetMaxY(v80);
    currentDevice10 = [MEMORY[0x277D75418] currentDevice];
    userInterfaceIdiom10 = [currentDevice10 userInterfaceIdiom];

    v66 = 23.0;
    if ((userInterfaceIdiom10 & 0xFFFFFFFFFFFFFFFBLL) == 1)
    {
      v66 = 18.0;
    }

    v57 = v63 + v66;
  }

  legalText2Label = self->_legalText2Label;
  if (legalText2Label)
  {
    [(UILabel *)legalText2Label sizeThatFits:v11 - v7, 1.79769313e308];
    v69 = v68;
    v71 = v70;
    [(UILabel *)self->_legalText2Label setFrame:v7, v57, v68, v70];
    v81.origin.x = v7;
    v81.origin.y = v57;
    v81.size.width = v69;
    v81.size.height = v71;
    v57 = CGRectGetMaxY(v81);
  }

  [(UIScrollView *)self->_scrollView setContentSize:v4, v57 + 20.0];
}

void __40__SKUIDonationAmountView_layoutSubviews__block_invoke(uint64_t a1, void *a2, unint64_t a3)
{
  v5 = a2;
  [v5 frame];
  v7 = v6;
  v8 = *(a1 + 40);
  v9 = *(a1 + 48) + (a3 % v8) * 65.0 + ((a3 % v8) * 14.0);
  v10 = *(a1 + 64) + (a3 / v8) * v6 + ((a3 / v8) * 14.0);
  [v5 setFrame:{v9, v10, 65.0}];

  v13.origin.x = v9;
  v13.origin.y = v10;
  v13.size.width = 65.0;
  v13.size.height = v7;
  MaxY = CGRectGetMaxY(v13);
  v12 = *(*(a1 + 32) + 8);
  if (MaxY < *(v12 + 24))
  {
    MaxY = *(v12 + 24);
  }

  *(v12 + 24) = MaxY;
}

- (void)_amountButtonDown:(id)down
{
  downCopy = down;
  v4 = [(NSArray *)self->_amountButtons indexOfObjectIdenticalTo:?];
  selectedAmountIndex = self->_selectedAmountIndex;
  if (selectedAmountIndex == v4)
  {
    [downCopy setSelected:0];
  }

  else
  {
    v6 = v4;
    if (selectedAmountIndex != 0x7FFFFFFFFFFFFFFFLL)
    {
      v7 = [(NSArray *)self->_amountButtons objectAtIndex:?];
      [v7 setSelected:0];
    }

    self->_selectedAmountIndex = v6;
  }
}

- (void)_amountButtonUpInside:(id)inside
{
  amountButtons = self->_amountButtons;
  insideCopy = inside;
  self->_selectedAmountIndex = [(NSArray *)amountButtons indexOfObjectIdenticalTo:insideCopy];
  [insideCopy setSelected:1];

  defaultCenter = [MEMORY[0x277CCAB98] defaultCenter];
  [defaultCenter postNotificationName:@"SKUIDonationAmountViewChangedNotification" object:self];
}

- (void)_amountButtonUpOutside:(id)outside
{
  outsideCopy = outside;
  if (self->_selectedAmountIndex == [(NSArray *)self->_amountButtons indexOfObjectIdenticalTo:?])
  {
    self->_selectedAmountIndex = 0x7FFFFFFFFFFFFFFFLL;
    [outsideCopy setSelected:0];
    defaultCenter = [MEMORY[0x277CCAB98] defaultCenter];
    [defaultCenter postNotificationName:@"SKUIDonationAmountViewChangedNotification" object:self];
  }
}

- (void)initWithCharity:.cold.1()
{
  v2 = *MEMORY[0x277D85DE8];
  v0 = 136446210;
  v1 = "[SKUIDonationAmountView initWithCharity:]";
}

@end