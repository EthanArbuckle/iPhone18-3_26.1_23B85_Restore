@interface SKUISwooshPageComponent
- (BOOL)_isBrickAvailable:(id)a3 withPageContext:(id)a4;
- (SKUILockupStyle)_lockupStyleWithLockups:(SEL)a3;
- (SKUISwooshPageComponent)initWithCustomPageContext:(id)a3;
- (SKUISwooshPageComponent)initWithFeaturedContentContext:(id)a3 kind:(int64_t)a4;
- (SKUISwooshPageComponent)initWithItemList:(id)a3;
- (SKUISwooshPageComponent)initWithLockups:(id)a3 swooshType:(int64_t)a4 title:(id)a5;
- (SKUISwooshPageComponent)initWithRelatedContentContext:(id)a3;
- (SKUISwooshPageComponent)initWithRoomContext:(id)a3;
- (id)_brickItemsWithChildren:(id)a3 customPageContext:(id)a4;
- (id)_brickItemsWithChildren:(id)a3 featuredPageContext:(id)a4;
- (id)_lockupWithItemIdentifier:(id)a3 context:(id)a4;
- (id)_lockupsWithChildren:(id)a3 context:(id)a4;
- (id)_lockupsWithChildren:(id)a3 featuredPageContext:(id)a4;
- (id)_mediaComponentsWithChildren:(id)a3 context:(id)a4;
- (id)_newLockupComponentWithItem:(id)a3 defaultStyle:(SKUILockupStyle *)a4;
- (id)_updateLockupItemsWithItems:(id)a3;
- (id)valueForMetricsField:(id)a3;
- (unint64_t)_defaultVisibleFieldsForItemKind:(int64_t)a3;
- (void)_reloadMissingDataCount;
- (void)_setSeeAllValuesWithLinkInfo:(id)a3;
- (void)_updateBricksWithItems:(id)a3;
- (void)_updateLockup:(id)a3 withItem:(id)a4;
- (void)_updateLockupItemsWithLookupResponse:(id)a3;
- (void)enumerateMissingItemIdentifiersFromIndex:(int64_t)a3 usingBlock:(id)a4;
@end

@implementation SKUISwooshPageComponent

- (SKUISwooshPageComponent)initWithCustomPageContext:(id)a3
{
  v4 = a3;
  if (os_variant_has_internal_content())
  {
    if (_os_feature_enabled_impl())
    {
      v5 = os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_FAULT);
      if (v5)
      {
        [(SKUISwooshPageComponent *)v5 initWithCustomPageContext:v6, v7, v8, v9, v10, v11, v12];
      }
    }
  }

  v35.receiver = self;
  v35.super_class = SKUISwooshPageComponent;
  v13 = [(SKUIPageComponent *)&v35 initWithCustomPageContext:v4];
  if (v13)
  {
    v14 = [v4 componentDictionary];
    v15 = [v14 objectForKey:@"childType"];
    objc_opt_class();
    if ((objc_opt_isKindOfClass() & 1) == 0)
    {
      goto LABEL_12;
    }

    if ([v15 isEqualToString:@"brick"])
    {
      v16 = 1;
    }

    else
    {
      if (![v15 isEqualToString:@"media"])
      {
        goto LABEL_12;
      }

      v16 = 2;
    }

    v13->_swooshType = v16;
LABEL_12:
    v17 = [v14 objectForKey:@"showBrickTitles"];

    if (objc_opt_respondsToSelector())
    {
      v18 = v17;
    }

    else
    {
      v18 = [v14 objectForKey:@"showItemTitles"];

      v17 = v18;
      if ((objc_opt_respondsToSelector() & 1) == 0)
      {
        goto LABEL_16;
      }
    }

    v13->_showsItemTitles = [v17 BOOLValue];
LABEL_16:
    v19 = [v14 objectForKey:@"lockupStyle"];

    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      SKUILockupStyleForDictionary(v19, v4, &v33);
    }

    else
    {
      SKUILockupStyleDefault(&v33);
    }

    v20 = v33;
    v13->_lockupStyle.visibleFields = v34;
    *&v13->_lockupStyle.artworkSize = v20;
    v21 = [v14 objectForKey:@"title"];

    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v22 = [v21 copy];
      title = v13->_title;
      v13->_title = v22;
    }

    v24 = [v14 objectForKey:@"titleIsLink"];

    if ((objc_opt_respondsToSelector() & 1) != 0 && [v24 BOOLValue])
    {
      v13->_seeAllStyle = 1;
    }

    v25 = [v14 objectForKey:@"link"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      [(SKUISwooshPageComponent *)v13 _setSeeAllValuesWithLinkInfo:v25];
    }

    v26 = [v14 objectForKey:@"children"];
    objc_opt_class();
    if ((objc_opt_isKindOfClass() & 1) == 0)
    {
      goto LABEL_34;
    }

    swooshType = v13->_swooshType;
    if (swooshType)
    {
      if (swooshType == 2)
      {
        v28 = [(SKUISwooshPageComponent *)v13 _mediaComponentsWithChildren:v26 context:v4];
        v29 = &OBJC_IVAR___SKUISwooshPageComponent__mediaComponents;
      }

      else
      {
        if (swooshType != 1)
        {
LABEL_34:
          [(SKUISwooshPageComponent *)v13 _reloadMissingDataCount];

          goto LABEL_35;
        }

        v28 = [(SKUISwooshPageComponent *)v13 _brickItemsWithChildren:v26 customPageContext:v4];
        v29 = &OBJC_IVAR___SKUISwooshPageComponent__bricks;
      }
    }

    else
    {
      v28 = [(SKUISwooshPageComponent *)v13 _lockupsWithChildren:v26 context:v4];
      v29 = &OBJC_IVAR___SKUISwooshPageComponent__lockups;
    }

    v30 = *v29;
    v31 = *(&v13->super.super.isa + v30);
    *(&v13->super.super.isa + v30) = v28;

    goto LABEL_34;
  }

LABEL_35:

  return v13;
}

- (SKUISwooshPageComponent)initWithFeaturedContentContext:(id)a3 kind:(int64_t)a4
{
  v6 = a3;
  if (os_variant_has_internal_content())
  {
    if (_os_feature_enabled_impl())
    {
      v7 = os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_FAULT);
      if (v7)
      {
        [(SKUISwooshPageComponent *)v7 initWithFeaturedContentContext:v8 kind:v9, v10, v11, v12, v13, v14];
      }
    }
  }

  v41.receiver = self;
  v41.super_class = SKUISwooshPageComponent;
  v15 = [(SKUIPageComponent *)&v41 initWithFeaturedContentContext:v6 kind:a4];
  if (v15)
  {
    v16 = [v6 componentDictionary];
    if (a4 == 261)
    {
      v15->_swooshType = 1;
    }

    v15->_fcKind = a4;
    SKUILockupStyleDefault(&v39);
    v17 = v39;
    v15->_lockupStyle.visibleFields = v40;
    *&v15->_lockupStyle.artworkSize = v17;
    v18 = [v6 platformKeyProfileOverrides];
    v19 = [MEMORY[0x277CCACA8] stringWithFormat:@"%ld", v15->_fcKind];
    v20 = [v18 objectForKey:v19];

    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v21 = [v20 copy];
      platformKeyProfile = v15->_platformKeyProfile;
      v15->_platformKeyProfile = v21;
    }

    v23 = [v16 objectForKey:@"name"];
    if (!v23)
    {
      v23 = [v16 objectForKey:@"title"];
    }

    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v24 = [v23 copy];
      title = v15->_title;
      v15->_title = v24;
    }

    v26 = [v16 objectForKey:@"titleIsLink"];

    if ((objc_opt_respondsToSelector() & 1) != 0 && [v26 BOOLValue])
    {
      v15->_seeAllStyle = 1;
    }

    v27 = [v16 objectForKey:@"seeAllUrl"];

    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v28 = [objc_alloc(MEMORY[0x277CBEBC0]) initWithString:v27];
      seeAllURL = v15->_seeAllURL;
      v15->_seeAllURL = v28;
    }

    v30 = [v16 objectForKey:@"showBrickTitles"];

    if (objc_opt_respondsToSelector())
    {
      v15->_showsItemTitles = [v30 BOOLValue];
    }

    v31 = [v16 objectForKey:@"children"];
    if (!v31)
    {
      v31 = [v16 objectForKey:@"adamIds"];
      if (!v31)
      {
        v31 = [v16 objectForKey:@"content"];
      }
    }

    v32 = v31;
    objc_opt_class();
    if ((objc_opt_isKindOfClass() & 1) == 0)
    {
      goto LABEL_30;
    }

    swooshType = v15->_swooshType;
    if (swooshType)
    {
      if (swooshType != 1)
      {
LABEL_30:
        [(SKUISwooshPageComponent *)v15 _reloadMissingDataCount];

        goto LABEL_31;
      }

      v34 = [(SKUISwooshPageComponent *)v15 _brickItemsWithChildren:v32 featuredPageContext:v6];
      v35 = &OBJC_IVAR___SKUISwooshPageComponent__bricks;
    }

    else
    {
      v34 = [(SKUISwooshPageComponent *)v15 _lockupsWithChildren:v32 featuredPageContext:v6];
      v35 = &OBJC_IVAR___SKUISwooshPageComponent__lockups;
    }

    v36 = *v35;
    v37 = *(&v15->super.super.isa + v36);
    *(&v15->super.super.isa + v36) = v34;

    goto LABEL_30;
  }

LABEL_31:

  return v15;
}

- (SKUISwooshPageComponent)initWithItemList:(id)a3
{
  v44 = *MEMORY[0x277D85DE8];
  v4 = a3;
  if (os_variant_has_internal_content())
  {
    if (_os_feature_enabled_impl())
    {
      v5 = os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_FAULT);
      if (v5)
      {
        [(SKUISwooshPageComponent *)v5 initWithItemList:v6, v7, v8, v9, v10, v11, v12];
      }
    }
  }

  v42.receiver = self;
  v42.super_class = SKUISwooshPageComponent;
  v13 = [(SKUISwooshPageComponent *)&v42 init];
  v14 = v13;
  if (v13)
  {
    v13->_swooshType = 0;
    p_lockupStyle = &v13->_lockupStyle;
    SKUILockupStyleDefault(&v40);
    v16 = v40;
    v14->_lockupStyle.visibleFields = visibleFields;
    *&p_lockupStyle->artworkSize = v16;
    v17 = [v4 seeAllTitle];
    seeAllTitle = v14->_seeAllTitle;
    v14->_seeAllTitle = v17;

    v19 = [v4 title];
    title = v14->_title;
    v14->_title = v19;

    v21 = objc_alloc_init(MEMORY[0x277CBEB18]);
    v22 = [v4 items];
    v36 = 0u;
    v37 = 0u;
    v38 = 0u;
    v39 = 0u;
    v23 = [v22 countByEnumeratingWithState:&v36 objects:v43 count:16];
    if (v23)
    {
      v24 = v23;
      v25 = *v37;
      do
      {
        v26 = 0;
        do
        {
          if (*v37 != v25)
          {
            objc_enumerationMutation(v22);
          }

          v27 = *(*(&v36 + 1) + 8 * v26);
          v28 = *&p_lockupStyle->artworkSize;
          visibleFields = v14->_lockupStyle.visibleFields;
          v40 = v28;
          v29 = [(SKUISwooshPageComponent *)v14 _newLockupComponentWithItem:v27 defaultStyle:&v40];
          [v21 addObject:v29];

          ++v26;
        }

        while (v24 != v26);
        v24 = [v22 countByEnumeratingWithState:&v36 objects:v43 count:16];
      }

      while (v24);
    }

    v30 = [v21 copy];
    lockups = v14->_lockups;
    v14->_lockups = v30;

    v32 = [v4 seeAllURLString];
    if (v32)
    {
      v33 = [objc_alloc(MEMORY[0x277CBEBC0]) initWithString:v32];
      seeAllURL = v14->_seeAllURL;
      v14->_seeAllURL = v33;
    }

    [(SKUISwooshPageComponent *)v14 _reloadMissingDataCount];
  }

  return v14;
}

- (SKUISwooshPageComponent)initWithLockups:(id)a3 swooshType:(int64_t)a4 title:(id)a5
{
  v8 = a3;
  v9 = a5;
  if (os_variant_has_internal_content())
  {
    if (_os_feature_enabled_impl())
    {
      v10 = os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_FAULT);
      if (v10)
      {
        [(SKUISwooshPageComponent *)v10 initWithLockups:v11 swooshType:v12 title:v13, v14, v15, v16, v17];
      }
    }
  }

  v26.receiver = self;
  v26.super_class = SKUISwooshPageComponent;
  v18 = [(SKUISwooshPageComponent *)&v26 init];
  if (v18)
  {
    v19 = [v8 copy];
    lockups = v18->_lockups;
    v18->_lockups = v19;

    v18->_swooshType = a4;
    [(SKUISwooshPageComponent *)v18 _lockupStyleWithLockups:v18->_lockups];
    v18->_lockupStyle.visibleFields = v25;
    *&v18->_lockupStyle.artworkSize = v24;
    v21 = [v9 copy];
    title = v18->_title;
    v18->_title = v21;

    [(SKUISwooshPageComponent *)v18 _reloadMissingDataCount];
  }

  return v18;
}

- (SKUISwooshPageComponent)initWithRelatedContentContext:(id)a3
{
  v4 = a3;
  if (os_variant_has_internal_content())
  {
    if (_os_feature_enabled_impl())
    {
      v5 = os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_FAULT);
      if (v5)
      {
        [(SKUISwooshPageComponent *)v5 initWithRelatedContentContext:v6, v7, v8, v9, v10, v11, v12];
      }
    }
  }

  v27.receiver = self;
  v27.super_class = SKUISwooshPageComponent;
  v13 = [(SKUISwooshPageComponent *)&v27 init];
  if (v13)
  {
    v14 = [v4 componentDictionary];
    v13->_swooshType = 0;
    SKUILockupStyleDefault(&v25);
    v15 = v25;
    v13->_lockupStyle.visibleFields = v26;
    *&v13->_lockupStyle.artworkSize = v15;
    v16 = [v14 objectForKey:@"title"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v17 = [v16 copy];
      title = v13->_title;
      v13->_title = v17;
    }

    v19 = [v14 objectForKey:@"titleIsLink"];

    if ((objc_opt_respondsToSelector() & 1) != 0 && [v19 BOOLValue])
    {
      v13->_seeAllStyle = 1;
    }

    v20 = [v14 objectForKey:@"link"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      [(SKUISwooshPageComponent *)v13 _setSeeAllValuesWithLinkInfo:v20];
    }

    v21 = [v14 objectForKey:@"childrenIds"];
    objc_opt_class();
    if ((objc_opt_isKindOfClass() & 1) != 0 && [v21 count])
    {
      v22 = [(SKUISwooshPageComponent *)v13 _lockupsWithChildren:v21 context:v4];
      lockups = v13->_lockups;
      v13->_lockups = v22;
    }

    [(SKUISwooshPageComponent *)v13 _reloadMissingDataCount];
  }

  return v13;
}

- (SKUISwooshPageComponent)initWithRoomContext:(id)a3
{
  v4 = a3;
  if (os_variant_has_internal_content())
  {
    if (_os_feature_enabled_impl())
    {
      v5 = os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_FAULT);
      if (v5)
      {
        [(SKUISwooshPageComponent *)v5 initWithRoomContext:v6, v7, v8, v9, v10, v11, v12];
      }
    }
  }

  v27.receiver = self;
  v27.super_class = SKUISwooshPageComponent;
  v13 = [(SKUIPageComponent *)&v27 initWithFeaturedContentContext:v4 kind:260];
  if (v13)
  {
    v14 = [v4 componentDictionary];
    v13->_swooshType = 0;
    SKUILockupStyleDefault(&v25);
    v15 = v25;
    v13->_lockupStyle.visibleFields = v26;
    *&v13->_lockupStyle.artworkSize = v15;
    v16 = [v14 objectForKey:@"title"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v17 = [v16 copy];
      title = v13->_title;
      v13->_title = v17;
    }

    v19 = [v14 objectForKey:@"titleIsLink"];

    if ((objc_opt_respondsToSelector() & 1) != 0 && [v19 BOOLValue])
    {
      v13->_seeAllStyle = 1;
    }

    v20 = [v14 objectForKey:@"seeAllUrl"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      [(SKUISwooshPageComponent *)v13 _setSeeAllValuesWithLinkInfo:v20];
    }

    v21 = [v14 objectForKey:@"adamIds"];
    objc_opt_class();
    if ((objc_opt_isKindOfClass() & 1) != 0 && [v21 count])
    {
      v22 = [(SKUISwooshPageComponent *)v13 _lockupsWithChildren:v21 context:v4];
      lockups = v13->_lockups;
      v13->_lockups = v22;
    }

    [(SKUISwooshPageComponent *)v13 _reloadMissingDataCount];
  }

  return v13;
}

- (void)enumerateMissingItemIdentifiersFromIndex:(int64_t)a3 usingBlock:(id)a4
{
  v6 = a4;
  v7 = v6;
  lockups = self->_lockups;
  if (lockups)
  {
    v10 = v6;
    v6 = [(SKUIPageComponent *)self _enumerateMissingItemIdentifiersFromLockups:lockups startIndex:a3 usingBlock:v6];
  }

  else
  {
    bricks = self->_bricks;
    if (!bricks)
    {
      goto LABEL_6;
    }

    v10 = v6;
    v6 = [(SKUIPageComponent *)self _enumerateMissingItemIdentifiersFromBricks:bricks startIndex:a3 usingBlock:v6];
  }

  v7 = v10;
LABEL_6:

  MEMORY[0x2821F96F8](v6, v7);
}

- (id)valueForMetricsField:(id)a3
{
  v4 = a3;
  if (([v4 isEqualToString:*MEMORY[0x277D6A4A0]] & 1) != 0 || objc_msgSend(v4, "isEqualToString:", *MEMORY[0x277D6A4A8]))
  {
    v5 = [(SKUISwooshPageComponent *)self title];
    goto LABEL_4;
  }

  if ([v4 isEqualToString:*MEMORY[0x277D6A498]])
  {
    v5 = [MEMORY[0x277CCABB0] numberWithInteger:self->_fcKind];
LABEL_4:
    v6 = v5;
    if (v5)
    {
      goto LABEL_9;
    }
  }

  v8.receiver = self;
  v8.super_class = SKUISwooshPageComponent;
  v6 = [(SKUIPageComponent *)&v8 valueForMetricsField:v4];
LABEL_9:

  return v6;
}

- (void)_updateBricksWithItems:(id)a3
{
  v20 = *MEMORY[0x277D85DE8];
  v4 = a3;
  v15 = 0u;
  v16 = 0u;
  v17 = 0u;
  v18 = 0u;
  v5 = self->_bricks;
  v6 = [(NSArray *)v5 countByEnumeratingWithState:&v15 objects:v19 count:16];
  if (v6)
  {
    v7 = v6;
    v8 = *v16;
    do
    {
      for (i = 0; i != v7; ++i)
      {
        if (*v16 != v8)
        {
          objc_enumerationMutation(v5);
        }

        v10 = *(*(&v15 + 1) + 8 * i);
        v11 = [v10 link];
        if (([v11 isActionable] & 1) == 0)
        {
          v12 = [v11 itemIdentifier];
          if (v12)
          {
            v13 = [v4 objectForKey:v12];
            if (v13)
            {
              v14 = v13;
              [v10 _setLinkItem:v13];
              --self->_missingDataCount;
            }
          }
        }
      }

      v7 = [(NSArray *)v5 countByEnumeratingWithState:&v15 objects:v19 count:16];
    }

    while (v7);
  }
}

- (id)_updateLockupItemsWithItems:(id)a3
{
  v20 = *MEMORY[0x277D85DE8];
  v4 = a3;
  v14 = [MEMORY[0x277CBEB58] set];
  v15 = 0u;
  v16 = 0u;
  v17 = 0u;
  v18 = 0u;
  v5 = self->_lockups;
  v6 = [(NSArray *)v5 countByEnumeratingWithState:&v15 objects:v19 count:16];
  if (v6)
  {
    v7 = v6;
    v8 = *v16;
    do
    {
      for (i = 0; i != v7; ++i)
      {
        if (*v16 != v8)
        {
          objc_enumerationMutation(v5);
        }

        v10 = *(*(&v15 + 1) + 8 * i);
        if ([v10 _needsItemData])
        {
          v11 = [objc_alloc(MEMORY[0x277CCABB0]) initWithLongLong:{objc_msgSend(v10, "itemIdentifier")}];
          v12 = [v4 objectForKey:v11];
          if (v12)
          {
            [(SKUISwooshPageComponent *)self _updateLockup:v10 withItem:v12];
            [v14 addObject:v10];
            --self->_missingDataCount;
          }
        }
      }

      v7 = [(NSArray *)v5 countByEnumeratingWithState:&v15 objects:v19 count:16];
    }

    while (v7);
  }

  return v14;
}

- (void)_updateLockupItemsWithLookupResponse:(id)a3
{
  v21 = *MEMORY[0x277D85DE8];
  v15 = a3;
  v16 = 0u;
  v17 = 0u;
  v18 = 0u;
  v19 = 0u;
  v4 = self->_lockups;
  v5 = [(NSArray *)v4 countByEnumeratingWithState:&v16 objects:v20 count:16];
  if (v5)
  {
    v6 = v5;
    v7 = *v17;
    do
    {
      for (i = 0; i != v6; ++i)
      {
        if (*v17 != v7)
        {
          objc_enumerationMutation(v4);
        }

        v9 = *(*(&v16 + 1) + 8 * i);
        if ([v9 _needsItemData])
        {
          v10 = [objc_alloc(MEMORY[0x277CCACA8]) initWithFormat:@"%lld", objc_msgSend(v9, "itemIdentifier")];
          v11 = [v15 itemForKey:v10];
          if (v11)
          {
            v12 = [SKUIItem alloc];
            v13 = [v11 lookupDictionary];
            v14 = [(SKUIItem *)v12 initWithLookupDictionary:v13];

            [(SKUISwooshPageComponent *)self _updateLockup:v9 withItem:v14];
            --self->_missingDataCount;
          }
        }
      }

      v6 = [(NSArray *)v4 countByEnumeratingWithState:&v16 objects:v20 count:16];
    }

    while (v6);
  }
}

- (id)_brickItemsWithChildren:(id)a3 customPageContext:(id)a4
{
  v23 = *MEMORY[0x277D85DE8];
  v6 = a3;
  v7 = a4;
  v17 = [MEMORY[0x277CBEB18] array];
  v8 = [v7 copy];
  v18 = 0u;
  v19 = 0u;
  v20 = 0u;
  v21 = 0u;
  v9 = v6;
  v10 = [v9 countByEnumeratingWithState:&v18 objects:v22 count:16];
  if (v10)
  {
    v11 = v10;
    v12 = *v19;
    do
    {
      for (i = 0; i != v11; ++i)
      {
        if (*v19 != v12)
        {
          objc_enumerationMutation(v9);
        }

        v14 = *(*(&v18 + 1) + 8 * i);
        objc_opt_class();
        if (objc_opt_isKindOfClass())
        {
          [v8 setComponentDictionary:v14];
          v15 = [[SKUIBrickItem alloc] initWithCustomPageContext:v8];
          if (v15 && [(SKUISwooshPageComponent *)self _isBrickAvailable:v15 withPageContext:v7])
          {
            [v17 addObject:v15];
          }
        }
      }

      v11 = [v9 countByEnumeratingWithState:&v18 objects:v22 count:16];
    }

    while (v11);
  }

  return v17;
}

- (id)_brickItemsWithChildren:(id)a3 featuredPageContext:(id)a4
{
  v23 = *MEMORY[0x277D85DE8];
  v6 = a3;
  v7 = a4;
  v17 = [MEMORY[0x277CBEB18] array];
  v8 = [v7 copy];
  v18 = 0u;
  v19 = 0u;
  v20 = 0u;
  v21 = 0u;
  v9 = v6;
  v10 = [v9 countByEnumeratingWithState:&v18 objects:v22 count:16];
  if (v10)
  {
    v11 = v10;
    v12 = *v19;
    do
    {
      for (i = 0; i != v11; ++i)
      {
        if (*v19 != v12)
        {
          objc_enumerationMutation(v9);
        }

        v14 = *(*(&v18 + 1) + 8 * i);
        objc_opt_class();
        if (objc_opt_isKindOfClass())
        {
          [v8 setComponentDictionary:v14];
          v15 = [[SKUIBrickItem alloc] initWithComponentContext:v8];
          if (v15 && [(SKUISwooshPageComponent *)self _isBrickAvailable:v15 withPageContext:v7])
          {
            [v17 addObject:v15];
          }
        }
      }

      v11 = [v9 countByEnumeratingWithState:&v18 objects:v22 count:16];
    }

    while (v11);
  }

  return v17;
}

- (unint64_t)_defaultVisibleFieldsForItemKind:(int64_t)a3
{
  if (a3 <= 5)
  {
    if ((a3 - 1) >= 3)
    {
      if ((a3 - 4) >= 2 && a3)
      {
        return 0;
      }

      goto LABEL_10;
    }

    return 19;
  }

  if (a3 <= 0x12)
  {
    if (((1 << a3) & 0x10B80) == 0)
    {
      if (((1 << a3) & 0x63400) == 0)
      {
        if (((1 << a3) & 0xC000) != 0)
        {
          return 530;
        }

        goto LABEL_12;
      }

LABEL_10:
      v8 = v3;
      v9 = v4;
      SKUILockupStyleDefault(v6);
      return v7;
    }

    return 19;
  }

LABEL_12:
  if (a3 == 6)
  {
    return 18;
  }

  else
  {
    return 0;
  }
}

- (BOOL)_isBrickAvailable:(id)a3 withPageContext:(id)a4
{
  v5 = a4;
  v6 = [a3 link];
  v7 = v6;
  if (v6)
  {
    if ([v6 isActionable])
    {
      LOBYTE(v8) = 1;
    }

    else
    {
      v9 = [v7 itemIdentifier];
      if (v9)
      {
        v8 = [v5 isUnavailableItemIdentifier:v9] ^ 1;
      }

      else
      {
        LOBYTE(v8) = 0;
      }
    }
  }

  else
  {
    LOBYTE(v8) = 0;
  }

  return v8;
}

- (SKUILockupStyle)_lockupStyleWithLockups:(SEL)a3
{
  v21 = *MEMORY[0x277D85DE8];
  v6 = a4;
  retstr->layoutStyle = 0;
  retstr->visibleFields = 0;
  retstr->artworkSize = 0;
  SKUILockupStyleDefault(retstr);
  v7 = objc_alloc_init(MEMORY[0x277CCAB58]);
  v16 = 0u;
  v17 = 0u;
  v18 = 0u;
  v19 = 0u;
  v8 = v6;
  v9 = [v8 countByEnumeratingWithState:&v16 objects:v20 count:16];
  if (v9)
  {
    v10 = v9;
    v11 = *v17;
    do
    {
      v12 = 0;
      do
      {
        if (*v17 != v11)
        {
          objc_enumerationMutation(v8);
        }

        v13 = [*(*(&v16 + 1) + 8 * v12) item];
        v14 = v13;
        if (v13)
        {
          [v7 addIndex:{-[SKUISwooshPageComponent _defaultVisibleFieldsForItemKind:](self, "_defaultVisibleFieldsForItemKind:", objc_msgSend(v13, "itemKind"))}];
        }

        ++v12;
      }

      while (v10 != v12);
      v10 = [v8 countByEnumeratingWithState:&v16 objects:v20 count:16];
    }

    while (v10);
  }

  if ([v7 count] == 1)
  {
    retstr->visibleFields = [v7 firstIndex];
  }

  return result;
}

- (id)_lockupsWithChildren:(id)a3 context:(id)a4
{
  v22 = *MEMORY[0x277D85DE8];
  v6 = a3;
  v7 = a4;
  v8 = [MEMORY[0x277CBEB18] array];
  v17 = 0u;
  v18 = 0u;
  v19 = 0u;
  v20 = 0u;
  v9 = v6;
  v10 = [v9 countByEnumeratingWithState:&v17 objects:v21 count:16];
  if (v10)
  {
    v11 = v10;
    v12 = *v18;
    do
    {
      for (i = 0; i != v11; ++i)
      {
        if (*v18 != v12)
        {
          objc_enumerationMutation(v9);
        }

        v14 = *(*(&v17 + 1) + 8 * i);
        objc_opt_class();
        if (objc_opt_isKindOfClass())
        {
          v15 = [(SKUISwooshPageComponent *)self _lockupWithItemIdentifier:v14 context:v7, v17];
          if (v15)
          {
            [v8 addObject:v15];
          }
        }
      }

      v11 = [v9 countByEnumeratingWithState:&v17 objects:v21 count:16];
    }

    while (v11);
  }

  return v8;
}

- (id)_lockupsWithChildren:(id)a3 featuredPageContext:(id)a4
{
  v24 = *MEMORY[0x277D85DE8];
  v5 = a3;
  v6 = a4;
  v17 = [MEMORY[0x277CBEB18] array];
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
    do
    {
      for (i = 0; i != v9; ++i)
      {
        if (*v20 != v10)
        {
          objc_enumerationMutation(v7);
        }

        v12 = *(*(&v19 + 1) + 8 * i);
        objc_opt_class();
        if (objc_opt_isKindOfClass())
        {
          v13 = [v12 objectForKey:@"adamId"];
LABEL_10:
          v14 = v13;
          goto LABEL_12;
        }

        objc_opt_class();
        if (objc_opt_isKindOfClass())
        {
          v13 = v12;
          goto LABEL_10;
        }

        v14 = 0;
LABEL_12:
        objc_opt_class();
        if (objc_opt_isKindOfClass())
        {
          v15 = [(SKUISwooshPageComponent *)self _lockupWithItemIdentifier:v14 context:v6];
          if (v15)
          {
            [v17 addObject:v15];
          }
        }
      }

      v9 = [v7 countByEnumeratingWithState:&v19 objects:v23 count:16];
    }

    while (v9);
  }

  return v17;
}

- (id)_lockupWithItemIdentifier:(id)a3 context:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = [v7 itemForItemIdentifier:v6];
  if (v8)
  {
    v14 = *&self->_lockupStyle.artworkSize;
    visibleFields = self->_lockupStyle.visibleFields;
    v9 = [(SKUISwooshPageComponent *)self _newLockupComponentWithItem:v8 defaultStyle:&v14];
  }

  else
  {
    if ([v7 isUnavailableItemIdentifier:v6])
    {
      v10 = 0;
      goto LABEL_7;
    }

    v11 = [SKUILockupComponent alloc];
    v12 = [v6 longLongValue];
    v14 = *&self->_lockupStyle.artworkSize;
    visibleFields = self->_lockupStyle.visibleFields;
    v9 = [(SKUILockupComponent *)v11 initWithItemIdentifier:v12 style:&v14];
  }

  v10 = v9;
LABEL_7:

  return v10;
}

- (id)_mediaComponentsWithChildren:(id)a3 context:(id)a4
{
  v4 = a4;
  v5 = [[SKUIGalleryPageComponent alloc] initWithCustomPageContext:v4];

  v6 = [(SKUIGalleryPageComponent *)v5 childComponents];

  return v6;
}

- (id)_newLockupComponentWithItem:(id)a3 defaultStyle:(SKUILockupStyle *)a4
{
  v5 = a3;
  if ([v5 itemKind] == 17)
  {
    a4->visibleFields = 150;
  }

  v6 = [SKUILockupComponent alloc];
  v9 = *&a4->artworkSize;
  visibleFields = a4->visibleFields;
  v7 = [(SKUILockupComponent *)v6 initWithItem:v5 style:&v9];

  return v7;
}

- (void)_reloadMissingDataCount
{
  v25 = *MEMORY[0x277D85DE8];
  self->_missingDataCount = 0;
  v19 = 0u;
  v20 = 0u;
  v21 = 0u;
  v22 = 0u;
  v3 = self->_bricks;
  v4 = [(NSArray *)v3 countByEnumeratingWithState:&v19 objects:v24 count:16];
  if (v4)
  {
    v5 = v4;
    v6 = *v20;
    do
    {
      v7 = 0;
      do
      {
        if (*v20 != v6)
        {
          objc_enumerationMutation(v3);
        }

        v8 = [*(*(&v19 + 1) + 8 * v7) link];
        if (([v8 isActionable] & 1) == 0)
        {
          v9 = [v8 itemIdentifier];

          if (v9)
          {
            ++self->_missingDataCount;
          }
        }

        ++v7;
      }

      while (v5 != v7);
      v5 = [(NSArray *)v3 countByEnumeratingWithState:&v19 objects:v24 count:16];
    }

    while (v5);
  }

  v17 = 0u;
  v18 = 0u;
  v15 = 0u;
  v16 = 0u;
  v10 = self->_lockups;
  v11 = [(NSArray *)v10 countByEnumeratingWithState:&v15 objects:v23 count:16];
  if (v11)
  {
    v12 = v11;
    v13 = *v16;
    do
    {
      v14 = 0;
      do
      {
        if (*v16 != v13)
        {
          objc_enumerationMutation(v10);
        }

        if ([*(*(&v15 + 1) + 8 * v14) _needsItemData])
        {
          ++self->_missingDataCount;
        }

        ++v14;
      }

      while (v12 != v14);
      v12 = [(NSArray *)v10 countByEnumeratingWithState:&v15 objects:v23 count:16];
    }

    while (v12);
  }
}

- (void)_setSeeAllValuesWithLinkInfo:(id)a3
{
  v10 = a3;
  v4 = [v10 objectForKey:@"label"];
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v5 = [v4 copy];
    seeAllTitle = self->_seeAllTitle;
    self->_seeAllTitle = v5;
  }

  v7 = [v10 objectForKey:@"url"];

  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v8 = [objc_alloc(MEMORY[0x277CBEBC0]) initWithString:v7];
    seeAllURL = self->_seeAllURL;
    self->_seeAllURL = v8;
  }
}

- (void)_updateLockup:(id)a3 withItem:(id)a4
{
  v5 = a3;
  v6 = a4;
  v11 = 0uLL;
  v12 = 0;
  if (v5)
  {
    [v5 lockupStyle];
  }

  if ([v6 itemKind] == 17)
  {
    SKUILockupStyleDefault(&v9);
    v7 = v11;
    v8 = v12;
    if (SKUILockupStyleEqualToLockupStyle(&v9, &v7))
    {
      v12 = 150;
      v9 = v11;
      v10 = 150;
      [v5 _setLockupStyle:&v9];
    }
  }

  [v5 _setItem:v6];
}

@end