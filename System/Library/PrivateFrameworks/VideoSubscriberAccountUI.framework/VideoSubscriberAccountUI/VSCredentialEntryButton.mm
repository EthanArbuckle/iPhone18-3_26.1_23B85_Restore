@interface VSCredentialEntryButton
- (VSCredentialEntryViewModel)owningViewModel;
@end

@implementation VSCredentialEntryButton

- (VSCredentialEntryViewModel)owningViewModel
{
  WeakRetained = objc_loadWeakRetained(&self->_owningViewModel);

  return WeakRetained;
}

@end