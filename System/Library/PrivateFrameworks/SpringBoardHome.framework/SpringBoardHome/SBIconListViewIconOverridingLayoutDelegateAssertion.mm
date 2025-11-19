@interface SBIconListViewIconOverridingLayoutDelegateAssertion
- (SBIconListLayoutDelegate)layoutDelegate;
- (SBIconListViewIconOverridingLayoutDelegateAssertion)initWithListView:(id)a3 layoutDelegate:(id)a4 reason:(id)a5;
- (id)descriptionBuilderWithMultilinePrefix:(id)a3;
- (id)descriptionWithMultilinePrefix:(id)a3;
- (id)succinctDescription;
- (void)dealloc;
- (void)invalidate;
@end

@implementation SBIconListViewIconOverridingLayoutDelegateAssertion

- (SBIconListLayoutDelegate)layoutDelegate
{
  WeakRetained = objc_loadWeakRetained(&self->_layoutDelegate);

  return WeakRetained;
}

- (SBIconListViewIconOverridingLayoutDelegateAssertion)initWithListView:(id)a3 layoutDelegate:(id)a4 reason:(id)a5
{
  v9 = a3;
  v10 = a4;
  v11 = a5;
  v17.receiver = self;
  v17.super_class = SBIconListViewIconOverridingLayoutDelegateAssertion;
  v12 = [(SBIconListViewIconOverridingLayoutDelegateAssertion *)&v17 init];
  v13 = v12;
  if (v12)
  {
    objc_storeStrong(&v12->_listView, a3);
    objc_storeWeak(&v13->_layoutDelegate, v10);
    v14 = [v11 copy];
    reason = v13->_reason;
    v13->_reason = v14;
  }

  return v13;
}

- (void)dealloc
{
  v5 = *MEMORY[0x1E69E9840];
  v2 = *(a1 + 24);
  v3 = 138543362;
  v4 = v2;
  _os_log_fault_impl(&dword_1BEB18000, a2, OS_LOG_TYPE_FAULT, "SBIconListViewIconOverridingLayoutDelegateAssertion deallocated but not invalidated! Reason: %{public}@", &v3, 0xCu);
}

- (void)invalidate
{
  if (![(SBIconListViewIconOverridingLayoutDelegateAssertion *)self isInvalidated])
  {
    v3 = [(SBIconListViewIconOverridingLayoutDelegateAssertion *)self listView];
    [v3 removeOverridingLayoutDelegateAssertion:self];

    [(SBIconListViewIconOverridingLayoutDelegateAssertion *)self setInvalidated:1];
  }
}

- (id)succinctDescription
{
  v2 = [(SBIconListViewIconOverridingLayoutDelegateAssertion *)self succinctDescriptionBuilder];
  v3 = [v2 build];

  return v3;
}

- (id)descriptionWithMultilinePrefix:(id)a3
{
  v3 = [(SBIconListViewIconOverridingLayoutDelegateAssertion *)self descriptionBuilderWithMultilinePrefix:a3];
  v4 = [v3 build];

  return v4;
}

- (id)descriptionBuilderWithMultilinePrefix:(id)a3
{
  v4 = [(SBIconListViewIconOverridingLayoutDelegateAssertion *)self succinctDescriptionBuilder];
  v5 = [(SBIconListViewIconOverridingLayoutDelegateAssertion *)self layoutDelegate];
  v6 = [v4 appendObject:v5 withName:@"layoutDelegate"];

  v7 = [(SBIconListViewIconOverridingLayoutDelegateAssertion *)self reason];
  v8 = [v4 appendObject:v7 withName:@"reason"];

  v9 = [(SBIconListViewIconOverridingLayoutDelegateAssertion *)self listView];
  v10 = [v4 appendPointer:v9 withName:@"listView"];

  return v4;
}

@end