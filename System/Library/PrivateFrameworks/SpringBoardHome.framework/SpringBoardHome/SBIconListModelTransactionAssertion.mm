@interface SBIconListModelTransactionAssertion
- (SBIconListModel)listModel;
- (SBIconListModelTransactionAssertion)initWithListModel:(id)model reason:(id)reason;
- (id)descriptionBuilderWithMultilinePrefix:(id)prefix;
- (id)descriptionWithMultilinePrefix:(id)prefix;
- (id)succinctDescription;
- (void)dealloc;
- (void)invalidate;
@end

@implementation SBIconListModelTransactionAssertion

- (SBIconListModelTransactionAssertion)initWithListModel:(id)model reason:(id)reason
{
  modelCopy = model;
  reasonCopy = reason;
  v13.receiver = self;
  v13.super_class = SBIconListModelTransactionAssertion;
  v8 = [(SBIconListModelTransactionAssertion *)&v13 init];
  v9 = v8;
  if (v8)
  {
    objc_storeWeak(&v8->_listModel, modelCopy);
    v10 = [reasonCopy copy];
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
    listModel = [(SBIconListModelTransactionAssertion *)self listModel];
    [listModel removeTransactionAssertion:self];
  }
}

- (id)succinctDescription
{
  succinctDescriptionBuilder = [(SBIconListModelTransactionAssertion *)self succinctDescriptionBuilder];
  build = [succinctDescriptionBuilder build];

  return build;
}

- (id)descriptionWithMultilinePrefix:(id)prefix
{
  v3 = [(SBIconListModelTransactionAssertion *)self descriptionBuilderWithMultilinePrefix:prefix];
  build = [v3 build];

  return build;
}

- (id)descriptionBuilderWithMultilinePrefix:(id)prefix
{
  succinctDescriptionBuilder = [(SBIconListModelTransactionAssertion *)self succinctDescriptionBuilder];
  reason = [(SBIconListModelTransactionAssertion *)self reason];
  [succinctDescriptionBuilder appendString:reason withName:@"reason"];

  listModel = [(SBIconListModelTransactionAssertion *)self listModel];
  v7 = [succinctDescriptionBuilder appendPointer:listModel withName:@"listModel"];

  return succinctDescriptionBuilder;
}

- (SBIconListModel)listModel
{
  WeakRetained = objc_loadWeakRetained(&self->_listModel);

  return WeakRetained;
}

@end