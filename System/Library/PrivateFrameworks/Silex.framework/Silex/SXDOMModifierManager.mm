@interface SXDOMModifierManager
- (SXDOMModifierManager)initWithDOMFactory:(id)factory contextFactory:(id)contextFactory cacheKeyFactory:(id)keyFactory;
- (void)addModifier:(id)modifier;
- (void)processLayoutTask:(id)task layoutBlueprint:(id)blueprint DOMObjectProvider:(id)provider;
@end

@implementation SXDOMModifierManager

- (SXDOMModifierManager)initWithDOMFactory:(id)factory contextFactory:(id)contextFactory cacheKeyFactory:(id)keyFactory
{
  factoryCopy = factory;
  contextFactoryCopy = contextFactory;
  keyFactoryCopy = keyFactory;
  v19.receiver = self;
  v19.super_class = SXDOMModifierManager;
  v12 = [(SXDOMModifierManager *)&v19 init];
  v13 = v12;
  if (v12)
  {
    objc_storeStrong(&v12->_DOMFactory, factory);
    objc_storeStrong(&v13->_contextFactory, contextFactory);
    objc_storeStrong(&v13->_cacheKeyFactory, keyFactory);
    array = [MEMORY[0x1E695DF70] array];
    modifiers = v13->_modifiers;
    v13->_modifiers = array;

    v16 = objc_alloc_init(MEMORY[0x1E695DEE0]);
    cache = v13->_cache;
    v13->_cache = v16;
  }

  return v13;
}

- (void)addModifier:(id)modifier
{
  if (modifier)
  {
    modifierCopy = modifier;
    modifiers = [(SXDOMModifierManager *)self modifiers];
    [modifiers addObject:modifierCopy];
  }
}

- (void)processLayoutTask:(id)task layoutBlueprint:(id)blueprint DOMObjectProvider:(id)provider
{
  v43 = *MEMORY[0x1E69E9840];
  taskCopy = task;
  providerCopy = provider;
  if (![taskCopy type])
  {
    cacheKeyFactory = [(SXDOMModifierManager *)self cacheKeyFactory];
    options = [taskCopy options];
    v11 = [cacheKeyFactory createCacheKeyForLayoutOptions:options];

    cache = [(SXDOMModifierManager *)self cache];
    v13 = [cache objectForKey:v11];

    v14 = SXLayoutLog;
    v15 = os_log_type_enabled(SXLayoutLog, OS_LOG_TYPE_DEFAULT);
    if (v13)
    {
      if (!v15)
      {
LABEL_20:
        [providerCopy setDOM:v13];

        goto LABEL_21;
      }

      v16 = v14;
      identifier = [taskCopy identifier];
      cache2 = [(SXDOMModifierManager *)self cache];
      *buf = 138543618;
      v39 = identifier;
      v40 = 2048;
      v41 = cache2;
      _os_log_impl(&dword_1D825C000, v16, OS_LOG_TYPE_DEFAULT, "Using cached DOM for layout, task-identifier=%{public}@, cache=%p", buf, 0x16u);
    }

    else
    {
      if (v15)
      {
        v19 = v14;
        identifier2 = [taskCopy identifier];
        *buf = 138543362;
        v39 = identifier2;
        _os_log_impl(&dword_1D825C000, v19, OS_LOG_TYPE_DEFAULT, "Creating new DOM for layout, task-identifier=%{public}@", buf, 0xCu);
      }

      dOMFactory = [(SXDOMModifierManager *)self DOMFactory];
      createDOM = [dOMFactory createDOM];
      v16 = [createDOM mutableCopy];

      contextFactory = [(SXDOMModifierManager *)self contextFactory];
      options2 = [taskCopy options];
      identifier = [contextFactory createModificationContextWithLayoutOptions:options2];

      v36 = 0u;
      v37 = 0u;
      v34 = 0u;
      v35 = 0u;
      modifiers = [(SXDOMModifierManager *)self modifiers];
      v26 = [modifiers countByEnumeratingWithState:&v34 objects:v42 count:16];
      if (v26)
      {
        v27 = v26;
        v28 = *v35;
        do
        {
          v29 = 0;
          do
          {
            if (*v35 != v28)
            {
              objc_enumerationMutation(modifiers);
            }

            [*(*(&v34 + 1) + 8 * v29++) modifyDOM:v16 context:identifier];
          }

          while (v27 != v29);
          v27 = [modifiers countByEnumeratingWithState:&v34 objects:v42 count:16];
        }

        while (v27);
      }

      v13 = [v16 copy];
      if (!v13)
      {
        goto LABEL_19;
      }

      v30 = SXLayoutLog;
      if (os_log_type_enabled(SXLayoutLog, OS_LOG_TYPE_DEFAULT))
      {
        v31 = v30;
        identifier3 = [taskCopy identifier];
        cache3 = [(SXDOMModifierManager *)self cache];
        *buf = 138543618;
        v39 = identifier3;
        v40 = 2048;
        v41 = cache3;
        _os_log_impl(&dword_1D825C000, v31, OS_LOG_TYPE_DEFAULT, "Caching DOM for layout, task-identifier=%{public}@, cache=%p", buf, 0x16u);
      }

      cache2 = [(SXDOMModifierManager *)self cache];
      [cache2 setObject:v13 forKey:v11];
    }

LABEL_19:
    goto LABEL_20;
  }

LABEL_21:
}

@end