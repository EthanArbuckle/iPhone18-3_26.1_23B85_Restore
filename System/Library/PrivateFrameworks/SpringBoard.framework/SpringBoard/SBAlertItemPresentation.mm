@interface SBAlertItemPresentation
- (BOOL)isEqual:(id)equal;
- (SBAlertItemPresentation)initWithAlertItem:(id)item presenter:(id)presenter;
- (id)descriptionWithMultilinePrefix:(id)prefix;
- (id)succinctDescription;
- (id)succinctDescriptionBuilder;
@end

@implementation SBAlertItemPresentation

- (SBAlertItemPresentation)initWithAlertItem:(id)item presenter:(id)presenter
{
  itemCopy = item;
  presenterCopy = presenter;
  v12.receiver = self;
  v12.super_class = SBAlertItemPresentation;
  v9 = [(SBAlertItemPresentation *)&v12 init];
  v10 = v9;
  if (v9)
  {
    objc_storeStrong(&v9->_alertItem, item);
    objc_storeStrong(&v10->_presenter, presenter);
  }

  return v10;
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  v5 = [MEMORY[0x277CF0C20] builderWithObject:equalCopy ofExpectedClass:objc_opt_class()];
  alertItem = self->_alertItem;
  v10[0] = MEMORY[0x277D85DD0];
  v10[1] = 3221225472;
  v10[2] = __35__SBAlertItemPresentation_isEqual___block_invoke;
  v10[3] = &unk_2783A91C8;
  v11 = equalCopy;
  v7 = equalCopy;
  v8 = [v5 appendObject:alertItem counterpart:v10];
  LOBYTE(alertItem) = [v5 isEqual];

  return alertItem;
}

- (id)succinctDescription
{
  succinctDescriptionBuilder = [(SBAlertItemPresentation *)self succinctDescriptionBuilder];
  build = [succinctDescriptionBuilder build];

  return build;
}

- (id)succinctDescriptionBuilder
{
  v3 = [MEMORY[0x277CF0C00] builderWithObject:self];
  v4 = [v3 appendObject:self->_alertItem withName:@"alertItem" skipIfNil:1];
  v5 = [v3 appendObject:self->_presenter withName:@"presenter" skipIfNil:1];

  return v3;
}

- (id)descriptionWithMultilinePrefix:(id)prefix
{
  v3 = [(SBAlertItemPresentation *)self descriptionBuilderWithMultilinePrefix:prefix];
  build = [v3 build];

  return build;
}

@end