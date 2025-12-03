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

  v13 = [self SKUITrending_searchButtonWithElement:0];
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

  buttonImage = [v4 buttonImage];

  if (buttonImage)
  {
    buttonImage2 = [v4 buttonImage];
    resourceName = [buttonImage2 resourceName];
    v16 = SKUIImageWithResourceName(resourceName);

    [self setImage:v16 forState:0];
  }

  buttonText = [v4 buttonText];
  string = [buttonText string];

  [self setTitle:string forState:0];
  buttonTitleStyle = [v4 buttonTitleStyle];
  v20 = buttonTitleStyle;
  if (buttonTitleStyle)
  {
    style = buttonTitleStyle;
  }

  else
  {
    style = [v4 style];
  }

  v22 = style;

  v23 = SKUIViewElementPlainColorWithStyle(v22, 0);
  [self setTintColor:v23];

  titleLabel = [self titleLabel];
  v25 = SKUIViewElementFontWithStyle(v22);
  maxTextLines = [v22 maxTextLines];
  if (v25)
  {
    [titleLabel setFont:v25];
  }

  else
  {
    sKUITrending_defaultButtonFont = [objc_opt_class() SKUITrending_defaultButtonFont];
    [titleLabel setFont:sKUITrending_defaultButtonFont];
  }

  if (maxTextLines == -1)
  {
    v28 = 1;
  }

  else
  {
    v28 = maxTextLines;
  }

  [titleLabel setNumberOfLines:v28];
  [titleLabel setTextAlignment:1];
  [titleLabel setLineBreakMode:4];
}

@end