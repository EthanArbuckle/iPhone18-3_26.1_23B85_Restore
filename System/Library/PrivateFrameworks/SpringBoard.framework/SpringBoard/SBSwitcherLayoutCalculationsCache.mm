@interface SBSwitcherLayoutCalculationsCache
- (CGRect)frameForKey:(id)key validityToken:(id)token fallback:(id)fallback;
- (SBSwitcherLayoutCalculationsCache)init;
- (SBSwitcherLayoutCalculationsCacheDelegate)delegate;
- (double)scaleForKey:(id)key validityToken:(id)token fallback:(id)fallback;
- (void)rebuildIfNecessaryForValidityToken:(id)token;
@end

@implementation SBSwitcherLayoutCalculationsCache

- (SBSwitcherLayoutCalculationsCache)init
{
  v6.receiver = self;
  v6.super_class = SBSwitcherLayoutCalculationsCache;
  v2 = [(SBSwitcherLayoutCalculationsCache *)&v6 init];
  v3 = v2;
  if (v2)
  {
    cachedLayoutCalculationsByKey = v2->_cachedLayoutCalculationsByKey;
    v2->_cachedLayoutCalculationsByKey = MEMORY[0x277CBEC10];
  }

  return v3;
}

- (CGRect)frameForKey:(id)key validityToken:(id)token fallback:(id)fallback
{
  v27 = *MEMORY[0x277D85DE8];
  keyCopy = key;
  fallbackCopy = fallback;
  [(SBSwitcherLayoutCalculationsCache *)self rebuildIfNecessaryForValidityToken:token];
  v10 = [(NSDictionary *)self->_cachedLayoutCalculationsByKey objectForKey:keyCopy];
  v11 = v10;
  if (v10)
  {
    [v10 frame];
  }

  else
  {
    v16 = SBLogAppSwitcher();
    if (os_log_type_enabled(v16, OS_LOG_TYPE_INFO))
    {
      v25 = 138412290;
      v26 = keyCopy;
      _os_log_impl(&dword_21ED4E000, v16, OS_LOG_TYPE_INFO, "Cache didn't have layoutCalculations for key %@", &v25, 0xCu);
    }

    v12 = fallbackCopy[2](fallbackCopy);
  }

  v17 = v12;
  v18 = v13;
  v19 = v14;
  v20 = v15;

  v21 = v17;
  v22 = v18;
  v23 = v19;
  v24 = v20;
  result.size.height = v24;
  result.size.width = v23;
  result.origin.y = v22;
  result.origin.x = v21;
  return result;
}

- (double)scaleForKey:(id)key validityToken:(id)token fallback:(id)fallback
{
  v18 = *MEMORY[0x277D85DE8];
  keyCopy = key;
  fallbackCopy = fallback;
  [(SBSwitcherLayoutCalculationsCache *)self rebuildIfNecessaryForValidityToken:token];
  v10 = [(NSDictionary *)self->_cachedLayoutCalculationsByKey objectForKey:keyCopy];
  v11 = v10;
  if (v10)
  {
    [v10 scale];
  }

  else
  {
    v13 = SBLogAppSwitcher();
    if (os_log_type_enabled(v13, OS_LOG_TYPE_INFO))
    {
      v16 = 138412290;
      v17 = keyCopy;
      _os_log_impl(&dword_21ED4E000, v13, OS_LOG_TYPE_INFO, "Cache didn't have layoutCalculations for key %@", &v16, 0xCu);
    }

    v12 = fallbackCopy[2](fallbackCopy);
  }

  v14 = v12;

  return v14;
}

- (void)rebuildIfNecessaryForValidityToken:(id)token
{
  tokenCopy = token;
  if (![(SBSwitcherLayoutCalculationsCacheValidityToken *)self->_validityToken isEqual:?])
  {
    delegate = [(SBSwitcherLayoutCalculationsCache *)self delegate];
    if (!delegate)
    {
      [(SBSwitcherLayoutCalculationsCache *)a2 rebuildIfNecessaryForValidityToken:?];
    }

    v7 = [delegate buildLayoutCalculationsForCache:self];
    cachedLayoutCalculationsByKey = self->_cachedLayoutCalculationsByKey;
    self->_cachedLayoutCalculationsByKey = v7;

    objc_storeStrong(&self->_validityToken, token);
  }
}

- (SBSwitcherLayoutCalculationsCacheDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

- (void)rebuildIfNecessaryForValidityToken:(uint64_t)a1 .cold.1(uint64_t a1, uint64_t a2)
{
  v4 = [MEMORY[0x277CCA890] currentHandler];
  [v4 handleFailureInMethod:a1 object:a2 file:@"SBSwitcherLayoutCalculationsCache.m" lineNumber:54 description:@"Must have set delegate by now"];
}

@end