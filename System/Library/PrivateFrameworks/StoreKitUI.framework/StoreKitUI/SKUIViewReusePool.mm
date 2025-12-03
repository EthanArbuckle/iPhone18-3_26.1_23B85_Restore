@interface SKUIViewReusePool
- (Class)viewClassWithReuseIdentifier:(id)identifier;
- (SKUIViewReusePool)initWithParentView:(id)view;
- (id)dequeueReusableViewWithReuseIdentifier:(id)identifier;
- (void)hideUnusedViews;
- (void)recycleReusableViews:(id)views;
- (void)registerClass:(Class)class forViewWithReuseIdentifier:(id)identifier;
@end

@implementation SKUIViewReusePool

- (SKUIViewReusePool)initWithParentView:(id)view
{
  objc_initWeak(&location, view);
  if (os_variant_has_internal_content() && _os_feature_enabled_impl() && os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEBUG))
  {
    [SKUIViewReusePool initWithParentView:];
  }

  v9.receiver = self;
  v9.super_class = SKUIViewReusePool;
  v4 = [(SKUIViewReusePool *)&v9 init];
  if (v4)
  {
    v5 = objc_loadWeakRetained(&location);
    objc_storeWeak(&v4->_parentView, v5);

    v6 = objc_alloc_init(MEMORY[0x277CBEB18]);
    viewPool = v4->_viewPool;
    v4->_viewPool = v6;
  }

  objc_destroyWeak(&location);
  return v4;
}

- (id)dequeueReusableViewWithReuseIdentifier:(id)identifier
{
  identifierCopy = identifier;
  viewPool = self->_viewPool;
  v12[0] = MEMORY[0x277D85DD0];
  v12[1] = 3221225472;
  v12[2] = __60__SKUIViewReusePool_dequeueReusableViewWithReuseIdentifier___block_invoke;
  v12[3] = &unk_2781FDCE8;
  v6 = identifierCopy;
  v13 = v6;
  v7 = [(NSMutableArray *)viewPool indexOfObjectPassingTest:v12];
  if (v7 == 0x7FFFFFFFFFFFFFFFLL)
  {
    v8 = [(SKUIViewReusePool *)self viewClassWithReuseIdentifier:v6];
    if (v8)
    {
      v9 = objc_alloc_init(v8);
      objc_setAssociatedObject(v9, "com.apple.StoreKitUI.viewReuse.ID", v6, 1);
    }

    else
    {
      v9 = 0;
    }
  }

  else
  {
    v10 = v7;
    v9 = [(NSMutableArray *)self->_viewPool objectAtIndexedSubscript:v7];
    [v9 setHidden:0];
    [(NSMutableArray *)self->_viewPool removeObjectAtIndex:v10];
  }

  return v9;
}

uint64_t __60__SKUIViewReusePool_dequeueReusableViewWithReuseIdentifier___block_invoke(uint64_t a1, id object)
{
  v3 = objc_getAssociatedObject(object, "com.apple.StoreKitUI.viewReuse.ID");
  if (v3)
  {
    v4 = [*(a1 + 32) isEqualToString:v3];
  }

  else
  {
    v4 = 0;
  }

  return v4;
}

- (void)hideUnusedViews
{
  v12 = *MEMORY[0x277D85DE8];
  v7 = 0u;
  v8 = 0u;
  v9 = 0u;
  v10 = 0u;
  v2 = self->_viewPool;
  v3 = [(NSMutableArray *)v2 countByEnumeratingWithState:&v7 objects:v11 count:16];
  if (v3)
  {
    v4 = v3;
    v5 = *v8;
    do
    {
      v6 = 0;
      do
      {
        if (*v8 != v5)
        {
          objc_enumerationMutation(v2);
        }

        [*(*(&v7 + 1) + 8 * v6++) setHidden:{1, v7}];
      }

      while (v4 != v6);
      v4 = [(NSMutableArray *)v2 countByEnumeratingWithState:&v7 objects:v11 count:16];
    }

    while (v4);
  }
}

- (void)recycleReusableViews:(id)views
{
  v19 = *MEMORY[0x277D85DE8];
  viewsCopy = views;
  v14 = 0u;
  v15 = 0u;
  v16 = 0u;
  v17 = 0u;
  v5 = [viewsCopy countByEnumeratingWithState:&v14 objects:v18 count:16];
  if (v5)
  {
    v6 = v5;
    v7 = *v15;
    v8 = MEMORY[0x277CBF2C0];
    do
    {
      for (i = 0; i != v6; ++i)
      {
        if (*v15 != v7)
        {
          objc_enumerationMutation(viewsCopy);
        }

        v10 = *(*(&v14 + 1) + 8 * i);
        v11 = objc_getAssociatedObject(v10, "com.apple.StoreKitUI.viewReuse.ID");

        if (v11)
        {
          [(NSMutableArray *)self->_viewPool insertObject:v10 atIndex:0];
          [v10 setCharge:0.0];
          v12 = v8[1];
          v13[0] = *v8;
          v13[1] = v12;
          v13[2] = v8[2];
          [v10 setTransform:v13];
        }

        else
        {
          [v10 removeFromSuperview];
        }

        if ([v10 conformsToProtocol:&unk_282990368])
        {
          [v10 viewWasRecycled];
        }
      }

      v6 = [viewsCopy countByEnumeratingWithState:&v14 objects:v18 count:16];
    }

    while (v6);
  }
}

- (void)registerClass:(Class)class forViewWithReuseIdentifier:(id)identifier
{
  identifierCopy = identifier;
  reuseClasses = self->_reuseClasses;
  v10 = identifierCopy;
  if (!reuseClasses)
  {
    v8 = [objc_alloc(MEMORY[0x277CBEB38]) initWithCapacity:1];
    v9 = self->_reuseClasses;
    self->_reuseClasses = v8;

    identifierCopy = v10;
    reuseClasses = self->_reuseClasses;
  }

  [(NSMutableDictionary *)reuseClasses setObject:class forKeyedSubscript:identifierCopy];
}

- (Class)viewClassWithReuseIdentifier:(id)identifier
{
  identifierCopy = identifier;
  if (_SKUIViewReusePoolGetCommonReuseClasses_onceToken != -1)
  {
    [SKUIViewReusePool viewClassWithReuseIdentifier:];
  }

  v5 = [_SKUIViewReusePoolGetCommonReuseClasses_commonReuseClasses objectForKeyedSubscript:identifierCopy];
  if (!v5)
  {
    v5 = [(NSMutableDictionary *)self->_reuseClasses objectForKeyedSubscript:identifierCopy];
  }

  v6 = v5;

  return v5;
}

- (void)initWithParentView:.cold.1()
{
  v2 = *MEMORY[0x277D85DE8];
  v0 = 136446210;
  v1 = "[SKUIViewReusePool initWithParentView:]";
}

@end