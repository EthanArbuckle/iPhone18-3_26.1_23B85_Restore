@interface SUItemOfferButton
+ (id)itemOfferButtonStyleForItem:(id)a3 offer:(id)a4;
- ($78AEFEE7AA62DA06F841D8D3A9580675)_configurationForStyle:(SEL)a3;
- (BOOL)configureForItem:(id)a3 offer:(id)a4;
- (CGSize)sizeThatFits:(CGSize)a3;
- (SUItemOfferButton)initWithFrame:(CGRect)a3;
- (void)_applyConfiguration:(id *)a3;
- (void)_reloadButton;
- (void)dealloc;
- (void)layoutSubviews;
- (void)setConfirmationTitle:(id)a3;
- (void)setItemOfferButtonStyle:(id)a3;
- (void)setOfferTitle:(id)a3;
- (void)setShowingConfirmation:(BOOL)a3 duration:(double)a4;
@end

@implementation SUItemOfferButton

- (SUItemOfferButton)initWithFrame:(CGRect)a3
{
  v6.receiver = self;
  v6.super_class = SUItemOfferButton;
  v3 = [(SUItemOfferButton *)&v6 initWithFrame:a3.origin.x, a3.origin.y, a3.size.width, a3.size.height];
  v4 = v3;
  if (v3)
  {
    v3->_animationHorizontalAlignment = 1;
    v3->_shouldShowConfirmation = 1;
    [(SUItemOfferButton *)v3 setItemOfferButtonStyle:@"SUItemOfferButtonStyleGrayBlue"];
  }

  return v4;
}

- (void)dealloc
{
  [(SUItemOfferButton *)self removeTarget:self action:0 forControlEvents:0xFFFFFFFFLL];

  v3.receiver = self;
  v3.super_class = SUItemOfferButton;
  [(SUItemOfferButton *)&v3 dealloc];
}

+ (id)itemOfferButtonStyleForItem:(id)a3 offer:(id)a4
{
  if (![a3 isDownloadable])
  {
    return @"SUItemOfferButtonStyleNotPurchasable";
  }

  v6 = [a3 itemType];
  v7 = [a4 shouldShowPlusIcon];
  v8 = @"SUItemOfferButtonStyleGrayBlue";
  if (v7)
  {
    v8 = @"SUItemOfferButtonStyleGrayBluePlus";
  }

  v9 = @"SUItemOfferButtonStyleBluePlus";
  if (!v7)
  {
    v9 = @"SUItemOfferButtonStyleBlue";
  }

  if (v6 == 2000)
  {
    return v9;
  }

  else
  {
    return v8;
  }
}

- (BOOL)configureForItem:(id)a3 offer:(id)a4
{
  v7 = [a4 actionDisplayName];
  if ([(NSString *)self->_confirmationTitle isEqualToString:v7])
  {
    LOBYTE(v7) = 0;
  }

  else
  {
    [(SUItemOfferButton *)self setConfirmationTitle:v7];
    LOBYTE(v7) = [(SUItemOfferButton *)self isShowingConfirmation];
  }

  v8 = [a4 priceDisplay];
  if (![(NSString *)self->_offerTitle isEqualToString:v8])
  {
    [(SUItemOfferButton *)self setOfferTitle:v8];
    if (v7)
    {
      LOBYTE(v7) = 1;
    }

    else
    {
      LODWORD(v7) = ![(SUItemOfferButton *)self isShowingConfirmation];
    }
  }

  v9 = [objc_opt_class() itemOfferButtonStyleForItem:a3 offer:a4];
  if (![(NSString *)self->_buttonStyle isEqualToString:v9])
  {
    [(SUItemOfferButton *)self setItemOfferButtonStyle:v9];
    if (v7)
    {
      LOBYTE(v7) = 1;
    }

    else
    {
      LODWORD(v7) = ![(SUItemOfferButton *)self isShowingConfirmation];
    }
  }

  -[SUItemOfferButton setShouldShowConfirmation:](self, "setShouldShowConfirmation:", [a4 isOneTapOffer] ^ 1);
  return v7;
}

- (void)setConfirmationTitle:(id)a3
{
  if (![(NSString *)self->_confirmationTitle isEqualToString:?])
  {

    self->_confirmationTitle = [a3 copy];
    if ([(SUItemOfferButton *)self isShowingConfirmation])
    {

      [(SUItemOfferButton *)self _reloadButton];
    }
  }
}

- (void)setItemOfferButtonStyle:(id)a3
{
  if (![(NSString *)self->_buttonStyle isEqualToString:?])
  {
    [(SUItemOfferButton *)self _configurationForStyle:a3];
    [MEMORY[0x1E695DF30] raise:*MEMORY[0x1E695D940] format:@"Invalid button style"];

    self->_buttonStyle = [a3 copy];
    [(SUItemOfferButton *)self _reloadButton];
  }
}

- (void)setOfferTitle:(id)a3
{
  if (![(NSString *)self->_offerTitle isEqualToString:?])
  {

    self->_offerTitle = [a3 copy];
    if (![(SUItemOfferButton *)self isShowingConfirmation])
    {

      [(SUItemOfferButton *)self _reloadButton];
    }
  }
}

- (void)setShowingConfirmation:(BOOL)a3 duration:(double)a4
{
  if (self->_isShowingConfirmation != a3)
  {
    [(SUItemOfferButton *)self frame];
    v8 = v7;
    v10 = v9;
    v12 = v11;
    v14 = v13;
    self->_isShowingConfirmation = a3;
    [(SUItemOfferButton *)self sizeToFit];
    [(SUItemOfferButton *)self frame];
    v23 = v15;
    v17 = v16;
    v19 = v18;
    v20 = [(SUItemOfferButton *)self animationHorizontalAlignment];
    if (v20)
    {
      v21 = v8;
      if (v20 == 2)
      {
        v26.origin.x = v8;
        v26.origin.y = v10;
        v26.size.width = v12;
        v26.size.height = v14;
        v21 = CGRectGetMaxX(v26) - v17;
      }
    }

    else
    {
      v22 = (v17 - v12) * 0.5;
      v21 = v8 - floorf(v22);
    }

    if (a4 > 2.22044605e-16)
    {
      [(SUItemOfferButton *)self setTitle:0 forState:0];
      [(SUItemOfferButton *)self setFrame:v8, v10, v12, v14];
    }

    v25[0] = MEMORY[0x1E69E9820];
    v25[1] = 3221225472;
    v25[2] = __53__SUItemOfferButton_setShowingConfirmation_duration___block_invoke;
    v25[3] = &unk_1E8166B28;
    v25[4] = self;
    *&v25[5] = v21;
    v25[6] = v23;
    *&v25[7] = v17;
    v25[8] = v19;
    v24[0] = MEMORY[0x1E69E9820];
    v24[1] = 3221225472;
    v24[2] = __53__SUItemOfferButton_setShowingConfirmation_duration___block_invoke_2;
    v24[3] = &unk_1E8164B70;
    v24[4] = self;
    [MEMORY[0x1E69DD250] animateWithDuration:v25 animations:v24 completion:a4];
  }
}

uint64_t __53__SUItemOfferButton_setShowingConfirmation_duration___block_invoke(uint64_t a1)
{
  [*(a1 + 32) setFrame:{*(a1 + 40), *(a1 + 48), *(a1 + 56), *(a1 + 64)}];
  v2 = *(a1 + 32);

  return [v2 layoutIfNeeded];
}

- (void)layoutSubviews
{
  v15.receiver = self;
  v15.super_class = SUItemOfferButton;
  [(SUItemOfferButton *)&v15 layoutSubviews];
  v3 = [(SUItemOfferButton *)self titleLabel];
  if (v3)
  {
    v4 = v3;
    if ([v3 numberOfLines] != 1)
    {
      [(SUItemOfferButton *)self bounds];
      [(SUItemOfferButton *)self contentRectForBounds:?];
      v6 = v5;
      v8 = v7;
      [v4 textRectForBounds:objc_msgSend(v4 limitedToNumberOfLines:{"numberOfLines"), v9, v5, v10, v7}];
      v12 = v11;
      *&v11 = (v8 - v13) * 0.5;
      [v4 setFrame:{v12, v6 + floorf(*&v11), v14, v13 + ceilf(vcvts_n_f32_s64(objc_msgSend(v4, "lineSpacing"), 1uLL))}];
    }
  }
}

- (CGSize)sizeThatFits:(CGSize)a3
{
  height = a3.height;
  width = a3.width;
  [(SUItemOfferButton *)self _reloadButton];
  v18.receiver = self;
  v18.super_class = SUItemOfferButton;
  [(SUItemOfferButton *)&v18 sizeThatFits:width, height];
  v7 = v6;
  v9 = v8;
  v10 = [(SUItemOfferButton *)self titleLabel];
  if (v10)
  {
    v11 = v10;
    if ([v10 numberOfLines] != 1)
    {
      [v11 textRectForBounds:objc_msgSend(v11 limitedToNumberOfLines:{"numberOfLines"), 0.0, 0.0, v7, v9}];
      v13 = v12;
      [(SUItemOfferButton *)self contentEdgeInsets];
      if (v7 >= v15 + v13 + v14)
      {
        v7 = v15 + v13 + v14;
      }
    }
  }

  v16 = v7;
  v17 = v9;
  result.height = v17;
  result.width = v16;
  return result;
}

- (void)_applyConfiguration:(id *)a3
{
  [(SUItemOfferButton *)self setContentEdgeInsets:a3->var3.top, a3->var3.left, a3->var3.bottom, a3->var3.right];
  v5 = [MEMORY[0x1E696AAE8] bundleForClass:objc_opt_class()];
  var4 = a3->var4;
  if (var4)
  {
    var4 = [objc_msgSend(MEMORY[0x1E69DCAB8] imageNamed:var4 inBundle:{v5), "stretchableImageWithLeftCapWidth:rightCapWidth:", a3->var1, a3->var2}];
  }

  [(SUItemOfferButton *)self setBackgroundImage:var4 forState:0];
  var5 = a3->var5;
  if (var5)
  {
    var5 = [objc_msgSend(MEMORY[0x1E69DCAB8] imageNamed:var5 inBundle:{v5), "stretchableImageWithLeftCapWidth:rightCapWidth:", a3->var1, a3->var2}];
  }

  [(SUItemOfferButton *)self setBackgroundImage:var5 forState:1];
  v8 = [(SUItemOfferButton *)self titleLabel];
  [v8 setTextAlignment:1];
  v9 = [a3->var0 isEqualToString:@"SUItemOfferButtonStyleNotPurchasable"];
  if (v9)
  {
    [v8 setFont:{objc_msgSend(MEMORY[0x1E69DB878], "boldSystemFontOfSize:", 10.0)}];
    [v8 setShadowOffset:{*MEMORY[0x1E695F060], *(MEMORY[0x1E695F060] + 8)}];
    [(SUItemOfferButton *)self setAlpha:1.0];
    -[SUItemOfferButton setTitleColor:forState:](self, "setTitleColor:forState:", [MEMORY[0x1E69DC888] whiteColor], 0);
    v10 = 0;
    v11 = 0;
    v12 = 0;
    v13 = 2;
    v14 = 9;
  }

  else
  {
    v15 = [a3->var0 isEqualToString:@"SUItemOfferButtonStylePurchasedAlready"];
    [v8 setFont:{objc_msgSend(MEMORY[0x1E69DB878], "boldSystemFontOfSize:", 13.0)}];
    if (v15)
    {
      [v8 setShadowOffset:{0.0, 1.0}];
      [(SUItemOfferButton *)self setAlpha:0.5];
      -[SUItemOfferButton setTitleColor:forState:](self, "setTitleColor:forState:", [MEMORY[0x1E69DC888] colorWithRed:0.462745098 green:0.470588235 blue:0.470588235 alpha:1.0], 0);
      v10 = [MEMORY[0x1E69DC888] colorWithRed:0.721568627 green:0.733333333 blue:0.741176471 alpha:1.0];
      v11 = 0;
      v14 = 0;
      v13 = 1;
      v12 = 4;
    }

    else
    {
      [v8 setShadowOffset:{0.0, -1.0}];
      [(SUItemOfferButton *)self setAlpha:1.0];
      -[SUItemOfferButton setTitleColor:forState:](self, "setTitleColor:forState:", [MEMORY[0x1E69DC888] whiteColor], 0);
      v10 = [MEMORY[0x1E69DC888] colorWithWhite:0.300000012 alpha:1.0];
      v14 = 0;
      v11 = 1;
      v12 = 4;
      v13 = 1;
    }
  }

  [(SUItemOfferButton *)self setTitleShadowColor:v10 forState:0];
  [(SUItemOfferButton *)self setUserInteractionEnabled:v11];
  [v8 setLineBreakMode:v12];
  [v8 setLineSpacing:v14];
  [v8 setNumberOfLines:v13];
  if ([(SUItemOfferButton *)self isShowingConfirmation])
  {
    v16 = [(SUItemOfferButton *)self confirmationTitle];

    [(SUItemOfferButton *)self setTitle:v16 forState:0];
  }

  else
  {
    v17 = [(SUItemOfferButton *)self offerTitle];
    v18 = v17;
    if (v9)
    {
      v19 = [(NSString *)v17 componentsSeparatedByString:@" "];
      if ([(NSArray *)v19 count]== 2)
      {
        v18 = [(NSArray *)v19 componentsJoinedByString:@"\n"];
      }
    }

    [(SUItemOfferButton *)self setTitle:v18 forState:0];

    [v8 setText:v18];
  }
}

- ($78AEFEE7AA62DA06F841D8D3A9580675)_configurationForStyle:(SEL)a3
{
  v6 = 0;
  retstr->var5 = 0;
  *&retstr->var3.left = 0u;
  *&retstr->var3.right = 0u;
  *&retstr->var0 = 0u;
  *&retstr->var2 = 0u;
  while (1)
  {
    result = [__ButtonConfigurations[v6] isEqualToString:a4];
    if (result)
    {
      break;
    }

    v6 += 9;
    if (v6 == 63)
    {
      return result;
    }
  }

  v8 = *&__ButtonConfigurations[v6 + 6];
  *&retstr->var3.left = *&__ButtonConfigurations[v6 + 4];
  *&retstr->var3.right = v8;
  retstr->var5 = __ButtonConfigurations[v6 + 8];
  v9 = *&__ButtonConfigurations[v6 + 2];
  *&retstr->var0 = *&__ButtonConfigurations[v6];
  *&retstr->var2 = v9;
  return result;
}

- (void)_reloadButton
{
  if ([(SUItemOfferButton *)self isShowingConfirmation])
  {
    v12 = xmmword_1E8166D68;
    v13 = unk_1E8166D78;
    v14 = @"PurchaseConfirmButtonPressed.png";
    v10 = __ConfirmationConfiguration;
    v11 = unk_1E8166D58;
    v3 = &v10;
LABEL_6:
    [(SUItemOfferButton *)self _applyConfiguration:v3, v5, v6, v7, v8, v9];
    return;
  }

  v14 = 0;
  v12 = 0u;
  v13 = 0u;
  v10 = 0u;
  v11 = 0u;
  v4 = [(SUItemOfferButton *)self itemOfferButtonStyle];
  if (self)
  {
    [(SUItemOfferButton *)self _configurationForStyle:v4];
    if (v10)
    {
      v7 = v12;
      v8 = v13;
      v9 = v14;
      v5 = v10;
      v6 = v11;
      v3 = &v5;
      goto LABEL_6;
    }
  }
}

@end