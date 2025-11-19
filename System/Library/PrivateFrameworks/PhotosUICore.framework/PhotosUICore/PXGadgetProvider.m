@interface PXGadgetProvider
- (BOOL)gadget:(id)a3 transitionToViewController:(id)a4 animated:(BOOL)a5 completion:(id)a6;
- (PXGadgetDelegate)nextGadgetResponder;
- (PXGadgetProvider)init;
- (PXGadgetProvider)initWithIdentifier:(id)a3;
- (PXGadgetProviderDelegate)delegate;
- (id)gadgetViewControllerHostingGadget:(id)a3;
- (id)presentationEnvironmentForGadget:(id)a3;
- (unint64_t)estimatedNumberOfGadgets;
- (void)_teardownGadget:(id)a3;
- (void)_updateIfNeeded;
- (void)addGadgets:(id)a3;
- (void)dismissGadgetViewController:(id)a3 animated:(BOOL)a4 completion:(id)a5;
- (void)gadget:(id)a3 animateChanges:(id)a4;
- (void)gadget:(id)a3 didChange:(unint64_t)a4;
- (void)generateGadgets;
- (void)insertGadgets:(id)a3 atIndexes:(id)a4;
- (void)performChanges:(id)a3;
- (void)presentGadgetViewController:(id)a3 animated:(BOOL)a4 completion:(id)a5;
- (void)removeAllGadgets;
- (void)removeGadgets:(id)a3;
- (void)removeGadgetsAtIndexes:(id)a3;
@end

@implementation PXGadgetProvider

- (PXGadgetDelegate)nextGadgetResponder
{
  WeakRetained = objc_loadWeakRetained(&self->_nextGadgetResponder);

  return WeakRetained;
}

- (PXGadgetProviderDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

- (id)presentationEnvironmentForGadget:(id)a3
{
  v4 = a3;
  v5 = [(PXGadgetProvider *)self nextGadgetResponder];
  v6 = [v5 presentationEnvironmentForGadget:v4];

  return v6;
}

- (void)dismissGadgetViewController:(id)a3 animated:(BOOL)a4 completion:(id)a5
{
  v5 = a4;
  v8 = a5;
  v9 = a3;
  v10 = [(PXGadgetProvider *)self nextGadgetResponder];
  [v10 dismissGadgetViewController:v9 animated:v5 completion:v8];
}

- (void)presentGadgetViewController:(id)a3 animated:(BOOL)a4 completion:(id)a5
{
  v5 = a4;
  v8 = a5;
  v9 = a3;
  v10 = [(PXGadgetProvider *)self nextGadgetResponder];
  [v10 presentGadgetViewController:v9 animated:v5 completion:v8];
}

- (BOOL)gadget:(id)a3 transitionToViewController:(id)a4 animated:(BOOL)a5 completion:(id)a6
{
  v7 = a5;
  v10 = a3;
  v11 = a4;
  v12 = a6;
  v13 = [(PXGadgetProvider *)self nextGadgetResponder];
  v14 = v13;
  if (v13)
  {
    v15 = [v13 gadget:v10 transitionToViewController:v11 animated:v7 completion:v12];
  }

  else
  {
    v15 = 0;
  }

  return v15;
}

- (void)gadget:(id)a3 didChange:(unint64_t)a4
{
  v6 = a3;
  v7 = v6;
  if ((a4 & 0x20) != 0)
  {
    v13[0] = MEMORY[0x1E69E9820];
    v13[1] = 3221225472;
    v13[2] = __37__PXGadgetProvider_gadget_didChange___block_invoke;
    v13[3] = &unk_1E773EAE0;
    v14 = v6;
    [(PXGadgetProvider *)self performChanges:v13];
  }

  v8 = [(PXGadgetProvider *)self nextGadgetResponder];
  if (v8)
  {
    v9 = v8;
    v10 = [(PXGadgetProvider *)self nextGadgetResponder];
    v11 = objc_opt_respondsToSelector();

    if (v11)
    {
      v12 = [(PXGadgetProvider *)self nextGadgetResponder];
      [v12 gadget:v7 didChange:a4];
    }
  }
}

void __37__PXGadgetProvider_gadget_didChange___block_invoke(uint64_t a1, void *a2)
{
  v6 = *MEMORY[0x1E69E9840];
  v5 = *(a1 + 32);
  v2 = MEMORY[0x1E695DEC8];
  v3 = a2;
  v4 = [v2 arrayWithObjects:&v5 count:1];
  [v3 removeGadgets:{v4, v5, v6}];
}

- (void)gadget:(id)a3 animateChanges:(id)a4
{
  v12 = a3;
  v6 = a4;
  v7 = [(PXGadgetProvider *)self nextGadgetResponder];
  if (v7)
  {
    v8 = v7;
    v9 = [(PXGadgetProvider *)self nextGadgetResponder];
    v10 = objc_opt_respondsToSelector();

    if (v10)
    {
      v11 = [(PXGadgetProvider *)self nextGadgetResponder];
      [v11 gadget:v12 animateChanges:v6];
    }
  }
}

- (id)gadgetViewControllerHostingGadget:(id)a3
{
  v4 = a3;
  v5 = [(PXGadgetProvider *)self nextGadgetResponder];
  if (v5 && (v6 = v5, [(PXGadgetProvider *)self nextGadgetResponder], v7 = objc_claimAutoreleasedReturnValue(), v8 = objc_opt_respondsToSelector(), v7, v6, (v8 & 1) != 0))
  {
    v9 = [(PXGadgetProvider *)self nextGadgetResponder];
    v10 = [v9 gadgetViewControllerHostingGadget:v4];
  }

  else
  {
    v10 = 0;
  }

  return v10;
}

- (void)_teardownGadget:(id)a3
{
  v3 = a3;
  [v3 setDelegate:0];
  if (objc_opt_respondsToSelector())
  {
    [v3 gadgetWasDismissed];
  }
}

- (void)_updateIfNeeded
{
  if ([(PXGadgetProvider *)self invalidGadgets])
  {
    v3 = [(PXGadgetProvider *)self delegate];
    if (v3)
    {
      v4 = v3;
      v5 = [(PXGadgetProvider *)self delegate];
      v6 = objc_opt_respondsToSelector();

      if (v6)
      {
        v7 = [(PXGadgetProvider *)self delegate];
        [v7 invalidateGadgets];
      }
    }

    [(PXGadgetProvider *)self setInvalidGadgets:0];
  }
}

- (void)removeAllGadgets
{
  v27 = *MEMORY[0x1E69E9840];
  if (![(PXGadgetProvider *)self isPerformingChanges])
  {
    v16 = [MEMORY[0x1E696AAA8] currentHandler];
    v17 = NSStringFromSelector(a2);
    [v16 handleFailureInMethod:a2 object:self file:@"PXGadgetProvider.m" lineNumber:206 description:{@"[%@] %@ must be called from a performChanges block.", self, v17}];
  }

  v4 = PLUIGetLog();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEBUG))
  {
    v5 = NSStringFromSelector(a2);
    *buf = 138412290;
    v23 = v5;
    _os_log_impl(&dword_1A3C1C000, v4, OS_LOG_TYPE_DEBUG, "%@: Removing all gadgets", buf, 0xCu);
  }

  v6 = [(PXGadgetProvider *)self gadgets];
  if ([v6 count])
  {
    v20 = 0u;
    v21 = 0u;
    v18 = 0u;
    v19 = 0u;
    v7 = v6;
    v8 = [v7 countByEnumeratingWithState:&v18 objects:v26 count:16];
    if (v8)
    {
      v9 = v8;
      v10 = *v19;
      do
      {
        v11 = 0;
        do
        {
          if (*v19 != v10)
          {
            objc_enumerationMutation(v7);
          }

          [(PXGadgetProvider *)self _teardownGadget:*(*(&v18 + 1) + 8 * v11++)];
        }

        while (v9 != v11);
        v9 = [v7 countByEnumeratingWithState:&v18 objects:v26 count:16];
      }

      while (v9);
    }

    [(PXGadgetProvider *)self setGadgets:MEMORY[0x1E695E0F0]];
    v12 = PLUIGetLog();
    if (os_log_type_enabled(v12, OS_LOG_TYPE_DEBUG))
    {
      v13 = NSStringFromSelector(a2);
      *buf = 138412546;
      v23 = v13;
      v24 = 2112;
      v25 = v7;
      _os_log_impl(&dword_1A3C1C000, v12, OS_LOG_TYPE_DEBUG, "%@: Removed gadgets %@", buf, 0x16u);
    }

    [(PXGadgetProvider *)self setInvalidGadgets:1];
  }

  else
  {
    v14 = PLUIGetLog();
    if (os_log_type_enabled(v14, OS_LOG_TYPE_DEBUG))
    {
      v15 = NSStringFromSelector(a2);
      *buf = 138412290;
      v23 = v15;
      _os_log_impl(&dword_1A3C1C000, v14, OS_LOG_TYPE_DEBUG, "%@: No gadgets removed", buf, 0xCu);
    }
  }
}

- (void)removeGadgetsAtIndexes:(id)a3
{
  v21 = *MEMORY[0x1E69E9840];
  v5 = a3;
  if (![(PXGadgetProvider *)self isPerformingChanges])
  {
    v14 = [MEMORY[0x1E696AAA8] currentHandler];
    v15 = NSStringFromSelector(a2);
    [v14 handleFailureInMethod:a2 object:self file:@"PXGadgetProvider.m" lineNumber:186 description:{@"[%@] %@ must be called from a performChanges block.", self, v15}];
  }

  v6 = [v5 count];
  v7 = PLUIGetLog();
  v8 = os_log_type_enabled(v7, OS_LOG_TYPE_DEBUG);
  if (v6)
  {
    if (v8)
    {
      v9 = NSStringFromSelector(a2);
      *buf = 138412546;
      v18 = v9;
      v19 = 2112;
      v20 = v5;
      _os_log_impl(&dword_1A3C1C000, v7, OS_LOG_TYPE_DEBUG, "%@: Removing gadgets at indexes %@", buf, 0x16u);
    }

    v10 = [(PXGadgetProvider *)self gadgets];
    v7 = [v10 mutableCopy];

    v16[0] = MEMORY[0x1E69E9820];
    v16[1] = 3221225472;
    v16[2] = __43__PXGadgetProvider_removeGadgetsAtIndexes___block_invoke;
    v16[3] = &unk_1E772DE20;
    v16[4] = self;
    [v7 enumerateObjectsAtIndexes:v5 options:0 usingBlock:v16];
    [v7 removeObjectsAtIndexes:v5];
    [(PXGadgetProvider *)self setGadgets:v7];
    v11 = PLUIGetLog();
    if (os_log_type_enabled(v11, OS_LOG_TYPE_DEBUG))
    {
      v12 = NSStringFromSelector(a2);
      *buf = 138412546;
      v18 = v12;
      v19 = 2112;
      v20 = v5;
      _os_log_impl(&dword_1A3C1C000, v11, OS_LOG_TYPE_DEBUG, "%@: Removed gadgets at indexes %@", buf, 0x16u);
    }

    [(PXGadgetProvider *)self setInvalidGadgets:1];
  }

  else if (v8)
  {
    v13 = NSStringFromSelector(a2);
    *buf = 138412290;
    v18 = v13;
    _os_log_impl(&dword_1A3C1C000, v7, OS_LOG_TYPE_DEBUG, "%@: Ignoring attempt to remove gadgets at zero indexes", buf, 0xCu);
  }
}

- (void)removeGadgets:(id)a3
{
  v34 = *MEMORY[0x1E69E9840];
  v5 = a3;
  if (![(PXGadgetProvider *)self isPerformingChanges])
  {
    v23 = [MEMORY[0x1E696AAA8] currentHandler];
    v24 = NSStringFromSelector(a2);
    [v23 handleFailureInMethod:a2 object:self file:@"PXGadgetProvider.m" lineNumber:155 description:{@"[%@] %@ must be called from a performChanges block.", self, v24}];
  }

  v6 = [v5 count];
  v7 = PLUIGetLog();
  v8 = os_log_type_enabled(v7, OS_LOG_TYPE_DEBUG);
  if (v6)
  {
    if (v8)
    {
      v9 = NSStringFromSelector(a2);
      *buf = 138412546;
      v31 = v9;
      v32 = 2112;
      v33 = v5;
      _os_log_impl(&dword_1A3C1C000, v7, OS_LOG_TYPE_DEBUG, "%@: Removing gadgets %@", buf, 0x16u);
    }

    v7 = [objc_alloc(MEMORY[0x1E695DF70]) initWithCapacity:{-[NSObject count](v5, "count")}];
    v10 = [(PXGadgetProvider *)self gadgets];
    v25 = 0u;
    v26 = 0u;
    v27 = 0u;
    v28 = 0u;
    v11 = v5;
    v12 = [v11 countByEnumeratingWithState:&v25 objects:v29 count:16];
    if (v12)
    {
      v13 = v12;
      v14 = *v26;
      do
      {
        for (i = 0; i != v13; ++i)
        {
          if (*v26 != v14)
          {
            objc_enumerationMutation(v11);
          }

          v16 = *(*(&v25 + 1) + 8 * i);
          if ([v10 containsObject:v16])
          {
            [v7 addObject:v16];
            [(PXGadgetProvider *)self _teardownGadget:v16];
          }
        }

        v13 = [v11 countByEnumeratingWithState:&v25 objects:v29 count:16];
      }

      while (v13);
    }

    if ([v7 count])
    {
      v17 = [(PXGadgetProvider *)self gadgets];
      v18 = [v17 mutableCopy];

      [v18 removeObjectsInArray:v7];
      [(PXGadgetProvider *)self setGadgets:v18];
      v19 = PLUIGetLog();
      if (os_log_type_enabled(v19, OS_LOG_TYPE_DEBUG))
      {
        v20 = NSStringFromSelector(a2);
        *buf = 138412546;
        v31 = v20;
        v32 = 2112;
        v33 = v7;
        _os_log_impl(&dword_1A3C1C000, v19, OS_LOG_TYPE_DEBUG, "%@: Removed gadgets %@", buf, 0x16u);
      }

      [(PXGadgetProvider *)self setInvalidGadgets:1];
    }

    else
    {
      v18 = PLUIGetLog();
      if (os_log_type_enabled(v18, OS_LOG_TYPE_DEBUG))
      {
        v22 = NSStringFromSelector(a2);
        *buf = 138412290;
        v31 = v22;
        _os_log_impl(&dword_1A3C1C000, v18, OS_LOG_TYPE_DEBUG, "%@: No gadgets removed", buf, 0xCu);
      }
    }
  }

  else if (v8)
  {
    v21 = NSStringFromSelector(a2);
    *buf = 138412290;
    v31 = v21;
    _os_log_impl(&dword_1A3C1C000, v7, OS_LOG_TYPE_DEBUG, "%@: Ignoring attempt to remove zero gadgets", buf, 0xCu);
  }
}

- (void)insertGadgets:(id)a3 atIndexes:(id)a4
{
  v36 = *MEMORY[0x1E69E9840];
  v7 = a3;
  v8 = a4;
  if (![(PXGadgetProvider *)self isPerformingChanges])
  {
    v25 = [MEMORY[0x1E696AAA8] currentHandler];
    v26 = NSStringFromSelector(a2);
    [v25 handleFailureInMethod:a2 object:self file:@"PXGadgetProvider.m" lineNumber:116 description:{@"[%@] %@ must be called from a performChanges block.", self, v26}];
  }

  v9 = [v7 count];
  if ([v7 count])
  {
    if (v9 != [v8 count])
    {
      v27 = [MEMORY[0x1E696AAA8] currentHandler];
      [v27 handleFailureInMethod:a2 object:self file:@"PXGadgetProvider.m" lineNumber:120 description:{@"Invalid parameter not satisfying: %@", @"gadgetCount == indexes.count"}];
    }

    v10 = PLUIGetLog();
    if (os_log_type_enabled(v10, OS_LOG_TYPE_DEBUG))
    {
      v11 = NSStringFromSelector(a2);
      *buf = 138412802;
      v31 = v11;
      v32 = 2112;
      v33 = v7;
      v34 = 2112;
      v35 = v8;
      _os_log_impl(&dword_1A3C1C000, v10, OS_LOG_TYPE_DEBUG, "%@: Inserting Gadgets %@ at indexes %@", buf, 0x20u);
    }

    aSelector = a2;

    v12 = [objc_alloc(MEMORY[0x1E695DF70]) initWithCapacity:{-[NSObject count](v7, "count")}];
    v13 = [v8 firstIndex];
    v14 = objc_alloc_init(MEMORY[0x1E696AD50]);
    v15 = [(PXGadgetProvider *)self gadgets];
    v16 = [v15 mutableCopy];

    if (v9)
    {
      for (i = 0; i != v9; ++i)
      {
        v18 = [v7 objectAtIndexedSubscript:i];
        if (([v16 containsObject:v18] & 1) == 0)
        {
          [v12 addObject:v18];
          [v14 addIndex:v13];
          [v18 setDelegate:self];
        }

        v13 = [v8 indexGreaterThanIndex:v13];
      }
    }

    v19 = [v12 count];
    if (v19 != [v14 count])
    {
      v28 = [MEMORY[0x1E696AAA8] currentHandler];
      [v28 handleFailureInMethod:aSelector object:self file:@"PXGadgetProvider.m" lineNumber:142 description:@"number of gadgets to insert does not match the number of indexes specified"];
    }

    if ([v12 count])
    {
      [v16 insertObjects:v12 atIndexes:v14];
      [(PXGadgetProvider *)self setGadgets:v16];
      v20 = PLUIGetLog();
      if (os_log_type_enabled(v20, OS_LOG_TYPE_DEBUG))
      {
        v21 = NSStringFromSelector(aSelector);
        *buf = 138412802;
        v31 = v21;
        v32 = 2112;
        v33 = v12;
        v34 = 2112;
        v35 = v14;
        _os_log_impl(&dword_1A3C1C000, v20, OS_LOG_TYPE_DEBUG, "%@: Inserted gadgets %@ at indexes %@", buf, 0x20u);
      }

      [(PXGadgetProvider *)self setInvalidGadgets:1];
    }

    else
    {
      v23 = PLUIGetLog();
      if (os_log_type_enabled(v23, OS_LOG_TYPE_DEBUG))
      {
        v24 = NSStringFromSelector(aSelector);
        *buf = 138412290;
        v31 = v24;
        _os_log_impl(&dword_1A3C1C000, v23, OS_LOG_TYPE_DEBUG, "%@: No Gadgets added", buf, 0xCu);
      }
    }
  }

  else
  {
    v12 = PLUIGetLog();
    if (os_log_type_enabled(v12, OS_LOG_TYPE_DEBUG))
    {
      v22 = NSStringFromSelector(a2);
      *buf = 138412290;
      v31 = v22;
      _os_log_impl(&dword_1A3C1C000, v12, OS_LOG_TYPE_DEBUG, "%@: Ignoring attempt to insert zero gadgets", buf, 0xCu);
    }
  }
}

- (void)addGadgets:(id)a3
{
  v35 = *MEMORY[0x1E69E9840];
  v5 = a3;
  if (![(PXGadgetProvider *)self isPerformingChanges])
  {
    v24 = [MEMORY[0x1E696AAA8] currentHandler];
    v25 = NSStringFromSelector(a2);
    [v24 handleFailureInMethod:a2 object:self file:@"PXGadgetProvider.m" lineNumber:87 description:{@"[%@] %@ must be called from a performChanges block.", self, v25}];
  }

  v6 = [v5 count];
  v7 = PLUIGetLog();
  v8 = os_log_type_enabled(v7, OS_LOG_TYPE_DEBUG);
  if (v6)
  {
    if (v8)
    {
      v9 = NSStringFromSelector(a2);
      *buf = 138412546;
      v32 = v9;
      v33 = 2112;
      v34 = v5;
      _os_log_impl(&dword_1A3C1C000, v7, OS_LOG_TYPE_DEBUG, "%@: Adding Gadgets %@", buf, 0x16u);
    }

    v7 = [objc_alloc(MEMORY[0x1E695DF70]) initWithCapacity:{-[NSObject count](v5, "count")}];
    v10 = [(PXGadgetProvider *)self gadgets];
    v26 = 0u;
    v27 = 0u;
    v28 = 0u;
    v29 = 0u;
    v11 = v5;
    v12 = [v11 countByEnumeratingWithState:&v26 objects:v30 count:16];
    if (v12)
    {
      v13 = v12;
      v14 = *v27;
      do
      {
        for (i = 0; i != v13; ++i)
        {
          if (*v27 != v14)
          {
            objc_enumerationMutation(v11);
          }

          v16 = *(*(&v26 + 1) + 8 * i);
          if (([v10 containsObject:v16] & 1) == 0)
          {
            [v7 addObject:v16];
            [v16 setDelegate:self];
          }
        }

        v13 = [v11 countByEnumeratingWithState:&v26 objects:v30 count:16];
      }

      while (v13);
    }

    if ([v7 count])
    {
      v17 = [(PXGadgetProvider *)self gadgets];
      v18 = [v17 arrayByAddingObjectsFromArray:v7];
      [(PXGadgetProvider *)self setGadgets:v18];

      v19 = PLUIGetLog();
      if (os_log_type_enabled(v19, OS_LOG_TYPE_DEBUG))
      {
        v20 = NSStringFromSelector(a2);
        *buf = 138412546;
        v32 = v20;
        v33 = 2112;
        v34 = v7;
        _os_log_impl(&dword_1A3C1C000, v19, OS_LOG_TYPE_DEBUG, "%@: Added Gadgets %@", buf, 0x16u);
      }

      [(PXGadgetProvider *)self setInvalidGadgets:1];
    }

    else
    {
      v22 = PLUIGetLog();
      if (os_log_type_enabled(v22, OS_LOG_TYPE_DEBUG))
      {
        v23 = NSStringFromSelector(a2);
        *buf = 138412290;
        v32 = v23;
        _os_log_impl(&dword_1A3C1C000, v22, OS_LOG_TYPE_DEBUG, "%@: No Gadgets added", buf, 0xCu);
      }
    }
  }

  else if (v8)
  {
    v21 = NSStringFromSelector(a2);
    *buf = 138412290;
    v32 = v21;
    _os_log_impl(&dword_1A3C1C000, v7, OS_LOG_TYPE_DEBUG, "%@: Ignoring attempt to add zero gadgets", buf, 0xCu);
  }
}

- (void)performChanges:(id)a3
{
  v5 = a3;
  v4 = [(PXGadgetProvider *)self isPerformingChanges];
  [(PXGadgetProvider *)self setIsPerformingChanges:1];
  if (v5)
  {
    v5[2](v5, self);
  }

  [(PXGadgetProvider *)self setIsPerformingChanges:v4];
  if (![(PXGadgetProvider *)self isPerformingChanges])
  {
    [(PXGadgetProvider *)self _updateIfNeeded];
  }
}

- (void)generateGadgets
{
  v4 = [MEMORY[0x1E696AAA8] currentHandler];
  v5 = objc_opt_class();
  v6 = NSStringFromClass(v5);
  [v4 handleFailureInMethod:a2 object:self file:@"PXGadgetProvider.m" lineNumber:70 description:{@"Method %s is a responsibility of subclass %@", "-[PXGadgetProvider generateGadgets]", v6}];

  abort();
}

- (unint64_t)estimatedNumberOfGadgets
{
  v4 = [MEMORY[0x1E696AAA8] currentHandler];
  v5 = objc_opt_class();
  v6 = NSStringFromClass(v5);
  [v4 handleFailureInMethod:a2 object:self file:@"PXGadgetProvider.m" lineNumber:66 description:{@"Method %s is a responsibility of subclass %@", "-[PXGadgetProvider estimatedNumberOfGadgets]", v6}];

  abort();
}

- (PXGadgetProvider)initWithIdentifier:(id)a3
{
  v6 = a3;
  if (!v6)
  {
    v12 = [MEMORY[0x1E696AAA8] currentHandler];
    [v12 handleFailureInMethod:a2 object:self file:@"PXGadgetProvider.m" lineNumber:39 description:{@"Invalid parameter not satisfying: %@", @"identifier"}];
  }

  v13.receiver = self;
  v13.super_class = PXGadgetProvider;
  v7 = [(PXGadgetProvider *)&v13 init];
  v8 = v7;
  if (v7)
  {
    objc_storeStrong(&v7->_identifier, a3);
    v9 = objc_alloc_init(MEMORY[0x1E695DEC8]);
    gadgets = v8->_gadgets;
    v8->_gadgets = v9;
  }

  return v8;
}

- (PXGadgetProvider)init
{
  v9.receiver = self;
  v9.super_class = PXGadgetProvider;
  v2 = [(PXGadgetProvider *)&v9 init];
  if (v2)
  {
    v3 = objc_opt_class();
    v4 = NSStringFromClass(v3);
    identifier = v2->_identifier;
    v2->_identifier = v4;

    v6 = objc_alloc_init(MEMORY[0x1E695DEC8]);
    gadgets = v2->_gadgets;
    v2->_gadgets = v6;
  }

  return v2;
}

@end