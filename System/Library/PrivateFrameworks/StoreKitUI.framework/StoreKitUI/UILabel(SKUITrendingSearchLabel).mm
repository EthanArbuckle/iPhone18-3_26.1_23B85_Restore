@interface UILabel(SKUITrendingSearchLabel)
+ (id)SKUITrending_defaultLabelWithText:()SKUITrendingSearchLabel;
+ (id)SKUITrending_defaultTitleColor;
+ (id)SKUITrending_defaultTitleFont;
+ (id)SKUITrending_titleLabelWithElement:()SKUITrendingSearchLabel;
@end

@implementation UILabel(SKUITrendingSearchLabel)

+ (id)SKUITrending_defaultTitleColor
{
  if (os_variant_has_internal_content())
  {
    if (_os_feature_enabled_impl())
    {
      v0 = os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_FAULT);
      if (v0)
      {
        [(UILabel(SKUITrendingSearchLabel) *)v0 SKUITrending_defaultTitleColor:v1];
      }
    }
  }

  _labelColor = [MEMORY[0x277D75348] _labelColor];

  return _labelColor;
}

+ (id)SKUITrending_defaultTitleFont
{
  if (os_variant_has_internal_content())
  {
    if (_os_feature_enabled_impl())
    {
      v0 = os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_FAULT);
      if (v0)
      {
        [(UILabel(SKUITrendingSearchLabel) *)v0 SKUITrending_defaultTitleFont:v1];
      }
    }
  }

  v8 = [MEMORY[0x277D74300] systemFontOfSize:22.0 weight:*MEMORY[0x277D74408]];

  return v8;
}

+ (id)SKUITrending_titleLabelWithElement:()SKUITrendingSearchLabel
{
  v4 = a3;
  if (os_variant_has_internal_content())
  {
    if (_os_feature_enabled_impl())
    {
      v5 = os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_FAULT);
      if (v5)
      {
        [(UILabel(SKUITrendingSearchLabel) *)v5 SKUITrending_titleLabelWithElement:v6, v7, v8, v9, v10, v11, v12];
        if (v4)
        {
          goto LABEL_5;
        }

LABEL_11:
        v13 = 0;
        goto LABEL_12;
      }
    }
  }

  if (!v4)
  {
    goto LABEL_11;
  }

LABEL_5:
  v13 = objc_alloc_init(MEMORY[0x277D756B8]);
  [v13 setNumberOfLines:{objc_msgSend(v4, "numberOfLines")}];
  [v13 setTextAlignment:1];
  style = [v4 style];
  sKUITrending_defaultTitleFont = SKUIViewElementFontWithStyle(style);
  if (!sKUITrending_defaultTitleFont)
  {
    sKUITrending_defaultTitleFont = [self SKUITrending_defaultTitleFont];
  }

  sKUITrending_defaultTitleColor = SKUIViewElementPlainColorWithStyle(style, 0);
  if (!sKUITrending_defaultTitleColor)
  {
    sKUITrending_defaultTitleColor = [self SKUITrending_defaultTitleColor];
  }

  text = [v4 text];
  v18 = [text attributedStringWithDefaultFont:sKUITrending_defaultTitleFont foregroundColor:sKUITrending_defaultTitleColor style:style];

  [v13 setAttributedText:v18];
LABEL_12:

  return v13;
}

+ (id)SKUITrending_defaultLabelWithText:()SKUITrendingSearchLabel
{
  v4 = a3;
  if (os_variant_has_internal_content() && _os_feature_enabled_impl() && (v5 = os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_FAULT)))
  {
    [(UILabel(SKUITrendingSearchLabel) *)v5 SKUITrending_defaultLabelWithText:v6, v7, v8, v9, v10, v11, v12];
    if (!v4)
    {
      goto LABEL_8;
    }
  }

  else if (!v4)
  {
    goto LABEL_8;
  }

  if ([v4 length])
  {
    v13 = objc_alloc_init(MEMORY[0x277D756B8]);
    sKUITrending_defaultTitleFont = [self SKUITrending_defaultTitleFont];
    [v13 setFont:sKUITrending_defaultTitleFont];

    [v13 setText:v4];
    [v13 setTextAlignment:1];
    sKUITrending_defaultTitleColor = [self SKUITrending_defaultTitleColor];
    [v13 setTextColor:sKUITrending_defaultTitleColor];

    goto LABEL_9;
  }

LABEL_8:
  v13 = 0;
LABEL_9:

  return v13;
}

@end