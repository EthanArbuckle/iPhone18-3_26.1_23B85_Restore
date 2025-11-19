@interface _UITabSidebarBottomBarWrapperView
- (CGSize)systemLayoutSizeFittingSize:(CGSize)a3 withHorizontalFittingPriority:(float)a4 verticalFittingPriority:(float)a5;
- (_UITabSidebarBottomBarWrapperView)initWithView:(id)a3 intrinsicContentSizeInvalidationHandler:(id)a4;
- (void)_intrinsicContentSizeInvalidatedForChildView:(id)a3;
- (void)layoutSubviews;
@end

@implementation _UITabSidebarBottomBarWrapperView

- (_UITabSidebarBottomBarWrapperView)initWithView:(id)a3 intrinsicContentSizeInvalidationHandler:(id)a4
{
  v8 = a3;
  v9 = a4;
  v10 = v9;
  if (v8)
  {
    if (v9)
    {
      goto LABEL_3;
    }
  }

  else
  {
    v16 = [MEMORY[0x1E696AAA8] currentHandler];
    [v16 handleFailureInMethod:a2 object:self file:@"_UITabSidebarBottomBarWrapperView.m" lineNumber:20 description:{@"Invalid parameter not satisfying: %@", @"view != nil"}];

    if (v10)
    {
      goto LABEL_3;
    }
  }

  v17 = [MEMORY[0x1E696AAA8] currentHandler];
  [v17 handleFailureInMethod:a2 object:self file:@"_UITabSidebarBottomBarWrapperView.m" lineNumber:21 description:{@"Invalid parameter not satisfying: %@", @"invalidationHandler != nil"}];

LABEL_3:
  [v8 frame];
  v18.receiver = self;
  v18.super_class = _UITabSidebarBottomBarWrapperView;
  v11 = [(UIView *)&v18 initWithFrame:?];
  v12 = v11;
  if (v11)
  {
    [(UIView *)v11 bounds];
    [v8 setFrame:?];
    [(UIView *)v12 addSubview:v8];
    objc_storeStrong(&v12->_view, a3);
    v13 = [v10 copy];
    intrinsicContentSizeInvalidationHandler = v12->_intrinsicContentSizeInvalidationHandler;
    v12->_intrinsicContentSizeInvalidationHandler = v13;
  }

  return v12;
}

- (void)layoutSubviews
{
  v16.receiver = self;
  v16.super_class = _UITabSidebarBottomBarWrapperView;
  [(UIView *)&v16 layoutSubviews];
  [(UIView *)self bounds];
  v4 = v3;
  v6 = v5;
  v8 = v7;
  v10 = v9;
  if ([(_UITabSidebarBottomBarWrapperView *)self layoutWithinSafeArea])
  {
    [(UIView *)self safeAreaInsets];
    v4 = v4 + v11;
    v6 = v6 + v12;
    v8 = v8 - (v11 + v13);
    v10 = v10 - (v12 + v14);
  }

  v15 = [(_UITabSidebarBottomBarWrapperView *)self view];
  [v15 setFrame:{v4, v6, v8, v10}];
}

- (CGSize)systemLayoutSizeFittingSize:(CGSize)a3 withHorizontalFittingPriority:(float)a4 verticalFittingPriority:(float)a5
{
  [(UIView *)self->_view systemLayoutSizeFittingSize:a3.width withHorizontalFittingPriority:a3.height verticalFittingPriority:?];
  result.height = v6;
  result.width = v5;
  return result;
}

- (void)_intrinsicContentSizeInvalidatedForChildView:(id)a3
{
  v4.receiver = self;
  v4.super_class = _UITabSidebarBottomBarWrapperView;
  [(UIView *)&v4 _intrinsicContentSizeInvalidatedForChildView:a3];
  (*(self->_intrinsicContentSizeInvalidationHandler + 2))();
}

@end