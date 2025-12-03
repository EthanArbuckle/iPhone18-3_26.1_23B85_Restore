@interface SBIconListViewIconVisibilityAssertion
- (SBIconListViewIconVisibilityAssertion)initWithListView:(id)view reason:(id)reason;
- (id)descriptionBuilderWithMultilinePrefix:(id)prefix;
- (id)descriptionWithMultilinePrefix:(id)prefix;
- (id)succinctDescription;
- (void)dealloc;
- (void)invalidate;
@end

@implementation SBIconListViewIconVisibilityAssertion

- (SBIconListViewIconVisibilityAssertion)initWithListView:(id)view reason:(id)reason
{
  viewCopy = view;
  reasonCopy = reason;
  v14.receiver = self;
  v14.super_class = SBIconListViewIconVisibilityAssertion;
  v9 = [(SBIconListViewIconVisibilityAssertion *)&v14 init];
  v10 = v9;
  if (v9)
  {
    objc_storeStrong(&v9->_listView, view);
    v11 = [reasonCopy copy];
    reason = v10->_reason;
    v10->_reason = v11;
  }

  return v10;
}

- (void)dealloc
{
  if (![(SBIconListViewIconVisibilityAssertion *)self isInvalidated])
  {
    NSLog(&cfstr_Sbiconlistview_1.isa, self->_reason);
  }

  if (![(SBIconListViewIconVisibilityAssertion *)self isInvalidated])
  {
    [(SBIconListViewIconVisibilityAssertion *)self invalidate];
  }

  v3.receiver = self;
  v3.super_class = SBIconListViewIconVisibilityAssertion;
  [(SBIconListViewIconVisibilityAssertion *)&v3 dealloc];
}

- (void)invalidate
{
  if (![(SBIconListViewIconVisibilityAssertion *)self isInvalidated])
  {
    listView = [(SBIconListViewIconVisibilityAssertion *)self listView];
    [listView removeShowAllIconsAssertion:self];

    [(SBIconListViewIconVisibilityAssertion *)self setInvalidated:1];
  }
}

- (id)succinctDescription
{
  succinctDescriptionBuilder = [(SBIconListViewIconVisibilityAssertion *)self succinctDescriptionBuilder];
  build = [succinctDescriptionBuilder build];

  return build;
}

- (id)descriptionWithMultilinePrefix:(id)prefix
{
  v3 = [(SBIconListViewIconVisibilityAssertion *)self descriptionBuilderWithMultilinePrefix:prefix];
  build = [v3 build];

  return build;
}

- (id)descriptionBuilderWithMultilinePrefix:(id)prefix
{
  succinctDescriptionBuilder = [(SBIconListViewIconVisibilityAssertion *)self succinctDescriptionBuilder];
  reason = [(SBIconListViewIconVisibilityAssertion *)self reason];
  v6 = [succinctDescriptionBuilder appendObject:reason withName:@"reason"];

  listView = [(SBIconListViewIconVisibilityAssertion *)self listView];
  v8 = [succinctDescriptionBuilder appendPointer:listView withName:@"listView"];

  return succinctDescriptionBuilder;
}

@end