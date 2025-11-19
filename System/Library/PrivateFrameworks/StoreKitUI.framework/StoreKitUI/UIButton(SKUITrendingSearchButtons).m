@interface UIButton(SKUITrendingSearchButtons)
+ (id)SKUITrending_defaultButtonFont;
+ (id)SKUITrending_searchButtonWithElement:()SKUITrendingSearchButtons;
+ (id)SKUITrending_searchButtonWithTitle:()SKUITrendingSearchButtons;
- (void)SKUITrending_applyConfigurationFromElement:()SKUITrendingSearchButtons;
@end

@implementation UIButton(SKUITrendingSearchButtons)

+ (id)SKUITrending_defaultButtonFont
{
  if (os_variant_has_internal_content())
  {
    if (_os_feature_enabled_impl())
    {
      v0 = os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_FAULT);
      if (v0)
      {
        [(UIButton(SKUITrendingSearchButtons) *)v0 SKUITrending_defaultButtonFont:v1];
      }
    }
  }

  v8 = [MEMORY[0x277D74300] systemFontOfSize:17.0];

  return v8;
}

+ (id)SKUITrending_searchButtonWithElement:()SKUITrendingSearchButtons
{
  v3 = a3;
  if (os_variant_has_internal_content())
  {
    if (_os_feature_enabled_impl())
    {
      v4 = os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_FAULT);
      if (v4)
      {
        [(UIButton(SKUITrendingSearchButtons) *)v4 SKUITrending_searchButtonWithElement:v5, v6, v7, v8, v9, v10, v11];
      }
    }
  }

  v12 = [MEMORY[0x277D75220] buttonWithType:1];
  [v12 SKUITrending_applyConfigurationFromElement:v3];

  return v12;
}

+ (id)SKUITrending_searchButtonWithTitle:()SKUITrendingSearchButtons
{
  v4 = a3;
  if (os_variant_has_internal_content())
  {
    if (_os_feature_enabled_impl())
    {
      v5 = os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_FAULT);
      if (v5)
      {
        [(UIButton(SKUITrendingSearchButtons) *)v5 SKUITrending_searchButtonWithTitle:v6, v7, v8, v9, v10, v11, v12];
      }
    }
  }

  v13 = [a1 SKUITrending_searchButtonWithElement:0];
  [v13 setTitle:v4 forState:0];

  return v13;
}

- (void)SKUITrending_applyConfigurationFromElement:()SKUITrendingSearchButtons
{
  v4 = a3;
  if (os_variant_has_internal_content())
  {
    if (_os_feature_enabled_impl())
    {
      v5 = os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_FAULT);
      if (v5)
      {
        [(UIButton(SKUITrendingSearchButtons) *)v5 SKUITrending_applyConfigurationFromElement:v6, v7, v8, v9, v10, v11, v12];
      }
    }
  }

  v13 = [v4 buttonImage];

  if (v13)
  {
    v14 = [v4 buttonImage];
    v15 = [v14 resourceName];
    v16 = SKUIImageWithResourceName(v15);

    [a1 setImage:v16 forState:0];
  }

  v17 = [v4 buttonText];
  v18 = [v17 string];

  [a1 setTitle:v18 forState:0];
  v19 = [v4 buttonTitleStyle];
  v20 = v19;
  if (v19)
  {
    v21 = v19;
  }

  else
  {
    v21 = [v4 style];
  }

  v22 = v21;

  v23 = SKUIViewElementPlainColorWithStyle(v22, 0);
  [a1 setTintColor:v23];

  v24 = [a1 titleLabel];
  v25 = SKUIViewElementFontWithStyle(v22);
  v26 = [v22 maxTextLines];
  if (v25)
  {
    [v24 setFont:v25];
  }

  else
  {
    v27 = [objc_opt_class() SKUITrending_defaultButtonFont];
    [v24 setFont:v27];
  }

  if (v26 == -1)
  {
    v28 = 1;
  }

  else
  {
    v28 = v26;
  }

  [v24 setNumberOfLines:v28];
  [v24 setTextAlignment:1];
  [v24 setLineBreakMode:4];
}

@end