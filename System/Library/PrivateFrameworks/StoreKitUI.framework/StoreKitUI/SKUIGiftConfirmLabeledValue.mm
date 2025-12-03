@interface SKUIGiftConfirmLabeledValue
- (CGSize)sizeThatFits:(CGSize)fits;
- (SKUIGiftConfirmLabeledValue)initWithGiftConfirmLabelStyle:(int64_t)style;
- (void)layoutSubviews;
- (void)setLabel:(id)label;
- (void)setSubtitleLabel:(id)label;
- (void)setValue:(id)value;
@end

@implementation SKUIGiftConfirmLabeledValue

- (SKUIGiftConfirmLabeledValue)initWithGiftConfirmLabelStyle:(int64_t)style
{
  if (os_variant_has_internal_content() && _os_feature_enabled_impl() && os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_FAULT))
  {
    [SKUIGiftConfirmLabeledValue initWithGiftConfirmLabelStyle:];
  }

  v14.receiver = self;
  v14.super_class = SKUIGiftConfirmLabeledValue;
  v5 = [(SKUIGiftConfirmLabeledValue *)&v14 init];
  if (v5)
  {
    if (style == 2)
    {
      v6 = objc_alloc_init(SKUIGiftDashView);
      dashView = v5->_dashView;
      v5->_dashView = v6;

      v8 = v5->_dashView;
      clearColor = [MEMORY[0x277D75348] clearColor];
      [(SKUIGiftDashView *)v8 setBackgroundColor:clearColor];

      v10 = v5->_dashView;
      _labelColor = [MEMORY[0x277D75348] _labelColor];
      v12 = [_labelColor colorWithAlphaComponent:0.3];
      [(SKUIGiftDashView *)v10 setDashColor:v12];

      [(SKUIGiftDashView *)v5->_dashView setDashSize:1.0, 1.0];
      [(SKUIGiftDashView *)v5->_dashView setDashSpacing:4.0];
      [(SKUIGiftConfirmLabeledValue *)v5 addSubview:v5->_dashView];
    }

    v5->_style = style;
  }

  return v5;
}

- (void)setLabel:(id)label
{
  labelCopy = label;
  label = [(SKUIGiftConfirmLabeledValue *)self label];
  if (label != labelCopy && ([labelCopy isEqualToString:label] & 1) == 0)
  {
    labelLabel = self->_labelLabel;
    if (labelCopy)
    {
      if (!labelLabel)
      {
        v6 = objc_alloc_init(MEMORY[0x277D756B8]);
        v7 = self->_labelLabel;
        self->_labelLabel = v6;

        v8 = self->_labelLabel;
        clearColor = [MEMORY[0x277D75348] clearColor];
        [(UILabel *)v8 setBackgroundColor:clearColor];

        v10 = self->_labelLabel;
        v11 = [MEMORY[0x277D74300] boldSystemFontOfSize:13.0];
        [(UILabel *)v10 setFont:v11];

        v12 = self->_labelLabel;
        _labelColor = [MEMORY[0x277D75348] _labelColor];
        [(UILabel *)v12 setTextColor:_labelColor];

        [(UILabel *)self->_labelLabel setTextAlignment:4];
        [(SKUIGiftConfirmLabeledValue *)self addSubview:self->_labelLabel];
        labelLabel = self->_labelLabel;
      }

      [(UILabel *)labelLabel setText:?];
      [(UILabel *)self->_labelLabel sizeToFit];
    }

    else
    {
      [(UILabel *)labelLabel removeFromSuperview];
      v14 = self->_labelLabel;
      self->_labelLabel = 0;
    }

    [(SKUIGiftConfirmLabeledValue *)self setNeedsLayout];
  }
}

- (void)setSubtitleLabel:(id)label
{
  labelCopy = label;
  subtitleLabel = [(SKUIGiftConfirmLabeledValue *)self subtitleLabel];
  if (subtitleLabel != labelCopy && ([labelCopy isEqualToString:subtitleLabel] & 1) == 0)
  {
    subtitleLabel = self->_subtitleLabel;
    if (labelCopy)
    {
      if (!subtitleLabel)
      {
        v6 = objc_alloc_init(MEMORY[0x277D756B8]);
        v7 = self->_subtitleLabel;
        self->_subtitleLabel = v6;

        v8 = self->_subtitleLabel;
        clearColor = [MEMORY[0x277D75348] clearColor];
        [(UILabel *)v8 setBackgroundColor:clearColor];

        v10 = self->_subtitleLabel;
        v11 = [MEMORY[0x277D74300] systemFontOfSize:13.0];
        [(UILabel *)v10 setFont:v11];

        v12 = self->_subtitleLabel;
        _secondaryLabelColor = [MEMORY[0x277D75348] _secondaryLabelColor];
        [(UILabel *)v12 setTextColor:_secondaryLabelColor];

        [(UILabel *)self->_subtitleLabel setTextAlignment:4];
        [(SKUIGiftConfirmLabeledValue *)self addSubview:self->_subtitleLabel];
        subtitleLabel = self->_subtitleLabel;
      }

      [(UILabel *)subtitleLabel setText:?];
      [(UILabel *)self->_subtitleLabel sizeToFit];
    }

    else
    {
      [(UILabel *)subtitleLabel removeFromSuperview];
      v14 = self->_subtitleLabel;
      self->_subtitleLabel = 0;
    }

    [(SKUIGiftConfirmLabeledValue *)self setNeedsLayout];
  }
}

- (void)setValue:(id)value
{
  valueCopy = value;
  label = [(SKUIGiftConfirmLabeledValue *)self label];
  if (label != valueCopy && ([valueCopy isEqualToString:label] & 1) == 0)
  {
    valueLabel = self->_valueLabel;
    if (!valueCopy)
    {
      [(UILabel *)valueLabel removeFromSuperview];
      v17 = self->_valueLabel;
      self->_valueLabel = 0;

LABEL_17:
      [(SKUIGiftConfirmLabeledValue *)self setNeedsLayout];
      goto LABEL_18;
    }

    if (valueLabel)
    {
LABEL_16:
      [(UILabel *)valueLabel setText:?];
      goto LABEL_17;
    }

    v6 = objc_alloc_init(MEMORY[0x277D756B8]);
    v7 = self->_valueLabel;
    self->_valueLabel = v6;

    v8 = self->_valueLabel;
    clearColor = [MEMORY[0x277D75348] clearColor];
    [(UILabel *)v8 setBackgroundColor:clearColor];

    v10 = self->_valueLabel;
    v11 = [MEMORY[0x277D74300] systemFontOfSize:13.0];
    [(UILabel *)v10 setFont:v11];

    v12 = self->_valueLabel;
    _secondaryLabelColor = [MEMORY[0x277D75348] _secondaryLabelColor];
    [(UILabel *)v12 setTextColor:_secondaryLabelColor];

    [(UILabel *)self->_valueLabel setTextAlignment:4];
    style = self->_style;
    if (style)
    {
      if (style == 1)
      {
        currentDevice = [MEMORY[0x277D75418] currentDevice];
        userInterfaceIdiom = [currentDevice userInterfaceIdiom];

        v15 = self->_valueLabel;
        if (userInterfaceIdiom == 1)
        {
          v16 = 7;
        }

        else
        {
          v16 = 6;
        }
      }

      else
      {
        if (style != 2)
        {
LABEL_15:
          [(SKUIGiftConfirmLabeledValue *)self addSubview:self->_valueLabel];
          valueLabel = self->_valueLabel;
          goto LABEL_16;
        }

        v15 = self->_valueLabel;
        v16 = 1;
      }
    }

    else
    {
      v15 = self->_valueLabel;
      v16 = 2;
    }

    [(UILabel *)v15 setNumberOfLines:v16];
    goto LABEL_15;
  }

LABEL_18:
}

- (void)layoutSubviews
{
  mEMORY[0x277D75128] = [MEMORY[0x277D75128] sharedApplication];
  userInterfaceLayoutDirection = [mEMORY[0x277D75128] userInterfaceLayoutDirection];

  [(SKUIGiftConfirmLabeledValue *)self bounds];
  v6 = v5;
  v8 = v7;
  v10 = v9;
  labelLabel = self->_labelLabel;
  v69 = v12;
  v13 = v12;
  v14 = v5;
  if (labelLabel)
  {
    [(UILabel *)labelLabel frame];
    v18 = v15;
    v19 = v16;
    v20 = v17;
    v21 = self->_labelLabel;
    if (userInterfaceLayoutDirection)
    {
      [SKUICGRectHelpers rect:v6 withFlippedOriginXRelativeTo:v15, v16, v17, v6, v69, v8, v10];
    }

    else
    {
      v22 = v6;
    }

    [(UILabel *)v21 setFrame:v22];
    v71.origin.x = v6;
    v71.origin.y = v18;
    v71.size.width = v19;
    v71.size.height = v20;
    v14 = CGRectGetMaxX(v71) + 5.0;
    v72.origin.x = v6;
    v72.origin.y = v18;
    v72.size.width = v19;
    v72.size.height = v20;
    v13 = CGRectGetMaxY(v72) + 3.0;
  }

  subtitleLabel = self->_subtitleLabel;
  if (subtitleLabel)
  {
    v68 = v13;
    v24 = v10;
    v25 = v8;
    [(UILabel *)subtitleLabel frame];
    v29 = v26;
    v30 = v27;
    v31 = v28;
    v32 = self->_subtitleLabel;
    v33 = v14;
    if (userInterfaceLayoutDirection)
    {
      [SKUICGRectHelpers rect:v14 withFlippedOriginXRelativeTo:v26, v27, v28, v6, v69, v25, v24];
      v14 = v34;
    }

    [(UILabel *)v32 setFrame:v14];
    v73.origin.x = v33;
    v73.origin.y = v29;
    v73.size.width = v30;
    v73.size.height = v31;
    v14 = CGRectGetMaxX(v73) + 5.0;
    v8 = v25;
    v10 = v24;
    v13 = v68;
  }

  valueLabel = self->_valueLabel;
  if (valueLabel)
  {
    [(UILabel *)valueLabel frame];
    v40 = v39;
    style = self->_style;
    if (style)
    {
      if (style == 1)
      {
        [(UILabel *)self->_valueLabel sizeThatFits:v8 - v6, v10 - v13];
        v47 = v48;
        v38 = v49;
        v40 = v13;
        v14 = v6;
      }

      else if (style == 2)
      {
        v42 = v10;
        v43 = v8;
        v44 = v8 + -5.0 - v14;
        [(UILabel *)self->_valueLabel sizeThatFits:v44, v42];
        v38 = v46;
        if (v45 >= v44)
        {
          v47 = v44;
        }

        else
        {
          v47 = v45;
        }

        v8 = v43;
        v10 = v42;
        v14 = v8 - v47;
      }

      else
      {
        v47 = v37;
        v14 = v36;
      }
    }

    else
    {
      v47 = v8 - v14;
      [(UILabel *)self->_valueLabel sizeThatFits:v8 - v14, v10];
      v38 = v50;
    }

    v51 = self->_valueLabel;
    if (userInterfaceLayoutDirection)
    {
      [SKUICGRectHelpers rect:v14 withFlippedOriginXRelativeTo:v40, v47, v38, v6, v69, v8, v10];
      v14 = v52;
      v40 = v53;
      v47 = v54;
    }

    [(UILabel *)v51 setFrame:v14, v40, v47, v38];
  }

  dashView = self->_dashView;
  if (dashView)
  {
    [(SKUIGiftDashView *)dashView frame];
    v56 = v10 + -1.0;
    if (userInterfaceLayoutDirection)
    {
      v57 = self->_valueLabel;
      if (v57)
      {
        [(UILabel *)v57 frame];
        v6 = CGRectGetMaxX(v74) + 2.0;
      }

      v58 = self->_subtitleLabel;
      if (v58 || (v58 = self->_labelLabel) != 0)
      {
        [(UILabel *)v58 frame];
        v8 = v75.origin.x + -2.0 - v6;
        v56 = CGRectGetMaxY(v75) + -1.0 + -3.0;
      }
    }

    else
    {
      v59 = self->_subtitleLabel;
      if (v59 || (v59 = self->_labelLabel) != 0)
      {
        [(UILabel *)v59 frame];
        v60 = v8;
        x = v76.origin.x;
        y = v76.origin.y;
        width = v76.size.width;
        height = v76.size.height;
        v6 = CGRectGetMaxX(v76) + 2.0;
        v77.origin.x = x;
        v8 = v60;
        v77.origin.y = y;
        v77.size.width = width;
        v77.size.height = height;
        v56 = CGRectGetMaxY(v77) + -1.0 + -3.0;
      }

      v65 = self->_valueLabel;
      if (v65)
      {
        [(UILabel *)v65 frame];
        v8 = v66 + -2.0 - v6;
      }
    }

    v67 = self->_dashView;

    [(SKUIGiftDashView *)v67 setFrame:v6, v56, v8, 1.0];
  }
}

- (CGSize)sizeThatFits:(CGSize)fits
{
  width = fits.width;
  labelLabel = self->_labelLabel;
  if (!labelLabel)
  {
    height = fits.height;
    goto LABEL_5;
  }

  [(UILabel *)labelLabel frame:fits.width];
  height = v7;
  if ((self->_style | 2) != 2)
  {
LABEL_5:
    v9 = width;
    goto LABEL_6;
  }

  v9 = width - (v6 + 5.0);
LABEL_6:
  valueLabel = self->_valueLabel;
  if (valueLabel)
  {
    [(UILabel *)valueLabel sizeThatFits:v9, 1.79769313e308];
    style = self->_style;
    switch(style)
    {
      case 2:
        goto LABEL_10;
      case 1:
        height = height + v11 + 3.0;
        break;
      case 0:
LABEL_10:
        if (height < v11)
        {
          height = v11;
        }

        break;
    }
  }

  v13 = width;
  v14 = height;
  result.height = v14;
  result.width = v13;
  return result;
}

- (void)initWithGiftConfirmLabelStyle:.cold.1()
{
  v2 = *MEMORY[0x277D85DE8];
  v0 = 136446210;
  v1 = "[SKUIGiftConfirmLabeledValue initWithGiftConfirmLabelStyle:]";
}

@end