@interface STUIStatusBarPersistentAnimationView
- (id)actionForLayer:(id)a3 forKey:(id)a4;
- (void)setPersistentAnimations:(id)a3;
@end

@implementation STUIStatusBarPersistentAnimationView

- (id)actionForLayer:(id)a3 forKey:(id)a4
{
  v6 = a3;
  v7 = a4;
  if ([v7 isEqualToString:*MEMORY[0x277CDA7D8]])
  {
    v17 = MEMORY[0x277D85DD0];
    v18 = 3221225472;
    v19 = __62__STUIStatusBarPersistentAnimationView_actionForLayer_forKey___block_invoke;
    v20 = &unk_279D37F00;
    v21 = self;
LABEL_5:
    v8 = _StatusBar_UIBlockBasedCAAction();
    goto LABEL_7;
  }

  if ([v7 isEqualToString:*MEMORY[0x277CDA7D0]])
  {
    v12 = MEMORY[0x277D85DD0];
    v13 = 3221225472;
    v14 = __62__STUIStatusBarPersistentAnimationView_actionForLayer_forKey___block_invoke_2;
    v15 = &unk_279D37F00;
    v16 = self;
    goto LABEL_5;
  }

  v11.receiver = self;
  v11.super_class = STUIStatusBarPersistentAnimationView;
  v8 = [(STUIStatusBarPersistentAnimationView *)&v11 actionForLayer:v6 forKey:v7];
LABEL_7:
  v9 = v8;

  return v9;
}

void __62__STUIStatusBarPersistentAnimationView_actionForLayer_forKey___block_invoke(uint64_t a1)
{
  v12 = *MEMORY[0x277D85DE8];
  v7 = 0u;
  v8 = 0u;
  v9 = 0u;
  v10 = 0u;
  v1 = *(*(a1 + 32) + 408);
  v2 = [v1 countByEnumeratingWithState:&v7 objects:v11 count:16];
  if (v2)
  {
    v3 = v2;
    v4 = *v8;
    do
    {
      v5 = 0;
      do
      {
        if (*v8 != v4)
        {
          objc_enumerationMutation(v1);
        }

        v6 = *(*(&v7 + 1) + 8 * v5);
        if (objc_opt_respondsToSelector())
        {
          [v6 pausePersistentAnimation];
        }

        ++v5;
      }

      while (v3 != v5);
      v3 = [v1 countByEnumeratingWithState:&v7 objects:v11 count:16];
    }

    while (v3);
  }
}

void __62__STUIStatusBarPersistentAnimationView_actionForLayer_forKey___block_invoke_2(uint64_t a1)
{
  v12 = *MEMORY[0x277D85DE8];
  v7 = 0u;
  v8 = 0u;
  v9 = 0u;
  v10 = 0u;
  v1 = *(*(a1 + 32) + 408);
  v2 = [v1 countByEnumeratingWithState:&v7 objects:v11 count:16];
  if (v2)
  {
    v3 = v2;
    v4 = *v8;
    do
    {
      v5 = 0;
      do
      {
        if (*v8 != v4)
        {
          objc_enumerationMutation(v1);
        }

        v6 = *(*(&v7 + 1) + 8 * v5);
        if (objc_opt_respondsToSelector())
        {
          [v6 resumePersistentAnimation];
        }

        ++v5;
      }

      while (v3 != v5);
      v3 = [v1 countByEnumeratingWithState:&v7 objects:v11 count:16];
    }

    while (v3);
  }
}

- (void)setPersistentAnimations:(id)a3
{
  v21 = *MEMORY[0x277D85DE8];
  v4 = a3;
  animations = self->_animations;
  if (animations)
  {
    [(NSHashTable *)animations removeAllObjects];
  }

  else
  {
    v6 = [MEMORY[0x277CCAA50] weakObjectsHashTable];
    v7 = self->_animations;
    self->_animations = v6;
  }

  v8 = [(STUIStatusBarPersistentAnimationView *)self layer];
  v9 = [v8 context];

  v18 = 0u;
  v19 = 0u;
  v16 = 0u;
  v17 = 0u;
  v10 = v4;
  v11 = [v10 countByEnumeratingWithState:&v16 objects:v20 count:16];
  if (v11)
  {
    v12 = v11;
    v13 = *v17;
    do
    {
      for (i = 0; i != v12; ++i)
      {
        if (*v17 != v13)
        {
          objc_enumerationMutation(v10);
        }

        v15 = *(*(&v16 + 1) + 8 * i);
        [(NSHashTable *)self->_animations addObject:v15, v16];
        if (!v9 && (objc_opt_respondsToSelector() & 1) != 0)
        {
          [v15 pausePersistentAnimation];
        }
      }

      v12 = [v10 countByEnumeratingWithState:&v16 objects:v20 count:16];
    }

    while (v12);
  }
}

@end