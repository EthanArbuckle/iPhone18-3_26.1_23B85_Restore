@interface UIInputSwitcherTableView
- (void)deselectRowAtIndexPath:(id)a3 animated:(BOOL)a4;
- (void)selectRowAtIndexPath:(id)a3 animated:(BOOL)a4 scrollPosition:(int64_t)a5;
@end

@implementation UIInputSwitcherTableView

- (void)deselectRowAtIndexPath:(id)a3 animated:(BOOL)a4
{
  v4 = a4;
  v6 = a3;
  v7 = [(UITableView *)self cellForRowAtIndexPath:v6];
  v8 = [(UIView *)self _inheritedRenderConfig];
  v9 = [v8 colorAdaptiveBackground];

  if (v9)
  {
    v10 = +[UIColor labelColor];
    v11 = [v7 textLabel];
    [v11 setTextColor:v10];

    v12 = +[UIColor secondaryLabelColor];
    v13 = [v7 detailTextLabel];
    [v13 setTextColor:v12];
  }

  else
  {
    v14 = [(UIInputSwitcherTableView *)self menu];
    if ([v14 usesDarkTheme])
    {
      +[UIColor whiteColor];
    }

    else
    {
      +[UIColor blackColor];
    }
    v15 = ;
    v16 = [v7 textLabel];
    [v16 setTextColor:v15];

    v12 = [(UIInputSwitcherTableView *)self menu];
    if ([v12 usesDarkTheme])
    {
      +[UIColor whiteColor];
    }

    else
    {
      +[UIColor blackColor];
    }
    v13 = ;
    v17 = [v7 detailTextLabel];
    [v17 setTextColor:v13];
  }

  v18 = [v7 backgroundView];
  [v18 setNeedsDisplay];

  v19.receiver = self;
  v19.super_class = UIInputSwitcherTableView;
  [(UITableView *)&v19 deselectRowAtIndexPath:v6 animated:v4];
}

- (void)selectRowAtIndexPath:(id)a3 animated:(BOOL)a4 scrollPosition:(int64_t)a5
{
  v6 = a4;
  v28 = *MEMORY[0x1E69E9840];
  v8 = a3;
  v9 = [v8 section];
  if (v9 >= -[UITableView numberOfSections](self, "numberOfSections") || (v10 = [v8 row], v10 >= -[UITableView numberOfRowsInSection:](self, "numberOfRowsInSection:", objc_msgSend(v8, "section"))))
  {
    if (os_variant_has_internal_diagnostics())
    {
      v22 = __UIFaultDebugAssertLog();
      if (os_log_type_enabled(v22, OS_LOG_TYPE_FAULT))
      {
        *buf = 138412546;
        v25 = v8;
        v26 = 2112;
        v27 = self;
        _os_log_fault_impl(&dword_188A29000, v22, OS_LOG_TYPE_FAULT, "Attempted to select an out-of-bounds index path (%@) in %@", buf, 0x16u);
      }
    }

    else
    {
      v16 = *(__UILogGetCategoryCachedImpl("Assert", &selectRowAtIndexPath_animated_scrollPosition____s_category) + 8);
      if (os_log_type_enabled(v16, OS_LOG_TYPE_ERROR))
      {
        *buf = 138412546;
        v25 = v8;
        v26 = 2112;
        v27 = self;
        _os_log_impl(&dword_188A29000, v16, OS_LOG_TYPE_ERROR, "Attempted to select an out-of-bounds index path (%@) in %@", buf, 0x16u);
      }
    }
  }

  else
  {
    v11 = [(UITableView *)self cellForRowAtIndexPath:v8];
    v12 = [(UIView *)self _inheritedRenderConfig];
    v13 = [v12 colorAdaptiveBackground];

    if (v13)
    {
      v14 = +[UIColor labelColor];
      v15 = [v11 textLabel];
      [v15 setTextColor:v14];

      +[UIColor secondaryLabelColor];
    }

    else
    {
      v17 = +[UIColor whiteColor];
      v18 = [v11 textLabel];
      [v18 setTextColor:v17];

      +[UIColor whiteColor];
    }
    v19 = ;
    v20 = [v11 detailTextLabel];
    [v20 setTextColor:v19];

    v21 = [v11 backgroundView];
    [v21 setNeedsDisplay];

    v23.receiver = self;
    v23.super_class = UIInputSwitcherTableView;
    [(UITableView *)&v23 selectRowAtIndexPath:v8 animated:v6 scrollPosition:a5];
  }
}

@end