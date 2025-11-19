@interface _SKUIDynamicGridTemplateDefinitionModeValueMap
- (id)templateDefinitionViewElementsForMode:(id)a3;
- (void)addTemplateDefinitionViewElement:(id)a3 forMode:(id)a4;
@end

@implementation _SKUIDynamicGridTemplateDefinitionModeValueMap

- (void)addTemplateDefinitionViewElement:(id)a3 forMode:(id)a4
{
  v14 = a3;
  v6 = a4;
  if (v14)
  {
    if ([v6 length])
    {
      modeToTemplateDefinitionViewElements = self->_modeToTemplateDefinitionViewElements;
      if (!modeToTemplateDefinitionViewElements)
      {
        v8 = [objc_alloc(MEMORY[0x277CBEB38]) initWithCapacity:1];
        v9 = self->_modeToTemplateDefinitionViewElements;
        self->_modeToTemplateDefinitionViewElements = v8;

        modeToTemplateDefinitionViewElements = self->_modeToTemplateDefinitionViewElements;
      }

      v10 = [(NSMutableDictionary *)modeToTemplateDefinitionViewElements objectForKey:v6];
      if (!v10)
      {
        v10 = [objc_alloc(MEMORY[0x277CBEB18]) initWithCapacity:1];
        [(NSMutableDictionary *)self->_modeToTemplateDefinitionViewElements setObject:v10 forKey:v6];
      }

      [v10 addObject:v14];
    }

    else
    {
      defaultTemplateDefinitionViewElements = self->_defaultTemplateDefinitionViewElements;
      if (!defaultTemplateDefinitionViewElements)
      {
        v12 = [objc_alloc(MEMORY[0x277CBEB18]) initWithCapacity:1];
        v13 = self->_defaultTemplateDefinitionViewElements;
        self->_defaultTemplateDefinitionViewElements = v12;

        defaultTemplateDefinitionViewElements = self->_defaultTemplateDefinitionViewElements;
      }

      [(NSMutableArray *)defaultTemplateDefinitionViewElements addObject:v14];
    }
  }
}

- (id)templateDefinitionViewElementsForMode:(id)a3
{
  v4 = a3;
  if ([v4 length])
  {
    v5 = [(NSMutableDictionary *)self->_modeToTemplateDefinitionViewElements objectForKey:v4];
  }

  else
  {
    v5 = 0;
  }

  if (![v5 count])
  {
    v6 = self->_defaultTemplateDefinitionViewElements;

    v5 = v6;
  }

  if (![v4 length] && !objc_msgSend(v5, "count"))
  {
    v7 = [(NSMutableDictionary *)self->_modeToTemplateDefinitionViewElements allValues];
    v8 = [v7 firstObject];

    v5 = v8;
  }

  return v5;
}

@end