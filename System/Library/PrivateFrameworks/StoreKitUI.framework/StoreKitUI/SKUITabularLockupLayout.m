@interface SKUITabularLockupLayout
+ (id)fontForLabelViewElement:(id)a3 context:(id)a4;
- (SKUITabularLockupLayout)initWithLockup:(id)a3 context:(id)a4;
- (void)sizeColumnsToFitWidth:(double)a3 context:(id)a4;
@end

@implementation SKUITabularLockupLayout

- (SKUITabularLockupLayout)initWithLockup:(id)a3 context:(id)a4
{
  v5 = a3;
  if (os_variant_has_internal_content())
  {
    if (_os_feature_enabled_impl())
    {
      v6 = os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_FAULT);
      if (v6)
      {
        [(SKUITabularLockupLayout *)v6 initWithLockup:v7 context:v8, v9, v10, v11, v12, v13];
      }
    }
  }

  v23.receiver = self;
  v23.super_class = SKUITabularLockupLayout;
  v14 = [(SKUITabularLockupLayout *)&v23 init];
  if (v14)
  {
    v15 = [[SKUITabularLockupColumn alloc] initWithColumnIdentifier:0];
    v16 = [[SKUITabularLockupColumn alloc] initWithColumnIdentifier:1];
    v17 = [[SKUITabularLockupColumn alloc] initWithColumnIdentifier:2];
    v18 = [MEMORY[0x277CBEA60] arrayWithObjects:{v15, v16, v17, 0}];
    columns = v14->_columns;
    v14->_columns = v18;

    v21[0] = MEMORY[0x277D85DD0];
    v21[1] = 3221225472;
    v21[2] = __50__SKUITabularLockupLayout_initWithLockup_context___block_invoke;
    v21[3] = &unk_2781F9640;
    v22 = v14;
    [v5 enumerateChildrenUsingBlock:v21];
  }

  return v14;
}

void __50__SKUITabularLockupLayout_initWithLockup_context___block_invoke(uint64_t a1, void *a2)
{
  v7 = a2;
  v3 = [v7 style];
  v4 = SKUIViewElementAlignmentForStyle(v3);
  if ([v7 elementType] == 138)
  {
    if (v4 == 3)
    {
      v5 = 2;
    }

    else
    {
      v5 = v4 == 2;
    }

    v6 = [*(*(a1 + 32) + 8) objectAtIndex:v5];
    [v6 _addChildViewElement:v7];
  }
}

+ (id)fontForLabelViewElement:(id)a3 context:(id)a4
{
  v5 = a3;
  v6 = a4;
  if (os_variant_has_internal_content())
  {
    if (_os_feature_enabled_impl())
    {
      v7 = os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_FAULT);
      if (v7)
      {
        [(SKUITabularLockupLayout *)v7 fontForLabelViewElement:v8 context:v9, v10, v11, v12, v13, v14];
      }
    }
  }

  v15 = [v5 style];
  v16 = SKUIViewElementFontWithStyle(v15);

  if (!v16)
  {
    v17 = [v5 labelViewStyle];
    if (v17 > 5)
    {
      v16 = 0;
    }

    else
    {
      if (((1 << v17) & 0x1B) != 0)
      {
        if ([v6 containerViewElementType] == 118)
        {
          v18 = 8;
        }

        else
        {
          v18 = 7;
        }
      }

      else if ([v6 containerViewElementType] == 118)
      {
        v18 = 6;
      }

      else
      {
        v18 = 19;
      }

      v16 = SKUIFontLimitedPreferredFontForTextStyle(v18, 5);
    }
  }

  return v16;
}

- (void)sizeColumnsToFitWidth:(double)a3 context:(id)a4
{
  v20 = *MEMORY[0x277D85DE8];
  v6 = a4;
  v15 = 0u;
  v16 = 0u;
  v17 = 0u;
  v18 = 0u;
  v7 = self->_columns;
  v8 = [(NSArray *)v7 countByEnumeratingWithState:&v15 objects:v19 count:16];
  if (v8)
  {
    v9 = v8;
    v10 = *v16;
    do
    {
      for (i = 0; i != v9; ++i)
      {
        if (*v16 != v10)
        {
          objc_enumerationMutation(v7);
        }

        v12 = *(*(&v15 + 1) + 8 * i);
        v13 = [v12 childViewElements];
        v14 = [v13 firstObject];

        [v6 sizeForViewElement:v14 width:a3];
        [v12 setSize:?];
      }

      v9 = [(NSArray *)v7 countByEnumeratingWithState:&v15 objects:v19 count:16];
    }

    while (v9);
  }
}

@end