@interface _UITabSidebarBottomBarWrapperView
- (CGSize)systemLayoutSizeFittingSize:(CGSize)size withHorizontalFittingPriority:(float)priority verticalFittingPriority:(float)fittingPriority;
- (_UITabSidebarBottomBarWrapperView)initWithView:(id)view intrinsicContentSizeInvalidationHandler:(id)handler;
- (void)_intrinsicContentSizeInvalidatedForChildView:(id)view;
- (void)layoutSubviews;
@end

@implementation _UITabSidebarBottomBarWrapperView

- (_UITabSidebarBottomBarWrapperView)initWithView:(id)view intrinsicContentSizeInvalidationHandler:(id)handler
{
  viewCopy = view;
  handlerCopy = handler;
  v10 = handlerCopy;
  if (viewCopy)
  {
    if (handlerCopy)
    {
      goto LABEL_3;
    }
  }

  else
  {
    currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
    [currentHandler handleFailureInMethod:a2 object:self file:@"_UITabSidebarBottomBarWrapperView.m" lineNumber:20 description:{@"Invalid parameter not satisfying: %@", @"view != nil"}];

    if (v10)
    {
      goto LABEL_3;
    }
  }

  currentHandler2 = [MEMORY[0x1E696AAA8] currentHandler];
  [currentHandler2 handleFailureInMethod:a2 object:self file:@"_UITabSidebarBottomBarWrapperView.m" lineNumber:21 description:{@"Invalid parameter not satisfying: %@", @"invalidationHandler != nil"}];

LABEL_3:
  [viewCopy frame];
  v18.receiver = self;
  v18.super_class = _UITabSidebarBottomBarWrapperView;
  v11 = [(UIView *)&v18 initWithFrame:?];
  v12 = v11;
  if (v11)
  {
    [(UIView *)v11 bounds];
    [viewCopy setFrame:?];
    [(UIView *)v12 addSubview:viewCopy];
    objc_storeStrong(&v12->_view, view);
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

  view = [(_UITabSidebarBottomBarWrapperView *)self view];
  [view setFrame:{v4, v6, v8, v10}];
}

- (CGSize)systemLayoutSizeFittingSize:(CGSize)size withHorizontalFittingPriority:(float)priority verticalFittingPriority:(float)fittingPriority
{
  [(UIView *)self->_view systemLayoutSizeFittingSize:size.width withHorizontalFittingPriority:size.height verticalFittingPriority:?];
  result.height = v6;
  result.width = v5;
  return result;
}

- (void)_intrinsicContentSizeInvalidatedForChildView:(id)view
{
  v4.receiver = self;
  v4.super_class = _UITabSidebarBottomBarWrapperView;
  [(UIView *)&v4 _intrinsicContentSizeInvalidatedForChildView:view];
  (*(self->_intrinsicContentSizeInvalidationHandler + 2))();
}

@end