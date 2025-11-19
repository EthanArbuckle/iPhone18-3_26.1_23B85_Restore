@interface UITraitChangeRegistry
@end

@implementation UITraitChangeRegistry

void __52___UITraitChangeRegistry_unregisterForTraitChanges___block_invoke(uint64_t a1, void *a2, void *a3)
{
  pointer = a2;
  v5 = a3;
  [v5 removeObject:*(a1 + 32)];
  if (![v5 count])
  {
    __UIInlinePointerSetInsertElement(*(a1 + 40), pointer, 0);
  }
}

void __90___UITraitChangeRegistry_traitsDidChange_forTraitEnvironment_withPreviousTraitCollection___block_invoke(uint64_t a1, uint64_t a2)
{
  v15 = *MEMORY[0x1E69E9840];
  v3 = *(*(a1 + 32) + 8);
  v4 = [MEMORY[0x1E696AD98] numberWithUnsignedInteger:a2];
  v5 = [v3 objectForKey:v4];

  v12 = 0u;
  v13 = 0u;
  v10 = 0u;
  v11 = 0u;
  v6 = v5;
  v7 = [v6 countByEnumeratingWithState:&v10 objects:v14 count:16];
  if (v7)
  {
    v8 = *v11;
    do
    {
      v9 = 0;
      do
      {
        if (*v11 != v8)
        {
          objc_enumerationMutation(v6);
        }

        __UIInlinePointerSetInsertElement(*(a1 + 40), *(*(&v10 + 1) + 8 * v9++), 1);
      }

      while (v7 != v9);
      v7 = [v6 countByEnumeratingWithState:&v10 objects:v14 count:16];
    }

    while (v7);
  }
}

void __108___UITraitChangeRegistry__performTrackedTraitInvalidations_forTraitEnvironment_withPreviousTraitCollection___block_invoke(uint64_t a1, const char *a2)
{
  v4 = *(a1 + 32);
  if (dyld_program_sdk_at_least())
  {
    [v4 a2];
  }

  else
  {
    [v4 performSelector_];
  }

  v5 = *(a1 + 40);
  if (v5)
  {
    v6 = MEMORY[0x1E696AEC0];
    v8 = NSStringFromSelector(a2);
    v7 = [v6 stringWithFormat:@"-%@", v8];
    [v5 addObject:v7];
  }
}

void __103___UITraitChangeRegistry__performTraitChangeCallbacks_forTraitEnvironment_withPreviousTraitCollection___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  v11 = v3;
  if (v3)
  {
    v4 = v3[2];
    if (v4)
    {
      v5 = v4;
      (*(v4 + 2))(v4, *(a1 + 32), *(a1 + 40));
      goto LABEL_15;
    }

    if (v11[1])
    {
      WeakRetained = *(a1 + 32);
    }

    else
    {
      WeakRetained = objc_loadWeakRetained(v11 + 3);
    }

    v7 = WeakRetained;
    if (WeakRetained)
    {
      if (v11[4])
      {
        v8 = v11[4];
      }

      else
      {
        v8 = 0;
      }

      v10 = *(a1 + 32);
      v9 = *(a1 + 40);
      if (dyld_program_sdk_at_least())
      {
        [v7 v8];
      }

      else
      {
        [v7 performSelector:v8 withObject:v10 withObject:v9];
      }
    }
  }

  else
  {
    v7 = 0;
  }

  v5 = 0;
LABEL_15:
}

@end