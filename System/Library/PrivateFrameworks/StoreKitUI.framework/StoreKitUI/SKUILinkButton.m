@interface SKUILinkButton
+ (SKUILinkButton)buttonWithArrowStyle:(int64_t)a3;
- (CGSize)sizeThatFits:(CGSize)a3;
- (SKUILinkButton)initWithArrowStyle:(int64_t)a3;
- (double)_linkImagePaddingLeft;
- (void)_reloadIcons;
- (void)layoutSubviews;
- (void)setTitleColor:(id)a3 forState:(unint64_t)a4;
- (void)sizeToFit;
- (void)tintColorDidChange;
@end

@implementation SKUILinkButton

+ (SKUILinkButton)buttonWithArrowStyle:(int64_t)a3
{
  if (os_variant_has_internal_content() && _os_feature_enabled_impl() && os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_FAULT))
  {
    +[SKUILinkButton buttonWithArrowStyle:];
  }

  v9.receiver = a1;
  v9.super_class = &OBJC_METACLASS___SKUILinkButton;
  v5 = objc_msgSendSuper2(&v9, sel_buttonWithType_, 1);
  v5[93] = a3;
  v6 = [v5 titleLabel];
  [v6 setNumberOfLines:1];

  v7 = [v5 titleLabel];
  [v7 setLineBreakMode:4];

  [v5 _reloadIcons];

  return v5;
}

- (SKUILinkButton)initWithArrowStyle:(int64_t)a3
{
  if (os_variant_has_internal_content() && _os_feature_enabled_impl() && os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_FAULT))
  {
    [SKUILinkButton initWithArrowStyle:];
  }

  v10.receiver = self;
  v10.super_class = SKUILinkButton;
  v5 = [(SKUILinkButton *)&v10 init];
  v6 = v5;
  if (v5)
  {
    v5->_arrowStyle = a3;
    v7 = [(SKUILinkButton *)v5 titleLabel];
    [v7 setNumberOfLines:1];

    v8 = [(SKUILinkButton *)v6 titleLabel];
    [v8 setLineBreakMode:4];

    [(SKUILinkButton *)v6 _reloadIcons];
  }

  return v6;
}

- (void)setTitleColor:(id)a3 forState:(unint64_t)a4
{
  v5.receiver = self;
  v5.super_class = SKUILinkButton;
  [(SKUILinkButton *)&v5 setTitleColor:a3 forState:a4];
  [(SKUILinkButton *)self _reloadIcons];
}

- (void)tintColorDidChange
{
  [(SKUILinkButton *)self _reloadIcons];
  v3.receiver = self;
  v3.super_class = SKUILinkButton;
  [(SKUILinkButton *)&v3 tintColorDidChange];
}

- (void)sizeToFit
{
  [(SKUILinkButton *)self sizeThatFits:*(MEMORY[0x277CBF390] + 16), *(MEMORY[0x277CBF390] + 24)];
  [(SKUILinkButton *)self frame];

  [(SKUILinkButton *)self setFrame:?];
}

- (CGSize)sizeThatFits:(CGSize)a3
{
  height = a3.height;
  width = a3.width;
  v6 = [(SKUILinkButton *)self imageView];
  v7 = [(SKUILinkButton *)self imageForState:0];
  [v6 setImage:v7];

  v8 = [(SKUILinkButton *)self titleLabel];
  v9 = [(SKUILinkButton *)self titleForState:0];
  [v8 setText:v9];

  v10 = width == *MEMORY[0x277CBF3A8];
  v11 = height == *(MEMORY[0x277CBF3A8] + 8);
  if (v10 && v11)
  {
    v12 = *(MEMORY[0x277CBF390] + 24);
  }

  else
  {
    v12 = height;
  }

  if (v10 && v11)
  {
    v13 = *(MEMORY[0x277CBF390] + 16);
  }

  else
  {
    v13 = width;
  }

  [v6 sizeThatFits:{v13, v12}];
  v15 = v14;
  v17 = v16;
  [(SKUILinkButton *)self _linkImagePaddingLeft];
  v19 = v13 - (v15 + v18);
  [v8 sizeThatFits:{v19, v12}];
  v22 = v21;
  if (v20 >= v19)
  {
    v20 = v19;
  }

  v23 = v15 + v20;
  [(SKUILinkButton *)self _linkImagePaddingLeft];
  v25 = ceil(v24 + v23);
  if (width >= v25)
  {
    width = v25;
  }

  if (v22 >= v17)
  {
    v26 = v22;
  }

  else
  {
    v26 = v17;
  }

  v27 = ceil(v26);
  if (height >= v27)
  {
    height = v27;
  }

  v28 = width;
  v29 = height;
  result.height = v29;
  result.width = v28;
  return result;
}

- (void)layoutSubviews
{
  [MEMORY[0x277D75D18] setAnimationsEnabled:0];
  v42.receiver = self;
  v42.super_class = SKUILinkButton;
  [(SKUILinkButton *)&v42 layoutSubviews];
  [(SKUILinkButton *)self bounds];
  v4 = v3;
  v6 = v5;
  v7 = [(SKUILinkButton *)self imageView];
  v8 = [(SKUILinkButton *)self titleLabel];
  v9 = v8;
  v10 = *MEMORY[0x277CBF3A8];
  v11 = *(MEMORY[0x277CBF3A8] + 8);
  if (v7 && v8)
  {
    [(SKUILinkButton *)self _linkImagePaddingLeft];
    v13 = v4 - v12;
  }

  else
  {
    v13 = v4;
    v14 = *(MEMORY[0x277CBF3A8] + 8);
    v15 = *MEMORY[0x277CBF3A8];
    v16 = v4;
    if (!v7)
    {
      goto LABEL_6;
    }
  }

  [v7 sizeThatFits:{v13, v6}];
  v15 = v17;
  v14 = v18;
  v16 = v13 - v17;
LABEL_6:
  v41 = v4;
  if (v9)
  {
    [v9 sizeThatFits:{v16, v6}];
    v11 = v20;
    if (v19 >= v16)
    {
      v10 = v16;
    }

    else
    {
      v10 = v19;
    }
  }

  [(SKUILinkButton *)self _linkImagePaddingLeft];
  v22 = v15 + v10 + v21;
  v23 = [MEMORY[0x277D75128] sharedApplication];
  v24 = [v23 userInterfaceLayoutDirection];

  if (v7)
  {
    [v7 frame];
    v25 = (v40 - v14) * 0.5;
    v26 = v11;
    v27 = roundf(v25);
    v28 = (v41 - v22) * 0.5;
    v29 = roundf(v28);
    if (v24)
    {
      v30 = v29;
    }

    else
    {
      v30 = v22 + v29 - v15;
    }

    v31 = [(SKUILinkButton *)self titleLabel];
    v32 = [v31 font];
    [v32 lineHeight];
    v34 = v33;

    if (v34 <= 14.0)
    {
      v35 = v27 + 1.0;
    }

    else
    {
      v35 = v27;
    }

    v11 = v26;
    [v7 setFrame:{v30, v35, v15, v14}];
  }

  if (v9)
  {
    [v9 frame];
    v36 = (v40 - v11) * 0.5;
    v37 = roundf(v36);
    v38 = (v41 - v22) * 0.5;
    v39 = roundf(v38);
    if (v24)
    {
      v39 = v22 + v39 - v10;
    }

    [v9 setFrame:{v39, v37, v10, v11}];
  }

  [MEMORY[0x277D75D18] setAnimationsEnabled:1];
}

- (double)_linkImagePaddingLeft
{
  arrowStyle = self->_arrowStyle;
  result = 4.0;
  if (arrowStyle <= 3)
  {
    if (arrowStyle >= 2)
    {
      if (arrowStyle == 3)
      {
        return 3.0;
      }

      return result;
    }

    goto LABEL_7;
  }

  if (arrowStyle == 4)
  {
    return 7.0;
  }

  if (arrowStyle == 5)
  {
LABEL_7:
    v10 = [(SKUILinkButton *)self titleLabel:4.0];
    v11 = [v10 font];
    [v11 lineHeight];
    v13 = v12;

    result = 3.0;
    if (v13 < 13.0)
    {
      return 2.0;
    }
  }

  return result;
}

- (void)_reloadIcons
{
  arrowStyle = self->_arrowStyle;
  if (arrowStyle > 5)
  {
    v12 = 0;
  }

  else
  {
    v4 = off_2781FFBD0[arrowStyle];
    v5 = MEMORY[0x277D755B8];
    v6 = SKUIBundle();
    v12 = [v5 imageNamed:v4 inBundle:v6];
  }

  v7 = [(SKUILinkButton *)self titleColorForState:0];
  if (v7)
  {
    v8 = v7;
LABEL_7:
    v9 = [v12 _flatImageWithColor:v8];
    goto LABEL_8;
  }

  v8 = [(SKUILinkButton *)self tintColor];
  if (v8)
  {
    goto LABEL_7;
  }

  v9 = 0;
LABEL_8:
  [(SKUILinkButton *)self setImage:v9 forState:0];
  v10 = [(SKUILinkButton *)self titleColorForState:1];
  if (v10)
  {
    v11 = [v12 _flatImageWithColor:v10];
  }

  else
  {
    v11 = 0;
  }

  [(SKUILinkButton *)self setImage:v11 forState:1];
}

+ (void)buttonWithArrowStyle:.cold.1()
{
  v2 = *MEMORY[0x277D85DE8];
  v0 = 136446210;
  v1 = "+[SKUILinkButton buttonWithArrowStyle:]";
}

- (void)initWithArrowStyle:.cold.1()
{
  v2 = *MEMORY[0x277D85DE8];
  v0 = 136446210;
  v1 = "[SKUILinkButton initWithArrowStyle:]";
}

@end