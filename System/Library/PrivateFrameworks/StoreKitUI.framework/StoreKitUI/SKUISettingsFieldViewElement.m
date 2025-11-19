@interface SKUISettingsFieldViewElement
- (id)textInputViewElement;
- (void)textInputViewElement;
@end

@implementation SKUISettingsFieldViewElement

- (id)textInputViewElement
{
  if (os_variant_has_internal_content() && _os_feature_enabled_impl() && os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_FAULT))
  {
    [SKUISettingsFieldViewElement textInputViewElement];
  }

  v3 = [(SKUIViewElement *)self firstChildForElementType:140];
  if ([v3 isMemberOfClass:objc_opt_class()])
  {
    v4 = v3;
  }

  else
  {
    v4 = 0;
  }

  return v4;
}

- (void)textInputViewElement
{
  v2 = *MEMORY[0x277D85DE8];
  v0 = 136446210;
  v1 = "[SKUISettingsFieldViewElement textInputViewElement]";
}

@end