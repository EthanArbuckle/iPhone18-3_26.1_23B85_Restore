@interface SKUIImageDeckViewElement
- (SKUIImageDeckViewElement)initWithDOMElement:(id)a3 parent:(id)a4 elementFactory:(id)a5;
@end

@implementation SKUIImageDeckViewElement

- (SKUIImageDeckViewElement)initWithDOMElement:(id)a3 parent:(id)a4 elementFactory:(id)a5
{
  v8 = a3;
  v9 = a4;
  v10 = a5;
  if (os_variant_has_internal_content() && _os_feature_enabled_impl() && os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_FAULT))
  {
    [SKUIImageDeckViewElement initWithDOMElement:parent:elementFactory:];
  }

  v22.receiver = self;
  v22.super_class = SKUIImageDeckViewElement;
  v11 = [(SKUIViewElement *)&v22 initWithDOMElement:v8 parent:v9 elementFactory:v10];
  v12 = v11;
  if (v11)
  {
    v11->_initialDragLeft = 0.25;
    v11->_initialDragRight = 0.25;
    v11->_additionalDragLeft = 0.33;
    v11->_additionalDragRight = 0.33;
    v13 = [v8 getAttribute:@"initialDragLeft"];
    v14 = [v8 getAttribute:@"initialDragRight"];
    v15 = [v8 getAttribute:@"additionalDragLeft"];
    v16 = [v8 getAttribute:@"additionalDragRight"];
    if (v13 && [v13 length])
    {
      [v13 floatValue];
      v12->_initialDragLeft = v17;
    }

    if (v14 && [v14 length])
    {
      [v14 floatValue];
      v12->_initialDragRight = v18;
    }

    if (v15 && [v15 length])
    {
      [v15 floatValue];
      v12->_additionalDragLeft = v19;
    }

    if (v16 && [v16 length])
    {
      [v16 floatValue];
      v12->_additionalDragRight = v20;
    }
  }

  return v12;
}

- (void)initWithDOMElement:parent:elementFactory:.cold.1()
{
  v2 = *MEMORY[0x277D85DE8];
  v0 = 136446210;
  v1 = "[SKUIImageDeckViewElement initWithDOMElement:parent:elementFactory:]";
}

@end