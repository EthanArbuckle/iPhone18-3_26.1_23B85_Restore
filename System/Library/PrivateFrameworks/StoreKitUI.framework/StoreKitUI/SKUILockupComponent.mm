@interface SKUILockupComponent
- (BOOL)_needsItemData;
- (SKUILockupComponent)initWithCustomPageContext:(id)context;
- (SKUILockupComponent)initWithItem:(id)item style:(SKUILockupStyle *)style;
- (SKUILockupComponent)initWithItemIdentifier:(int64_t)identifier style:(SKUILockupStyle *)style;
- (SKUILockupComponent)initWithViewElement:(id)element;
- (void)_setItem:(id)item;
- (void)_setLockupStyle:(SKUILockupStyle *)style;
@end

@implementation SKUILockupComponent

- (SKUILockupComponent)initWithCustomPageContext:(id)context
{
  contextCopy = context;
  if (os_variant_has_internal_content())
  {
    if (_os_feature_enabled_impl())
    {
      v5 = os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_FAULT);
      if (v5)
      {
        [(SKUILockupComponent *)v5 initWithCustomPageContext:v6, v7, v8, v9, v10, v11, v12];
      }
    }
  }

  v27.receiver = self;
  v27.super_class = SKUILockupComponent;
  v13 = [(SKUIPageComponent *)&v27 initWithCustomPageContext:contextCopy];
  if (v13)
  {
    componentDictionary = [contextCopy componentDictionary];
    v15 = [componentDictionary objectForKey:@"adamId"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v16 = [contextCopy itemForItemIdentifier:v15];
      item = v13->_item;
      v13->_item = v16;

      v13->_itemIdentifier = [v15 longLongValue];
    }

    v18 = [componentDictionary objectForKey:@"editorial"];

    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v19 = [contextCopy copy];
      [v19 setComponentDictionary:v18];
      v20 = [[SKUIEditorialComponent alloc] initWithCustomPageContext:v19];
      editorial = v13->_editorial;
      v13->_editorial = v20;

      if ([(SKUIEditorialComponent *)v13->_editorial _usesLockupTitle])
      {
        v22 = v13->_editorial;
        title = [(SKUIItem *)v13->_item title];
        [(SKUIEditorialComponent *)v22 _setTitleText:title];
      }
    }

    SKUILockupStyleForDictionary(componentDictionary, contextCopy, &v25);
    *&v13->_lockupStyle.artworkSize = v25;
    v13->_lockupStyle.visibleFields = v26;
  }

  return v13;
}

- (SKUILockupComponent)initWithItemIdentifier:(int64_t)identifier style:(SKUILockupStyle *)style
{
  if (os_variant_has_internal_content())
  {
    if (_os_feature_enabled_impl())
    {
      v7 = os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_FAULT);
      if (v7)
      {
        [(SKUILockupComponent *)v7 initWithItemIdentifier:v8 style:v9, v10, v11, v12, v13, v14];
      }
    }
  }

  v17.receiver = self;
  v17.super_class = SKUILockupComponent;
  result = [(SKUILockupComponent *)&v17 init];
  if (result)
  {
    result->_itemIdentifier = identifier;
    v16 = *&style->artworkSize;
    result->_lockupStyle.visibleFields = style->visibleFields;
    *&result->_lockupStyle.artworkSize = v16;
  }

  return result;
}

- (SKUILockupComponent)initWithItem:(id)item style:(SKUILockupStyle *)style
{
  itemCopy = item;
  if (os_variant_has_internal_content())
  {
    if (_os_feature_enabled_impl())
    {
      v8 = os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_FAULT);
      if (v8)
      {
        [(SKUILockupComponent *)v8 initWithItem:v9 style:v10, v11, v12, v13, v14, v15];
      }
    }
  }

  v19.receiver = self;
  v19.super_class = SKUILockupComponent;
  v16 = [(SKUILockupComponent *)&v19 init];
  if (v16)
  {
    v16->_itemIdentifier = [itemCopy itemIdentifier];
    objc_storeStrong(&v16->_item, item);
    visibleFields = style->visibleFields;
    *&v16->_lockupStyle.artworkSize = *&style->artworkSize;
    v16->_lockupStyle.visibleFields = visibleFields;
  }

  return v16;
}

- (SKUILockupComponent)initWithViewElement:(id)element
{
  elementCopy = element;
  if (os_variant_has_internal_content())
  {
    if (_os_feature_enabled_impl())
    {
      v5 = os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_FAULT);
      if (v5)
      {
        [(SKUILockupComponent *)v5 initWithViewElement:v6, v7, v8, v9, v10, v11, v12];
      }
    }
  }

  v15.receiver = self;
  v15.super_class = SKUILockupComponent;
  v13 = [(SKUIPageComponent *)&v15 initWithViewElement:elementCopy];

  return v13;
}

- (BOOL)_needsItemData
{
  artworksProvider = [(SKUIItem *)self->_item artworksProvider];
  v3 = artworksProvider;
  if (artworksProvider)
  {
    v4 = [artworksProvider hasArtwork] ^ 1;
  }

  else
  {
    LOBYTE(v4) = 1;
  }

  return v4;
}

- (void)_setItem:(id)item
{
  itemCopy = item;
  v6 = itemCopy;
  if (self->_item != itemCopy)
  {
    v9 = itemCopy;
    objc_storeStrong(&self->_item, item);
    itemCopy = [(SKUIEditorialComponent *)self->_editorial _usesLockupTitle];
    v6 = v9;
    if (itemCopy)
    {
      editorial = self->_editorial;
      title = [(SKUIItem *)self->_item title];
      [(SKUIEditorialComponent *)editorial _setTitleText:title];

      v6 = v9;
    }
  }

  MEMORY[0x2821F96F8](itemCopy, v6);
}

- (void)_setLockupStyle:(SKUILockupStyle *)style
{
  visibleFields = style->visibleFields;
  *&self->_lockupStyle.artworkSize = *&style->artworkSize;
  self->_lockupStyle.visibleFields = visibleFields;
}

@end