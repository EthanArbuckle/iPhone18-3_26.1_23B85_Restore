@interface WBSExtensionsAnalyticsEventCoalescer
- (BOOL)didInjectScriptForExtensionWithIdentifier:(id)a3;
- (BOOL)didInvokeToolbarButtonForExtensionWithIdentifier:(id)a3;
- (WBSExtensionsAnalyticsEventCoalescer)init;
- (WBSExtensionsAnalyticsEventCoalescerDelegate)delegate;
- (void)_configureResetTimer;
- (void)extensionAnalyticsEventCoalescer:(id)a3 didInjectScriptForExtensionWithIdentifier:(id)a4;
- (void)extensionAnalyticsEventCoalescer:(id)a3 didInvokeToolbarButtonForExtensionWithIdentifier:(id)a4;
@end

@implementation WBSExtensionsAnalyticsEventCoalescer

- (WBSExtensionsAnalyticsEventCoalescer)init
{
  v10.receiver = self;
  v10.super_class = WBSExtensionsAnalyticsEventCoalescer;
  v2 = [(WBSExtensionsAnalyticsEventCoalescer *)&v10 init];
  v3 = v2;
  if (v2)
  {
    v2->_lock._os_unfair_lock_opaque = 0;
    v4 = objc_alloc_init(MEMORY[0x1E695DFA8]);
    injectedScriptExtensions = v3->_injectedScriptExtensions;
    v3->_injectedScriptExtensions = v4;

    v6 = objc_alloc_init(MEMORY[0x1E695DFA8]);
    buttonInvokedExtensions = v3->_buttonInvokedExtensions;
    v3->_buttonInvokedExtensions = v6;

    objc_storeWeak(&v3->_delegate, v3);
    v3->_resetInterval = 86400.0;
    [(WBSExtensionsAnalyticsEventCoalescer *)v3 _configureResetTimer];
    v8 = v3;
  }

  return v3;
}

- (void)_configureResetTimer
{
  [(NSTimer *)self->_resetTimer invalidate];
  objc_initWeak(&location, self);
  v3 = MEMORY[0x1E695DFF0];
  [(WBSExtensionsAnalyticsEventCoalescer *)self resetInterval];
  v5 = v4;
  v8[0] = MEMORY[0x1E69E9820];
  v8[1] = 3221225472;
  v8[2] = __60__WBSExtensionsAnalyticsEventCoalescer__configureResetTimer__block_invoke;
  v8[3] = &unk_1E8283D60;
  objc_copyWeak(&v9, &location);
  v6 = [v3 scheduledTimerWithTimeInterval:1 repeats:v8 block:v5];
  resetTimer = self->_resetTimer;
  self->_resetTimer = v6;

  objc_destroyWeak(&v9);
  objc_destroyWeak(&location);
}

- (BOOL)didInjectScriptForExtensionWithIdentifier:(id)a3
{
  v4 = a3;
  os_unfair_lock_lock(&self->_lock);
  v5 = [(NSMutableSet *)self->_injectedScriptExtensions containsObject:v4];
  os_unfair_lock_unlock(&self->_lock);
  if (v4)
  {
    v6 = v5;
  }

  else
  {
    v6 = 1;
  }

  if ((v6 & 1) == 0)
  {
    v10 = MEMORY[0x1E69E9820];
    v11 = 3221225472;
    v12 = __82__WBSExtensionsAnalyticsEventCoalescer_didInjectScriptForExtensionWithIdentifier___block_invoke;
    v13 = &unk_1E82834A0;
    v14 = self;
    v7 = v4;
    v15 = v7;
    os_unfair_lock_lock(&self->_lock);
    __82__WBSExtensionsAnalyticsEventCoalescer_didInjectScriptForExtensionWithIdentifier___block_invoke(&v10);
    os_unfair_lock_unlock(&self->_lock);
    WeakRetained = objc_loadWeakRetained(&self->_delegate);
    if (objc_opt_respondsToSelector())
    {
      [WeakRetained extensionAnalyticsEventCoalescer:self didInjectScriptForExtensionWithIdentifier:{v7, v10, v11}];
    }
  }

  return v6 ^ 1;
}

void __82__WBSExtensionsAnalyticsEventCoalescer_didInjectScriptForExtensionWithIdentifier___block_invoke(uint64_t a1)
{
  v1 = *(*(a1 + 32) + 8);
  v2 = [*(a1 + 40) copy];
  [v1 addObject:v2];
}

- (BOOL)didInvokeToolbarButtonForExtensionWithIdentifier:(id)a3
{
  v4 = a3;
  os_unfair_lock_lock(&self->_lock);
  v5 = [(NSMutableSet *)self->_buttonInvokedExtensions containsObject:v4];
  os_unfair_lock_unlock(&self->_lock);
  if (v4)
  {
    v6 = v5;
  }

  else
  {
    v6 = 1;
  }

  if ((v6 & 1) == 0)
  {
    v10 = MEMORY[0x1E69E9820];
    v11 = 3221225472;
    v12 = __89__WBSExtensionsAnalyticsEventCoalescer_didInvokeToolbarButtonForExtensionWithIdentifier___block_invoke;
    v13 = &unk_1E82834A0;
    v14 = self;
    v7 = v4;
    v15 = v7;
    os_unfair_lock_lock(&self->_lock);
    __89__WBSExtensionsAnalyticsEventCoalescer_didInvokeToolbarButtonForExtensionWithIdentifier___block_invoke(&v10);
    os_unfair_lock_unlock(&self->_lock);
    WeakRetained = objc_loadWeakRetained(&self->_delegate);
    if (objc_opt_respondsToSelector())
    {
      [WeakRetained extensionAnalyticsEventCoalescer:self didInvokeToolbarButtonForExtensionWithIdentifier:{v7, v10, v11}];
    }
  }

  return v6 ^ 1;
}

void __89__WBSExtensionsAnalyticsEventCoalescer_didInvokeToolbarButtonForExtensionWithIdentifier___block_invoke(uint64_t a1)
{
  v1 = *(*(a1 + 32) + 16);
  v2 = [*(a1 + 40) copy];
  [v1 addObject:v2];
}

void __60__WBSExtensionsAnalyticsEventCoalescer__configureResetTimer__block_invoke(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v2 = WeakRetained;
  if (WeakRetained)
  {
    v4[0] = MEMORY[0x1E69E9820];
    v4[1] = 3221225472;
    v4[2] = __60__WBSExtensionsAnalyticsEventCoalescer__configureResetTimer__block_invoke_2;
    v4[3] = &unk_1E8283080;
    v4[4] = WeakRetained;
    os_unfair_lock_lock(WeakRetained + 6);
    __60__WBSExtensionsAnalyticsEventCoalescer__configureResetTimer__block_invoke_2(v4);
    os_unfair_lock_unlock(v2 + 6);
    v3 = objc_loadWeakRetained(&v2[10]);
    if (objc_opt_respondsToSelector())
    {
      [v3 extensionAnalyticsEventCoalescerDidResetCachedExtensions:v2];
    }
  }
}

uint64_t __60__WBSExtensionsAnalyticsEventCoalescer__configureResetTimer__block_invoke_2(uint64_t a1)
{
  [*(*(a1 + 32) + 8) removeAllObjects];
  v2 = *(*(a1 + 32) + 16);

  return [v2 removeAllObjects];
}

- (void)extensionAnalyticsEventCoalescer:(id)a3 didInjectScriptForExtensionWithIdentifier:(id)a4
{
  v4 = MEMORY[0x1E69C8810];
  v5 = a4;
  v6 = [v4 sharedLogger];
  [v6 didInjectScriptForExtensionWithIdentifier:v5];
}

- (void)extensionAnalyticsEventCoalescer:(id)a3 didInvokeToolbarButtonForExtensionWithIdentifier:(id)a4
{
  v4 = MEMORY[0x1E69C8810];
  v5 = a4;
  v6 = [v4 sharedLogger];
  [v6 didInvokeToolbarButtonForExtensionWithIdentifier:v5];
}

- (WBSExtensionsAnalyticsEventCoalescerDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

@end