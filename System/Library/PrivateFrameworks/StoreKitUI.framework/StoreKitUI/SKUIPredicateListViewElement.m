@interface SKUIPredicateListViewElement
- (NSArray)predicateViewElements;
- (NSPredicate)compoundEntityValuePredicate;
- (id)applyUpdatesWithElement:(id)a3;
- (void)_enumeratePredicateViewElementsUsingBlock:(id)a3;
@end

@implementation SKUIPredicateListViewElement

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
        [(SKUIPredicateListViewElement *)v5 applyUpdatesWithElement:v6, v7, v8, v9, v10, v11, v12];
      }
    }
  }

  v17.receiver = self;
  v17.super_class = SKUIPredicateListViewElement;
  v13 = [(SKUIViewElement *)&v17 applyUpdatesWithElement:v4];
  if (v13 == self && v4 != self && v4 != 0)
  {
    objc_storeStrong(&self->_compoundEntityValuePredicate, v4->_compoundEntityValuePredicate);
  }

  return v13;
}

- (NSArray)predicateViewElements
{
  if (os_variant_has_internal_content())
  {
    if (_os_feature_enabled_impl())
    {
      v3 = os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_FAULT);
      if (v3)
      {
        [(SKUIPredicateListViewElement *)v3 predicateViewElements:v4];
      }
    }
  }

  v14 = 0;
  v15 = &v14;
  v16 = 0x3032000000;
  v17 = __Block_byref_object_copy__15;
  v18 = __Block_byref_object_dispose__15;
  v19 = 0;
  v13[0] = MEMORY[0x277D85DD0];
  v13[1] = 3221225472;
  v13[2] = __53__SKUIPredicateListViewElement_predicateViewElements__block_invoke;
  v13[3] = &unk_2781F8568;
  v13[4] = &v14;
  [(SKUIViewElement *)self enumerateChildrenUsingBlock:v13];
  v11 = v15[5];
  _Block_object_dispose(&v14, 8);

  return v11;
}

void __53__SKUIPredicateListViewElement_predicateViewElements__block_invoke(uint64_t a1, void *a2)
{
  v7 = a2;
  if ([v7 elementType] == 88)
  {
    v3 = *(*(*(a1 + 32) + 8) + 40);
    if (!v3)
    {
      v4 = [objc_alloc(MEMORY[0x277CBEB18]) initWithCapacity:1];
      v5 = *(*(a1 + 32) + 8);
      v6 = *(v5 + 40);
      *(v5 + 40) = v4;

      v3 = *(*(*(a1 + 32) + 8) + 40);
    }

    [v3 addObject:v7];
  }
}

- (NSPredicate)compoundEntityValuePredicate
{
  if (os_variant_has_internal_content())
  {
    if (_os_feature_enabled_impl())
    {
      v3 = os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_FAULT);
      if (v3)
      {
        [(SKUIPredicateListViewElement *)v3 compoundEntityValuePredicate:v4];
      }
    }
  }

  compoundEntityValuePredicate = self->_compoundEntityValuePredicate;
  if (!compoundEntityValuePredicate)
  {
    v12 = [MEMORY[0x277CBEB18] array];
    v17[0] = MEMORY[0x277D85DD0];
    v17[1] = 3221225472;
    v17[2] = __60__SKUIPredicateListViewElement_compoundEntityValuePredicate__block_invoke;
    v17[3] = &unk_2781FAE68;
    v18 = v12;
    v13 = v12;
    [(SKUIPredicateListViewElement *)self _enumeratePredicateViewElementsUsingBlock:v17];
    v14 = [MEMORY[0x277CCA920] andPredicateWithSubpredicates:v13];
    v15 = self->_compoundEntityValuePredicate;
    self->_compoundEntityValuePredicate = v14;

    compoundEntityValuePredicate = self->_compoundEntityValuePredicate;
  }

  return compoundEntityValuePredicate;
}

void __60__SKUIPredicateListViewElement_compoundEntityValuePredicate__block_invoke(uint64_t a1, void *a2)
{
  v2 = *(a1 + 32);
  v3 = [a2 entityValuePredicate];
  [v2 addObject:v3];
}

- (void)_enumeratePredicateViewElementsUsingBlock:(id)a3
{
  v4 = a3;
  if (os_variant_has_internal_content())
  {
    if (_os_feature_enabled_impl())
    {
      v5 = os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_FAULT);
      if (v5)
      {
        [(SKUIPredicateListViewElement *)v5 _enumeratePredicateViewElementsUsingBlock:v6, v7, v8, v9, v10, v11, v12];
        if (!v4)
        {
          goto LABEL_6;
        }

        goto LABEL_5;
      }
    }
  }

  if (v4)
  {
LABEL_5:
    v13[0] = MEMORY[0x277D85DD0];
    v13[1] = 3221225472;
    v13[2] = __74__SKUIPredicateListViewElement__enumeratePredicateViewElementsUsingBlock___block_invoke;
    v13[3] = &unk_2781FA298;
    v14 = v4;
    [(SKUIViewElement *)self enumerateChildrenUsingBlock:v13];
  }

LABEL_6:
}

void __74__SKUIPredicateListViewElement__enumeratePredicateViewElementsUsingBlock___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  if ([v3 elementType] == 88)
  {
    (*(*(a1 + 32) + 16))();
  }
}

@end