@interface SBIconListViewIconVisibilityAssertion
- (SBIconListViewIconVisibilityAssertion)initWithListView:(id)a3 reason:(id)a4;
- (id)descriptionBuilderWithMultilinePrefix:(id)a3;
- (id)descriptionWithMultilinePrefix:(id)a3;
- (id)succinctDescription;
- (void)dealloc;
- (void)invalidate;
@end

@implementation SBIconListViewIconVisibilityAssertion

- (SBIconListViewIconVisibilityAssertion)initWithListView:(id)a3 reason:(id)a4
{
  v7 = a3;
  v8 = a4;
  v14.receiver = self;
  v14.super_class = SBIconListViewIconVisibilityAssertion;
  v9 = [(SBIconListViewIconVisibilityAssertion *)&v14 init];
  v10 = v9;
  if (v9)
  {
    objc_storeStrong(&v9->_listView, a3);
    v11 = [v8 copy];
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
    v3 = [(SBIconListViewIconVisibilityAssertion *)self listView];
    [v3 removeShowAllIconsAssertion:self];

    [(SBIconListViewIconVisibilityAssertion *)self setInvalidated:1];
  }
}

- (id)succinctDescription
{
  v2 = [(SBIconListViewIconVisibilityAssertion *)self succinctDescriptionBuilder];
  v3 = [v2 build];

  return v3;
}

- (id)descriptionWithMultilinePrefix:(id)a3
{
  v3 = [(SBIconListViewIconVisibilityAssertion *)self descriptionBuilderWithMultilinePrefix:a3];
  v4 = [v3 build];

  return v4;
}

- (id)descriptionBuilderWithMultilinePrefix:(id)a3
{
  v4 = [(SBIconListViewIconVisibilityAssertion *)self succinctDescriptionBuilder];
  v5 = [(SBIconListViewIconVisibilityAssertion *)self reason];
  v6 = [v4 appendObject:v5 withName:@"reason"];

  v7 = [(SBIconListViewIconVisibilityAssertion *)self listView];
  v8 = [v4 appendPointer:v7 withName:@"listView"];

  return v4;
}

@end