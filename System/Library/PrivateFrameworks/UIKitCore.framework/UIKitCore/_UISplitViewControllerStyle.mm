@interface _UISplitViewControllerStyle
- (NSDirectionalEdgeInsets)frameInsetsForColumn:(int64_t)column;
- (UISplitViewController)splitViewController;
- (_UISplitViewControllerStyle)initWithSplitViewController:(id)controller;
@end

@implementation _UISplitViewControllerStyle

- (UISplitViewController)splitViewController
{
  WeakRetained = objc_loadWeakRetained(&self->_splitViewController);

  return WeakRetained;
}

- (_UISplitViewControllerStyle)initWithSplitViewController:(id)controller
{
  v7.receiver = self;
  v7.super_class = _UISplitViewControllerStyle;
  v4 = [(_UISplitViewControllerStyle *)&v7 init];
  v5 = v4;
  if (v4)
  {
    objc_storeWeak(&v4->_splitViewController, controller);
    v5->_showsSeparators = 1;
  }

  return v5;
}

- (NSDirectionalEdgeInsets)frameInsetsForColumn:(int64_t)column
{
  v3 = 0.0;
  v4 = 0.0;
  v5 = 0.0;
  v6 = 0.0;
  result.trailing = v6;
  result.bottom = v5;
  result.leading = v4;
  result.top = v3;
  return result;
}

@end