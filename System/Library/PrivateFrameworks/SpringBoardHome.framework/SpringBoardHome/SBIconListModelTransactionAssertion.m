@interface SBIconListModelTransactionAssertion
- (SBIconListModel)listModel;
- (SBIconListModelTransactionAssertion)initWithListModel:(id)a3 reason:(id)a4;
- (id)descriptionBuilderWithMultilinePrefix:(id)a3;
- (id)descriptionWithMultilinePrefix:(id)a3;
- (id)succinctDescription;
- (void)dealloc;
- (void)invalidate;
@end

@implementation SBIconListModelTransactionAssertion

- (SBIconListModelTransactionAssertion)initWithListModel:(id)a3 reason:(id)a4
{
  v6 = a3;
  v7 = a4;
  v13.receiver = self;
  v13.super_class = SBIconListModelTransactionAssertion;
  v8 = [(SBIconListModelTransactionAssertion *)&v13 init];
  v9 = v8;
  if (v8)
  {
    objc_storeWeak(&v8->_listModel, v6);
    v10 = [v7 copy];
    reason = v9->_reason;
    v9->_reason = v10;
  }

  return v9;
}

- (void)dealloc
{
  if (![(SBIconListModelTransactionAssertion *)self isInvalidated])
  {
    NSLog(&cfstr_AssertionNotIn.isa);
  }

  [(SBIconListModelTransactionAssertion *)self invalidate];
  v3.receiver = self;
  v3.super_class = SBIconListModelTransactionAssertion;
  [(SBIconListModelTransactionAssertion *)&v3 dealloc];
}

- (void)invalidate
{
  if (![(SBIconListModelTransactionAssertion *)self isInvalidated])
  {
    [(SBIconListModelTransactionAssertion *)self setInvalidated:1];
    v3 = [(SBIconListModelTransactionAssertion *)self listModel];
    [v3 removeTransactionAssertion:self];
  }
}

- (id)succinctDescription
{
  v2 = [(SBIconListModelTransactionAssertion *)self succinctDescriptionBuilder];
  v3 = [v2 build];

  return v3;
}

- (id)descriptionWithMultilinePrefix:(id)a3
{
  v3 = [(SBIconListModelTransactionAssertion *)self descriptionBuilderWithMultilinePrefix:a3];
  v4 = [v3 build];

  return v4;
}

- (id)descriptionBuilderWithMultilinePrefix:(id)a3
{
  v4 = [(SBIconListModelTransactionAssertion *)self succinctDescriptionBuilder];
  v5 = [(SBIconListModelTransactionAssertion *)self reason];
  [v4 appendString:v5 withName:@"reason"];

  v6 = [(SBIconListModelTransactionAssertion *)self listModel];
  v7 = [v4 appendPointer:v6 withName:@"listModel"];

  return v4;
}

- (SBIconListModel)listModel
{
  WeakRetained = objc_loadWeakRetained(&self->_listModel);

  return WeakRetained;
}

@end