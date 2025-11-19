@interface _UISearchBarSearchContainerView
- (CGSize)sizeThatFits:(CGSize)a3;
- (id)description;
- (void)layoutSubviews;
- (void)setFrozenLayout:(BOOL)a3;
- (void)setNeedsLayout;
@end

@implementation _UISearchBarSearchContainerView

- (void)setNeedsLayout
{
  if (self->_frozenLayout)
  {
    self->_needsLayoutWhenThawed = 1;
  }

  else
  {
    v3.receiver = self;
    v3.super_class = _UISearchBarSearchContainerView;
    [(UIView *)&v3 setNeedsLayout];
    [(_UISearchBarLayoutBase *)self->_layout invalidateLayout];
  }
}

- (void)layoutSubviews
{
  v17 = *MEMORY[0x1E69E9840];
  if (self->_frozenLayout)
  {
    self->_needsLayoutWhenThawed = 1;
    return;
  }

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
    v13 = *(__UILogGetCategoryCachedImpl("Assert", &_MergedGlobals_1_0) + 8);
    if (os_log_type_enabled(v13, OS_LOG_TYPE_ERROR))
    {
      LOWORD(v15) = 0;
      _os_log_impl(&dword_188A29000, v13, OS_LOG_TYPE_ERROR, "Container can't do layoutSubviews without a layout object. This is a UIKit bug.", &v15, 2u);
    }
  }

  [(UIView *)self bounds];
  [(_UISearchBarLayoutBase *)self->_layout setLayoutSize:v5, v6];
  [(_UISearchBarLayoutBase *)self->_layout setAssociatedView:self];
  [(UIView *)self safeAreaInsets];
  [(_UISearchBarLayoutBase *)self->_layout setContainerSafeAreaInsets:?];
  [(_UISearchBarSearchContainerLayout *)self->_layout sendWillLayoutSubviewsForSearchFieldContainerView:self];
  [(_UISearchBarSearchContainerLayout *)self->_layout applyLayout];
  v7 = os_variant_has_internal_diagnostics();
  v8 = [(_UISearchBarSearchContainerLayout *)self->_layout delegate];
  v9 = [v8 isProspective];

  if (v7)
  {
    if (v9)
    {
      v11 = __UIFaultDebugAssertLog();
      if (!os_log_type_enabled(v11, OS_LOG_TYPE_FAULT))
      {
LABEL_20:

        return;
      }

      v12 = [(UIView *)self recursiveDescription];
      v15 = 138412290;
      v16 = v12;
      _os_log_fault_impl(&dword_188A29000, v11, OS_LOG_TYPE_FAULT, "Live layout with a prospective search layout. Search Field container layout (e.g., search field and cancel button size and positioning) may be incorrect. Please send to UIKit for investigation, and include the following recursive description.\n%@", &v15, 0xCu);
LABEL_19:

      goto LABEL_20;
    }
  }

  else if (v9)
  {
    v14 = *(__UILogGetCategoryCachedImpl("Assert", &qword_1ED499190) + 8);
    if (os_log_type_enabled(v14, OS_LOG_TYPE_ERROR))
    {
      v11 = v14;
      v12 = [(UIView *)self recursiveDescription];
      v15 = 138412290;
      v16 = v12;
      _os_log_impl(&dword_188A29000, v11, OS_LOG_TYPE_ERROR, "Live layout with a prospective search layout. Search Field container layout (e.g., search field and cancel button size and positioning) may be incorrect. Please send to UIKit for investigation, and include the following recursive description.\n%@", &v15, 0xCu);
      goto LABEL_19;
    }
  }
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
    v11 = *(__UILogGetCategoryCachedImpl("Assert", &sizeThatFits____s_category_0) + 8);
    if (os_log_type_enabled(v11, OS_LOG_TYPE_ERROR))
    {
      *v12 = 0;
      _os_log_impl(&dword_188A29000, v11, OS_LOG_TYPE_ERROR, "Container can't calculate sizeThatFits without a layout object. This is a UIKit bug.", v12, 2u);
    }
  }

  [(UIView *)self bounds];
  Width = CGRectGetWidth(v15);
  [(_UISearchBarSearchContainerLayout *)self->_layout naturalContainerHeight];
  v8 = v7;
  v9 = Width;
  result.height = v8;
  result.width = v9;
  return result;
}

- (void)setFrozenLayout:(BOOL)a3
{
  frozenLayout = self->_frozenLayout;
  self->_frozenLayout = a3;
  if (!a3 && frozenLayout && self->_needsLayoutWhenThawed)
  {
    [(_UISearchBarSearchContainerView *)self setNeedsLayout];
    self->_needsLayoutWhenThawed = 0;
  }
}

- (id)description
{
  v6.receiver = self;
  v6.super_class = _UISearchBarSearchContainerView;
  v3 = [(UIView *)&v6 description];
  if (os_variant_has_internal_diagnostics())
  {
    v5 = [v3 stringByAppendingFormat:@" layout=%p", self->_layout];

    if (self->_frozenLayout)
    {
      v3 = [v5 stringByAppendingString:@" frozen"];
    }

    else
    {
      v3 = v5;
    }
  }

  return v3;
}

@end