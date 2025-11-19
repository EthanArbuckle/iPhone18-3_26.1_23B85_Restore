@interface SKUIJSAnalyzedImageColors
- (SKUIJSAnalyzedImageColors)initWithAppContext:(id)a3 analyzedImageColors:(id)a4;
@end

@implementation SKUIJSAnalyzedImageColors

- (SKUIJSAnalyzedImageColors)initWithAppContext:(id)a3 analyzedImageColors:(id)a4
{
  v6 = a3;
  v7 = a4;
  if (os_variant_has_internal_content() && _os_feature_enabled_impl() && os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_FAULT))
  {
    [SKUIJSAnalyzedImageColors initWithAppContext:analyzedImageColors:];
  }

  v22.receiver = self;
  v22.super_class = SKUIJSAnalyzedImageColors;
  v8 = [(IKJSObject *)&v22 initWithAppContext:v6];
  if (v8)
  {
    v9 = [SKUIJSColor alloc];
    v10 = [v7 backgroundColor];
    v11 = [(SKUIJSColor *)v9 initWithAppContext:v6 color:v10];
    backgroundColor = v8->_backgroundColor;
    v8->_backgroundColor = v11;

    v13 = [SKUIJSColor alloc];
    v14 = [v7 textPrimaryColor];
    v15 = [(SKUIJSColor *)v13 initWithAppContext:v6 color:v14];
    textPrimaryColor = v8->_textPrimaryColor;
    v8->_textPrimaryColor = v15;

    v17 = [SKUIJSColor alloc];
    v18 = [v7 textSecondaryColor];
    v19 = [(SKUIJSColor *)v17 initWithAppContext:v6 color:v18];
    textSecondaryColor = v8->_textSecondaryColor;
    v8->_textSecondaryColor = v19;

    v8->_isBackgroundLight = [v7 isBackgroundLight];
  }

  return v8;
}

- (void)initWithAppContext:analyzedImageColors:.cold.1()
{
  v2 = *MEMORY[0x277D85DE8];
  v0 = 136446210;
  v1 = "[SKUIJSAnalyzedImageColors initWithAppContext:analyzedImageColors:]";
}

@end