@interface SKUIDynamicGridViewElement
- (BOOL)allowsMultipleSelectionDuringEditing;
- (BOOL)hasSectionHeaders;
- (BOOL)isMalformed;
- (SKUIDynamicGridViewElement)initWithDOMElement:(id)a3 parent:(id)a4 elementFactory:(id)a5;
- (id)_templateDefinitionTypeToModeValueMap;
- (id)applyUpdatesWithElement:(id)a3;
- (id)bestTemplateDefinitionViewElementFromTemplateDefinitionViewElements:(id)a3 entityValueProvider:(id)a4;
- (id)templateDefinitionViewElementsForType:(id)a3 mode:(id)a4;
- (void)_unfilteredEnumerateChildrenUsingBlock:(id)a3;
@end

@implementation SKUIDynamicGridViewElement

- (SKUIDynamicGridViewElement)initWithDOMElement:(id)a3 parent:(id)a4 elementFactory:(id)a5
{
  v8 = a3;
  v9 = a4;
  v10 = a5;
  if (os_variant_has_internal_content() && _os_feature_enabled_impl() && os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_FAULT))
  {
    [SKUIDynamicGridViewElement initWithDOMElement:parent:elementFactory:];
  }

  v15.receiver = self;
  v15.super_class = SKUIDynamicGridViewElement;
  v11 = [(SKUIGridViewElement *)&v15 initWithDOMElement:v8 parent:v9 elementFactory:v10];
  if (v11)
  {
    v12 = [v8 getAttribute:@"minimumEntityCountForSections"];
    v13 = v12;
    if (v12)
    {
      v11->_minimumEntityCountForSections = [v12 integerValue];
    }
  }

  return v11;
}

- (id)applyUpdatesWithElement:(id)a3
{
  v4 = a3;
  v9.receiver = self;
  v9.super_class = SKUIDynamicGridViewElement;
  v5 = [(SKUIGridViewElement *)&v9 applyUpdatesWithElement:v4];
  v6 = v5;
  if (v4 != self || [v5 updateType])
  {
    self->_hasValidTemplateDefinitionMap = 0;
    templateDefinitionTypeToModeValueMap = self->_templateDefinitionTypeToModeValueMap;
    self->_templateDefinitionTypeToModeValueMap = 0;

    self->_minimumEntityCountForSections = [(SKUIDynamicGridViewElement *)v4 minimumEntityCountForSections];
  }

  return v6;
}

- (BOOL)allowsMultipleSelectionDuringEditing
{
  v18 = *MEMORY[0x277D85DE8];
  v3 = [(SKUIDynamicGridViewElement *)self templateDefinitionViewElementsForType:0x282802788 mode:0x282802768];
  v13 = 0u;
  v14 = 0u;
  v4 = [v3 count] != 0;
  v15 = 0u;
  v16 = 0u;
  v5 = v3;
  v6 = [v5 countByEnumeratingWithState:&v13 objects:v17 count:16];
  if (v6)
  {
    v7 = v6;
    v8 = *v14;
    while (2)
    {
      for (i = 0; i != v7; ++i)
      {
        if (*v14 != v8)
        {
          objc_enumerationMutation(v5);
        }

        v10 = [*(*(&v13 + 1) + 8 * i) contentViewElement];
        v11 = [(SKUIGridViewElement *)self _countOfInputCheckboxesWithBaseElement:v10 limit:1];

        if (!v11)
        {
          v4 = 0;
          goto LABEL_11;
        }
      }

      v7 = [v5 countByEnumeratingWithState:&v13 objects:v17 count:16];
      if (v7)
      {
        continue;
      }

      break;
    }
  }

LABEL_11:

  return v4;
}

- (BOOL)hasSectionHeaders
{
  v2 = [(SKUIDynamicGridViewElement *)self templateDefinitionViewElementsForType:0x2828027A8 mode:0];
  v3 = [v2 count] != 0;

  return v3;
}

- (BOOL)isMalformed
{
  v2 = [(SKUIDynamicGridViewElement *)self templateDefinitionViewElementsForType:0x282802788 mode:0];
  v3 = [v2 count] == 0;

  return v3;
}

- (id)bestTemplateDefinitionViewElementFromTemplateDefinitionViewElements:(id)a3 entityValueProvider:(id)a4
{
  v24 = *MEMORY[0x277D85DE8];
  v5 = a3;
  v6 = a4;
  v19 = 0u;
  v20 = 0u;
  v21 = 0u;
  v22 = 0u;
  v7 = v5;
  v8 = [v7 countByEnumeratingWithState:&v19 objects:v23 count:16];
  if (v8)
  {
    v9 = v8;
    v10 = *v20;
    while (2)
    {
      for (i = 0; i != v9; ++i)
      {
        if (*v20 != v10)
        {
          objc_enumerationMutation(v7);
        }

        v12 = *(*(&v19 + 1) + 8 * i);
        v13 = [v12 predicateListViewElement];
        v14 = [v13 compoundEntityValuePredicate];
        v15 = v14;
        if (v13)
        {
          v16 = v14 == 0;
        }

        else
        {
          v16 = 1;
        }

        if (v16 || [v14 evaluateWithObject:v6])
        {
          v17 = v12;

          goto LABEL_16;
        }
      }

      v9 = [v7 countByEnumeratingWithState:&v19 objects:v23 count:16];
      v17 = 0;
      if (v9)
      {
        continue;
      }

      break;
    }
  }

  else
  {
    v17 = 0;
  }

LABEL_16:

  return v17;
}

- (id)templateDefinitionViewElementsForType:(id)a3 mode:(id)a4
{
  v6 = [(SKUIDynamicGridViewElement *)self _templateDefinitionTypeToModeValueMap];
  if ([a3 length])
  {
    v7 = [v6 objectForKey:a3];
  }

  else
  {
    v7 = 0;
  }

  if (![a3 length] && !v7)
  {
    v8 = [v6 allValues];
    v7 = [v8 firstObject];
  }

  return [v7 templateDefinitionViewElementsForMode:a4];
}

- (id)_templateDefinitionTypeToModeValueMap
{
  if (!self->_hasValidTemplateDefinitionMap)
  {
    self->_hasValidTemplateDefinitionMap = 1;
    v5[0] = MEMORY[0x277D85DD0];
    v5[1] = 3221225472;
    v5[2] = __67__SKUIDynamicGridViewElement__templateDefinitionTypeToModeValueMap__block_invoke;
    v5[3] = &unk_2781F9640;
    v5[4] = self;
    [(SKUIDynamicGridViewElement *)self _unfilteredEnumerateChildrenUsingBlock:v5];
  }

  templateDefinitionTypeToModeValueMap = self->_templateDefinitionTypeToModeValueMap;

  return templateDefinitionTypeToModeValueMap;
}

void __67__SKUIDynamicGridViewElement__templateDefinitionTypeToModeValueMap__block_invoke(uint64_t a1, void *a2)
{
  v13 = a2;
  v3 = [v13 elementType] == 136;
  v4 = v13;
  if (v3)
  {
    v5 = v13;
    v6 = [v5 definitionType];
    if ([v6 length])
    {
      v7 = *(*(a1 + 32) + 304);
      if (!v7)
      {
        v8 = [objc_alloc(MEMORY[0x277CBEB38]) initWithCapacity:1];
        v9 = *(a1 + 32);
        v10 = *(v9 + 304);
        *(v9 + 304) = v8;

        v7 = *(*(a1 + 32) + 304);
      }

      v11 = [v7 objectForKey:v6];
      if (!v11)
      {
        v11 = objc_alloc_init(_SKUIDynamicGridTemplateDefinitionModeValueMap);
        [*(*(a1 + 32) + 304) setObject:v11 forKey:v6];
      }

      v12 = [v5 definitionMode];
      [(_SKUIDynamicGridTemplateDefinitionModeValueMap *)v11 addTemplateDefinitionViewElement:v5 forMode:v12];
    }

    v4 = v13;
  }
}

- (void)_unfilteredEnumerateChildrenUsingBlock:(id)a3
{
  v7 = a3;
  v4 = objc_opt_class();
  InstanceMethod = class_getInstanceMethod(v4, sel_enumerateChildrenUsingBlock_);
  Implementation = method_getImplementation(InstanceMethod);
  if (Implementation)
  {
    (Implementation)(self, sel_enumerateChildrenUsingBlock_, v7);
  }
}

- (void)initWithDOMElement:parent:elementFactory:.cold.1()
{
  v2 = *MEMORY[0x277D85DE8];
  v0 = 136446210;
  v1 = "[SKUIDynamicGridViewElement initWithDOMElement:parent:elementFactory:]";
}

@end