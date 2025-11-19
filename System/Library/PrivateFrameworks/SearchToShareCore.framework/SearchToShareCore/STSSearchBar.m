@interface STSSearchBar
- (STSSearchBarDelegate)stsDelegate;
@end

@implementation STSSearchBar

- (STSSearchBarDelegate)stsDelegate
{
  WeakRetained = objc_loadWeakRetained(&self->_stsDelegate);

  return WeakRetained;
}

@end