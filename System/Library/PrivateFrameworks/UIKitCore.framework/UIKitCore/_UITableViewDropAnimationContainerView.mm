@interface _UITableViewDropAnimationContainerView
- (CGPoint)_tableViewContainerOffsetFromTargetCenter;
- (NSArray)cells;
- (_UITableViewDropAnimationContainerView)init;
- (void)beginDropAnimation;
- (void)endDropAnimation;
- (void)setCenter:(CGPoint)center;
- (void)setFrame:(CGRect)frame;
- (void)updateOffsetFromTargetCenterIfNeeded;
@end

@implementation _UITableViewDropAnimationContainerView

- (_UITableViewDropAnimationContainerView)init
{
  v5.receiver = self;
  v5.super_class = _UITableViewDropAnimationContainerView;
  v2 = [(_UITableViewContainerView *)&v5 init];
  v3 = v2;
  if (v2)
  {
    [(UIView *)v2 setEdgesInsettingLayoutMarginsFromSafeArea:[(UIView *)v2 edgesInsettingLayoutMarginsFromSafeArea]& 0xA];
    [(_UITableViewDropAnimationContainerView *)v3 setOriginalTargetCenterY:1.79769313e308];
    [(UIView *)v3 setUserInteractionEnabled:0];
  }

  return v3;
}

- (NSArray)cells
{
  v16 = *MEMORY[0x1E69E9840];
  subviews = [(UIView *)self subviews];
  v3 = [MEMORY[0x1E695DF70] arrayWithCapacity:{objc_msgSend(subviews, "count")}];
  v11 = 0u;
  v12 = 0u;
  v13 = 0u;
  v14 = 0u;
  v4 = subviews;
  v5 = [v4 countByEnumeratingWithState:&v11 objects:v15 count:16];
  if (v5)
  {
    v6 = v5;
    v7 = *v12;
    do
    {
      for (i = 0; i != v6; ++i)
      {
        if (*v12 != v7)
        {
          objc_enumerationMutation(v4);
        }

        v9 = *(*(&v11 + 1) + 8 * i);
        objc_opt_class();
        if (objc_opt_isKindOfClass())
        {
          [v3 addObject:{v9, v11}];
        }
      }

      v6 = [v4 countByEnumeratingWithState:&v11 objects:v15 count:16];
    }

    while (v6);
  }

  return v3;
}

- (void)updateOffsetFromTargetCenterIfNeeded
{
  [(_UITableViewDropAnimationContainerView *)self originalTargetCenterY];
  v4 = v3;
  if (v3 != 1.79769313e308)
  {
    [(UIView *)self center];
    v6 = v5 - v4;

    [(_UITableViewDropAnimationContainerView *)self set_tableViewContainerOffsetFromTargetCenter:0.0, v6];
  }
}

- (void)setFrame:(CGRect)frame
{
  v4.receiver = self;
  v4.super_class = _UITableViewDropAnimationContainerView;
  [(UIView *)&v4 setFrame:frame.origin.x, frame.origin.y, frame.size.width, frame.size.height];
  [(_UITableViewDropAnimationContainerView *)self updateOffsetFromTargetCenterIfNeeded];
}

- (void)setCenter:(CGPoint)center
{
  v4.receiver = self;
  v4.super_class = _UITableViewDropAnimationContainerView;
  [(UIView *)&v4 setCenter:center.x, center.y];
  [(_UITableViewDropAnimationContainerView *)self updateOffsetFromTargetCenterIfNeeded];
}

- (void)beginDropAnimation
{
  v10 = *MEMORY[0x1E69E9840];
  if (![(_UITableViewDropAnimationContainerView *)self activeDropAnimationCount])
  {
    has_internal_diagnostics = os_variant_has_internal_diagnostics();
    [(UIView *)self frame];
    v4 = CGRectEqualToRect(v11, *MEMORY[0x1E695F058]);
    if (has_internal_diagnostics)
    {
      if (v4)
      {
        v6 = __UIFaultDebugAssertLog();
        if (os_log_type_enabled(v6, OS_LOG_TYPE_FAULT))
        {
          v8 = 138412290;
          selfCopy2 = self;
          _os_log_fault_impl(&dword_188A29000, v6, OS_LOG_TYPE_FAULT, "The drop animation container view needs to have a valid frame set before -beginDropAnimation is called the first time: %@", &v8, 0xCu);
        }
      }
    }

    else if (v4)
    {
      v7 = *(__UILogGetCategoryCachedImpl("Assert", &beginDropAnimation___s_category) + 8);
      if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
      {
        v8 = 138412290;
        selfCopy2 = self;
        _os_log_impl(&dword_188A29000, v7, OS_LOG_TYPE_ERROR, "The drop animation container view needs to have a valid frame set before -beginDropAnimation is called the first time: %@", &v8, 0xCu);
      }
    }

    [(UIView *)self center];
    [(_UITableViewDropAnimationContainerView *)self setOriginalTargetCenterY:v5];
  }

  [(_UITableViewDropAnimationContainerView *)self setActiveDropAnimationCount:[(_UITableViewDropAnimationContainerView *)self activeDropAnimationCount]+ 1];
}

- (void)endDropAnimation
{
  [(_UITableViewDropAnimationContainerView *)self setActiveDropAnimationCount:[(_UITableViewDropAnimationContainerView *)self activeDropAnimationCount]- 1];
  if ([(_UITableViewDropAnimationContainerView *)self activeDropAnimationCount]< 0)
  {
    currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
    [currentHandler handleFailureInMethod:a2 object:self file:@"_UITableViewDropAnimationContainerView.m" lineNumber:94 description:@"UITableView internal inconsistency: attempted to end an animation on the drop animation container view that never began"];
  }

  if (![(_UITableViewDropAnimationContainerView *)self activeDropAnimationCount])
  {

    [(_UITableViewDropAnimationContainerView *)self setOriginalTargetCenterY:1.79769313e308];
  }
}

- (CGPoint)_tableViewContainerOffsetFromTargetCenter
{
  x = self->__tableViewContainerOffsetFromTargetCenter.x;
  y = self->__tableViewContainerOffsetFromTargetCenter.y;
  result.y = y;
  result.x = x;
  return result;
}

@end