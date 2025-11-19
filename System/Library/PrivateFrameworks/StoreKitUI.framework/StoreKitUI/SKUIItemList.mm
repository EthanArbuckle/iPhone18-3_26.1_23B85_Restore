@interface SKUIItemList
- (NSMutableDictionary)cacheRepresentation;
- (SKUIItemList)initWithCacheRepresentation:(id)a3;
- (id)copyWithZone:(_NSZone *)a3;
- (void)setItems:(id)a3;
@end

@implementation SKUIItemList

- (void)setItems:(id)a3
{
  if (self->_items != a3)
  {
    v5 = [a3 mutableCopy];
    items = self->_items;
    self->_items = v5;

    MEMORY[0x2821F96F8](v5, items);
  }
}

- (SKUIItemList)initWithCacheRepresentation:(id)a3
{
  v4 = a3;
  if (os_variant_has_internal_content() && _os_feature_enabled_impl() && os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_FAULT))
  {
    [SKUIItemList initWithCacheRepresentation:];
  }

  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) == 0)
  {
    v5 = 0;
LABEL_18:

    goto LABEL_19;
  }

  v22.receiver = self;
  v22.super_class = SKUIItemList;
  v5 = [(SKUIItemList *)&v22 init];
  if (v5)
  {
    v6 = [v4 objectForKey:@"title"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v7 = [v6 copy];
      title = v5->_title;
      v5->_title = v7;
    }

    v9 = [v4 objectForKey:@"seeallt"];

    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v10 = [v9 copy];
      seeAllTitle = v5->_seeAllTitle;
      v5->_seeAllTitle = v10;
    }

    v12 = [v4 objectForKey:@"seeall"];

    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v13 = [v12 copy];
      seeAllURLString = v5->_seeAllURLString;
      v5->_seeAllURLString = v13;
    }

    v15 = [v4 objectForKey:@"items"];

    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v16 = objc_opt_class();
      v17 = SKUICacheCodingDecodeArray(v15, v16);
      items = v5->_items;
      v5->_items = v17;
    }

    self = [v4 objectForKey:@"unavail"];

    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v19 = [objc_alloc(MEMORY[0x277CBEB98]) initWithArray:self];
      unavailableItemIdentifiers = v5->_unavailableItemIdentifiers;
      v5->_unavailableItemIdentifiers = v19;
    }

    goto LABEL_18;
  }

LABEL_19:

  return v5;
}

- (NSMutableDictionary)cacheRepresentation
{
  v3 = [MEMORY[0x277CBEB38] dictionary];
  items = self->_items;
  if (items)
  {
    v5 = SKUICacheCodingEncodeArray(items);
    [v3 setObject:v5 forKey:@"items"];
  }

  seeAllTitle = self->_seeAllTitle;
  if (seeAllTitle)
  {
    [v3 setObject:seeAllTitle forKey:@"seeallt"];
  }

  seeAllURLString = self->_seeAllURLString;
  if (seeAllURLString)
  {
    [v3 setObject:seeAllURLString forKey:@"seeall"];
  }

  title = self->_title;
  if (title)
  {
    [v3 setObject:title forKey:@"title"];
  }

  unavailableItemIdentifiers = self->_unavailableItemIdentifiers;
  if (unavailableItemIdentifiers)
  {
    v10 = [(NSSet *)unavailableItemIdentifiers allObjects];
    [v3 setObject:v10 forKey:@"unavail"];
  }

  return v3;
}

- (id)copyWithZone:(_NSZone *)a3
{
  v5 = [objc_msgSend(objc_opt_class() allocWithZone:{a3), "init"}];
  v6 = [(NSMutableArray *)self->_items mutableCopyWithZone:a3];
  v7 = v5[1];
  v5[1] = v6;

  v8 = [(NSString *)self->_seeAllTitle copyWithZone:a3];
  v9 = v5[2];
  v5[2] = v8;

  v10 = [(NSString *)self->_seeAllURLString copyWithZone:a3];
  v11 = v5[3];
  v5[3] = v10;

  v12 = [(NSString *)self->_title copyWithZone:a3];
  v13 = v5[4];
  v5[4] = v12;

  v14 = [(NSSet *)self->_unavailableItemIdentifiers copyWithZone:a3];
  v15 = v5[5];
  v5[5] = v14;

  return v5;
}

- (void)initWithCacheRepresentation:.cold.1()
{
  v2 = *MEMORY[0x277D85DE8];
  v0 = 136446210;
  v1 = "[SKUIItemList initWithCacheRepresentation:]";
}

@end