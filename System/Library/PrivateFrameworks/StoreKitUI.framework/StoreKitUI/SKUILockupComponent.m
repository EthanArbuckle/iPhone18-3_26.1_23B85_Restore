@interface SKUILockupComponent
- (BOOL)_needsItemData;
- (SKUILockupComponent)initWithCustomPageContext:(id)a3;
- (SKUILockupComponent)initWithItem:(id)a3 style:(SKUILockupStyle *)a4;
- (SKUILockupComponent)initWithItemIdentifier:(int64_t)a3 style:(SKUILockupStyle *)a4;
- (SKUILockupComponent)initWithViewElement:(id)a3;
- (void)_setItem:(id)a3;
- (void)_setLockupStyle:(SKUILockupStyle *)a3;
@end

@implementation SKUILockupComponent

- (SKUILockupComponent)initWithCustomPageContext:(id)a3
{
  v4 = a3;
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
  v13 = [(SKUIPageComponent *)&v27 initWithCustomPageContext:v4];
  if (v13)
  {
    v14 = [v4 componentDictionary];
    v15 = [v14 objectForKey:@"adamId"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v16 = [v4 itemForItemIdentifier:v15];
      item = v13->_item;
      v13->_item = v16;

      v13->_itemIdentifier = [v15 longLongValue];
    }

    v18 = [v14 objectForKey:@"editorial"];

    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v19 = [v4 copy];
      [v19 setComponentDictionary:v18];
      v20 = [[SKUIEditorialComponent alloc] initWithCustomPageContext:v19];
      editorial = v13->_editorial;
      v13->_editorial = v20;

      if ([(SKUIEditorialComponent *)v13->_editorial _usesLockupTitle])
      {
        v22 = v13->_editorial;
        v23 = [(SKUIItem *)v13->_item title];
        [(SKUIEditorialComponent *)v22 _setTitleText:v23];
      }
    }

    SKUILockupStyleForDictionary(v14, v4, &v25);
    *&v13->_lockupStyle.artworkSize = v25;
    v13->_lockupStyle.visibleFields = v26;
  }

  return v13;
}

- (SKUILockupComponent)initWithItemIdentifier:(int64_t)a3 style:(SKUILockupStyle *)a4
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
    result->_itemIdentifier = a3;
    v16 = *&a4->artworkSize;
    result->_lockupStyle.visibleFields = a4->visibleFields;
    *&result->_lockupStyle.artworkSize = v16;
  }

  return result;
}

- (SKUILockupComponent)initWithItem:(id)a3 style:(SKUILockupStyle *)a4
{
  v7 = a3;
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
    v16->_itemIdentifier = [v7 itemIdentifier];
    objc_storeStrong(&v16->_item, a3);
    visibleFields = a4->visibleFields;
    *&v16->_lockupStyle.artworkSize = *&a4->artworkSize;
    v16->_lockupStyle.visibleFields = visibleFields;
  }

  return v16;
}

- (SKUILockupComponent)initWithViewElement:(id)a3
{
  v4 = a3;
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
  v13 = [(SKUIPageComponent *)&v15 initWithViewElement:v4];

  return v13;
}

- (BOOL)_needsItemData
{
  v2 = [(SKUIItem *)self->_item artworksProvider];
  v3 = v2;
  if (v2)
  {
    v4 = [v2 hasArtwork] ^ 1;
  }

  else
  {
    LOBYTE(v4) = 1;
  }

  return v4;
}

- (void)_setItem:(id)a3
{
  v5 = a3;
  v6 = v5;
  if (self->_item != v5)
  {
    v9 = v5;
    objc_storeStrong(&self->_item, a3);
    v5 = [(SKUIEditorialComponent *)self->_editorial _usesLockupTitle];
    v6 = v9;
    if (v5)
    {
      editorial = self->_editorial;
      v8 = [(SKUIItem *)self->_item title];
      [(SKUIEditorialComponent *)editorial _setTitleText:v8];

      v6 = v9;
    }
  }

  MEMORY[0x2821F96F8](v5, v6);
}

- (void)_setLockupStyle:(SKUILockupStyle *)a3
{
  visibleFields = a3->visibleFields;
  *&self->_lockupStyle.artworkSize = *&a3->artworkSize;
  self->_lockupStyle.visibleFields = visibleFields;
}

@end