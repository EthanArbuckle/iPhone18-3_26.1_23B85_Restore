@interface SKUIPageComponentContext
- (SKUIPageComponentContext)init;
- (id)copyWithZone:(_NSZone *)a3;
- (id)itemForItemIdentifier:(id)a3;
- (void)addUnavailableItemIdentifiers:(id)a3;
- (void)setUnavailableItemIdentifiers:(id)a3;
@end

@implementation SKUIPageComponentContext

- (SKUIPageComponentContext)init
{
  if (os_variant_has_internal_content())
  {
    if (_os_feature_enabled_impl())
    {
      v3 = os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_FAULT);
      if (v3)
      {
        [(SKUIPageComponentContext *)v3 init:v4];
      }
    }
  }

  v15.receiver = self;
  v15.super_class = SKUIPageComponentContext;
  v11 = [(SKUIPageComponentContext *)&v15 init];
  if (v11)
  {
    v12 = [MEMORY[0x277D75418] currentDevice];
    v13 = [v12 userInterfaceIdiom] == 1;

    v11->_layoutStyle = v13;
    v11->_pageGenerationTime = CFAbsoluteTimeGetCurrent();
  }

  return v11;
}

- (void)addUnavailableItemIdentifiers:(id)a3
{
  v4 = a3;
  unavailableItems = self->_unavailableItems;
  v8 = v4;
  if (!unavailableItems)
  {
    v6 = objc_alloc_init(MEMORY[0x277CBEB58]);
    v7 = self->_unavailableItems;
    self->_unavailableItems = v6;

    v4 = v8;
    unavailableItems = self->_unavailableItems;
  }

  [(NSMutableSet *)unavailableItems addObjectsFromArray:v4];
}

- (id)itemForItemIdentifier:(id)a3
{
  v4 = a3;
  if (([(NSMutableSet *)self->_unavailableItems containsObject:v4]& 1) != 0)
  {
    v5 = 0;
  }

  else
  {
    v5 = [(NSDictionary *)self->_items objectForKey:v4];
  }

  return v5;
}

- (void)setUnavailableItemIdentifiers:(id)a3
{
  unavailableItems = self->_unavailableItems;
  if (unavailableItems)
  {
    v6 = a3;
    [(NSMutableSet *)unavailableItems removeAllObjects];
  }

  else
  {
    v7 = MEMORY[0x277CBEB58];
    v8 = a3;
    v9 = objc_alloc_init(v7);
    v10 = self->_unavailableItems;
    self->_unavailableItems = v9;
  }

  v11[0] = MEMORY[0x277D85DD0];
  v11[1] = 3221225472;
  v11[2] = __58__SKUIPageComponentContext_setUnavailableItemIdentifiers___block_invoke;
  v11[3] = &unk_2781FA570;
  v11[4] = self;
  [a3 enumerateKeysAndObjectsUsingBlock:v11];
}

- (id)copyWithZone:(_NSZone *)a3
{
  v5 = [objc_msgSend(objc_opt_class() allocWithZone:{a3), "init"}];
  v6 = [(NSDictionary *)self->_componentDictionary copyWithZone:a3];
  v7 = v5[1];
  v5[1] = v6;

  v8 = [(NSArray *)self->_ineligibleGratisIdentifiers copyWithZone:a3];
  v9 = v5[2];
  v5[2] = v8;

  v10 = [(NSDictionary *)self->_items copyWithZone:a3];
  v11 = v5[3];
  v5[3] = v10;

  v5[4] = self->_layoutStyle;
  v12 = [(NSDictionary *)self->_platformKeyProfileOverrides copyWithZone:a3];
  v13 = v5[6];
  v5[6] = v12;

  v14 = [(NSMutableSet *)self->_unavailableItems mutableCopyWithZone:a3];
  v15 = v5[7];
  v5[7] = v14;

  return v5;
}

@end