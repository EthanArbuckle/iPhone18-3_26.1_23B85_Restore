@interface SBIconListViewPauseLayoutAssertion
- (SBIconListViewPauseLayoutAssertion)initWithListView:(id)view iconView:(id)iconView reason:(id)reason;
- (id)descriptionBuilderWithMultilinePrefix:(id)prefix;
- (id)descriptionWithMultilinePrefix:(id)prefix;
- (id)succinctDescription;
- (void)dealloc;
- (void)invalidate;
@end

@implementation SBIconListViewPauseLayoutAssertion

- (SBIconListViewPauseLayoutAssertion)initWithListView:(id)view iconView:(id)iconView reason:(id)reason
{
  viewCopy = view;
  iconViewCopy = iconView;
  reasonCopy = reason;
  v17.receiver = self;
  v17.super_class = SBIconListViewPauseLayoutAssertion;
  v12 = [(SBIconListViewPauseLayoutAssertion *)&v17 init];
  v13 = v12;
  if (v12)
  {
    objc_storeStrong(&v12->_listView, view);
    objc_storeStrong(&v13->_iconView, iconView);
    v14 = [reasonCopy copy];
    reason = v13->_reason;
    v13->_reason = v14;
  }

  return v13;
}

- (void)dealloc
{
  v5 = *MEMORY[0x1E69E9840];
  v2 = *(self + 16);
  v3 = 138543362;
  v4 = v2;
  _os_log_fault_impl(&dword_1BEB18000, a2, OS_LOG_TYPE_FAULT, "SBIconListViewPauseLayoutAssertion deallocated but not invalidated! Reason: %{public}@", &v3, 0xCu);
}

- (void)invalidate
{
  if (![(SBIconListViewPauseLayoutAssertion *)self isInvalidated])
  {
    listView = [(SBIconListViewPauseLayoutAssertion *)self listView];
    [listView removePauseLayoutAssertion:self];

    [(SBIconListViewPauseLayoutAssertion *)self setInvalidated:1];
  }
}

- (id)succinctDescription
{
  succinctDescriptionBuilder = [(SBIconListViewPauseLayoutAssertion *)self succinctDescriptionBuilder];
  build = [succinctDescriptionBuilder build];

  return build;
}

- (id)descriptionWithMultilinePrefix:(id)prefix
{
  v3 = [(SBIconListViewPauseLayoutAssertion *)self descriptionBuilderWithMultilinePrefix:prefix];
  build = [v3 build];

  return build;
}

- (id)descriptionBuilderWithMultilinePrefix:(id)prefix
{
  succinctDescriptionBuilder = [(SBIconListViewPauseLayoutAssertion *)self succinctDescriptionBuilder];
  reason = [(SBIconListViewPauseLayoutAssertion *)self reason];
  v6 = [succinctDescriptionBuilder appendObject:reason withName:@"reason"];

  iconView = [(SBIconListViewPauseLayoutAssertion *)self iconView];
  v8 = [succinctDescriptionBuilder appendObject:iconView withName:@"iconView"];

  listView = [(SBIconListViewPauseLayoutAssertion *)self listView];
  v10 = [succinctDescriptionBuilder appendPointer:listView withName:@"listView"];

  return succinctDescriptionBuilder;
}

@end