@interface _UISearchBarScopeContainerView
- (CGSize)sizeThatFits:(CGSize)a3;
- (_UISearchBarScopeContainerView)initWithFrame:(CGRect)a3;
- (id)description;
- (void)layoutSubviews;
- (void)setNeedsLayout;
@end

@implementation _UISearchBarScopeContainerView

- (_UISearchBarScopeContainerView)initWithFrame:(CGRect)a3
{
  v8.receiver = self;
  v8.super_class = _UISearchBarScopeContainerView;
  v3 = [(UIView *)&v8 initWithFrame:a3.origin.x, a3.origin.y, a3.size.width, a3.size.height];
  if (v3)
  {
    v4 = objc_alloc_init(_UISearchBarScopeContainerLayout);
    layout = v3->_layout;
    v3->_layout = v4;

    [(UIView *)v3 setClipsToBounds:1];
    v6 = [(UIView *)v3 layer];
    [v6 setAllowsGroupOpacity:0];
  }

  return v3;
}

- (CGSize)sizeThatFits:(CGSize)a3
{
  has_internal_diagnostics = os_variant_has_internal_diagnostics();
  layout = self->_layout;
  if (has_internal_diagnostics)
  {
    if (!layout)
    {
      v10 = __UIFaultDebugAssertLog();
      if (os_log_type_enabled(v10, OS_LOG_TYPE_FAULT))
      {
        *buf = 0;
        _os_log_fault_impl(&dword_188A29000, v10, OS_LOG_TYPE_FAULT, "Container can't calculate sizeThatFits without a layout object. This is a UIKit bug.", buf, 2u);
      }
    }
  }

  else if (!layout)
  {
    v11 = *(__UILogGetCategoryCachedImpl("Assert", &sizeThatFits____s_category) + 8);
    if (os_log_type_enabled(v11, OS_LOG_TYPE_ERROR))
    {
      *v12 = 0;
      _os_log_impl(&dword_188A29000, v11, OS_LOG_TYPE_ERROR, "Container can't calculate sizeThatFits without a layout object. This is a UIKit bug.", v12, 2u);
    }
  }

  [(UIView *)self bounds];
  Width = CGRectGetWidth(v15);
  [(_UISearchBarScopeContainerLayout *)self->_layout naturalContainerHeight];
  v8 = v7;
  v9 = Width;
  result.height = v8;
  result.width = v9;
  return result;
}

- (void)layoutSubviews
{
  v17 = *MEMORY[0x1E69E9840];
  has_internal_diagnostics = os_variant_has_internal_diagnostics();
  layout = self->_layout;
  if (has_internal_diagnostics)
  {
    if (!layout)
    {
      v10 = __UIFaultDebugAssertLog();
      if (os_log_type_enabled(v10, OS_LOG_TYPE_FAULT))
      {
        LOWORD(v15) = 0;
        _os_log_fault_impl(&dword_188A29000, v10, OS_LOG_TYPE_FAULT, "Container can't do layoutSubviews without a layout object. This is a UIKit bug.", &v15, 2u);
      }
    }
  }

  else if (!layout)
  {
    v13 = *(__UILogGetCategoryCachedImpl("Assert", &_MergedGlobals_1014) + 8);
    if (os_log_type_enabled(v13, OS_LOG_TYPE_ERROR))
    {
      LOWORD(v15) = 0;
      _os_log_impl(&dword_188A29000, v13, OS_LOG_TYPE_ERROR, "Container can't do layoutSubviews without a layout object. This is a UIKit bug.", &v15, 2u);
    }
  }

  [(_UISearchBarLayoutBase *)self->_layout setAssociatedView:self];
  [(UIView *)self bounds];
  [(_UISearchBarLayoutBase *)self->_layout setLayoutSize:v5, v6];
  [(UIView *)self safeAreaInsets];
  [(_UISearchBarLayoutBase *)self->_layout setContainerSafeAreaInsets:?];
  [(_UISearchBarScopeContainerLayout *)self->_layout applyLayout];
  v7 = os_variant_has_internal_diagnostics();
  v8 = [(_UISearchBarScopeContainerLayout *)self->_layout delegate];
  v9 = [v8 isProspective];

  if (v7)
  {
    if (v9)
    {
      v11 = __UIFaultDebugAssertLog();
      if (!os_log_type_enabled(v11, OS_LOG_TYPE_FAULT))
      {
LABEL_18:

        return;
      }

      v12 = [(UIView *)self recursiveDescription];
      v15 = 138412290;
      v16 = v12;
      _os_log_fault_impl(&dword_188A29000, v11, OS_LOG_TYPE_FAULT, "Live layout with a prospective search layout. Scope Bar container layout (e.g., search scope bar size and positioning) may be incorrect. Please send to UIKit for investigation, and include the following recursive description.\n%@", &v15, 0xCu);
LABEL_17:

      goto LABEL_18;
    }
  }

  else if (v9)
  {
    v14 = *(__UILogGetCategoryCachedImpl("Assert", &qword_1ED49CA30) + 8);
    if (os_log_type_enabled(v14, OS_LOG_TYPE_ERROR))
    {
      v11 = v14;
      v12 = [(UIView *)self recursiveDescription];
      v15 = 138412290;
      v16 = v12;
      _os_log_impl(&dword_188A29000, v11, OS_LOG_TYPE_ERROR, "Live layout with a prospective search layout. Scope Bar container layout (e.g., search scope bar size and positioning) may be incorrect. Please send to UIKit for investigation, and include the following recursive description.\n%@", &v15, 0xCu);
      goto LABEL_17;
    }
  }
}

- (void)setNeedsLayout
{
  v3.receiver = self;
  v3.super_class = _UISearchBarScopeContainerView;
  [(UIView *)&v3 setNeedsLayout];
  [(_UISearchBarLayoutBase *)self->_layout invalidateLayout];
}

- (id)description
{
  v6.receiver = self;
  v6.super_class = _UISearchBarScopeContainerView;
  v3 = [(UIView *)&v6 description];
  if (os_variant_has_internal_diagnostics())
  {
    v5 = [v3 stringByAppendingFormat:@" layout=%p", self->_layout];

    v3 = v5;
  }

  return v3;
}

@end