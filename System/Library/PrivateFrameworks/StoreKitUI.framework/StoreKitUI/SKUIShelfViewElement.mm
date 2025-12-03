@interface SKUIShelfViewElement
- (SKUIShelfViewElement)initWithDOMElement:(id)element parent:(id)parent elementFactory:(id)factory;
- (id)applyUpdatesWithElement:(id)element;
- (void)enumerateChildrenUsingBlock:(id)block;
@end

@implementation SKUIShelfViewElement

- (SKUIShelfViewElement)initWithDOMElement:(id)element parent:(id)parent elementFactory:(id)factory
{
  elementCopy = element;
  parentCopy = parent;
  factoryCopy = factory;
  if (os_variant_has_internal_content() && _os_feature_enabled_impl() && os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEBUG))
  {
    [SKUIShelfViewElement initWithDOMElement:parent:elementFactory:];
  }

  v11 = objc_opt_class();
  if (v11 == objc_opt_class())
  {
    v14 = [elementCopy getAttribute:@"entityProviderID"];
    v15 = [v14 length];

    if (v15)
    {
      v12 = [(SKUIShelfViewElement *)[SKUIDynamicShelfViewElement alloc] initWithDOMElement:elementCopy parent:parentCopy elementFactory:factoryCopy];
LABEL_16:

      goto LABEL_17;
    }
  }

  v20.receiver = self;
  v20.super_class = SKUIShelfViewElement;
  v12 = [(SKUIViewElement *)&v20 initWithDOMElement:elementCopy parent:parentCopy elementFactory:factoryCopy];
  if (v12)
  {
    self = [elementCopy getAttribute:@"rowCount"];
    if ([(SKUIShelfViewElement *)self length])
    {
      numberOfRows = [(SKUIShelfViewElement *)self integerValue];
      v12->super._numberOfRows = numberOfRows;
    }

    else
    {
      numberOfRows = v12->super._numberOfRows;
    }

    if (numberOfRows <= 1)
    {
      v16 = 1;
    }

    else
    {
      v16 = numberOfRows;
    }

    v12->super._numberOfRows = v16;
    v17 = [elementCopy getAttribute:@"slideshowTitle"];
    slideshowTitle = v12->super._slideshowTitle;
    v12->super._slideshowTitle = v17;

    goto LABEL_16;
  }

LABEL_17:

  return &v12->super;
}

- (id)applyUpdatesWithElement:(id)element
{
  elementCopy = element;
  v10.receiver = self;
  v10.super_class = SKUIShelfViewElement;
  v5 = [(SKUIViewElement *)&v10 applyUpdatesWithElement:elementCopy];
  v6 = v5;
  if (elementCopy != self || [v5 updateType])
  {
    self->_numberOfRows = [(SKUIShelfViewElement *)elementCopy numberOfRows];
    slideshowTitle = [(SKUIShelfViewElement *)elementCopy slideshowTitle];
    slideshowTitle = self->_slideshowTitle;
    self->_slideshowTitle = slideshowTitle;
  }

  return v6;
}

- (void)enumerateChildrenUsingBlock:(id)block
{
  blockCopy = block;
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = __52__SKUIShelfViewElement_enumerateChildrenUsingBlock___block_invoke;
  v7[3] = &unk_2781FFE80;
  v7[4] = self;
  v8 = blockCopy;
  v6.receiver = self;
  v6.super_class = SKUIShelfViewElement;
  v5 = blockCopy;
  [(SKUIViewElement *)&v6 enumerateChildrenUsingBlock:v7];
}

void __52__SKUIShelfViewElement_enumerateChildrenUsingBlock___block_invoke(uint64_t a1, void *a2)
{
  v6 = a2;
  v3 = [v6 elementType];
  v4 = (v3 - 14) > 0x34 || ((1 << (v3 - 14)) & 0x10000800004001) == 0;
  if (!v4 || v3 == 152)
  {
    v5 = *(*(a1 + 32) + 296);
    if (!v5 || (*(v5 + 16))(v5, v6))
    {
      (*(*(a1 + 40) + 16))();
    }
  }
}

- (void)initWithDOMElement:parent:elementFactory:.cold.1()
{
  v2 = *MEMORY[0x277D85DE8];
  v0 = 136446210;
  v1 = "[SKUIShelfViewElement initWithDOMElement:parent:elementFactory:]";
}

@end