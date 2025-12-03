@interface SBIconListViewIconOverridingLayoutDelegateAssertion
- (SBIconListLayoutDelegate)layoutDelegate;
- (SBIconListViewIconOverridingLayoutDelegateAssertion)initWithListView:(id)view layoutDelegate:(id)delegate reason:(id)reason;
- (id)descriptionBuilderWithMultilinePrefix:(id)prefix;
- (id)descriptionWithMultilinePrefix:(id)prefix;
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

- (SBIconListViewIconOverridingLayoutDelegateAssertion)initWithListView:(id)view layoutDelegate:(id)delegate reason:(id)reason
{
  viewCopy = view;
  delegateCopy = delegate;
  reasonCopy = reason;
  v17.receiver = self;
  v17.super_class = SBIconListViewIconOverridingLayoutDelegateAssertion;
  v12 = [(SBIconListViewIconOverridingLayoutDelegateAssertion *)&v17 init];
  v13 = v12;
  if (v12)
  {
    objc_storeStrong(&v12->_listView, view);
    objc_storeWeak(&v13->_layoutDelegate, delegateCopy);
    v14 = [reasonCopy copy];
    reason = v13->_reason;
    v13->_reason = v14;
  }

  return v13;
}

- (void)dealloc
{
  v5 = *MEMORY[0x1E69E9840];
  v2 = *(self + 24);
  v3 = 138543362;
  v4 = v2;
  _os_log_fault_impl(&dword_1BEB18000, a2, OS_LOG_TYPE_FAULT, "SBIconListViewIconOverridingLayoutDelegateAssertion deallocated but not invalidated! Reason: %{public}@", &v3, 0xCu);
}

- (void)invalidate
{
  if (![(SBIconListViewIconOverridingLayoutDelegateAssertion *)self isInvalidated])
  {
    listView = [(SBIconListViewIconOverridingLayoutDelegateAssertion *)self listView];
    [listView removeOverridingLayoutDelegateAssertion:self];

    [(SBIconListViewIconOverridingLayoutDelegateAssertion *)self setInvalidated:1];
  }
}

- (id)succinctDescription
{
  succinctDescriptionBuilder = [(SBIconListViewIconOverridingLayoutDelegateAssertion *)self succinctDescriptionBuilder];
  build = [succinctDescriptionBuilder build];

  return build;
}

- (id)descriptionWithMultilinePrefix:(id)prefix
{
  v3 = [(SBIconListViewIconOverridingLayoutDelegateAssertion *)self descriptionBuilderWithMultilinePrefix:prefix];
  build = [v3 build];

  return build;
}

- (id)descriptionBuilderWithMultilinePrefix:(id)prefix
{
  succinctDescriptionBuilder = [(SBIconListViewIconOverridingLayoutDelegateAssertion *)self succinctDescriptionBuilder];
  layoutDelegate = [(SBIconListViewIconOverridingLayoutDelegateAssertion *)self layoutDelegate];
  v6 = [succinctDescriptionBuilder appendObject:layoutDelegate withName:@"layoutDelegate"];

  reason = [(SBIconListViewIconOverridingLayoutDelegateAssertion *)self reason];
  v8 = [succinctDescriptionBuilder appendObject:reason withName:@"reason"];

  listView = [(SBIconListViewIconOverridingLayoutDelegateAssertion *)self listView];
  v10 = [succinctDescriptionBuilder appendPointer:listView withName:@"listView"];

  return succinctDescriptionBuilder;
}

@end