@interface _SBAlertController
- (SBAlertItem)alertItem;
- (_SBAlertController)initWithStyleProvider:(id)provider;
- (_SBAlertControllerDelegate)alertControllerDelegate;
- (id)descriptionWithMultilinePrefix:(id)prefix;
- (id)succinctDescription;
- (id)succinctDescriptionBuilder;
- (void)setHiddenOnClonedDisplay:(BOOL)display;
@end

@implementation _SBAlertController

- (_SBAlertController)initWithStyleProvider:(id)provider
{
  providerCopy = provider;
  v9.receiver = self;
  v9.super_class = _SBAlertController;
  v6 = [(_SBAlertController *)&v9 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_styleProvider, provider);
  }

  return v7;
}

- (void)setHiddenOnClonedDisplay:(BOOL)display
{
  displayCopy = display;
  view = [(_SBAlertController *)self view];
  layer = [view layer];
  disableUpdateMask = [layer disableUpdateMask];

  if (displayCopy)
  {
    v8 = 16;
  }

  else
  {
    v8 = 0;
  }

  view2 = [(_SBAlertController *)self view];
  layer2 = [view2 layer];
  [layer2 setDisableUpdateMask:disableUpdateMask & 0xFFFFFFEF | v8];
}

- (id)succinctDescription
{
  succinctDescriptionBuilder = [(_SBAlertController *)self succinctDescriptionBuilder];
  build = [succinctDescriptionBuilder build];

  return build;
}

- (id)succinctDescriptionBuilder
{
  v3 = [MEMORY[0x277CF0C00] builderWithObject:self];
  title = [(_SBAlertController *)self title];
  [v3 appendString:title withName:@"title"];

  return v3;
}

- (id)descriptionWithMultilinePrefix:(id)prefix
{
  v3 = [(_SBAlertController *)self descriptionBuilderWithMultilinePrefix:prefix];
  build = [v3 build];

  return build;
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