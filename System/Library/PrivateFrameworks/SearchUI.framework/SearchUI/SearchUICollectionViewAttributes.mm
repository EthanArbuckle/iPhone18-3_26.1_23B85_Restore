@interface SearchUICollectionViewAttributes
- (SearchUIHeaderDelegate)headerDelegate;
- (SearchUIScrollButtonDelegate)scrollButtonDelegate;
@end

@implementation SearchUICollectionViewAttributes

- (SearchUIHeaderDelegate)headerDelegate
{
  WeakRetained = objc_loadWeakRetained(&self->_headerDelegate);

  return WeakRetained;
}

- (SearchUIScrollButtonDelegate)scrollButtonDelegate
{
  WeakRetained = objc_loadWeakRetained(&self->_scrollButtonDelegate);

  return WeakRetained;
}

@end