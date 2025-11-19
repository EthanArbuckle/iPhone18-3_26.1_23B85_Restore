@interface SBDisplayTransformerRegistry
+ (SBDisplayTransformerRegistry)sharedInstance;
- (id)_initWithOverrideTransformUpdater:(id)a3;
- (id)_lock_description;
- (id)addTransformer:(id)a3 withIdentifier:(id)a4;
- (id)transformDisplayConfiguration:(id)a3;
- (id)transformUpdater;
- (void)dealloc;
@end

@implementation SBDisplayTransformerRegistry

- (id)_initWithOverrideTransformUpdater:(id)a3
{
  v5 = a3;
  v14.receiver = self;
  v14.super_class = SBDisplayTransformerRegistry;
  v6 = [(SBDisplayTransformerRegistry *)&v14 init];
  v7 = v6;
  if (v6)
  {
    v6->_lock._os_unfair_lock_opaque = 0;
    v8 = [MEMORY[0x277CBEB58] set];
    lock_transformers = v7->_lock_transformers;
    v7->_lock_transformers = v8;

    objc_storeStrong(&v7->_overrideTransformUpdater, a3);
    v13 = v7;
    v10 = BSLogAddStateCaptureBlockWithTitle();
    stateCaptureToken = v13->_stateCaptureToken;
    v13->_stateCaptureToken = v10;
  }

  return v7;
}

id __66__SBDisplayTransformerRegistry__initWithOverrideTransformUpdater___block_invoke(uint64_t a1)
{
  os_unfair_lock_assert_not_owner((*(a1 + 32) + 8));
  os_unfair_lock_lock((*(a1 + 32) + 8));
  v2 = [*(a1 + 32) _lock_description];
  os_unfair_lock_unlock((*(a1 + 32) + 8));

  return v2;
}

+ (SBDisplayTransformerRegistry)sharedInstance
{
  if (sharedInstance_onceToken_28 != -1)
  {
    +[SBDisplayTransformerRegistry sharedInstance];
  }

  v3 = sharedInstance___result_1;

  return v3;
}

void __46__SBDisplayTransformerRegistry_sharedInstance__block_invoke()
{
  v0 = [[SBDisplayTransformerRegistry alloc] _initWithOverrideTransformUpdater:0];
  v1 = sharedInstance___result_1;
  sharedInstance___result_1 = v0;
}

- (void)dealloc
{
  [(BSInvalidatable *)self->_stateCaptureToken invalidate];
  v3.receiver = self;
  v3.super_class = SBDisplayTransformerRegistry;
  [(SBDisplayTransformerRegistry *)&v3 dealloc];
}

- (id)addTransformer:(id)a3 withIdentifier:(id)a4
{
  v7 = a3;
  v8 = a4;
  os_unfair_lock_assert_not_owner(&self->_lock);
  os_unfair_lock_lock(&self->_lock);
  objc_initWeak(&location, self);
  v9 = objc_alloc(MEMORY[0x277CF0CE8]);
  v10 = objc_opt_class();
  v11 = NSStringFromClass(v10);
  v16 = MEMORY[0x277D85DD0];
  v17 = 3221225472;
  v18 = __62__SBDisplayTransformerRegistry_addTransformer_withIdentifier___block_invoke;
  v19 = &unk_2783AEA48;
  objc_copyWeak(&v21, &location);
  v12 = v7;
  v20 = v12;
  v13 = [v9 initWithIdentifier:v8 forReason:v11 invalidationBlock:&v16];

  LODWORD(v11) = [(NSMutableSet *)self->_lock_transformers containsObject:v12];
  [(NSMutableSet *)self->_lock_transformers addObject:v12];
  os_unfair_lock_unlock(&self->_lock);
  if (v11)
  {
    v15 = [MEMORY[0x277CCA890] currentHandler];
    [v15 handleFailureInMethod:a2 object:self file:@"SBDisplayTransformerRegistry.m" lineNumber:85 description:{@"transformer already registered: %@", v12, v16, v17, v18, v19}];
  }

  objc_destroyWeak(&v21);
  objc_destroyWeak(&location);

  return v13;
}

void __62__SBDisplayTransformerRegistry_addTransformer_withIdentifier___block_invoke(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  if (WeakRetained)
  {
    v4 = WeakRetained;
    os_unfair_lock_assert_not_owner(WeakRetained + 2);
    os_unfair_lock_lock(v4 + 2);
    [*&v4[4]._os_unfair_lock_opaque removeObject:*(a1 + 32)];
    os_unfair_lock_unlock(v4 + 2);
    v3 = [(os_unfair_lock *)v4 transformUpdater];
    [v3 updateTransformsWithCompletion:0];

    WeakRetained = v4;
  }
}

- (id)transformUpdater
{
  overrideTransformUpdater = self->_overrideTransformUpdater;
  if (overrideTransformUpdater)
  {
    v3 = overrideTransformUpdater;
  }

  else
  {
    v3 = [MEMORY[0x277D0AA90] sharedInstance];
  }

  return v3;
}

- (id)transformDisplayConfiguration:(id)a3
{
  v48 = *MEMORY[0x277D85DE8];
  v4 = a3;
  os_unfair_lock_assert_not_owner(&self->_lock);
  os_unfair_lock_lock(&self->_lock);
  v37 = [v4 identity];
  v5 = [MEMORY[0x277CBEB58] set];
  v36 = [MEMORY[0x277CBEB58] set];
  v42 = 0u;
  v43 = 0u;
  v44 = 0u;
  v45 = 0u;
  v26 = self;
  obj = self->_lock_transformers;
  v30 = [(NSMutableSet *)obj countByEnumeratingWithState:&v42 objects:v47 count:16];
  if (v30)
  {
    v34 = 0;
    v33 = 0;
    v6 = 0;
    v7 = 0;
    v28 = v4;
    v29 = *v43;
LABEL_3:
    v8 = 0;
    while (1)
    {
      if (*v43 != v29)
      {
        objc_enumerationMutation(obj);
      }

      if (v7)
      {
        break;
      }

      v9 = *(*(&v42 + 1) + 8 * v8);
      v10 = [v9 transformDisplayConfiguration:v4];
      v38 = 0u;
      v39 = 0u;
      v40 = 0u;
      v41 = 0u;
      v35 = v10;
      v11 = [v35 countByEnumeratingWithState:&v38 objects:v46 count:16];
      if (v11)
      {
        v12 = v11;
        v31 = v8;
        v32 = v6;
        v13 = *v39;
        while (2)
        {
          for (i = 0; i != v12; ++i)
          {
            if (*v39 != v13)
            {
              objc_enumerationMutation(v35);
            }

            v15 = *(*(&v38 + 1) + 8 * i);
            v16 = [v15 identity];
            if (v15)
            {
              v7 = 0;
            }

            else
            {
              v7 = v9;
              v33 = 1;
            }

            v17 = [v16 rootIdentity];
            v18 = [v17 isEqual:v37];

            if ((v18 & 1) == 0)
            {
              v19 = v9;

              LOBYTE(v34) = 1;
              v7 = v19;
            }

            if ([v5 containsObject:v16])
            {
              v20 = v9;

              BYTE4(v34) = 1;
              v7 = v20;
            }

            if (v7)
            {
              v6 = v15;

              v4 = v28;
              goto LABEL_24;
            }

            [v5 addObject:v16];
            [v36 addObject:v15];
          }

          v12 = [v35 countByEnumeratingWithState:&v38 objects:v46 count:16];
          if (v12)
          {
            continue;
          }

          break;
        }

        v7 = 0;
        v4 = v28;
        v6 = v32;
LABEL_24:
        v8 = v31;
      }

      else
      {
        v7 = 0;
      }

      if (++v8 == v30)
      {
        v30 = [(NSMutableSet *)obj countByEnumeratingWithState:&v42 objects:v47 count:16];
        if (v30)
        {
          goto LABEL_3;
        }

        break;
      }
    }
  }

  else
  {
    v34 = 0;
    v33 = 0;
    v6 = 0;
    v7 = 0;
  }

  os_unfair_lock_unlock(&v26->_lock);
  if (v7)
  {
    if (v33)
    {
      [(SBDisplayTransformerRegistry *)a2 transformDisplayConfiguration:v26, v7];
    }

    if (v34)
    {
      v22 = [MEMORY[0x277CCA890] currentHandler];
      v23 = [v6 identity];
      v24 = [v4 identity];
      [v22 handleFailureInMethod:a2 object:v26 file:@"SBDisplayTransformerRegistry.m" lineNumber:146 description:{@"received configuration from %@ with identity %@ disjoint from source: %@", v7, v23, v24}];
    }

    if ((v34 & 0x100000000) != 0)
    {
      [(SBDisplayTransformerRegistry *)a2 transformDisplayConfiguration:v26, v7, v6];
    }
  }

  if (([v36 containsObject:v4] & 1) == 0)
  {
    [v36 addObject:v4];
  }

  return v36;
}

- (id)_lock_description
{
  v3 = [MEMORY[0x277CF0C00] builderWithObject:self];
  v4 = [(NSMutableSet *)self->_lock_transformers allObjects];
  [v3 appendArraySection:v4 withName:@"transformers" skipIfEmpty:0];

  v5 = [v3 build];

  return v5;
}

- (void)transformDisplayConfiguration:(uint64_t)a3 .cold.1(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = [MEMORY[0x277CCA890] currentHandler];
}

- (void)transformDisplayConfiguration:(uint64_t)a3 .cold.2(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v8 = [MEMORY[0x277CCA890] currentHandler];
  [v8 handleFailureInMethod:a1 object:a2 file:@"SBDisplayTransformerRegistry.m" lineNumber:147 description:{@"received non-unique configuration from %@ with identity %@", a3, a4}];
}

@end