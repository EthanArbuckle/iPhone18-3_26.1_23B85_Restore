@interface SBIconListViewPauseLayoutAssertion
- (SBIconListViewPauseLayoutAssertion)initWithListView:(id)a3 iconView:(id)a4 reason:(id)a5;
- (id)descriptionBuilderWithMultilinePrefix:(id)a3;
- (id)descriptionWithMultilinePrefix:(id)a3;
- (id)succinctDescription;
- (void)dealloc;
- (void)invalidate;
@end

@implementation SBIconListViewPauseLayoutAssertion

- (SBIconListViewPauseLayoutAssertion)initWithListView:(id)a3 iconView:(id)a4 reason:(id)a5
{
  v9 = a3;
  v10 = a4;
  v11 = a5;
  v17.receiver = self;
  v17.super_class = SBIconListViewPauseLayoutAssertion;
  v12 = [(SBIconListViewPauseLayoutAssertion *)&v17 init];
  v13 = v12;
  if (v12)
  {
    objc_storeStrong(&v12->_listView, a3);
    objc_storeStrong(&v13->_iconView, a4);
    v14 = [v11 copy];
    reason = v13->_reason;
    v13->_reason = v14;
  }

  return v13;
}

- (void)dealloc
{
  v5 = *MEMORY[0x1E69E9840];
  v2 = *(a1 + 16);
  v3 = 138543362;
  v4 = v2;
  _os_log_fault_impl(&dword_1BEB18000, a2, OS_LOG_TYPE_FAULT, "SBIconListViewPauseLayoutAssertion deallocated but not invalidated! Reason: %{public}@", &v3, 0xCu);
}

- (void)invalidate
{
  if (![(SBIconListViewPauseLayoutAssertion *)self isInvalidated])
  {
    v3 = [(SBIconListViewPauseLayoutAssertion *)self listView];
    [v3 removePauseLayoutAssertion:self];

    [(SBIconListViewPauseLayoutAssertion *)self setInvalidated:1];
  }
}

- (id)succinctDescription
{
  v2 = [(SBIconListViewPauseLayoutAssertion *)self succinctDescriptionBuilder];
  v3 = [v2 build];

  return v3;
}

- (id)descriptionWithMultilinePrefix:(id)a3
{
  v3 = [(SBIconListViewPauseLayoutAssertion *)self descriptionBuilderWithMultilinePrefix:a3];
  v4 = [v3 build];

  return v4;
}

- (id)descriptionBuilderWithMultilinePrefix:(id)a3
{
  v4 = [(SBIconListViewPauseLayoutAssertion *)self succinctDescriptionBuilder];
  v5 = [(SBIconListViewPauseLayoutAssertion *)self reason];
  v6 = [v4 appendObject:v5 withName:@"reason"];

  v7 = [(SBIconListViewPauseLayoutAssertion *)self iconView];
  v8 = [v4 appendObject:v7 withName:@"iconView"];

  v9 = [(SBIconListViewPauseLayoutAssertion *)self listView];
  v10 = [v4 appendPointer:v9 withName:@"listView"];

  return v4;
}

@end