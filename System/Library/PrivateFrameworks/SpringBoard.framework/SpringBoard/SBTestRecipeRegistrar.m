@interface SBTestRecipeRegistrar
+ (void)_lock_registerRecipeWithClass:(Class)a3;
+ (void)registerAllTestRecipes;
+ (void)registerWindowScene:(id)a3;
@end

@implementation SBTestRecipeRegistrar

+ (void)registerAllTestRecipes
{
  os_unfair_lock_lock(&__lock);
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __47__SBTestRecipeRegistrar_registerAllTestRecipes__block_invoke;
  block[3] = &__block_descriptor_40_e12_v24__0_8_B16l;
  block[4] = a1;
  objc_enumerateClasses(0, 0, &unk_2833B0E78, 0, block);
  os_unfair_lock_unlock(&__lock);
}

void __47__SBTestRecipeRegistrar_registerAllTestRecipes__block_invoke(uint64_t a1, void *a2)
{
  v4 = objc_autoreleasePoolPush();
  if ((objc_opt_respondsToSelector() & 1) == 0 || [a2 shouldRegisterTestRecipe])
  {
    [*(a1 + 32) _lock_registerRecipeWithClass:a2];
  }

  objc_autoreleasePoolPop(v4);
}

+ (void)registerWindowScene:(id)a3
{
  v4 = a3;
  v3 = v4;
  BSDispatchMain();
}

void __45__SBTestRecipeRegistrar_registerWindowScene___block_invoke(uint64_t a1)
{
  v13 = *MEMORY[0x277D85DE8];
  os_unfair_lock_lock(&__lock);
  v10 = 0u;
  v11 = 0u;
  v8 = 0u;
  v9 = 0u;
  v2 = __recipes;
  v3 = [v2 countByEnumeratingWithState:&v8 objects:v12 count:16];
  if (v3)
  {
    v4 = v3;
    v5 = *v9;
    do
    {
      v6 = 0;
      do
      {
        if (*v9 != v5)
        {
          objc_enumerationMutation(v2);
        }

        v7 = *(*(&v8 + 1) + 8 * v6);
        if (objc_opt_respondsToSelector())
        {
          [v7 windowSceneDidUpdate:{*(a1 + 32), v8}];
        }

        ++v6;
      }

      while (v4 != v6);
      v4 = [v2 countByEnumeratingWithState:&v8 objects:v12 count:16];
    }

    while (v4);
  }

  os_unfair_lock_unlock(&__lock);
}

+ (void)_lock_registerRecipeWithClass:(Class)a3
{
  if (!__recipes)
  {
    v4 = objc_alloc_init(MEMORY[0x277CBEB58]);
    v5 = __recipes;
    __recipes = v4;
  }

  v6 = objc_alloc_init(a3);
  [__recipes addObject:v6];
  v7 = MEMORY[0x277D431C8];
  v8 = [v6 title];
  v17[0] = MEMORY[0x277D85DD0];
  v17[1] = 3221225472;
  v17[2] = __55__SBTestRecipeRegistrar__lock_registerRecipeWithClass___block_invoke;
  v17[3] = &unk_2783A8C18;
  v18 = v6;
  v12 = MEMORY[0x277D85DD0];
  v13 = 3221225472;
  v14 = __55__SBTestRecipeRegistrar__lock_registerRecipeWithClass___block_invoke_2;
  v15 = &unk_2783A8C18;
  v9 = v18;
  v16 = v9;
  v10 = [v7 recipeWithTitle:v8 increaseAction:v17 decreaseAction:&v12];

  v11 = objc_opt_class();
  if (objc_opt_respondsToSelector())
  {
    v11 = [v9 domainClass];
  }

  [v11 registerTestRecipe:{v10, v12, v13, v14, v15}];
}

@end