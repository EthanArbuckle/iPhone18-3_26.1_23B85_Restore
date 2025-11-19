@interface SXDOMModifierManager
- (SXDOMModifierManager)initWithDOMFactory:(id)a3 contextFactory:(id)a4 cacheKeyFactory:(id)a5;
- (void)addModifier:(id)a3;
- (void)processLayoutTask:(id)a3 layoutBlueprint:(id)a4 DOMObjectProvider:(id)a5;
@end

@implementation SXDOMModifierManager

- (SXDOMModifierManager)initWithDOMFactory:(id)a3 contextFactory:(id)a4 cacheKeyFactory:(id)a5
{
  v9 = a3;
  v10 = a4;
  v11 = a5;
  v19.receiver = self;
  v19.super_class = SXDOMModifierManager;
  v12 = [(SXDOMModifierManager *)&v19 init];
  v13 = v12;
  if (v12)
  {
    objc_storeStrong(&v12->_DOMFactory, a3);
    objc_storeStrong(&v13->_contextFactory, a4);
    objc_storeStrong(&v13->_cacheKeyFactory, a5);
    v14 = [MEMORY[0x1E695DF70] array];
    modifiers = v13->_modifiers;
    v13->_modifiers = v14;

    v16 = objc_alloc_init(MEMORY[0x1E695DEE0]);
    cache = v13->_cache;
    v13->_cache = v16;
  }

  return v13;
}

- (void)addModifier:(id)a3
{
  if (a3)
  {
    v4 = a3;
    v5 = [(SXDOMModifierManager *)self modifiers];
    [v5 addObject:v4];
  }
}

- (void)processLayoutTask:(id)a3 layoutBlueprint:(id)a4 DOMObjectProvider:(id)a5
{
  v43 = *MEMORY[0x1E69E9840];
  v7 = a3;
  v8 = a5;
  if (![v7 type])
  {
    v9 = [(SXDOMModifierManager *)self cacheKeyFactory];
    v10 = [v7 options];
    v11 = [v9 createCacheKeyForLayoutOptions:v10];

    v12 = [(SXDOMModifierManager *)self cache];
    v13 = [v12 objectForKey:v11];

    v14 = SXLayoutLog;
    v15 = os_log_type_enabled(SXLayoutLog, OS_LOG_TYPE_DEFAULT);
    if (v13)
    {
      if (!v15)
      {
LABEL_20:
        [v8 setDOM:v13];

        goto LABEL_21;
      }

      v16 = v14;
      v17 = [v7 identifier];
      v18 = [(SXDOMModifierManager *)self cache];
      *buf = 138543618;
      v39 = v17;
      v40 = 2048;
      v41 = v18;
      _os_log_impl(&dword_1D825C000, v16, OS_LOG_TYPE_DEFAULT, "Using cached DOM for layout, task-identifier=%{public}@, cache=%p", buf, 0x16u);
    }

    else
    {
      if (v15)
      {
        v19 = v14;
        v20 = [v7 identifier];
        *buf = 138543362;
        v39 = v20;
        _os_log_impl(&dword_1D825C000, v19, OS_LOG_TYPE_DEFAULT, "Creating new DOM for layout, task-identifier=%{public}@", buf, 0xCu);
      }

      v21 = [(SXDOMModifierManager *)self DOMFactory];
      v22 = [v21 createDOM];
      v16 = [v22 mutableCopy];

      v23 = [(SXDOMModifierManager *)self contextFactory];
      v24 = [v7 options];
      v17 = [v23 createModificationContextWithLayoutOptions:v24];

      v36 = 0u;
      v37 = 0u;
      v34 = 0u;
      v35 = 0u;
      v25 = [(SXDOMModifierManager *)self modifiers];
      v26 = [v25 countByEnumeratingWithState:&v34 objects:v42 count:16];
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
              objc_enumerationMutation(v25);
            }

            [*(*(&v34 + 1) + 8 * v29++) modifyDOM:v16 context:v17];
          }

          while (v27 != v29);
          v27 = [v25 countByEnumeratingWithState:&v34 objects:v42 count:16];
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
        v32 = [v7 identifier];
        v33 = [(SXDOMModifierManager *)self cache];
        *buf = 138543618;
        v39 = v32;
        v40 = 2048;
        v41 = v33;
        _os_log_impl(&dword_1D825C000, v31, OS_LOG_TYPE_DEFAULT, "Caching DOM for layout, task-identifier=%{public}@, cache=%p", buf, 0x16u);
      }

      v18 = [(SXDOMModifierManager *)self cache];
      [v18 setObject:v13 forKey:v11];
    }

LABEL_19:
    goto LABEL_20;
  }

LABEL_21:
}

@end