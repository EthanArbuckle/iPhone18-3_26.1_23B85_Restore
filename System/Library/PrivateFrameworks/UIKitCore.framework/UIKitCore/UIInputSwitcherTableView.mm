@interface UIInputSwitcherTableView
- (void)deselectRowAtIndexPath:(id)path animated:(BOOL)animated;
- (void)selectRowAtIndexPath:(id)path animated:(BOOL)animated scrollPosition:(int64_t)position;
@end

@implementation UIInputSwitcherTableView

- (void)deselectRowAtIndexPath:(id)path animated:(BOOL)animated
{
  animatedCopy = animated;
  pathCopy = path;
  v7 = [(UITableView *)self cellForRowAtIndexPath:pathCopy];
  _inheritedRenderConfig = [(UIView *)self _inheritedRenderConfig];
  colorAdaptiveBackground = [_inheritedRenderConfig colorAdaptiveBackground];

  if (colorAdaptiveBackground)
  {
    v10 = +[UIColor labelColor];
    textLabel = [v7 textLabel];
    [textLabel setTextColor:v10];

    menu2 = +[UIColor secondaryLabelColor];
    detailTextLabel = [v7 detailTextLabel];
    [detailTextLabel setTextColor:menu2];
  }

  else
  {
    menu = [(UIInputSwitcherTableView *)self menu];
    if ([menu usesDarkTheme])
    {
      +[UIColor whiteColor];
    }

    else
    {
      +[UIColor blackColor];
    }
    v15 = ;
    textLabel2 = [v7 textLabel];
    [textLabel2 setTextColor:v15];

    menu2 = [(UIInputSwitcherTableView *)self menu];
    if ([menu2 usesDarkTheme])
    {
      +[UIColor whiteColor];
    }

    else
    {
      +[UIColor blackColor];
    }
    detailTextLabel = ;
    detailTextLabel2 = [v7 detailTextLabel];
    [detailTextLabel2 setTextColor:detailTextLabel];
  }

  backgroundView = [v7 backgroundView];
  [backgroundView setNeedsDisplay];

  v19.receiver = self;
  v19.super_class = UIInputSwitcherTableView;
  [(UITableView *)&v19 deselectRowAtIndexPath:pathCopy animated:animatedCopy];
}

- (void)selectRowAtIndexPath:(id)path animated:(BOOL)animated scrollPosition:(int64_t)position
{
  animatedCopy = animated;
  v28 = *MEMORY[0x1E69E9840];
  pathCopy = path;
  section = [pathCopy section];
  if (section >= -[UITableView numberOfSections](self, "numberOfSections") || (v10 = [pathCopy row], v10 >= -[UITableView numberOfRowsInSection:](self, "numberOfRowsInSection:", objc_msgSend(pathCopy, "section"))))
  {
    if (os_variant_has_internal_diagnostics())
    {
      v22 = __UIFaultDebugAssertLog();
      if (os_log_type_enabled(v22, OS_LOG_TYPE_FAULT))
      {
        *buf = 138412546;
        v25 = pathCopy;
        v26 = 2112;
        selfCopy2 = self;
        _os_log_fault_impl(&dword_188A29000, v22, OS_LOG_TYPE_FAULT, "Attempted to select an out-of-bounds index path (%@) in %@", buf, 0x16u);
      }
    }

    else
    {
      v16 = *(__UILogGetCategoryCachedImpl("Assert", &selectRowAtIndexPath_animated_scrollPosition____s_category) + 8);
      if (os_log_type_enabled(v16, OS_LOG_TYPE_ERROR))
      {
        *buf = 138412546;
        v25 = pathCopy;
        v26 = 2112;
        selfCopy2 = self;
        _os_log_impl(&dword_188A29000, v16, OS_LOG_TYPE_ERROR, "Attempted to select an out-of-bounds index path (%@) in %@", buf, 0x16u);
      }
    }
  }

  else
  {
    v11 = [(UITableView *)self cellForRowAtIndexPath:pathCopy];
    _inheritedRenderConfig = [(UIView *)self _inheritedRenderConfig];
    colorAdaptiveBackground = [_inheritedRenderConfig colorAdaptiveBackground];

    if (colorAdaptiveBackground)
    {
      v14 = +[UIColor labelColor];
      textLabel = [v11 textLabel];
      [textLabel setTextColor:v14];

      +[UIColor secondaryLabelColor];
    }

    else
    {
      v17 = +[UIColor whiteColor];
      textLabel2 = [v11 textLabel];
      [textLabel2 setTextColor:v17];

      +[UIColor whiteColor];
    }
    v19 = ;
    detailTextLabel = [v11 detailTextLabel];
    [detailTextLabel setTextColor:v19];

    backgroundView = [v11 backgroundView];
    [backgroundView setNeedsDisplay];

    v23.receiver = self;
    v23.super_class = UIInputSwitcherTableView;
    [(UITableView *)&v23 selectRowAtIndexPath:pathCopy animated:animatedCopy scrollPosition:position];
  }
}

@end