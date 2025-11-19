@interface _UISearchTextFieldVisualStyle_iOS
- (double)_defaultHeightForBarMetrics:(int64_t)a3 floating:(BOOL)a4 idiom:(int64_t)a5;
- (double)backgroundCornerRadius;
- (double)defaultHeightForBarMetrics:(int64_t)a3;
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
    v3 = [(_UISearchTextFieldVisualStyle *)self searchTextField];
    v4 = [v3 _searchBar];
    [v4 _isFloating];

    v5 = &unk_1EFE2EAF8;
  }

  else
  {
    v7.receiver = self;
    v7.super_class = _UISearchTextFieldVisualStyle_iOS;
    v5 = [(_UISearchTextFieldVisualStyle *)&v7 clearButtonOuterInset];
  }

  return v5;
}

- (double)leftViewInset
{
  if (_UISolariumEnabled())
  {
    v3 = [(_UISearchTextFieldVisualStyle *)self searchTextField];
    v4 = [v3 _searchBar];
    v5 = [v4 _isFloating];

    result = 12.0;
    if (v5)
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
    v3 = [(_UISearchTextFieldVisualStyle *)self searchTextField];
    v4 = [v3 _searchBar];
    [v4 _isFloating];

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

- (double)_defaultHeightForBarMetrics:(int64_t)a3 floating:(BOOL)a4 idiom:(int64_t)a5
{
  v5 = a4;
  if (a5 == 3 && (_UISolariumEnabled() & 1) != 0)
  {
    return 36.0;
  }

  return _defaultHeightForBarMetrics(a3, v5);
}

- (double)defaultHeightForBarMetrics:(int64_t)a3
{
  v5 = [(_UISearchTextFieldVisualStyle *)self searchTextField];
  v6 = [v5 _searchBar];
  v7 = [v6 _isFloating];
  v8 = [(_UISearchTextFieldVisualStyle *)self searchTextField];
  v9 = [v8 traitCollection];
  -[_UISearchTextFieldVisualStyle_iOS _defaultHeightForBarMetrics:floating:idiom:](self, "_defaultHeightForBarMetrics:floating:idiom:", a3, v7, [v9 userInterfaceIdiom]);
  v11 = v10;

  return v11;
}

- (double)textLeadingInset
{
  if (_UISolariumEnabled())
  {
    v3 = [(_UISearchTextFieldVisualStyle *)self searchTextField];
    v4 = [v3 _searchBar];
    v5 = [v4 _isFloating];

    result = 7.0;
    if (v5)
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