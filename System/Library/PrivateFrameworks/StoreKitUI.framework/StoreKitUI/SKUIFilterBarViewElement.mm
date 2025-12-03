@interface SKUIFilterBarViewElement
- (SKUIDividerViewElement)bottomDivider;
- (id)childViewElementsForAlignment:(unint64_t)alignment;
- (int64_t)pageComponentType;
- (void)enumerateChildrenUsingBlock:(id)block;
@end

@implementation SKUIFilterBarViewElement

- (SKUIDividerViewElement)bottomDivider
{
  if (os_variant_has_internal_content())
  {
    if (_os_feature_enabled_impl())
    {
      v3 = os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_FAULT);
      if (v3)
      {
        [(SKUIFilterBarViewElement *)v3 bottomDivider:v4];
      }
    }
  }

  v15 = 0;
  v16 = &v15;
  v17 = 0x3032000000;
  v18 = __Block_byref_object_copy__38;
  v19 = __Block_byref_object_dispose__38;
  v20 = 0;
  v14[0] = MEMORY[0x277D85DD0];
  v14[1] = 3221225472;
  v14[2] = __41__SKUIFilterBarViewElement_bottomDivider__block_invoke;
  v14[3] = &unk_2781F8568;
  v14[4] = &v15;
  v13.receiver = self;
  v13.super_class = SKUIFilterBarViewElement;
  [(SKUIViewElement *)&v13 enumerateChildrenUsingBlock:v14];
  v11 = v16[5];
  _Block_object_dispose(&v15, 8);

  return v11;
}

void __41__SKUIFilterBarViewElement_bottomDivider__block_invoke(uint64_t a1, void *a2, _BYTE *a3)
{
  v6 = a2;
  if ([v6 elementType] == 32)
  {
    objc_storeStrong((*(*(a1 + 32) + 8) + 40), a2);
    *a3 = 1;
  }
}

- (id)childViewElementsForAlignment:(unint64_t)alignment
{
  v33 = *MEMORY[0x277D85DE8];
  if (os_variant_has_internal_content())
  {
    if (_os_feature_enabled_impl())
    {
      v5 = os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_FAULT);
      if (v5)
      {
        [(SKUIFilterBarViewElement *)v5 childViewElementsForAlignment:v6, v7, v8, v9, v10, v11, v12];
      }
    }
  }

  array = [MEMORY[0x277CBEB18] array];
  if (alignment - 1 <= 2)
  {
    [(SKUIViewElement *)self flattenedChildren];
    v30 = 0u;
    v31 = 0u;
    v28 = 0u;
    v14 = v29 = 0u;
    v15 = 0;
    v16 = [v14 countByEnumeratingWithState:&v28 objects:v32 count:16];
    if (v16)
    {
      v17 = *v29;
      do
      {
        for (i = 0; i != v16; ++i)
        {
          if (*v29 != v17)
          {
            objc_enumerationMutation(v14);
          }

          if ([*(*(&v28 + 1) + 8 * i) elementType] == 127)
          {
            ++v15;
          }
        }

        v16 = [v14 countByEnumeratingWithState:&v28 objects:v32 count:16];
      }

      while (v16);
    }

    v27[0] = 0;
    v27[1] = v27;
    v27[2] = 0x2020000000;
    v27[3] = 0;
    v19 = [v14 count];
    v21[0] = MEMORY[0x277D85DD0];
    v21[1] = 3221225472;
    v21[2] = __58__SKUIFilterBarViewElement_childViewElementsForAlignment___block_invoke;
    v21[3] = &unk_2781FCBD0;
    v23 = v27;
    v24 = v15;
    v25 = v19;
    alignmentCopy = alignment;
    v22 = array;
    [v14 enumerateObjectsUsingBlock:v21];

    _Block_object_dispose(v27, 8);
  }

  return array;
}

void __58__SKUIFilterBarViewElement_childViewElementsForAlignment___block_invoke(uint64_t a1, void *a2, uint64_t a3)
{
  v12 = a2;
  v5 = [v12 style];
  v6 = [v5 elementAlignment];

  if (v6)
  {
    goto LABEL_2;
  }

  if (*(a1 + 48) < 1)
  {
    if (*(a1 + 56) == 3)
    {
      v6 = qword_215F3F858[a3];
      goto LABEL_2;
    }

    v10 = [v12 elementType];
    v9 = *(*(a1 + 40) + 8);
    if (v10 == 109)
    {
      v6 = 2;
      *(v9 + 24) = 2;
      goto LABEL_2;
    }

    if (v10 == 69)
    {
      *(v9 + 24) = 2;
      v6 = 3;
      goto LABEL_2;
    }

LABEL_14:
    v6 = qword_215F3F858[*(v9 + 24)];
    goto LABEL_2;
  }

  if ([v12 elementType] != 127)
  {
    v9 = *(*(a1 + 40) + 8);
    goto LABEL_14;
  }

  v7 = *(*(a1 + 40) + 8);
  if (*(a1 + 48) == 1)
  {
    v6 = 0;
    v8 = 2;
  }

  else
  {
    v6 = 0;
    v11 = *(v7 + 24);
    if (v11 >= 1)
    {
      v11 = 1;
    }

    v8 = v11 + 1;
  }

  *(v7 + 24) = v8;
LABEL_2:
  if (v6 == *(a1 + 64))
  {
    [*(a1 + 32) addObject:v12];
  }
}

- (void)enumerateChildrenUsingBlock:(id)block
{
  blockCopy = block;
  if (os_variant_has_internal_content())
  {
    if (_os_feature_enabled_impl())
    {
      v5 = os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_FAULT);
      if (v5)
      {
        [(SKUIFilterBarViewElement *)v5 enumerateChildrenUsingBlock:v6, v7, v8, v9, v10, v11, v12];
      }
    }
  }

  v15[0] = MEMORY[0x277D85DD0];
  v15[1] = 3221225472;
  v15[2] = __56__SKUIFilterBarViewElement_enumerateChildrenUsingBlock___block_invoke;
  v15[3] = &unk_2781FA298;
  v16 = blockCopy;
  v14.receiver = self;
  v14.super_class = SKUIFilterBarViewElement;
  v13 = blockCopy;
  [(SKUIViewElement *)&v14 enumerateChildrenUsingBlock:v15];
}

void __56__SKUIFilterBarViewElement_enumerateChildrenUsingBlock___block_invoke(uint64_t a1, void *a2)
{
  v5 = a2;
  v3 = [v5 elementType];
  v4 = (v3 - 8) > 0x3D || ((1 << (v3 - 8)) & 0x2000060000000031) == 0;
  if (!v4 || (v3 - 106) <= 0x2E && ((1 << (v3 - 106)) & 0x400900200009) != 0)
  {
    (*(*(a1 + 32) + 16))();
  }
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
        [(SKUIFilterBarViewElement *)v2 pageComponentType:v3];
      }
    }
  }

  return 24;
}

@end