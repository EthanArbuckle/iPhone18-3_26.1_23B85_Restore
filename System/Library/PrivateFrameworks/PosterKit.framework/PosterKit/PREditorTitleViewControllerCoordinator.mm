@interface PREditorTitleViewControllerCoordinator
+ (Class)titleViewControllerClassForRole:(id)a3;
- (PREditorTitleViewControllerCoordinator)initWithRole:(id)a3;
- (id)beginInteractiveTransitionForStartingLook:(id)a3 toBaseFont:(id)a4 vibrancyConfiguration:(id)a5;
- (id)cachingVibrancyProviderForLook:(id)a3;
- (id)titleViewControllerForLook:(id)a3;
- (void)enumerateTimeViewControllersUsingBlock:(id)a3;
- (void)invalidateInteractiveTransition;
- (void)prepareInteractiveTransitionForStartingLook:(id)a3;
- (void)updateLookWithIdentifier:(id)a3 withLook:(id)a4;
@end

@implementation PREditorTitleViewControllerCoordinator

+ (Class)titleViewControllerClassForRole:(id)a3
{
  v3 = a3;
  if (([v3 isEqual:@"PRPosterRoleIncomingCall"] & 1) == 0)
  {
    [v3 isEqualToString:@"PRPosterRoleBackdrop"];
  }

  v4 = objc_opt_class();

  return v4;
}

- (PREditorTitleViewControllerCoordinator)initWithRole:(id)a3
{
  v5 = a3;
  v11.receiver = self;
  v11.super_class = PREditorTitleViewControllerCoordinator;
  v6 = [(PREditorTitleViewControllerCoordinator *)&v11 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_role, a3);
    v8 = [MEMORY[0x1E695DF90] dictionary];
    titleViewControllersForLook = v7->_titleViewControllersForLook;
    v7->_titleViewControllersForLook = v8;
  }

  return v7;
}

- (id)titleViewControllerForLook:(id)a3
{
  v4 = a3;
  v5 = [(NSMutableDictionary *)self->_titleViewControllersForLook objectForKeyedSubscript:v4];
  if (!v5)
  {
    v5 = objc_alloc_init([objc_opt_class() titleViewControllerClassForRole:self->_role]);
    [v5 pr_setForcesActiveAppearance:1];
    [(NSMutableDictionary *)self->_titleViewControllersForLook setObject:v5 forKeyedSubscript:v4];
  }

  return v5;
}

- (void)enumerateTimeViewControllersUsingBlock:(id)a3
{
  v16 = *MEMORY[0x1E69E9840];
  v4 = a3;
  v11 = 0u;
  v12 = 0u;
  v13 = 0u;
  v14 = 0u;
  v5 = self->_titleViewControllersForLook;
  v6 = [(NSMutableDictionary *)v5 countByEnumeratingWithState:&v11 objects:v15 count:16];
  if (v6)
  {
    v7 = v6;
    v8 = *v12;
    do
    {
      v9 = 0;
      do
      {
        if (*v12 != v8)
        {
          objc_enumerationMutation(v5);
        }

        v10 = [(PREditorTitleViewControllerCoordinator *)self titleViewControllerForLook:*(*(&v11 + 1) + 8 * v9), v11];
        if (v10)
        {
          v4[2](v4, v10);
        }

        ++v9;
      }

      while (v7 != v9);
      v7 = [(NSMutableDictionary *)v5 countByEnumeratingWithState:&v11 objects:v15 count:16];
    }

    while (v7);
  }
}

- (void)updateLookWithIdentifier:(id)a3 withLook:(id)a4
{
  v23 = *MEMORY[0x1E69E9840];
  v6 = a3;
  v7 = a4;
  v18 = 0u;
  v19 = 0u;
  v20 = 0u;
  v21 = 0u;
  v8 = self->_titleViewControllersForLook;
  v9 = [(NSMutableDictionary *)v8 countByEnumeratingWithState:&v18 objects:v22 count:16];
  if (v9)
  {
    v10 = v9;
    v11 = *v19;
LABEL_3:
    v12 = 0;
    while (1)
    {
      if (*v19 != v11)
      {
        objc_enumerationMutation(v8);
      }

      v13 = *(*(&v18 + 1) + 8 * v12);
      v14 = [v13 identifier];
      v15 = [v14 isEqualToString:v6];

      if (v15)
      {
        break;
      }

      if (v10 == ++v12)
      {
        v10 = [(NSMutableDictionary *)v8 countByEnumeratingWithState:&v18 objects:v22 count:16];
        if (v10)
        {
          goto LABEL_3;
        }

        goto LABEL_12;
      }
    }

    v16 = v13;

    if (!v16)
    {
      goto LABEL_13;
    }

    v17 = [(NSMutableDictionary *)self->_titleViewControllersForLook objectForKeyedSubscript:v16];
    [(NSMutableDictionary *)self->_titleViewControllersForLook setObject:0 forKeyedSubscript:v16];
    [(NSMutableDictionary *)self->_titleViewControllersForLook setObject:v17 forKeyedSubscript:v7];

    v8 = v16;
  }

LABEL_12:

LABEL_13:
}

- (void)prepareInteractiveTransitionForStartingLook:(id)a3
{
  v8 = a3;
  v5 = [(NSMutableDictionary *)self->_titleViewControllersForLook objectForKeyedSubscript:?];
  if (v5)
  {
    objc_storeStrong(&self->_transitionInProgressLook, a3);
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v6 = objc_alloc_init(MEMORY[0x1E6999610]);
      cachingProvider = self->_cachingProvider;
      self->_cachingProvider = v6;
    }
  }
}

- (id)beginInteractiveTransitionForStartingLook:(id)a3 toBaseFont:(id)a4 vibrancyConfiguration:(id)a5
{
  v8 = a4;
  v9 = a5;
  v10 = [(NSMutableDictionary *)self->_titleViewControllersForLook objectForKeyedSubscript:a3];
  if (v10)
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v11 = [v10 beginInteractiveTransitionToBaseFont:v8 vibrancyConfiguration:v9 cachingVibrancyTransitionProvider:self->_cachingProvider];
      v12 = [[PREditorTitleViewControllerCSTransitionWrapper alloc] initWithCSTransitioning:v11];
    }

    else
    {
      v12 = [v10 beginInteractiveTransitionToVibrancyConfiguration:v9];
    }
  }

  else
  {
    v12 = 0;
  }

  return v12;
}

- (void)invalidateInteractiveTransition
{
  cachingProvider = self->_cachingProvider;
  self->_cachingProvider = 0;

  transitionInProgressLook = self->_transitionInProgressLook;
  self->_transitionInProgressLook = 0;
}

- (id)cachingVibrancyProviderForLook:(id)a3
{
  if (self->_transitionInProgressLook == a3)
  {
    v4 = self->_cachingProvider;
  }

  else
  {
    v4 = 0;
  }

  return v4;
}

@end