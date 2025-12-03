@interface SKUIJSAnalyzedImageColors
- (SKUIJSAnalyzedImageColors)initWithAppContext:(id)context analyzedImageColors:(id)colors;
@end

@implementation SKUIJSAnalyzedImageColors

- (SKUIJSAnalyzedImageColors)initWithAppContext:(id)context analyzedImageColors:(id)colors
{
  contextCopy = context;
  colorsCopy = colors;
  if (os_variant_has_internal_content() && _os_feature_enabled_impl() && os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_FAULT))
  {
    [SKUIJSAnalyzedImageColors initWithAppContext:analyzedImageColors:];
  }

  v22.receiver = self;
  v22.super_class = SKUIJSAnalyzedImageColors;
  v8 = [(IKJSObject *)&v22 initWithAppContext:contextCopy];
  if (v8)
  {
    v9 = [SKUIJSColor alloc];
    backgroundColor = [colorsCopy backgroundColor];
    v11 = [(SKUIJSColor *)v9 initWithAppContext:contextCopy color:backgroundColor];
    backgroundColor = v8->_backgroundColor;
    v8->_backgroundColor = v11;

    v13 = [SKUIJSColor alloc];
    textPrimaryColor = [colorsCopy textPrimaryColor];
    v15 = [(SKUIJSColor *)v13 initWithAppContext:contextCopy color:textPrimaryColor];
    textPrimaryColor = v8->_textPrimaryColor;
    v8->_textPrimaryColor = v15;

    v17 = [SKUIJSColor alloc];
    textSecondaryColor = [colorsCopy textSecondaryColor];
    v19 = [(SKUIJSColor *)v17 initWithAppContext:contextCopy color:textSecondaryColor];
    textSecondaryColor = v8->_textSecondaryColor;
    v8->_textSecondaryColor = v19;

    v8->_isBackgroundLight = [colorsCopy isBackgroundLight];
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