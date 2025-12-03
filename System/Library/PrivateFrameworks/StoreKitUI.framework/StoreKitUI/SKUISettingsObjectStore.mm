@interface SKUISettingsObjectStore
- (SKUISettingsObjectStore)init;
- (id)allObjects;
- (id)description;
- (id)visibleObjectAtIndex:(unint64_t)index;
- (unint64_t)indexOfVisibleObject:(id)object;
- (void)_updateVisibleOrder;
- (void)addObject:(id)object hidden:(BOOL)hidden;
- (void)enumerateVisibleObjects:(id)objects;
- (void)init;
- (void)removeObject:(id)object;
- (void)revealObject:(id)object;
@end

@implementation SKUISettingsObjectStore

- (SKUISettingsObjectStore)init
{
  if (os_variant_has_internal_content() && _os_feature_enabled_impl() && os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_FAULT))
  {
    [SKUISettingsObjectStore init];
  }

  v10.receiver = self;
  v10.super_class = SKUISettingsObjectStore;
  v3 = [(SKUISettingsObjectStore *)&v10 init];
  v4 = v3;
  if (v3)
  {
    v3->_dirty = 0;
    v5 = objc_alloc_init(MEMORY[0x277CBEB40]);
    allObjects = v4->_allObjects;
    v4->_allObjects = v5;

    v7 = objc_alloc_init(MEMORY[0x277CBEB40]);
    visibleObjects = v4->_visibleObjects;
    v4->_visibleObjects = v7;
  }

  return v4;
}

- (id)allObjects
{
  v2 = [(NSMutableOrderedSet *)self->_allObjects copy];

  return v2;
}

- (void)addObject:(id)object hidden:(BOOL)hidden
{
  objectCopy = object;
  [(NSMutableOrderedSet *)self->_allObjects addObject:?];
  if (!hidden)
  {
    [(NSMutableOrderedSet *)self->_visibleObjects addObject:objectCopy];
  }
}

- (void)enumerateVisibleObjects:(id)objects
{
  objectsCopy = objects;
  if (self->_dirty)
  {
    [(SKUISettingsObjectStore *)self _updateVisibleOrder];
  }

  [(NSMutableOrderedSet *)self->_visibleObjects enumerateObjectsUsingBlock:objectsCopy];
}

- (unint64_t)indexOfVisibleObject:(id)object
{
  objectCopy = object;
  if (self->_dirty)
  {
    [(SKUISettingsObjectStore *)self _updateVisibleOrder];
  }

  v5 = [(NSMutableOrderedSet *)self->_visibleObjects indexOfObject:objectCopy];

  return v5;
}

- (void)removeObject:(id)object
{
  allObjects = self->_allObjects;
  objectCopy = object;
  [(NSMutableOrderedSet *)allObjects removeObject:objectCopy];
  [(NSMutableOrderedSet *)self->_visibleObjects removeObject:objectCopy];
}

- (void)revealObject:(id)object
{
  visibleObjects = self->_visibleObjects;
  objectCopy = object;
  self->_dirty = [(NSMutableOrderedSet *)visibleObjects count]!= 0;
  [(NSMutableOrderedSet *)self->_visibleObjects addObject:objectCopy];
}

- (id)visibleObjectAtIndex:(unint64_t)index
{
  if (self->_dirty)
  {
    [(SKUISettingsObjectStore *)self _updateVisibleOrder];
  }

  visibleObjects = self->_visibleObjects;

  return [(NSMutableOrderedSet *)visibleObjects objectAtIndex:index];
}

- (id)description
{
  v22 = *MEMORY[0x277D85DE8];
  v3 = objc_alloc(MEMORY[0x277CCAB68]);
  v20.receiver = self;
  v20.super_class = SKUISettingsObjectStore;
  v4 = [(SKUISettingsObjectStore *)&v20 description];
  v5 = [v3 initWithFormat:@"%@: [", v4];

  v18 = 0u;
  v19 = 0u;
  v16 = 0u;
  v17 = 0u;
  obj = self->_allObjects;
  v6 = [(NSMutableOrderedSet *)obj countByEnumeratingWithState:&v16 objects:v21 count:16];
  if (v6)
  {
    v7 = v6;
    v8 = *v17;
    do
    {
      for (i = 0; i != v7; ++i)
      {
        if (*v17 != v8)
        {
          objc_enumerationMutation(obj);
        }

        v10 = *(*(&v16 + 1) + 8 * i);
        if ([(NSMutableOrderedSet *)self->_visibleObjects containsObject:v10])
        {
          v11 = @"\nX ";
        }

        else
        {
          v11 = @"\n  ";
        }

        [v5 appendString:v11];
        v12 = objc_opt_class();
        v13 = NSStringFromClass(v12);
        [v5 appendFormat:@"<%@: %p>", v13, v10];
      }

      v7 = [(NSMutableOrderedSet *)obj countByEnumeratingWithState:&v16 objects:v21 count:16];
    }

    while (v7);
  }

  [v5 appendString:@"\n]"];

  return v5;
}

- (void)_updateVisibleOrder
{
  v16 = *MEMORY[0x277D85DE8];
  v3 = objc_alloc_init(MEMORY[0x277CBEB40]);
  v11 = 0u;
  v12 = 0u;
  v13 = 0u;
  v14 = 0u;
  v4 = self->_allObjects;
  v5 = [(NSMutableOrderedSet *)v4 countByEnumeratingWithState:&v11 objects:v15 count:16];
  if (v5)
  {
    v6 = v5;
    v7 = *v12;
    do
    {
      for (i = 0; i != v6; ++i)
      {
        if (*v12 != v7)
        {
          objc_enumerationMutation(v4);
        }

        v9 = *(*(&v11 + 1) + 8 * i);
        if ([(NSMutableOrderedSet *)self->_visibleObjects indexOfObject:v9, v11]!= 0x7FFFFFFFFFFFFFFFLL)
        {
          [(NSMutableOrderedSet *)v3 addObject:v9];
        }
      }

      v6 = [(NSMutableOrderedSet *)v4 countByEnumeratingWithState:&v11 objects:v15 count:16];
    }

    while (v6);
  }

  visibleObjects = self->_visibleObjects;
  self->_visibleObjects = v3;
}

- (void)init
{
  v2 = *MEMORY[0x277D85DE8];
  v0 = 136446210;
  v1 = "[SKUISettingsObjectStore init]";
}

@end