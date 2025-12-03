@interface SKUIImageGridViewElement
- (CGSize)size;
- (SKUIImageGridViewElement)initWithDOMElement:(id)element parent:(id)parent elementFactory:(id)factory;
- (UIEdgeInsets)contentInset;
- (int64_t)columnCount;
@end

@implementation SKUIImageGridViewElement

- (SKUIImageGridViewElement)initWithDOMElement:(id)element parent:(id)parent elementFactory:(id)factory
{
  elementCopy = element;
  parentCopy = parent;
  factoryCopy = factory;
  if (os_variant_has_internal_content() && _os_feature_enabled_impl() && os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_FAULT))
  {
    [SKUIImageGridViewElement initWithDOMElement:parent:elementFactory:];
  }

  v17.receiver = self;
  v17.super_class = SKUIImageGridViewElement;
  v11 = [(SKUIViewElement *)&v17 initWithDOMElement:elementCopy parent:parentCopy elementFactory:factoryCopy];
  if (v11)
  {
    v12 = [elementCopy getAttribute:@"height"];
    v13 = [elementCopy getAttribute:@"width"];
    if ([v12 length] && objc_msgSend(v13, "length"))
    {
      [v12 doubleValue];
      v11->_size.height = v14;
      [v13 doubleValue];
      v11->_size.width = v15;
    }
  }

  return v11;
}

- (int64_t)columnCount
{
  style = [(SKUIImageGridViewElement *)self style];
  columnCount = [style columnCount];

  if (columnCount <= 1)
  {
    return 1;
  }

  else
  {
    return columnCount;
  }
}

- (UIEdgeInsets)contentInset
{
  style = [(SKUIImageGridViewElement *)self style];
  [style elementPadding];
  v4 = v3;
  v6 = v5;
  v8 = v7;
  v10 = v9;

  v11 = v4;
  v12 = v6;
  v13 = v8;
  v14 = v10;
  result.right = v14;
  result.bottom = v13;
  result.left = v12;
  result.top = v11;
  return result;
}

- (CGSize)size
{
  width = self->_size.width;
  height = self->_size.height;
  result.height = height;
  result.width = width;
  return result;
}

- (void)initWithDOMElement:parent:elementFactory:.cold.1()
{
  v2 = *MEMORY[0x277D85DE8];
  v0 = 136446210;
  v1 = "[SKUIImageGridViewElement initWithDOMElement:parent:elementFactory:]";
}

@end