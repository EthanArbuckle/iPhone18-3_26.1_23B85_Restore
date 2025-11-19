@interface SKUIAccountButtonsView
- (CGSize)sizeThatFits:(CGSize)a3;
- (SKUIAccountButtonsView)initWithClientContext:(id)a3;
- (id)_newLinkButtonWithTitle:(id)a3;
- (void)_layoutOneRow;
- (void)_layoutTwoRows;
- (void)_reloadFonts;
- (void)dealloc;
- (void)layoutSubviews;
- (void)setAccountCredits:(id)a3;
- (void)setECommerceLinkTitle:(id)a3;
- (void)setGiftingHidden:(BOOL)a3;
- (void)tintColorDidChange;
@end

@implementation SKUIAccountButtonsView

- (SKUIAccountButtonsView)initWithClientContext:(id)a3
{
  v5 = a3;
  if (os_variant_has_internal_content() && _os_feature_enabled_impl() && os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_FAULT))
  {
    [SKUIAccountButtonsView initWithClientContext:];
  }

  v25.receiver = self;
  v25.super_class = SKUIAccountButtonsView;
  v6 = [(SKUIAccountButtonsView *)&v25 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_clientContext, a3);
    v8 = objc_alloc_init(SKUIRoundedRectButton);
    appleIDButton = v7->_appleIDButton;
    v7->_appleIDButton = v8;

    [(SKUIAccountButtonsView *)v7 addSubview:v7->_appleIDButton];
    v10 = objc_alloc_init(SKUIRoundedRectButton);
    redeemButton = v7->_redeemButton;
    v7->_redeemButton = &v10->super;

    v12 = v7->_redeemButton;
    if (v5)
    {
      [v5 localizedStringForKey:@"REDEEM_BUTTON" inTable:@"Redeem"];
    }

    else
    {
      [SKUIClientContext localizedStringForKey:@"REDEEM_BUTTON" inBundles:0 inTable:@"Redeem"];
    }
    v13 = ;
    [(UIButton *)v12 setTitle:v13 forState:0];

    [(SKUIAccountButtonsView *)v7 addSubview:v7->_redeemButton];
    v14 = objc_alloc_init(SKUIRoundedRectButton);
    giftingButton = v7->_giftingButton;
    v7->_giftingButton = v14;

    v16 = v7->_giftingButton;
    if (v5)
    {
      [v5 localizedStringForKey:@"GIFT_BUTTON"];
    }

    else
    {
      [SKUIClientContext localizedStringForKey:@"GIFT_BUTTON" inBundles:0];
    }
    v17 = ;
    [(SKUIRoundedRectButton *)v16 setTitle:v17 forState:0];

    v7->_giftingVisibilityHidden = 0;
    [(SKUIAccountButtonsView *)v7 addSubview:v7->_giftingButton];
    v18 = [(SKUIAccountButtonsView *)v7 _newLinkButtonWithTitle:0];
    ecommerceButton = v7->_ecommerceButton;
    v7->_ecommerceButton = v18;

    v7->_ecommerceVisibilityHidden = 1;
    [(SKUIAccountButtonsView *)v7 addSubview:v7->_ecommerceButton];
    if (v5)
    {
      [v5 localizedStringForKey:@"TERMS_LINK"];
    }

    else
    {
      [SKUIClientContext localizedStringForKey:@"TERMS_LINK" inBundles:0];
    }
    v20 = ;
    v21 = [(SKUIAccountButtonsView *)v7 _newLinkButtonWithTitle:v20];
    termsAndConditionsButton = v7->_termsAndConditionsButton;
    v7->_termsAndConditionsButton = v21;

    [(SKUIAccountButtonsView *)v7 addSubview:v7->_termsAndConditionsButton];
    [(SKUIAccountButtonsView *)v7 _reloadFonts];
    v23 = [MEMORY[0x277CCAB98] defaultCenter];
    [v23 addObserver:v7 selector:sel__reloadFonts name:*MEMORY[0x277D76810] object:0];
  }

  return v7;
}

- (void)dealloc
{
  v3 = [MEMORY[0x277CCAB98] defaultCenter];
  [v3 removeObserver:self name:*MEMORY[0x277D76810] object:0];

  v4.receiver = self;
  v4.super_class = SKUIAccountButtonsView;
  [(SKUIAccountButtonsView *)&v4 dealloc];
}

- (void)setECommerceLinkTitle:(id)a3
{
  v5 = a3;
  v4 = [(SKUILinkButton *)self->_ecommerceButton titleForState:0];
  if (v4 != v5 && ([v5 isEqualToString:v4] & 1) == 0)
  {
    self->_ecommerceVisibilityHidden = v5 == 0;
    [SKUILinkButton setTitle:"setTitle:forState:" forState:?];
    [(SKUIAccountButtonsView *)self setNeedsLayout];
  }
}

- (void)setAccountCredits:(id)a3
{
  v16 = a3;
  v4 = [(UILabel *)self->_accountCreditsLabel text];

  v5 = v16;
  if (v4 != v16)
  {
    if ([v16 length])
    {
      if (!self->_accountCreditsLabel)
      {
        v6 = objc_alloc_init(MEMORY[0x277D756B8]);
        accountCreditsLabel = self->_accountCreditsLabel;
        self->_accountCreditsLabel = v6;

        v8 = self->_accountCreditsLabel;
        v9 = [MEMORY[0x277D75348] clearColor];
        [(UILabel *)v8 setBackgroundColor:v9];

        v10 = self->_accountCreditsLabel;
        v11 = [MEMORY[0x277D74300] systemFontOfSize:11.0];
        [(UILabel *)v10 setFont:v11];

        [(UILabel *)self->_accountCreditsLabel setLineBreakMode:3];
        [(UILabel *)self->_accountCreditsLabel setTextAlignment:1];
        [(SKUIRoundedRectButton *)self->_appleIDButton setSubtitleWithLabel:self->_accountCreditsLabel];
      }

      clientContext = self->_clientContext;
      if (clientContext)
      {
        [(SKUIClientContext *)clientContext localizedStringForKey:@"ACCOUNT_CREDITS"];
      }

      else
      {
        [SKUIClientContext localizedStringForKey:@"ACCOUNT_CREDITS" inBundles:0];
      }
      v13 = ;
      v14 = self->_accountCreditsLabel;
      v15 = [MEMORY[0x277CCACA8] stringWithValidatedFormat:v13 validFormatSpecifiers:@"%@" error:0, v16];
      [(UILabel *)v14 setText:v15];

      [(UILabel *)self->_accountCreditsLabel sizeToFit];
      [(SKUIRoundedRectButton *)self->_appleIDButton setNeedsLayout];
    }

    else
    {
      [(SKUIRoundedRectButton *)self->_appleIDButton setSubtitleWithLabel:0];
      v13 = self->_accountCreditsLabel;
      self->_accountCreditsLabel = 0;
    }

    v5 = v16;
  }
}

- (void)setGiftingHidden:(BOOL)a3
{
  if (self->_giftingVisibilityHidden != a3)
  {
    self->_giftingVisibilityHidden = a3;
    [(SKUIAccountButtonsView *)self setNeedsLayout];
  }
}

- (void)layoutSubviews
{
  [(SKUIAccountButtonsView *)self bounds];
  if (v3 >= 696.0)
  {

    [(SKUIAccountButtonsView *)self _layoutOneRow];
  }

  else
  {

    [(SKUIAccountButtonsView *)self _layoutTwoRows];
  }
}

- (CGSize)sizeThatFits:(CGSize)a3
{
  height = a3.height;
  width = a3.width;
  v6 = [(SKUIAccountButtonsView *)self isEcommerceHidden];
  v7 = !v6;
  v8 = [(UIButton *)self->_termsAndConditionsButton isHidden];
  v9 = v8;
  v10 = 1;
  if (!v6)
  {
    v10 = 2;
  }

  if (!v8)
  {
    v7 = v10;
  }

  if (width >= 0.00000011920929)
  {
    if (width < 696.0)
    {
      goto LABEL_7;
    }
  }

  else if (SKUIUserInterfaceIdiom(self->_clientContext) != 1)
  {
LABEL_7:
    [(SKUIRoundedRectButton *)self->_appleIDButton sizeThatFits:width, height];
    v12 = v11 + 0.0;
    if (![(SKUIAccountButtonsView *)self isRedeemHidden])
    {
      [(UIButton *)self->_redeemButton sizeThatFits:width, v12];
      v12 = v12 + v13 + 10.0;
    }

    if (v9 & v6)
    {
      v14 = 44.0;
    }

    else
    {
      v14 = (44 * v7);
    }

    v17 = v12 + v14;
    goto LABEL_17;
  }

  [(SKUIRoundedRectButton *)self->_appleIDButton sizeThatFits:width, height];
  v16 = v15 + 0.0;
  v17 = v15 + 0.0 + 64.0;
  if ((v9 & v6) != 0)
  {
    v17 = v16;
  }

LABEL_17:
  v18 = width;
  result.height = v17;
  result.width = v18;
  return result;
}

- (void)tintColorDidChange
{
  v3 = [(SKUIAccountButtonsView *)self tintColor];
  [(SKUILinkButton *)self->_ecommerceButton setTitleColor:v3 forState:0];
  [(UIButton *)self->_termsAndConditionsButton setTitleColor:v3 forState:0];
  v4.receiver = self;
  v4.super_class = SKUIAccountButtonsView;
  [(SKUIAccountButtonsView *)&v4 tintColorDidChange];
}

- (void)_layoutOneRow
{
  [(SKUIAccountButtonsView *)self bounds];
  v4 = v3;
  v6 = v5;
  v7 = v3 / 3.0 < 300.0;
  v8 = -15.0;
  if (!v7)
  {
    v8 = -30.0;
  }

  v9 = v4 + v8 * 2.0 + -30.0;
  v10 = v9 / 3.0;
  v11 = floorf(v10);
  [(SKUIRoundedRectButton *)self->_appleIDButton frame];
  [(SKUIRoundedRectButton *)self->_appleIDButton sizeThatFits:v4, v6];
  v13 = v12;
  [(UIButton *)self->_redeemButton frame];
  [(UIButton *)self->_redeemButton sizeThatFits:v4, v6];
  v15 = v14;
  if ([(SKUIAccountButtonsView *)self isGiftingHidden]&& ![(SKUIAccountButtonsView *)self isRedeemHidden])
  {
    v23 = (v4 - (v11 * 2.0 + 15.0)) * 0.5;
    v21 = floorf(v23);
    v38.origin.y = 0.0;
    v38.origin.x = v21;
    v38.size.width = v11;
    v38.size.height = v13;
    v19 = CGRectGetMaxX(v38) + 15.0;
    v17 = v11;
  }

  else
  {
    v16 = v9 - v11 * 2.0;
    v17 = ceilf(v16);
    v18 = (v4 - v17) * 0.5;
    v19 = floorf(v18);
    if ([(SKUIAccountButtonsView *)self isGiftingHidden])
    {
      v37.origin.x = 15.0;
      v37.origin.y = 0.0;
      v37.size.width = v11;
      v37.size.height = v13;
      v20 = (v4 - CGRectGetWidth(v37)) * 0.5;
      v21 = floorf(v20);
    }

    else
    {
      [(SKUIRoundedRectButton *)self->_giftingButton frame];
      [(SKUIRoundedRectButton *)self->_giftingButton sizeThatFits:v4, v6];
      [(SKUIRoundedRectButton *)self->_giftingButton setFrame:v4 + -15.0 - v11, 0.0, v11, v22];
      v21 = 15.0;
    }
  }

  [(SKUIRoundedRectButton *)self->_giftingButton setHidden:[(SKUIAccountButtonsView *)self isGiftingHidden]];
  [(UIButton *)self->_redeemButton setHidden:[(SKUIAccountButtonsView *)self isRedeemHidden]];
  [(SKUIRoundedRectButton *)self->_appleIDButton setFrame:v21, 0.0, v11, v13];
  [(UIButton *)self->_redeemButton setFrame:v19, 0.0, v17, v15];
  v39.origin.y = 0.0;
  v39.origin.x = v21;
  v39.size.width = v11;
  v39.size.height = v13;
  v24 = CGRectGetMaxY(v39) + 20.0;
  [(UIButton *)self->_termsAndConditionsButton frame];
  v25 = *(MEMORY[0x277CBF390] + 16);
  v26 = *(MEMORY[0x277CBF390] + 24);
  [(UIButton *)self->_termsAndConditionsButton sizeThatFits:v25, v26];
  v28 = v27;
  *&v27 = (v4 - v27) * 0.5;
  v29 = floorf(*&v27);
  if (![(SKUIAccountButtonsView *)self isEcommerceHidden])
  {
    [(SKUILinkButton *)self->_ecommerceButton frame];
    [(SKUILinkButton *)self->_ecommerceButton sizeThatFits:v25, v26];
    v31 = v30;
    if ([(UIButton *)self->_termsAndConditionsButton isHidden])
    {
      v32 = (v4 - v31) * 0.5;
      v33 = floorf(v32);
    }

    else
    {
      v34 = (v4 - (v28 + 40.0 + v31)) * 0.5;
      v29 = floorf(v34);
      v40.size.height = 44.0;
      v40.origin.x = v29;
      v40.origin.y = v24;
      v40.size.width = v28;
      v33 = CGRectGetMaxX(v40) + 40.0;
    }

    [(SKUILinkButton *)self->_ecommerceButton setFrame:v33, v24, v31, 44.0];
  }

  [(SKUILinkButton *)self->_ecommerceButton setHidden:[(SKUIAccountButtonsView *)self isEcommerceHidden]];
  termsAndConditionsButton = self->_termsAndConditionsButton;

  [(UIButton *)termsAndConditionsButton setFrame:v29, v24, v28, 44.0];
}

- (void)_layoutTwoRows
{
  [(SKUIAccountButtonsView *)self bounds];
  v4 = v3;
  v6 = v5;
  v7 = v3 + -30.0;
  v8 = [(SKUIAccountButtonsView *)self isGiftingHidden];
  v9 = floor((v7 + -10.0) * 0.5);
  if (v8)
  {
    v10 = v7;
  }

  else
  {
    v10 = v9;
  }

  [(UIButton *)self->_redeemButton frame];
  [(UIButton *)self->_redeemButton sizeThatFits:v4, v6];
  v11 = 0.0;
  [(UIButton *)self->_redeemButton setFrame:15.0, 0.0, v10, v12];
  [(UIButton *)self->_redeemButton setHidden:[(SKUIAccountButtonsView *)self isRedeemHidden]];
  [(SKUIRoundedRectButton *)self->_giftingButton frame];
  [(SKUIRoundedRectButton *)self->_giftingButton sizeThatFits:v4, v6];
  v14 = v13;
  [(SKUIRoundedRectButton *)self->_giftingButton setFrame:v4 + -15.0 - v10, 0.0, v10, v13];
  [(SKUIRoundedRectButton *)self->_giftingButton setHidden:[(SKUIAccountButtonsView *)self isGiftingHidden]];
  if (![(SKUIAccountButtonsView *)self isRedeemHidden]|| ![(SKUIAccountButtonsView *)self isGiftingHidden])
  {
    v28.origin.y = 0.0;
    v28.origin.x = v4 + -15.0 - v10;
    v28.size.width = v10;
    v28.size.height = v14;
    v11 = CGRectGetMaxY(v28) + 10.0;
  }

  [(SKUIRoundedRectButton *)self->_appleIDButton frame];
  [(SKUIRoundedRectButton *)self->_appleIDButton sizeThatFits:v4, v6];
  v16 = v15;
  [(SKUIRoundedRectButton *)self->_appleIDButton setFrame:15.0, v11, v7, v15];
  v29.origin.x = 15.0;
  v29.origin.y = v11;
  v29.size.width = v7;
  v29.size.height = v16;
  MaxY = CGRectGetMaxY(v29);
  v18 = [(UIButton *)self->_termsAndConditionsButton isHidden];
  v19 = MEMORY[0x277CBF390];
  if ((v18 & 1) == 0)
  {
    [(UIButton *)self->_termsAndConditionsButton frame];
    [(UIButton *)self->_termsAndConditionsButton sizeThatFits:*(v19 + 16), *(v19 + 24)];
    v21 = v20;
    *&v20 = (v4 - v20) * 0.5;
    v22 = floorf(*&v20);
    [(UIButton *)self->_termsAndConditionsButton setFrame:v22, MaxY, v21, 44.0];
    v30.origin.x = v22;
    v30.origin.y = MaxY;
    v30.size.width = v21;
    v30.size.height = 44.0;
    MaxY = CGRectGetMaxY(v30);
  }

  if (![(SKUIAccountButtonsView *)self isEcommerceHidden])
  {
    [(SKUILinkButton *)self->_ecommerceButton frame];
    [(SKUILinkButton *)self->_ecommerceButton sizeThatFits:*(v19 + 16), *(v19 + 24)];
    v24 = v23;
    *&v23 = (v4 - v23) * 0.5;
    [(SKUILinkButton *)self->_ecommerceButton setFrame:floorf(*&v23), MaxY, v24, 44.0];
  }

  ecommerceButton = self->_ecommerceButton;
  v26 = [(SKUIAccountButtonsView *)self isEcommerceHidden];

  [(SKUILinkButton *)ecommerceButton setHidden:v26];
}

- (id)_newLinkButtonWithTitle:(id)a3
{
  v4 = a3;
  v5 = [[SKUILinkButton alloc] initWithArrowStyle:0];
  [(SKUILinkButton *)v5 setTitle:v4 forState:0];

  v6 = [(SKUIAccountButtonsView *)self tintColor];
  [(SKUILinkButton *)v5 setTitleColor:v6 forState:0];

  return v5;
}

- (void)_reloadFonts
{
  v5 = [MEMORY[0x277D74300] preferredFontForTextStyle:*MEMORY[0x277D76938]];
  v3 = [(SKUILinkButton *)self->_ecommerceButton titleLabel];
  [v3 setFont:v5];

  v4 = [(UIButton *)self->_termsAndConditionsButton titleLabel];
  [v4 setFont:v5];
}

- (void)initWithClientContext:.cold.1()
{
  v2 = *MEMORY[0x277D85DE8];
  v0 = 136446210;
  v1 = "[SKUIAccountButtonsView initWithClientContext:]";
}

@end