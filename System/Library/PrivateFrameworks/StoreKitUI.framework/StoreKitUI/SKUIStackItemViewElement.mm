@interface SKUIStackItemViewElement
- (NSArray)imageElements;
- (SKUILabelViewElement)textElement;
- (int64_t)pageComponentType;
@end

@implementation SKUIStackItemViewElement

- (NSArray)imageElements
{
  if (os_variant_has_internal_content())
  {
    if (_os_feature_enabled_impl())
    {
      v3 = os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_FAULT);
      if (v3)
      {
        [(SKUIStackItemViewElement *)v3 imageElements:v4];
      }
    }
  }

  array = [MEMORY[0x277CBEB18] array];
  v14[0] = MEMORY[0x277D85DD0];
  v14[1] = 3221225472;
  v14[2] = __41__SKUIStackItemViewElement_imageElements__block_invoke;
  v14[3] = &unk_2781F9640;
  v12 = array;
  v15 = v12;
  [(SKUIViewElement *)self enumerateChildrenUsingBlock:v14];

  return v12;
}

void __41__SKUIStackItemViewElement_imageElements__block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  if ([v3 elementType] == 49)
  {
    [*(a1 + 32) addObject:v3];
  }
}

- (SKUILabelViewElement)textElement
{
  if (os_variant_has_internal_content())
  {
    if (_os_feature_enabled_impl())
    {
      v3 = os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_FAULT);
      if (v3)
      {
        [(SKUIStackItemViewElement *)v3 textElement:v4];
      }
    }
  }

  v11 = [(SKUIViewElement *)self firstChildForElementType:138];

  return v11;
}

- (int64_t)pageComponentType
{
  if (os_variant_has_internal_content())
  {
    if (_os_feature_enabled_impl())
    {
      v2 = os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_FAULT);
      if (v2)
      {
        [(SKUIStackItemViewElement *)v2 pageComponentType:v3];
      }
    }
  }

  return 24;
}

@end