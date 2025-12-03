@interface _UITableViewHeaderFooterContentView
- (UIEdgeInsets)_concreteDefaultLayoutMargins;
- (_UITableViewHeaderFooterContentView)initWithFrame:(CGRect)frame;
- (id)_headerFooterView;
- (void)_updateConstraintsIfNeededWithViewForVariableChangeNotifications:(id)notifications;
- (void)setBackgroundColor:(id)color;
- (void)setTranslatesAutoresizingMaskIntoConstraints:(BOOL)constraints;
@end

@implementation _UITableViewHeaderFooterContentView

- (id)_headerFooterView
{
  v11 = *MEMORY[0x1E69E9840];
  superview = [(UIView *)self superview];
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v5 = superview;
  }

  else
  {
    if (dyld_program_sdk_at_least())
    {
      currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
      [currentHandler handleFailureInMethod:a2 object:self file:@"UITableViewHeaderFooterView.m" lineNumber:271 description:{@"UITableViewHeaderFooterView's contentView must remain a direct subview of it. Unexpected superview of the contentView: %@", superview}];
    }

    else
    {
      v8 = *(__UILogGetCategoryCachedImpl("Assert", &_headerFooterView___s_category) + 8);
      if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
      {
        *buf = 138412290;
        v10 = superview;
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
  _headerFooterView = [(_UITableViewHeaderFooterContentView *)self _headerFooterView];
  v6 = _UITableViewHeaderFooterViewConcreteDefaultLayoutMargins(_headerFooterView, 1, v4);
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

- (_UITableViewHeaderFooterContentView)initWithFrame:(CGRect)frame
{
  v5.receiver = self;
  v5.super_class = _UITableViewHeaderFooterContentView;
  v3 = [(UIView *)&v5 initWithFrame:frame.origin.x, frame.origin.y, frame.size.width, frame.size.height];
  if (v3 && dyld_program_sdk_at_least())
  {
    [(UIView *)v3 _setHostsLayoutEngine:1];
  }

  return v3;
}

- (void)setBackgroundColor:(id)color
{
  colorCopy = color;
  backgroundColor = [(UIView *)self backgroundColor];
  v8.receiver = self;
  v8.super_class = _UITableViewHeaderFooterContentView;
  [(UIView *)&v8 setBackgroundColor:colorCopy];
  v6 = [colorCopy isEqual:backgroundColor];

  if ((v6 & 1) == 0)
  {
    _headerFooterView = [(_UITableViewHeaderFooterContentView *)self _headerFooterView];
    [_headerFooterView _invalidateDetailLabelBackgroundColor];
  }
}

- (void)_updateConstraintsIfNeededWithViewForVariableChangeNotifications:(id)notifications
{
  notificationsCopy = notifications;
  superview = [(UIView *)self superview];
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    superview2 = [(UIView *)self superview];
  }

  else
  {
    superview2 = 0;
  }

  if ((*(&self->super._viewFlags + 7) & 2) != 0 && -[UIView _hostsLayoutEngine](self, "_hostsLayoutEngine") && [superview2 needsUpdateConstraints])
  {
    [superview2 _updateConstraintsIfNeededWithViewForVariableChangeNotifications:notificationsCopy];
  }

  else
  {
    v7.receiver = self;
    v7.super_class = _UITableViewHeaderFooterContentView;
    [(UIView *)&v7 _updateConstraintsIfNeededWithViewForVariableChangeNotifications:notificationsCopy];
  }
}

- (void)setTranslatesAutoresizingMaskIntoConstraints:(BOOL)constraints
{
  constraintsCopy = constraints;
  v11 = *MEMORY[0x1E69E9840];
  if (!constraints)
  {
    if ([(UIView *)self translatesAutoresizingMaskIntoConstraints])
    {
      if (dyld_program_sdk_at_least())
      {
        v5 = *(__UILogGetCategoryCachedImpl("LayoutConstraints", &setTranslatesAutoresizingMaskIntoConstraints____s_category_2) + 8);
        if (os_log_type_enabled(v5, OS_LOG_TYPE_ERROR))
        {
          v6 = v5;
          superview = [(UIView *)self superview];
          *buf = 138412290;
          v10 = superview;
          _os_log_impl(&dword_188A29000, v6, OS_LOG_TYPE_ERROR, "Changing the translatesAutoresizingMaskIntoConstraints property of the contentView of a UITableViewHeaderFooterView is not supported and will result in undefined behavior, as this property is managed by the owning UITableViewHeaderFooterView. View: %@", buf, 0xCu);
        }
      }
    }
  }

  v8.receiver = self;
  v8.super_class = _UITableViewHeaderFooterContentView;
  [(UIView *)&v8 setTranslatesAutoresizingMaskIntoConstraints:constraintsCopy];
}

@end