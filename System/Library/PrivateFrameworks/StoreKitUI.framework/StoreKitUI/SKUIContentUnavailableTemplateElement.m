@interface SKUIContentUnavailableTemplateElement
- (SKUIButtonViewElement)button;
- (SKUIImageViewElement)image;
- (SKUILabelViewElement)messageLabel;
- (SKUILabelViewElement)titleLabel;
- (int64_t)pageComponentType;
- (void)pageComponentType;
@end

@implementation SKUIContentUnavailableTemplateElement

- (SKUIButtonViewElement)button
{
  if (os_variant_has_internal_content())
  {
    if (_os_feature_enabled_impl())
    {
      v3 = os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEBUG);
      if (v3)
      {
        [(SKUIContentUnavailableTemplateElement *)v3 button:v4];
      }
    }
  }

  v11 = [(SKUIViewElement *)self firstChildForElementType:12];

  return v11;
}

- (SKUIImageViewElement)image
{
  if (os_variant_has_internal_content())
  {
    if (_os_feature_enabled_impl())
    {
      v3 = os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEBUG);
      if (v3)
      {
        [(SKUIContentUnavailableTemplateElement *)v3 image:v4];
      }
    }
  }

  v11 = [(SKUIViewElement *)self firstChildForElementType:49];

  return v11;
}

- (SKUILabelViewElement)messageLabel
{
  if (os_variant_has_internal_content())
  {
    if (_os_feature_enabled_impl())
    {
      v3 = os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEBUG);
      if (v3)
      {
        [(SKUIContentUnavailableTemplateElement *)v3 messageLabel:v4];
      }
    }
  }

  v14 = 0;
  v15 = &v14;
  v16 = 0x3032000000;
  v17 = __Block_byref_object_copy__27;
  v18 = __Block_byref_object_dispose__27;
  v19 = 0;
  v13[0] = MEMORY[0x277D85DD0];
  v13[1] = 3221225472;
  v13[2] = __53__SKUIContentUnavailableTemplateElement_messageLabel__block_invoke;
  v13[3] = &unk_2781F8568;
  v13[4] = &v14;
  [(SKUIViewElement *)self enumerateChildrenUsingBlock:v13];
  v11 = v15[5];
  _Block_object_dispose(&v14, 8);

  return v11;
}

void __53__SKUIContentUnavailableTemplateElement_messageLabel__block_invoke(uint64_t a1, void *a2, _BYTE *a3)
{
  v6 = a2;
  if ([v6 elementType] == 138 && objc_msgSend(v6, "labelViewStyle") != 5)
  {
    objc_storeStrong((*(*(a1 + 32) + 8) + 40), a2);
    *a3 = 1;
  }
}

- (SKUILabelViewElement)titleLabel
{
  if (os_variant_has_internal_content())
  {
    if (_os_feature_enabled_impl())
    {
      v3 = os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEBUG);
      if (v3)
      {
        [(SKUIContentUnavailableTemplateElement *)v3 titleLabel:v4];
      }
    }
  }

  v14 = 0;
  v15 = &v14;
  v16 = 0x3032000000;
  v17 = __Block_byref_object_copy__27;
  v18 = __Block_byref_object_dispose__27;
  v19 = 0;
  v13[0] = MEMORY[0x277D85DD0];
  v13[1] = 3221225472;
  v13[2] = __51__SKUIContentUnavailableTemplateElement_titleLabel__block_invoke;
  v13[3] = &unk_2781F8568;
  v13[4] = &v14;
  [(SKUIViewElement *)self enumerateChildrenUsingBlock:v13];
  v11 = v15[5];
  _Block_object_dispose(&v14, 8);

  return v11;
}

void __51__SKUIContentUnavailableTemplateElement_titleLabel__block_invoke(uint64_t a1, void *a2, _BYTE *a3)
{
  v6 = a2;
  if ([v6 elementType] == 138 && objc_msgSend(v6, "labelViewStyle") == 5)
  {
    objc_storeStrong((*(*(a1 + 32) + 8) + 40), a2);
    *a3 = 1;
  }
}

- (int64_t)pageComponentType
{
  if (os_variant_has_internal_content() && _os_feature_enabled_impl() && os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_FAULT))
  {
    [SKUIContentUnavailableTemplateElement pageComponentType];
  }

  return 24;
}

- (void)pageComponentType
{
  v2 = *MEMORY[0x277D85DE8];
  v0 = 136446210;
  v1 = "[SKUIContentUnavailableTemplateElement pageComponentType]";
}

@end