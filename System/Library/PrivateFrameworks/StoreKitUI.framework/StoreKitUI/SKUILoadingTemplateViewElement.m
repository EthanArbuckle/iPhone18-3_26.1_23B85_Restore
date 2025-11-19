@interface SKUILoadingTemplateViewElement
- (SKUIActivityIndicatorViewElement)activityIndicator;
- (void)activityIndicator;
@end

@implementation SKUILoadingTemplateViewElement

- (SKUIActivityIndicatorViewElement)activityIndicator
{
  if (os_variant_has_internal_content() && _os_feature_enabled_impl() && os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_FAULT))
  {
    [SKUILoadingTemplateViewElement activityIndicator];
  }

  v3 = [(SKUIViewElement *)self firstChildForElementType:4];

  return v3;
}

- (void)activityIndicator
{
  v2 = *MEMORY[0x277D85DE8];
  v0 = 136446210;
  v1 = "[SKUILoadingTemplateViewElement activityIndicator]";
}

@end