@interface _UISearchTextFieldVisualStyle_iOS
- (double)_defaultHeightForBarMetrics:(int64_t)metrics floating:(BOOL)floating idiom:(int64_t)idiom;
- (double)backgroundCornerRadius;
- (double)defaultHeightForBarMetrics:(int64_t)metrics;
- (double)leftViewInset;
- (double)searchBookmarkButtonOffset;
- (double)textLeadingInset;
- (id)clearButtonOuterInset;
@end

@implementation _UISearchTextFieldVisualStyle_iOS

- (double)backgroundCornerRadius
{
  v2 = _UISolariumEnabled();
  result = 1.79769313e308;
  if (!v2)
  {
    return 10.0;
  }

  return result;
}

- (id)clearButtonOuterInset
{
  if (_UISolariumEnabled())
  {
    searchTextField = [(_UISearchTextFieldVisualStyle *)self searchTextField];
    _searchBar = [searchTextField _searchBar];
    [_searchBar _isFloating];

    clearButtonOuterInset = &unk_1EFE2EAF8;
  }

  else
  {
    v7.receiver = self;
    v7.super_class = _UISearchTextFieldVisualStyle_iOS;
    clearButtonOuterInset = [(_UISearchTextFieldVisualStyle *)&v7 clearButtonOuterInset];
  }

  return clearButtonOuterInset;
}

- (double)leftViewInset
{
  if (_UISolariumEnabled())
  {
    searchTextField = [(_UISearchTextFieldVisualStyle *)self searchTextField];
    _searchBar = [searchTextField _searchBar];
    _isFloating = [_searchBar _isFloating];

    result = 12.0;
    if (_isFloating)
    {
      return 13.0;
    }
  }

  else
  {
    v7.receiver = self;
    v7.super_class = _UISearchTextFieldVisualStyle_iOS;
    [(_UISearchTextFieldVisualStyle *)&v7 leftViewInset];
  }

  return result;
}

- (double)searchBookmarkButtonOffset
{
  if (_UISolariumEnabled())
  {
    searchTextField = [(_UISearchTextFieldVisualStyle *)self searchTextField];
    _searchBar = [searchTextField _searchBar];
    [_searchBar _isFloating];

    return 17.0;
  }

  else
  {
    v6.receiver = self;
    v6.super_class = _UISearchTextFieldVisualStyle_iOS;
    [(_UISearchTextFieldVisualStyle *)&v6 searchBookmarkButtonOffset];
  }

  return result;
}

- (double)_defaultHeightForBarMetrics:(int64_t)metrics floating:(BOOL)floating idiom:(int64_t)idiom
{
  floatingCopy = floating;
  if (idiom == 3 && (_UISolariumEnabled() & 1) != 0)
  {
    return 36.0;
  }

  return _defaultHeightForBarMetrics(metrics, floatingCopy);
}

- (double)defaultHeightForBarMetrics:(int64_t)metrics
{
  searchTextField = [(_UISearchTextFieldVisualStyle *)self searchTextField];
  _searchBar = [searchTextField _searchBar];
  _isFloating = [_searchBar _isFloating];
  searchTextField2 = [(_UISearchTextFieldVisualStyle *)self searchTextField];
  traitCollection = [searchTextField2 traitCollection];
  -[_UISearchTextFieldVisualStyle_iOS _defaultHeightForBarMetrics:floating:idiom:](self, "_defaultHeightForBarMetrics:floating:idiom:", metrics, _isFloating, [traitCollection userInterfaceIdiom]);
  v11 = v10;

  return v11;
}

- (double)textLeadingInset
{
  if (_UISolariumEnabled())
  {
    searchTextField = [(_UISearchTextFieldVisualStyle *)self searchTextField];
    _searchBar = [searchTextField _searchBar];
    _isFloating = [_searchBar _isFloating];

    result = 7.0;
    if (_isFloating)
    {
      return 8.0;
    }
  }

  else
  {
    v7.receiver = self;
    v7.super_class = _UISearchTextFieldVisualStyle_iOS;
    [(_UISearchTextFieldVisualStyle *)&v7 textLeadingInset];
  }

  return result;
}

@end