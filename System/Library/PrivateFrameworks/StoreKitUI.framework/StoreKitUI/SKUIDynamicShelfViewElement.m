@interface SKUIDynamicShelfViewElement
- (BOOL)isDynamicContainer;
- (SKUIViewElement)cellTemplateViewElement;
- (id)applyUpdatesWithElement:(id)a3;
- (void)setShelfItemViewElementValidator:(id)a3;
@end

@implementation SKUIDynamicShelfViewElement

- (SKUIViewElement)cellTemplateViewElement
{
  if (os_variant_has_internal_content())
  {
    if (_os_feature_enabled_impl())
    {
      v3 = os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_FAULT);
      if (v3)
      {
        [(SKUIDynamicShelfViewElement *)v3 cellTemplateViewElement:v4];
      }
    }
  }

  cellTemplateViewElement = self->_cellTemplateViewElement;
  if (!cellTemplateViewElement)
  {
    v13[0] = MEMORY[0x277D85DD0];
    v13[1] = 3221225472;
    v13[2] = __54__SKUIDynamicShelfViewElement_cellTemplateViewElement__block_invoke;
    v13[3] = &unk_2781F9640;
    v13[4] = self;
    [(SKUIShelfViewElement *)self enumerateChildrenUsingBlock:v13];
    cellTemplateViewElement = self->_cellTemplateViewElement;
  }

  return cellTemplateViewElement;
}

- (id)applyUpdatesWithElement:(id)a3
{
  v4 = a3;
  if (os_variant_has_internal_content())
  {
    if (_os_feature_enabled_impl())
    {
      v5 = os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_FAULT);
      if (v5)
      {
        [(SKUIDynamicShelfViewElement *)v5 applyUpdatesWithElement:v6, v7, v8, v9, v10, v11, v12];
      }
    }
  }

  v16.receiver = self;
  v16.super_class = SKUIDynamicShelfViewElement;
  v13 = [(SKUIShelfViewElement *)&v16 applyUpdatesWithElement:v4];

  if (v4 != self || [v13 updateType])
  {
    cellTemplateViewElement = self->_cellTemplateViewElement;
    self->_cellTemplateViewElement = 0;
  }

  return v13;
}

- (BOOL)isDynamicContainer
{
  if (os_variant_has_internal_content())
  {
    if (_os_feature_enabled_impl())
    {
      v2 = os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_FAULT);
      if (v2)
      {
        [(SKUIDynamicShelfViewElement *)v2 isDynamicContainer:v3];
      }
    }
  }

  return 1;
}

- (void)setShelfItemViewElementValidator:(id)a3
{
  v4 = a3;
  if (os_variant_has_internal_content())
  {
    if (_os_feature_enabled_impl())
    {
      v5 = os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_FAULT);
      if (v5)
      {
        [(SKUIDynamicShelfViewElement *)v5 setShelfItemViewElementValidator:v6, v7, v8, v9, v10, v11, v12];
      }
    }
  }

  v14.receiver = self;
  v14.super_class = SKUIDynamicShelfViewElement;
  [(SKUIShelfViewElement *)&v14 setShelfItemViewElementValidator:v4];
  cellTemplateViewElement = self->_cellTemplateViewElement;
  self->_cellTemplateViewElement = 0;
}

@end