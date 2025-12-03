@interface _UISplitViewControllerAdaptiveImplStyle
- (BOOL)canDisplayAdjacentColumnBeneathColumn:(int64_t)column;
- (BOOL)prefersInsetSidebar;
- (NSDirectionalEdgeInsets)frameInsetsForColumn:(int64_t)column;
- (UIColor)primaryBackgroundColor;
- (_UISidebarPlatformMetrics)sidebarMetrics;
- (_UISidebarWidths)sidebarWidthMetrics;
- (_UISplitViewControllerAdaptiveImplStyle)init;
- (_UISplitViewControllerAdaptiveImplStyle)initWithInstance:(id)instance;
- (_UISplitViewControllerAdaptiveImplStyle)initWithSplitViewController:(id)controller;
- (double)cornerRadiusForColumn:(int64_t)column;
- (double)maximumWidthForColumn:(int64_t)column;
- (double)minimumWidthForColumn:(int64_t)column;
- (double)preferredWidthForColumn:(int64_t)column;
- (double)separatorWidth;
- (id)backgroundForBackgroundStyle:(int64_t)style;
- (int64_t)userInterfaceIdiom;
- (unint64_t)edgesExtendingIntoUnsafeAreaForColumn:(int64_t)column;
@end

@implementation _UISplitViewControllerAdaptiveImplStyle

- (_UISplitViewControllerAdaptiveImplStyle)initWithSplitViewController:(id)controller
{
  v4.receiver = self;
  v4.super_class = _UISplitViewControllerAdaptiveImplStyle;
  return [(_UISplitViewControllerStyle *)&v4 initWithSplitViewController:controller];
}

- (id)backgroundForBackgroundStyle:(int64_t)style
{
  selfCopy = self;
  v5 = sub_188BB4230(style);

  return v5;
}

- (_UISidebarPlatformMetrics)sidebarMetrics
{
  selfCopy = self;
  v3 = _UISidebarGetPlatformMetrics([(_UISplitViewControllerAdaptiveImplStyle *)selfCopy userInterfaceIdiom]);

  return v3;
}

- (double)cornerRadiusForColumn:(int64_t)column
{
  selfCopy = self;
  sidebarMetrics = [(_UISplitViewControllerAdaptiveImplStyle *)selfCopy sidebarMetrics];
  [(_UISidebarPlatformMetrics *)sidebarMetrics fallbackCornerRadius];
  v6 = v5;

  return v6;
}

- (double)separatorWidth
{
  selfCopy = self;
  splitViewController = [(_UISplitViewControllerStyle *)selfCopy splitViewController];
  if (splitViewController && (v4 = splitViewController, v5 = [(UIViewController *)splitViewController _lastNotifiedTraitCollection], v4, v5))
  {
    [(UITraitCollection *)v5 displayScale];
    v7 = v6;

    if (v7 >= 1.0)
    {
      return 1.0 / v7;
    }
  }

  else
  {
  }

  v7 = 1.0;
  return 1.0 / v7;
}

- (UIColor)primaryBackgroundColor
{
  systemBackgroundColor = [objc_opt_self() systemBackgroundColor];

  return systemBackgroundColor;
}

- (double)preferredWidthForColumn:(int64_t)column
{
  selfCopy = self;
  sub_1891EFA70(column);
  v6 = v5;

  return v6;
}

- (double)minimumWidthForColumn:(int64_t)column
{
  switch(column)
  {
    case 4:
      selfCopy = self;
      sidebarMetrics = [(_UISplitViewControllerAdaptiveImplStyle *)selfCopy sidebarMetrics];
      [(_UISidebarPlatformMetrics *)sidebarMetrics inspectorWidthMetrics];
      v8 = v7;

      return v8;
    case 2:
      return 320.0;
    case 0:
      [(_UISplitViewControllerAdaptiveImplStyle *)self sidebarWidthMetrics];
      return result;
    default:
      return 240.0;
  }
}

- (double)maximumWidthForColumn:(int64_t)column
{
  if (column == 4)
  {
    selfCopy = self;
    sidebarMetrics = [(_UISplitViewControllerAdaptiveImplStyle *)selfCopy sidebarMetrics];
    [(_UISidebarPlatformMetrics *)sidebarMetrics inspectorWidthMetrics];
    v8 = v7;

    return v8;
  }

  else if (column)
  {
    return 1.79769313e308;
  }

  else
  {
    [(_UISplitViewControllerAdaptiveImplStyle *)self sidebarWidthMetrics];
    return v3;
  }
}

- (NSDirectionalEdgeInsets)frameInsetsForColumn:(int64_t)column
{
  if (column)
  {
    v3 = 0.0;
    v4 = 0.0;
    v5 = 0.0;
    v6 = 0.0;
  }

  else
  {
    selfCopy = self;
    if ([(_UISplitViewControllerAdaptiveImplStyle *)selfCopy prefersInsetSidebar])
    {
      sidebarMetrics = [(_UISplitViewControllerAdaptiveImplStyle *)selfCopy sidebarMetrics];
      [(_UISidebarPlatformMetrics *)sidebarMetrics platterInsets];
      v10 = v9;
      v12 = v11;
      v14 = v13;
      v16 = v15;
    }

    else
    {
      v10 = 0.0;
      v12 = 0.0;
      v14 = 0.0;
      v16 = 0.0;
    }

    v6 = v16;
    v5 = v14;
    v4 = v12;
    v3 = v10;
  }

  result.trailing = v6;
  result.bottom = v5;
  result.leading = v4;
  result.top = v3;
  return result;
}

- (unint64_t)edgesExtendingIntoUnsafeAreaForColumn:(int64_t)column
{
  if (column)
  {
    return 0;
  }

  selfCopy = self;
  if ([(_UISplitViewControllerAdaptiveImplStyle *)selfCopy userInterfaceIdiom]>= 2)
  {

    return 0;
  }

  else
  {
    prefersInsetSidebar = [(_UISplitViewControllerAdaptiveImplStyle *)selfCopy prefersInsetSidebar];

    if (prefersInsetSidebar)
    {
      return 4;
    }

    else
    {
      return 0;
    }
  }
}

- (BOOL)canDisplayAdjacentColumnBeneathColumn:(int64_t)column
{
  if (column == 4)
  {
    return 1;
  }

  if (column)
  {
    return 0;
  }

  return [(_UISplitViewControllerAdaptiveImplStyle *)self prefersInsetSidebar];
}

- (BOOL)prefersInsetSidebar
{
  selfCopy = self;
  splitViewController = [(_UISplitViewControllerStyle *)selfCopy splitViewController];
  if (splitViewController)
  {
    v4 = splitViewController;
    primaryBackgroundStyle = [(UISplitViewController *)splitViewController primaryBackgroundStyle];
    if (primaryBackgroundStyle == 1)
    {

      return 1;
    }

    else
    {
      v7 = primaryBackgroundStyle;
      if (qword_1EA930880 != -1)
      {
        swift_once();
      }

      v8 = qword_1EA994EB8;

      return v8 == v7;
    }
  }

  else
  {

    return 0;
  }
}

- (_UISidebarWidths)sidebarWidthMetrics
{
  selfCopy = self;
  v3 = sub_1891EFF5C();
  v5 = v4;
  v7 = v6;

  v8 = v3;
  v9 = v5;
  v10 = v7;
  result.maximum = v10;
  result.preferred = v9;
  result.minimum = v8;
  return result;
}

- (int64_t)userInterfaceIdiom
{
  selfCopy = self;
  v3 = sub_1891F0054();

  return v3;
}

- (_UISplitViewControllerAdaptiveImplStyle)init
{
  v3.receiver = self;
  v3.super_class = _UISplitViewControllerAdaptiveImplStyle;
  return [(_UISplitViewControllerAdaptiveImplStyle *)&v3 init];
}

- (_UISplitViewControllerAdaptiveImplStyle)initWithInstance:(id)instance
{
  swift_unknownObjectRetain();
  sub_18A4A7DE8();
  swift_unknownObjectRelease();
  __swift_project_boxed_opaque_existential_0(v8, v8[3]);
  v4 = sub_18A4A86A8();
  v7.receiver = self;
  v7.super_class = _UISplitViewControllerAdaptiveImplStyle;
  v5 = [(_UISplitViewControllerAdaptiveImplStyle *)&v7 initWithInstance:v4];
  swift_unknownObjectRelease();
  __swift_destroy_boxed_opaque_existential_0Tm(v8);
  return v5;
}

@end