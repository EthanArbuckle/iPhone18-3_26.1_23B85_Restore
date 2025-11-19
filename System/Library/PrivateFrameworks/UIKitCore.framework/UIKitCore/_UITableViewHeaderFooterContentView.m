@interface _UITableViewHeaderFooterContentView
- (UIEdgeInsets)_concreteDefaultLayoutMargins;
- (_UITableViewHeaderFooterContentView)initWithFrame:(CGRect)a3;
- (id)_headerFooterView;
- (void)_updateConstraintsIfNeededWithViewForVariableChangeNotifications:(id)a3;
- (void)setBackgroundColor:(id)a3;
- (void)setTranslatesAutoresizingMaskIntoConstraints:(BOOL)a3;
@end

@implementation _UITableViewHeaderFooterContentView

- (id)_headerFooterView
{
  v11 = *MEMORY[0x1E69E9840];
  v4 = [(UIView *)self superview];
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v5 = v4;
  }

  else
  {
    if (dyld_program_sdk_at_least())
    {
      v7 = [MEMORY[0x1E696AAA8] currentHandler];
      [v7 handleFailureInMethod:a2 object:self file:@"UITableViewHeaderFooterView.m" lineNumber:271 description:{@"UITableViewHeaderFooterView's contentView must remain a direct subview of it. Unexpected superview of the contentView: %@", v4}];
    }

    else
    {
      v8 = *(__UILogGetCategoryCachedImpl("Assert", &_headerFooterView___s_category) + 8);
      if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
      {
        *buf = 138412290;
        v10 = v4;
        _os_log_impl(&dword_188A29000, v8, OS_LOG_TYPE_ERROR, "UITableViewHeaderFooterView's contentView must remain a direct subview of it. Unexpected superview of the contentView: %@", buf, 0xCu);
      }
    }

    v5 = 0;
  }

  return v5;
}

- (UIEdgeInsets)_concreteDefaultLayoutMargins
{
  v17.receiver = self;
  v17.super_class = _UITableViewHeaderFooterContentView;
  [(UIView *)&v17 _concreteDefaultLayoutMargins];
  v4 = v3;
  v5 = [(_UITableViewHeaderFooterContentView *)self _headerFooterView];
  v6 = _UITableViewHeaderFooterViewConcreteDefaultLayoutMargins(v5, 1, v4);
  v8 = v7;
  v10 = v9;
  v12 = v11;

  v13 = v6;
  v14 = v8;
  v15 = v10;
  v16 = v12;
  result.right = v16;
  result.bottom = v15;
  result.left = v14;
  result.top = v13;
  return result;
}

- (_UITableViewHeaderFooterContentView)initWithFrame:(CGRect)a3
{
  v5.receiver = self;
  v5.super_class = _UITableViewHeaderFooterContentView;
  v3 = [(UIView *)&v5 initWithFrame:a3.origin.x, a3.origin.y, a3.size.width, a3.size.height];
  if (v3 && dyld_program_sdk_at_least())
  {
    [(UIView *)v3 _setHostsLayoutEngine:1];
  }

  return v3;
}

- (void)setBackgroundColor:(id)a3
{
  v4 = a3;
  v5 = [(UIView *)self backgroundColor];
  v8.receiver = self;
  v8.super_class = _UITableViewHeaderFooterContentView;
  [(UIView *)&v8 setBackgroundColor:v4];
  v6 = [v4 isEqual:v5];

  if ((v6 & 1) == 0)
  {
    v7 = [(_UITableViewHeaderFooterContentView *)self _headerFooterView];
    [v7 _invalidateDetailLabelBackgroundColor];
  }
}

- (void)_updateConstraintsIfNeededWithViewForVariableChangeNotifications:(id)a3
{
  v4 = a3;
  v5 = [(UIView *)self superview];
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v6 = [(UIView *)self superview];
  }

  else
  {
    v6 = 0;
  }

  if ((*(&self->super._viewFlags + 7) & 2) != 0 && -[UIView _hostsLayoutEngine](self, "_hostsLayoutEngine") && [v6 needsUpdateConstraints])
  {
    [v6 _updateConstraintsIfNeededWithViewForVariableChangeNotifications:v4];
  }

  else
  {
    v7.receiver = self;
    v7.super_class = _UITableViewHeaderFooterContentView;
    [(UIView *)&v7 _updateConstraintsIfNeededWithViewForVariableChangeNotifications:v4];
  }
}

- (void)setTranslatesAutoresizingMaskIntoConstraints:(BOOL)a3
{
  v3 = a3;
  v11 = *MEMORY[0x1E69E9840];
  if (!a3)
  {
    if ([(UIView *)self translatesAutoresizingMaskIntoConstraints])
    {
      if (dyld_program_sdk_at_least())
      {
        v5 = *(__UILogGetCategoryCachedImpl("LayoutConstraints", &setTranslatesAutoresizingMaskIntoConstraints____s_category_2) + 8);
        if (os_log_type_enabled(v5, OS_LOG_TYPE_ERROR))
        {
          v6 = v5;
          v7 = [(UIView *)self superview];
          *buf = 138412290;
          v10 = v7;
          _os_log_impl(&dword_188A29000, v6, OS_LOG_TYPE_ERROR, "Changing the translatesAutoresizingMaskIntoConstraints property of the contentView of a UITableViewHeaderFooterView is not supported and will result in undefined behavior, as this property is managed by the owning UITableViewHeaderFooterView. View: %@", buf, 0xCu);
        }
      }
    }
  }

  v8.receiver = self;
  v8.super_class = _UITableViewHeaderFooterContentView;
  [(UIView *)&v8 setTranslatesAutoresizingMaskIntoConstraints:v3];
}

@end