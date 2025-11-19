@interface _SBAlertController
- (SBAlertItem)alertItem;
- (_SBAlertController)initWithStyleProvider:(id)a3;
- (_SBAlertControllerDelegate)alertControllerDelegate;
- (id)descriptionWithMultilinePrefix:(id)a3;
- (id)succinctDescription;
- (id)succinctDescriptionBuilder;
- (void)setHiddenOnClonedDisplay:(BOOL)a3;
@end

@implementation _SBAlertController

- (_SBAlertController)initWithStyleProvider:(id)a3
{
  v5 = a3;
  v9.receiver = self;
  v9.super_class = _SBAlertController;
  v6 = [(_SBAlertController *)&v9 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_styleProvider, a3);
  }

  return v7;
}

- (void)setHiddenOnClonedDisplay:(BOOL)a3
{
  v3 = a3;
  v5 = [(_SBAlertController *)self view];
  v6 = [v5 layer];
  v7 = [v6 disableUpdateMask];

  if (v3)
  {
    v8 = 16;
  }

  else
  {
    v8 = 0;
  }

  v10 = [(_SBAlertController *)self view];
  v9 = [v10 layer];
  [v9 setDisableUpdateMask:v7 & 0xFFFFFFEF | v8];
}

- (id)succinctDescription
{
  v2 = [(_SBAlertController *)self succinctDescriptionBuilder];
  v3 = [v2 build];

  return v3;
}

- (id)succinctDescriptionBuilder
{
  v3 = [MEMORY[0x277CF0C00] builderWithObject:self];
  v4 = [(_SBAlertController *)self title];
  [v3 appendString:v4 withName:@"title"];

  return v3;
}

- (id)descriptionWithMultilinePrefix:(id)a3
{
  v3 = [(_SBAlertController *)self descriptionBuilderWithMultilinePrefix:a3];
  v4 = [v3 build];

  return v4;
}

- (SBAlertItem)alertItem
{
  WeakRetained = objc_loadWeakRetained(&self->_alertItem);

  return WeakRetained;
}

- (_SBAlertControllerDelegate)alertControllerDelegate
{
  WeakRetained = objc_loadWeakRetained(&self->_alertControllerDelegate);

  return WeakRetained;
}

@end