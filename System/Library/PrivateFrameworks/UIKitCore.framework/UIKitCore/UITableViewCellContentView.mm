@interface UITableViewCellContentView
- (NSDirectionalEdgeInsets)_overriddenDefaultLayoutMargins;
- (UIEdgeInsets)_concreteDefaultLayoutMargins;
- (UITableViewCellContentView)initWithCoder:(id)coder;
- (UITableViewCellContentView)initWithFrame:(CGRect)frame;
- (void)_setOverriddenDefaultLayoutMargins:(NSDirectionalEdgeInsets)margins;
- (void)_tableViewCellContentViewCommonSetup;
- (void)setTranslatesAutoresizingMaskIntoConstraints:(BOOL)constraints;
@end

@implementation UITableViewCellContentView

- (UIEdgeInsets)_concreteDefaultLayoutMargins
{
  _shouldReverseLayoutDirection = [(UIView *)self _shouldReverseLayoutDirection];
  v9.receiver = self;
  v9.super_class = UITableViewCellContentView;
  [(UIView *)&v9 _concreteDefaultLayoutMargins];
  if ((*&self->_contentViewFlags & 2) != 0)
  {
    leading = self->_overriddenDefaultLayoutMargins.leading;
    if (!_shouldReverseLayoutDirection)
    {
      trailing = self->_overriddenDefaultLayoutMargins.leading;
      if ((*&self->_contentViewFlags & 8) == 0)
      {
        goto LABEL_10;
      }

      goto LABEL_9;
    }

    v7 = self->_overriddenDefaultLayoutMargins.leading;
    if ((*&self->_contentViewFlags & 8) == 0)
    {
      goto LABEL_10;
    }

LABEL_7:
    trailing = self->_overriddenDefaultLayoutMargins.trailing;
    v7 = leading;
    goto LABEL_10;
  }

  if ((*&self->_contentViewFlags & 8) == 0)
  {
    goto LABEL_10;
  }

  leading = v7;
  if (_shouldReverseLayoutDirection)
  {
    goto LABEL_7;
  }

LABEL_9:
  v7 = self->_overriddenDefaultLayoutMargins.trailing;
LABEL_10:
  if (*&self->_contentViewFlags)
  {
    top = self->_overriddenDefaultLayoutMargins.top;
  }

  if ((*&self->_contentViewFlags & 4) != 0)
  {
    bottom = self->_overriddenDefaultLayoutMargins.bottom;
  }

  result.right = v7;
  result.bottom = bottom;
  result.left = trailing;
  result.top = top;
  return result;
}

- (void)_tableViewCellContentViewCommonSetup
{
  if (dyld_program_sdk_at_least())
  {
    [(UIView *)self _setHostsLayoutEngine:1];
  }

  if (dyld_program_sdk_at_least())
  {

    [(UIView *)self setEdgesPreservingSuperviewLayoutMargins:15];
  }

  else if (dyld_program_sdk_at_least())
  {
    [(UIView *)self setEdgesPreservingSuperviewLayoutMargins:10];
    v3 = [(UIView *)self edgesInsettingLayoutMarginsFromSafeArea]& 0xA;

    [(UIView *)self setEdgesInsettingLayoutMarginsFromSafeArea:v3];
  }
}

- (UITableViewCellContentView)initWithCoder:(id)coder
{
  v6.receiver = self;
  v6.super_class = UITableViewCellContentView;
  v3 = [(UIView *)&v6 initWithCoder:coder];
  v4 = v3;
  if (v3)
  {
    [(UITableViewCellContentView *)v3 _tableViewCellContentViewCommonSetup];
  }

  return v4;
}

- (UITableViewCellContentView)initWithFrame:(CGRect)frame
{
  v6.receiver = self;
  v6.super_class = UITableViewCellContentView;
  v3 = [(UIView *)&v6 initWithFrame:frame.origin.x, frame.origin.y, frame.size.width, frame.size.height];
  v4 = v3;
  if (v3)
  {
    [(UITableViewCellContentView *)v3 _tableViewCellContentViewCommonSetup];
    if (dyld_program_sdk_at_least())
    {
      if ((dyld_program_sdk_at_least() & 1) == 0)
      {
        [(UIView *)v4 setEdgesPreservingSuperviewLayoutMargins:10];
        [(UIView *)v4 setEdgesInsettingLayoutMarginsFromSafeArea:[(UIView *)v4 edgesInsettingLayoutMarginsFromSafeArea]& 0xA];
      }
    }
  }

  return v4;
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
        v5 = *(__UILogGetCategoryCachedImpl("LayoutConstraints", &setTranslatesAutoresizingMaskIntoConstraints____s_category_1) + 8);
        if (os_log_type_enabled(v5, OS_LOG_TYPE_ERROR))
        {
          v6 = v5;
          superview = [(UIView *)self superview];
          *buf = 138412290;
          v10 = superview;
          _os_log_impl(&dword_188A29000, v6, OS_LOG_TYPE_ERROR, "Changing the translatesAutoresizingMaskIntoConstraints property of the contentView of a UITableViewCell is not supported and will result in undefined behavior, as this property is managed by the owning UITableViewCell. Cell: %@", buf, 0xCu);
        }
      }
    }
  }

  v8.receiver = self;
  v8.super_class = UITableViewCellContentView;
  [(UIView *)&v8 setTranslatesAutoresizingMaskIntoConstraints:constraintsCopy];
}

- (void)_setOverriddenDefaultLayoutMargins:(NSDirectionalEdgeInsets)margins
{
  v3 = fabs(margins.leading);
  self->_overriddenDefaultLayoutMargins = margins;
  v4 = 2 * (v3 >= 2.22044605e-16);
  v5 = fabs(margins.top);
  if (fabs(margins.trailing) >= 2.22044605e-16)
  {
    v4 = (2 * (v3 >= 2.22044605e-16)) | 8;
  }

  if (v5 >= 2.22044605e-16)
  {
    ++v4;
  }

  if (fabs(margins.bottom) >= 2.22044605e-16)
  {
    v4 |= 4u;
  }

  *&self->_contentViewFlags = *&self->_contentViewFlags & 0xF0 | v4;
  [(UIView *)self _updateInferredLayoutMargins];
}

- (NSDirectionalEdgeInsets)_overriddenDefaultLayoutMargins
{
  top = self->_overriddenDefaultLayoutMargins.top;
  leading = self->_overriddenDefaultLayoutMargins.leading;
  bottom = self->_overriddenDefaultLayoutMargins.bottom;
  trailing = self->_overriddenDefaultLayoutMargins.trailing;
  result.trailing = trailing;
  result.bottom = bottom;
  result.leading = leading;
  result.top = top;
  return result;
}

@end