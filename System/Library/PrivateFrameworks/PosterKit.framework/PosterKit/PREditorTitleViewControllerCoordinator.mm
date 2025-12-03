@interface PREditorTitleViewControllerCoordinator
+ (Class)titleViewControllerClassForRole:(id)role;
- (PREditorTitleViewControllerCoordinator)initWithRole:(id)role;
- (id)beginInteractiveTransitionForStartingLook:(id)look toBaseFont:(id)font vibrancyConfiguration:(id)configuration;
- (id)cachingVibrancyProviderForLook:(id)look;
- (id)titleViewControllerForLook:(id)look;
- (void)enumerateTimeViewControllersUsingBlock:(id)block;
- (void)invalidateInteractiveTransition;
- (void)prepareInteractiveTransitionForStartingLook:(id)look;
- (void)updateLookWithIdentifier:(id)identifier withLook:(id)look;
@end

@implementation PREditorTitleViewControllerCoordinator

+ (Class)titleViewControllerClassForRole:(id)role
{
  roleCopy = role;
  if (([roleCopy isEqual:@"PRPosterRoleIncomingCall"] & 1) == 0)
  {
    [roleCopy isEqualToString:@"PRPosterRoleBackdrop"];
  }

  v4 = objc_opt_class();

  return v4;
}

- (PREditorTitleViewControllerCoordinator)initWithRole:(id)role
{
  roleCopy = role;
  v11.receiver = self;
  v11.super_class = PREditorTitleViewControllerCoordinator;
  v6 = [(PREditorTitleViewControllerCoordinator *)&v11 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_role, role);
    dictionary = [MEMORY[0x1E695DF90] dictionary];
    titleViewControllersForLook = v7->_titleViewControllersForLook;
    v7->_titleViewControllersForLook = dictionary;
  }

  return v7;
}

- (id)titleViewControllerForLook:(id)look
{
  lookCopy = look;
  v5 = [(NSMutableDictionary *)self->_titleViewControllersForLook objectForKeyedSubscript:lookCopy];
  if (!v5)
  {
    v5 = objc_alloc_init([objc_opt_class() titleViewControllerClassForRole:self->_role]);
    [v5 pr_setForcesActiveAppearance:1];
    [(NSMutableDictionary *)self->_titleViewControllersForLook setObject:v5 forKeyedSubscript:lookCopy];
  }

  return v5;
}

- (void)enumerateTimeViewControllersUsingBlock:(id)block
{
  v16 = *MEMORY[0x1E69E9840];
  blockCopy = block;
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
          blockCopy[2](blockCopy, v10);
        }

        ++v9;
      }

      while (v7 != v9);
      v7 = [(NSMutableDictionary *)v5 countByEnumeratingWithState:&v11 objects:v15 count:16];
    }

    while (v7);
  }
}

- (void)updateLookWithIdentifier:(id)identifier withLook:(id)look
{
  v23 = *MEMORY[0x1E69E9840];
  identifierCopy = identifier;
  lookCopy = look;
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
      identifier = [v13 identifier];
      v15 = [identifier isEqualToString:identifierCopy];

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
    [(NSMutableDictionary *)self->_titleViewControllersForLook setObject:v17 forKeyedSubscript:lookCopy];

    v8 = v16;
  }

LABEL_12:

LABEL_13:
}

- (void)prepareInteractiveTransitionForStartingLook:(id)look
{
  lookCopy = look;
  v5 = [(NSMutableDictionary *)self->_titleViewControllersForLook objectForKeyedSubscript:?];
  if (v5)
  {
    objc_storeStrong(&self->_transitionInProgressLook, look);
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v6 = objc_alloc_init(MEMORY[0x1E6999610]);
      cachingProvider = self->_cachingProvider;
      self->_cachingProvider = v6;
    }
  }
}

- (id)beginInteractiveTransitionForStartingLook:(id)look toBaseFont:(id)font vibrancyConfiguration:(id)configuration
{
  fontCopy = font;
  configurationCopy = configuration;
  v10 = [(NSMutableDictionary *)self->_titleViewControllersForLook objectForKeyedSubscript:look];
  if (v10)
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v11 = [v10 beginInteractiveTransitionToBaseFont:fontCopy vibrancyConfiguration:configurationCopy cachingVibrancyTransitionProvider:self->_cachingProvider];
      v12 = [[PREditorTitleViewControllerCSTransitionWrapper alloc] initWithCSTransitioning:v11];
    }

    else
    {
      v12 = [v10 beginInteractiveTransitionToVibrancyConfiguration:configurationCopy];
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

- (id)cachingVibrancyProviderForLook:(id)look
{
  if (self->_transitionInProgressLook == look)
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