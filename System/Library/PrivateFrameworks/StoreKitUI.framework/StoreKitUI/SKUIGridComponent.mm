@interface SKUIGridComponent
- (SKUIEditorialStyle)editorialStyle;
- (SKUIGridComponent)initWithBrickItems:(id)a3;
- (SKUIGridComponent)initWithCustomPageContext:(id)a3;
- (SKUIGridComponent)initWithFeaturedContentContext:(id)a3 kind:(int64_t)a4;
- (SKUIGridComponent)initWithGridItems:(id)a3;
- (SKUIGridComponent)initWithLockups:(id)a3;
- (SKUIGridComponent)initWithRoomContext:(id)a3 gridType:(int64_t)a4;
- (SKUIGridComponent)initWithViewElement:(id)a3;
- (id)_newLockupComponentWithItem:(id)a3 defaultStyle:(SKUILockupStyle *)a4;
- (id)_updateWithInvalidItemIdentifiers:(id)a3;
- (id)_updateWithMissingItems:(id)a3;
- (void)_reloadMissingItemCount;
- (void)_setChildrenWithFeaturedContextContext:(id)a3;
- (void)enumerateMissingItemIdentifiersFromIndex:(int64_t)a3 usingBlock:(id)a4;
@end

@implementation SKUIGridComponent

- (SKUIGridComponent)initWithBrickItems:(id)a3
{
  v4 = a3;
  if (os_variant_has_internal_content())
  {
    if (_os_feature_enabled_impl())
    {
      v5 = os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_FAULT);
      if (v5)
      {
        [(SKUIGridComponent *)v5 initWithBrickItems:v6, v7, v8, v9, v10, v11, v12];
      }
    }
  }

  v23.receiver = self;
  v23.super_class = SKUIGridComponent;
  v13 = [(SKUIGridComponent *)&v23 init];
  if (v13)
  {
    v14 = [v4 mutableCopy];
    children = v13->_children;
    v13->_children = v14;

    SKUIEditorialStyleDefault(&v20);
    v16 = v20;
    v17 = v21;
    *&v13->_editorialStyle.titleFontSize = v22;
    *&v13->_editorialStyle.alignment = v16;
    *&v13->_editorialStyle.bodyFontSize = v17;
    v13->_gridType = 2;
    SKUILockupStyleDefault(&v20);
    v18 = v20;
    v13->_lockupStyle.visibleFields = v21;
    *&v13->_lockupStyle.artworkSize = v18;
    [(SKUIGridComponent *)v13 _reloadMissingItemCount];
  }

  return v13;
}

- (SKUIGridComponent)initWithCustomPageContext:(id)a3
{
  v53 = *MEMORY[0x277D85DE8];
  v4 = a3;
  if (os_variant_has_internal_content())
  {
    if (_os_feature_enabled_impl())
    {
      v5 = os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_FAULT);
      if (v5)
      {
        [(SKUIGridComponent *)v5 initWithCustomPageContext:v6, v7, v8, v9, v10, v11, v12];
      }
    }
  }

  v51.receiver = self;
  v51.super_class = SKUIGridComponent;
  v13 = [(SKUIPageComponent *)&v51 initWithCustomPageContext:v4];
  if (!v13)
  {
    goto LABEL_59;
  }

  v14 = [v4 componentDictionary];
  v15 = [v14 objectForKey:@"childType"];
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    if ([v15 isEqualToString:@"lockup"])
    {
      v16 = 0;
LABEL_15:
      v13->_gridType = v16;
      goto LABEL_16;
    }

    if ([v15 isEqualToString:@"brick"])
    {
      v16 = 2;
      goto LABEL_15;
    }

    if ([v15 isEqualToString:@"editorial"])
    {
      v16 = 3;
      goto LABEL_15;
    }

    if ([v15 isEqualToString:@"media"])
    {
      v16 = 4;
      goto LABEL_15;
    }
  }

LABEL_16:
  v17 = [v14 objectForKey:@"ranked"];

  if (objc_opt_respondsToSelector())
  {
    v13->_showsIndexNumbers = [v17 BOOLValue];
  }

  v18 = [v14 objectForKey:@"editorialStyle"];

  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    SKUIEditorialStyleForDictionary(v18, &v48);
  }

  else
  {
    SKUIEditorialStyleDefault(&v48);
  }

  v19 = v48;
  v20 = v49;
  *&v13->_editorialStyle.titleFontSize = v50;
  *&v13->_editorialStyle.alignment = v19;
  *&v13->_editorialStyle.bodyFontSize = v20;
  v21 = [v14 objectForKey:@"lockupStyle"];

  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    SKUILockupStyleForDictionary(v21, v4, &v48);
  }

  else
  {
    SKUILockupStyleDefault(&v48);
  }

  v22 = v48;
  v13->_lockupStyle.visibleFields = v49;
  *&v13->_lockupStyle.artworkSize = v22;
  v23 = [v14 objectForKey:@"children"];
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v43 = v21;
    v24 = objc_alloc_init(MEMORY[0x277CBEB18]);
    children = v13->_children;
    v13->_children = v24;

    v46 = 0u;
    v47 = 0u;
    v44 = 0u;
    v45 = 0u;
    v42 = v23;
    v26 = v23;
    v27 = [v26 countByEnumeratingWithState:&v44 objects:v52 count:16];
    if (!v27)
    {
      goto LABEL_57;
    }

    v28 = v27;
    v29 = *v45;
    while (1)
    {
      for (i = 0; i != v28; ++i)
      {
        if (*v45 != v29)
        {
          objc_enumerationMutation(v26);
        }

        v31 = *(*(&v44 + 1) + 8 * i);
        gridType = v13->_gridType;
        if (gridType > 2)
        {
          switch(gridType)
          {
            case 3:
              objc_opt_class();
              if ((objc_opt_isKindOfClass() & 1) == 0)
              {
                continue;
              }

              v33 = [v4 copy];
              [v33 setComponentDictionary:v31];
              v40 = SKUIEditorialComponent;
              break;
            case 4:
              objc_opt_class();
              if ((objc_opt_isKindOfClass() & 1) == 0)
              {
                continue;
              }

              v33 = [v4 copy];
              [v33 setComponentDictionary:v31];
              v40 = SKUIMediaComponent;
              break;
            case 5:
LABEL_38:
              objc_opt_class();
              if ((objc_opt_isKindOfClass() & 1) == 0)
              {
                objc_opt_class();
                if ((objc_opt_isKindOfClass() & 1) == 0)
                {
                  continue;
                }

                v33 = [v4 copy];
                [v33 setComponentDictionary:v31];
                v37 = [[SKUILockupComponent alloc] initWithCustomPageContext:v33];
                if (v37)
                {
                  v38 = v4;
                  [(NSMutableArray *)v13->_children addObject:v37];
                  v39 = [(SKUILockupComponent *)v37 editorial];

                  if (v39)
                  {
                    v13->_gridType = 1;
                  }

                  v4 = v38;
                }

                goto LABEL_53;
              }

              v33 = [v4 itemForItemIdentifier:v31];
              if (v33)
              {
                v35 = [SKUILockupComponent alloc];
                v36 = *&v13->_lockupStyle.artworkSize;
                *&v49 = v13->_lockupStyle.visibleFields;
                v48 = v36;
                v34 = [(SKUILockupComponent *)v35 initWithItem:v33 style:&v48];
LABEL_41:
                v37 = v34;
LABEL_52:
                [(NSMutableArray *)v13->_children addObject:v37];
LABEL_53:
              }

              continue;
            default:
              continue;
          }

          v37 = [[v40 alloc] initWithCustomPageContext:v33];
          if (v37)
          {
            goto LABEL_52;
          }

          goto LABEL_53;
        }

        if (gridType < 2)
        {
          goto LABEL_38;
        }

        if (gridType == 2)
        {
          objc_opt_class();
          if (objc_opt_isKindOfClass())
          {
            v33 = [v4 copy];
            [v33 setComponentDictionary:v31];
            v34 = [[SKUIBrickItem alloc] initWithCustomPageContext:v33];
            goto LABEL_41;
          }
        }
      }

      v28 = [v26 countByEnumeratingWithState:&v44 objects:v52 count:16];
      if (!v28)
      {
LABEL_57:

        [(SKUIGridComponent *)v13 _reloadMissingItemCount];
        v21 = v43;
        v23 = v42;
        break;
      }
    }
  }

LABEL_59:
  return v13;
}

- (SKUIGridComponent)initWithFeaturedContentContext:(id)a3 kind:(int64_t)a4
{
  v6 = a3;
  if (os_variant_has_internal_content())
  {
    if (_os_feature_enabled_impl())
    {
      v7 = os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_FAULT);
      if (v7)
      {
        [(SKUIGridComponent *)v7 initWithFeaturedContentContext:v8 kind:v9, v10, v11, v12, v13, v14];
      }
    }
  }

  v25.receiver = self;
  v25.super_class = SKUIGridComponent;
  v15 = [(SKUIPageComponent *)&v25 initWithFeaturedContentContext:v6 kind:a4];
  v16 = v15;
  if (v15)
  {
    p_editorialStyle = &v15->_editorialStyle;
    SKUIEditorialStyleDefault(&v22);
    v18 = v22;
    v19 = v23;
    *&v16->_editorialStyle.titleFontSize = v24;
    *&p_editorialStyle->alignment = v18;
    *&v16->_editorialStyle.bodyFontSize = v19;
    SKUILockupStyleDefault(&v22);
    v20 = v22;
    v16->_lockupStyle.visibleFields = v23;
    *&v16->_lockupStyle.artworkSize = v20;
    [(SKUIGridComponent *)v16 _setChildrenWithFeaturedContextContext:v6];
  }

  return v16;
}

- (SKUIGridComponent)initWithGridItems:(id)a3
{
  v40 = *MEMORY[0x277D85DE8];
  v4 = a3;
  if (os_variant_has_internal_content())
  {
    if (_os_feature_enabled_impl())
    {
      v5 = os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_FAULT);
      if (v5)
      {
        [(SKUIGridComponent *)v5 initWithGridItems:v6, v7, v8, v9, v10, v11, v12];
      }
    }
  }

  v38.receiver = self;
  v38.super_class = SKUIGridComponent;
  v13 = [(SKUIGridComponent *)&v38 init];
  v14 = v13;
  if (v13)
  {
    p_editorialStyle = &v13->_editorialStyle;
    SKUIEditorialStyleDefault(&v35);
    v16 = v35;
    v17 = v36;
    *&v14->_editorialStyle.titleFontSize = v37;
    *&p_editorialStyle->alignment = v16;
    *&v14->_editorialStyle.bodyFontSize = v17;
    v14->_gridType = 0;
    SKUILockupStyleDefault(&v35);
    v18 = v35;
    v14->_lockupStyle.visibleFields = v36;
    *&v14->_lockupStyle.artworkSize = v18;
    v19 = objc_alloc_init(MEMORY[0x277CBEB18]);
    v31 = 0u;
    v32 = 0u;
    v33 = 0u;
    v34 = 0u;
    v20 = v4;
    v21 = [v20 countByEnumeratingWithState:&v31 objects:v39 count:16];
    if (v21)
    {
      v22 = v21;
      v23 = *v32;
      do
      {
        for (i = 0; i != v22; ++i)
        {
          if (*v32 != v23)
          {
            objc_enumerationMutation(v20);
          }

          v25 = *(*(&v31 + 1) + 8 * i);
          v26 = *&v14->_lockupStyle.artworkSize;
          *&v36 = v14->_lockupStyle.visibleFields;
          v35 = v26;
          v27 = [(SKUIGridComponent *)v14 _newLockupComponentWithItem:v25 defaultStyle:&v35, v31];
          [v19 addObject:v27];
        }

        v22 = [v20 countByEnumeratingWithState:&v31 objects:v39 count:16];
      }

      while (v22);
    }

    v28 = [v19 mutableCopy];
    children = v14->_children;
    v14->_children = v28;

    [(SKUIGridComponent *)v14 _reloadMissingItemCount];
  }

  return v14;
}

- (SKUIGridComponent)initWithLockups:(id)a3
{
  v37 = *MEMORY[0x277D85DE8];
  v4 = a3;
  if (os_variant_has_internal_content())
  {
    if (_os_feature_enabled_impl())
    {
      v5 = os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_FAULT);
      if (v5)
      {
        [(SKUIGridComponent *)v5 initWithLockups:v6, v7, v8, v9, v10, v11, v12];
      }
    }
  }

  v35.receiver = self;
  v35.super_class = SKUIGridComponent;
  v13 = [(SKUIGridComponent *)&v35 init];
  v14 = v13;
  if (v13)
  {
    p_editorialStyle = &v13->_editorialStyle;
    SKUIEditorialStyleDefault(&v32);
    v16 = v32;
    v17 = v33;
    *&v14->_editorialStyle.titleFontSize = v34;
    *&p_editorialStyle->alignment = v16;
    *&v14->_editorialStyle.bodyFontSize = v17;
    v14->_gridType = 0;
    SKUILockupStyleDefault(&v32);
    v18 = v32;
    v14->_lockupStyle.visibleFields = v33;
    *&v14->_lockupStyle.artworkSize = v18;
    v19 = [v4 mutableCopy];
    children = v14->_children;
    v14->_children = v19;

    v30 = 0u;
    v31 = 0u;
    v28 = 0u;
    v29 = 0u;
    v21 = v14->_children;
    v22 = [(NSMutableArray *)v21 countByEnumeratingWithState:&v28 objects:v36 count:16];
    if (v22)
    {
      v23 = v22;
      v24 = *v29;
      while (2)
      {
        for (i = 0; i != v23; ++i)
        {
          if (*v29 != v24)
          {
            objc_enumerationMutation(v21);
          }

          v26 = [*(*(&v28 + 1) + 8 * i) editorial];

          if (v26)
          {
            v14->_gridType = 1;
            goto LABEL_16;
          }
        }

        v23 = [(NSMutableArray *)v21 countByEnumeratingWithState:&v28 objects:v36 count:16];
        if (v23)
        {
          continue;
        }

        break;
      }
    }

LABEL_16:

    [(SKUIGridComponent *)v14 _reloadMissingItemCount];
  }

  return v14;
}

- (SKUIGridComponent)initWithRoomContext:(id)a3 gridType:(int64_t)a4
{
  v6 = a3;
  if (os_variant_has_internal_content())
  {
    if (_os_feature_enabled_impl())
    {
      v7 = os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_FAULT);
      if (v7)
      {
        [(SKUIGridComponent *)v7 initWithRoomContext:v8 gridType:v9, v10, v11, v12, v13, v14];
      }
    }
  }

  v25.receiver = self;
  v25.super_class = SKUIGridComponent;
  v15 = [(SKUIGridComponent *)&v25 init];
  v16 = v15;
  if (v15)
  {
    p_editorialStyle = &v15->_editorialStyle;
    SKUIEditorialStyleDefault(&v22);
    v18 = v22;
    v19 = v23;
    *&v16->_editorialStyle.titleFontSize = v24;
    *&p_editorialStyle->alignment = v18;
    *&v16->_editorialStyle.bodyFontSize = v19;
    v16->_gridType = a4;
    SKUILockupStyleDefault(&v22);
    v20 = v22;
    v16->_lockupStyle.visibleFields = v23;
    *&v16->_lockupStyle.artworkSize = v20;
    if (v16->_gridType == 5)
    {
      v16->_lockupStyle.artworkSize = 1;
      v16->_lockupStyle.visibleFields = 1054;
    }

    [(SKUIGridComponent *)v16 _setChildrenWithFeaturedContextContext:v6];
  }

  return v16;
}

- (SKUIGridComponent)initWithViewElement:(id)a3
{
  v4 = a3;
  if (os_variant_has_internal_content())
  {
    if (_os_feature_enabled_impl())
    {
      v5 = os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_FAULT);
      if (v5)
      {
        [(SKUIGridComponent *)v5 initWithViewElement:v6, v7, v8, v9, v10, v11, v12];
      }
    }
  }

  v16.receiver = self;
  v16.super_class = SKUIGridComponent;
  v13 = [(SKUIPageComponent *)&v16 initWithViewElement:v4];
  v14 = v13;
  if (v13)
  {
    v13->_gridType = 6;
  }

  return v14;
}

- (void)enumerateMissingItemIdentifiersFromIndex:(int64_t)a3 usingBlock:(id)a4
{
  v6 = a4;
  v7 = v6;
  gridType = self->_gridType;
  if (gridType >= 2)
  {
    if (gridType != 2)
    {
      goto LABEL_6;
    }

    v9 = v6;
    v6 = [(SKUIPageComponent *)self _enumerateMissingItemIdentifiersFromBricks:self->_children startIndex:a3 usingBlock:v6];
  }

  else
  {
    v9 = v6;
    v6 = [(SKUIPageComponent *)self _enumerateMissingItemIdentifiersFromLockups:self->_children startIndex:a3 usingBlock:v6];
  }

  v7 = v9;
LABEL_6:

  MEMORY[0x2821F96F8](v6, v7);
}

- (id)_updateWithInvalidItemIdentifiers:(id)a3
{
  v4 = a3;
  v5 = objc_alloc_init(MEMORY[0x277CCAB58]);
  v11 = MEMORY[0x277D85DD0];
  v12 = 3221225472;
  v13 = __55__SKUIGridComponent__updateWithInvalidItemIdentifiers___block_invoke;
  v14 = &unk_2781FB648;
  v6 = v4;
  v15 = v6;
  v7 = v5;
  v16 = v7;
  [(SKUIGridComponent *)self enumerateMissingItemIdentifiersFromIndex:0 usingBlock:&v11];
  if ([v7 count])
  {
    [(NSMutableArray *)self->_children removeObjectsAtIndexes:v7];
    self->_missingItemCount -= [v7 count];
  }

  v8 = v16;
  v9 = v7;

  return v7;
}

uint64_t __55__SKUIGridComponent__updateWithInvalidItemIdentifiers___block_invoke(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = [*(a1 + 32) containsObject:a2];
  if (result)
  {
    v6 = *(a1 + 40);

    return [v6 addIndex:a3];
  }

  return result;
}

- (id)_updateWithMissingItems:(id)a3
{
  v4 = a3;
  v5 = objc_alloc_init(MEMORY[0x277CCAB58]);
  v17 = 0uLL;
  v18 = 0;
  SKUILockupStyleDefault(&v17);
  v11[0] = MEMORY[0x277D85DD0];
  v11[1] = 3221225472;
  v11[2] = __45__SKUIGridComponent__updateWithMissingItems___block_invoke;
  v11[3] = &unk_2781FB670;
  v12 = v4;
  v13 = self;
  v6 = v5;
  v14 = v6;
  v15 = v17;
  v16 = v18;
  v7 = v4;
  [(SKUIGridComponent *)self enumerateMissingItemIdentifiersFromIndex:0 usingBlock:v11];
  v8 = v14;
  v9 = v6;

  return v9;
}

void __45__SKUIGridComponent__updateWithMissingItems___block_invoke(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = [*(a1 + 32) objectForKey:a2];
  if (v5)
  {
    v6 = *(a1 + 40);
    v7 = *(v6 + 72);
    if (v7 < 2)
    {
      v8 = [*(v6 + 24) objectAtIndex:a3];
      [v8 _setItem:v5];
      v13 = 0uLL;
      v14 = 0;
      if (v8)
      {
        [v8 lockupStyle];
      }

      if ([v5 itemKind] == 17)
      {
        v11 = *(a1 + 56);
        v12 = *(a1 + 72);
        v9 = v13;
        v10 = v14;
        if (SKUILockupStyleEqualToLockupStyle(&v11, &v9))
        {
          v14 = 214;
          v11 = v13;
          v12 = 214;
          [v8 _setLockupStyle:&v11];
        }
      }

      goto LABEL_10;
    }

    if (v7 == 2)
    {
      v8 = [*(v6 + 24) objectAtIndex:a3];
      [v8 _setLinkItem:v5];
LABEL_10:
      [*(a1 + 48) addIndex:a3];
      --*(*(a1 + 40) + 104);
    }
  }
}

- (id)_newLockupComponentWithItem:(id)a3 defaultStyle:(SKUILockupStyle *)a4
{
  v5 = a3;
  if ([v5 itemKind] == 17)
  {
    a4->visibleFields = 214;
  }

  v6 = [SKUILockupComponent alloc];
  v9 = *&a4->artworkSize;
  visibleFields = a4->visibleFields;
  v7 = [(SKUILockupComponent *)v6 initWithItem:v5 style:&v9];

  return v7;
}

- (void)_reloadMissingItemCount
{
  v27 = *MEMORY[0x277D85DE8];
  self->_missingItemCount = 0;
  gridType = self->_gridType;
  if (gridType >= 2)
  {
    if (gridType != 2)
    {
      return;
    }

    v23 = 0u;
    v24 = 0u;
    v21 = 0u;
    v22 = 0u;
    v4 = self->_children;
    v11 = [(NSMutableArray *)v4 countByEnumeratingWithState:&v21 objects:v26 count:16];
    if (v11)
    {
      v12 = v11;
      v13 = *v22;
      do
      {
        for (i = 0; i != v12; ++i)
        {
          if (*v22 != v13)
          {
            objc_enumerationMutation(v4);
          }

          v15 = [*(*(&v21 + 1) + 8 * i) link];
          if (([v15 isActionable] & 1) == 0)
          {
            v16 = [v15 itemIdentifier];

            if (v16)
            {
              ++self->_missingItemCount;
            }
          }
        }

        v12 = [(NSMutableArray *)v4 countByEnumeratingWithState:&v21 objects:v26 count:16];
      }

      while (v12);
    }
  }

  else
  {
    v19 = 0u;
    v20 = 0u;
    v17 = 0u;
    v18 = 0u;
    v4 = self->_children;
    v5 = [(NSMutableArray *)v4 countByEnumeratingWithState:&v17 objects:v25 count:16];
    if (v5)
    {
      v6 = v5;
      v7 = *v18;
      do
      {
        for (j = 0; j != v6; ++j)
        {
          if (*v18 != v7)
          {
            objc_enumerationMutation(v4);
          }

          v9 = *(*(&v17 + 1) + 8 * j);
          v10 = [v9 item];
          if (v10)
          {
          }

          else if ([v9 itemIdentifier])
          {
            ++self->_missingItemCount;
          }
        }

        v6 = [(NSMutableArray *)v4 countByEnumeratingWithState:&v17 objects:v25 count:16];
      }

      while (v6);
    }
  }
}

- (void)_setChildrenWithFeaturedContextContext:(id)a3
{
  v34 = *MEMORY[0x277D85DE8];
  v4 = a3;
  v5 = [v4 componentDictionary];
  v6 = [v5 objectForKey:@"adamIds"];
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v26 = v5;
    v7 = objc_alloc_init(MEMORY[0x277CBEB18]);
    v8 = 24;
    children = self->_children;
    self->_children = v7;

    v31 = 0u;
    v32 = 0u;
    v29 = 0u;
    v30 = 0u;
    v25 = v6;
    v10 = v6;
    v11 = [v10 countByEnumeratingWithState:&v29 objects:v33 count:16];
    if (!v11)
    {
      goto LABEL_16;
    }

    v12 = v11;
    v13 = *v30;
    while (1)
    {
      for (i = 0; i != v12; ++i)
      {
        if (*v30 != v13)
        {
          objc_enumerationMutation(v10);
        }

        v15 = *(*(&v29 + 1) + 8 * i);
        objc_opt_class();
        if (objc_opt_isKindOfClass())
        {
          v16 = [v4 itemForItemIdentifier:v15];
          if (v16)
          {
            v27 = *&self->_lockupStyle.artworkSize;
            visibleFields = self->_lockupStyle.visibleFields;
            v17 = [(SKUIGridComponent *)self _newLockupComponentWithItem:v16 defaultStyle:&v27];
            goto LABEL_12;
          }

          if (([v4 isUnavailableItemIdentifier:v15] & 1) == 0)
          {
            v18 = v10;
            v19 = v4;
            v20 = v8;
            v21 = [SKUILockupComponent alloc];
            v22 = [v15 longLongValue];
            v27 = *&self->_lockupStyle.artworkSize;
            visibleFields = self->_lockupStyle.visibleFields;
            v23 = v21;
            v8 = v20;
            v4 = v19;
            v10 = v18;
            v17 = [(SKUILockupComponent *)v23 initWithItemIdentifier:v22 style:&v27];
LABEL_12:
            v24 = v17;
            [*(&self->super.super.isa + v8) addObject:{v17, v25}];
          }

          continue;
        }
      }

      v12 = [v10 countByEnumeratingWithState:&v29 objects:v33 count:16];
      if (!v12)
      {
LABEL_16:

        [(SKUIGridComponent *)self _reloadMissingItemCount];
        v6 = v25;
        v5 = v26;
        break;
      }
    }
  }
}

- (SKUIEditorialStyle)editorialStyle
{
  v3 = *&self[1].bodyFontWeight;
  *&retstr->alignment = *&self->titleFontSize;
  *&retstr->bodyFontSize = v3;
  *&retstr->titleFontSize = self[1].titleFontWeight;
  return self;
}

@end