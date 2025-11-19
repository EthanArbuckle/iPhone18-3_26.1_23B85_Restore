@interface _UISearchTextFieldVisualStyle
- (UISearchTextField)searchTextField;
- (_UISearchTextFieldVisualStyle)initWithInstance:(id)a3;
- (double)leftViewInset;
@end

@implementation _UISearchTextFieldVisualStyle

- (double)leftViewInset
{
  v2 = UISearchBarUsesModernAppearance();
  result = 8.0;
  if (v2)
  {
    return 6.0;
  }

  return result;
}

- (_UISearchTextFieldVisualStyle)initWithInstance:(id)a3
{
  v4 = a3;
  v8.receiver = self;
  v8.super_class = _UISearchTextFieldVisualStyle;
  v5 = [(_UISearchTextFieldVisualStyle *)&v8 init];
  v6 = v5;
  if (v5)
  {
    objc_storeWeak(&v5->_searchTextField, v4);
  }

  return v6;
}

- (UISearchTextField)searchTextField
{
  WeakRetained = objc_loadWeakRetained(&self->_searchTextField);

  return WeakRetained;
}

@end