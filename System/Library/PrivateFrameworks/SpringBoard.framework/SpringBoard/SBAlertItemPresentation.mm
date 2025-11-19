@interface SBAlertItemPresentation
- (BOOL)isEqual:(id)a3;
- (SBAlertItemPresentation)initWithAlertItem:(id)a3 presenter:(id)a4;
- (id)descriptionWithMultilinePrefix:(id)a3;
- (id)succinctDescription;
- (id)succinctDescriptionBuilder;
@end

@implementation SBAlertItemPresentation

- (SBAlertItemPresentation)initWithAlertItem:(id)a3 presenter:(id)a4
{
  v7 = a3;
  v8 = a4;
  v12.receiver = self;
  v12.super_class = SBAlertItemPresentation;
  v9 = [(SBAlertItemPresentation *)&v12 init];
  v10 = v9;
  if (v9)
  {
    objc_storeStrong(&v9->_alertItem, a3);
    objc_storeStrong(&v10->_presenter, a4);
  }

  return v10;
}

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  v5 = [MEMORY[0x277CF0C20] builderWithObject:v4 ofExpectedClass:objc_opt_class()];
  alertItem = self->_alertItem;
  v10[0] = MEMORY[0x277D85DD0];
  v10[1] = 3221225472;
  v10[2] = __35__SBAlertItemPresentation_isEqual___block_invoke;
  v10[3] = &unk_2783A91C8;
  v11 = v4;
  v7 = v4;
  v8 = [v5 appendObject:alertItem counterpart:v10];
  LOBYTE(alertItem) = [v5 isEqual];

  return alertItem;
}

- (id)succinctDescription
{
  v2 = [(SBAlertItemPresentation *)self succinctDescriptionBuilder];
  v3 = [v2 build];

  return v3;
}

- (id)succinctDescriptionBuilder
{
  v3 = [MEMORY[0x277CF0C00] builderWithObject:self];
  v4 = [v3 appendObject:self->_alertItem withName:@"alertItem" skipIfNil:1];
  v5 = [v3 appendObject:self->_presenter withName:@"presenter" skipIfNil:1];

  return v3;
}

- (id)descriptionWithMultilinePrefix:(id)a3
{
  v3 = [(SBAlertItemPresentation *)self descriptionBuilderWithMultilinePrefix:a3];
  v4 = [v3 build];

  return v4;
}

@end