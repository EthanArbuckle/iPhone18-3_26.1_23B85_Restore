@interface SBStatusBarContainer
- (SBStatusBarReusePool)reusePool;
- (UIStatusBar)statusBar;
- (id)descriptionWithMultilinePrefix:(id)prefix;
- (id)succinctDescription;
- (id)succinctDescriptionBuilder;
- (void)dealloc;
@end

@implementation SBStatusBarContainer

- (void)dealloc
{
  reusePool = [(SBStatusBarContainer *)self reusePool];
  [reusePool _removeStatusBarContainer:self];

  v4.receiver = self;
  v4.super_class = SBStatusBarContainer;
  [(SBStatusBarContainer *)&v4 dealloc];
}

- (SBStatusBarReusePool)reusePool
{
  WeakRetained = objc_loadWeakRetained(&self->_reusePool);

  return WeakRetained;
}

- (UIStatusBar)statusBar
{
  WeakRetained = objc_loadWeakRetained(&self->_statusBar);

  return WeakRetained;
}

- (id)succinctDescription
{
  succinctDescriptionBuilder = [(SBStatusBarContainer *)self succinctDescriptionBuilder];
  build = [succinctDescriptionBuilder build];

  return build;
}

- (id)succinctDescriptionBuilder
{
  v3 = [MEMORY[0x277CF0C00] builderWithObject:self];
  v8[0] = MEMORY[0x277D85DD0];
  v8[1] = 3221225472;
  v8[2] = __50__SBStatusBarContainer_succinctDescriptionBuilder__block_invoke;
  v8[3] = &unk_2783A92D8;
  v4 = v3;
  v9 = v4;
  selfCopy = self;
  v5 = [v4 modifyProem:v8];
  v6 = v4;

  return v4;
}

void __50__SBStatusBarContainer_succinctDescriptionBuilder__block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 32) appendObject:*(*(a1 + 40) + 24) withName:@"reason"];
  v3 = *(a1 + 32);
  WeakRetained = objc_loadWeakRetained((*(a1 + 40) + 8));
  v4 = [v3 appendObject:WeakRetained withName:@"status bar"];
}

- (id)descriptionWithMultilinePrefix:(id)prefix
{
  v3 = [(SBStatusBarContainer *)self descriptionBuilderWithMultilinePrefix:prefix];
  build = [v3 build];

  return build;
}

@end