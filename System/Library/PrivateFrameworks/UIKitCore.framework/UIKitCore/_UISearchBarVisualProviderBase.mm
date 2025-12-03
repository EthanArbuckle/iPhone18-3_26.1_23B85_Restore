@interface _UISearchBarVisualProviderBase
- (CGSize)intrinsicContentSize;
- (CGSize)sizeThatFits:(CGSize)fits;
- (UIEdgeInsets)effectiveContentInset;
- (UIEdgeInsets)minimumContentInset;
- (UIEdgeInsets)scopeBarInsets;
- (UIOffset)searchFieldBackgroundPositionAdjustment;
- (_UISearchBarVisualProviderBase)initWithDelegate:(id)delegate;
- (id)_borrowSearchTextField;
@end

@implementation _UISearchBarVisualProviderBase

- (_UISearchBarVisualProviderBase)initWithDelegate:(id)delegate
{
  delegateCopy = delegate;
  if (!delegateCopy)
  {
    currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
    [currentHandler handleFailureInMethod:a2 object:self file:@"_UISearchBarVisualProviderBase.m" lineNumber:15 description:@"visual provider requires a search bar as a delegate"];
  }

  v10.receiver = self;
  v10.super_class = _UISearchBarVisualProviderBase;
  v6 = [(_UISearchBarVisualProviderBase *)&v10 init];
  v7 = v6;
  if (v6)
  {
    v6->_searchBar = delegateCopy;
  }

  return v7;
}

- (id)_borrowSearchTextField
{
  currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
  [currentHandler handleFailureInMethod:a2 object:self file:@"_UISearchBarVisualProviderBase.m" lineNumber:174 description:@"Borrowing search field not supported by visual provider."];

  return 0;
}

- (UIOffset)searchFieldBackgroundPositionAdjustment
{
  v2 = 0.0;
  v3 = 0.0;
  result.vertical = v3;
  result.horizontal = v2;
  return result;
}

- (UIEdgeInsets)minimumContentInset
{
  v2 = 0.0;
  v3 = 0.0;
  v4 = 0.0;
  v5 = 0.0;
  result.right = v5;
  result.bottom = v4;
  result.left = v3;
  result.top = v2;
  return result;
}

- (UIEdgeInsets)effectiveContentInset
{
  v2 = 0.0;
  v3 = 0.0;
  v4 = 0.0;
  v5 = 0.0;
  result.right = v5;
  result.bottom = v4;
  result.left = v3;
  result.top = v2;
  return result;
}

- (UIEdgeInsets)scopeBarInsets
{
  v2 = 0.0;
  v3 = 0.0;
  v4 = 0.0;
  v5 = 0.0;
  result.right = v5;
  result.bottom = v4;
  result.left = v3;
  result.top = v2;
  return result;
}

- (CGSize)sizeThatFits:(CGSize)fits
{
  v3 = *MEMORY[0x1E695F060];
  v4 = *(MEMORY[0x1E695F060] + 8);
  result.height = v4;
  result.width = v3;
  return result;
}

- (CGSize)intrinsicContentSize
{
  v2 = -1.0;
  v3 = -1.0;
  result.height = v3;
  result.width = v2;
  return result;
}

@end