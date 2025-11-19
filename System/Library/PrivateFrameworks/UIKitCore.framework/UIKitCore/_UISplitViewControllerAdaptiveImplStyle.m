@interface _UISplitViewControllerAdaptiveImplStyle
- (BOOL)canDisplayAdjacentColumnBeneathColumn:(int64_t)a3;
- (BOOL)prefersInsetSidebar;
- (NSDirectionalEdgeInsets)frameInsetsForColumn:(int64_t)a3;
- (UIColor)primaryBackgroundColor;
- (_UISidebarPlatformMetrics)sidebarMetrics;
- (_UISidebarWidths)sidebarWidthMetrics;
- (_UISplitViewControllerAdaptiveImplStyle)init;
- (_UISplitViewControllerAdaptiveImplStyle)initWithInstance:(id)a3;
- (_UISplitViewControllerAdaptiveImplStyle)initWithSplitViewController:(id)a3;
- (double)cornerRadiusForColumn:(int64_t)a3;
- (double)maximumWidthForColumn:(int64_t)a3;
- (double)minimumWidthForColumn:(int64_t)a3;
- (double)preferredWidthForColumn:(int64_t)a3;
- (double)separatorWidth;
- (id)backgroundForBackgroundStyle:(int64_t)a3;
- (int64_t)userInterfaceIdiom;
- (unint64_t)edgesExtendingIntoUnsafeAreaForColumn:(int64_t)a3;
@end

@implementation _UISplitViewControllerAdaptiveImplStyle

- (_UISplitViewControllerAdaptiveImplStyle)initWithSplitViewController:(id)a3
{
  v4.receiver = self;
  v4.super_class = _UISplitViewControllerAdaptiveImplStyle;
  return [(_UISplitViewControllerStyle *)&v4 initWithSplitViewController:a3];
}

- (id)backgroundForBackgroundStyle:(int64_t)a3
{
  v4 = self;
  v5 = sub_188BB4230(a3);

  return v5;
}

- (_UISidebarPlatformMetrics)sidebarMetrics
{
  v2 = self;
  v3 = _UISidebarGetPlatformMetrics([(_UISplitViewControllerAdaptiveImplStyle *)v2 userInterfaceIdiom]);

  return v3;
}

- (double)cornerRadiusForColumn:(int64_t)a3
{
  v3 = self;
  v4 = [(_UISplitViewControllerAdaptiveImplStyle *)v3 sidebarMetrics];
  [(_UISidebarPlatformMetrics *)v4 fallbackCornerRadius];
  v6 = v5;

  return v6;
}

- (double)separatorWidth
{
  v2 = self;
  v3 = [(_UISplitViewControllerStyle *)v2 splitViewController];
  if (v3 && (v4 = v3, v5 = [(UIViewController *)v3 _lastNotifiedTraitCollection], v4, v5))
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
  v2 = [objc_opt_self() systemBackgroundColor];

  return v2;
}

- (double)preferredWidthForColumn:(int64_t)a3
{
  v4 = self;
  sub_1891EFA70(a3);
  v6 = v5;

  return v6;
}

- (double)minimumWidthForColumn:(int64_t)a3
{
  switch(a3)
  {
    case 4:
      v5 = self;
      v6 = [(_UISplitViewControllerAdaptiveImplStyle *)v5 sidebarMetrics];
      [(_UISidebarPlatformMetrics *)v6 inspectorWidthMetrics];
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

- (double)maximumWidthForColumn:(int64_t)a3
{
  if (a3 == 4)
  {
    v5 = self;
    v6 = [(_UISplitViewControllerAdaptiveImplStyle *)v5 sidebarMetrics];
    [(_UISidebarPlatformMetrics *)v6 inspectorWidthMetrics];
    v8 = v7;

    return v8;
  }

  else if (a3)
  {
    return 1.79769313e308;
  }

  else
  {
    [(_UISplitViewControllerAdaptiveImplStyle *)self sidebarWidthMetrics];
    return v3;
  }
}

- (NSDirectionalEdgeInsets)frameInsetsForColumn:(int64_t)a3
{
  if (a3)
  {
    v3 = 0.0;
    v4 = 0.0;
    v5 = 0.0;
    v6 = 0.0;
  }

  else
  {
    v7 = self;
    if ([(_UISplitViewControllerAdaptiveImplStyle *)v7 prefersInsetSidebar])
    {
      v8 = [(_UISplitViewControllerAdaptiveImplStyle *)v7 sidebarMetrics];
      [(_UISidebarPlatformMetrics *)v8 platterInsets];
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

- (unint64_t)edgesExtendingIntoUnsafeAreaForColumn:(int64_t)a3
{
  if (a3)
  {
    return 0;
  }

  v4 = self;
  if ([(_UISplitViewControllerAdaptiveImplStyle *)v4 userInterfaceIdiom]>= 2)
  {

    return 0;
  }

  else
  {
    v5 = [(_UISplitViewControllerAdaptiveImplStyle *)v4 prefersInsetSidebar];

    if (v5)
    {
      return 4;
    }

    else
    {
      return 0;
    }
  }
}

- (BOOL)canDisplayAdjacentColumnBeneathColumn:(int64_t)a3
{
  if (a3 == 4)
  {
    return 1;
  }

  if (a3)
  {
    return 0;
  }

  return [(_UISplitViewControllerAdaptiveImplStyle *)self prefersInsetSidebar];
}

- (BOOL)prefersInsetSidebar
{
  v2 = self;
  v3 = [(_UISplitViewControllerStyle *)v2 splitViewController];
  if (v3)
  {
    v4 = v3;
    v5 = [(UISplitViewController *)v3 primaryBackgroundStyle];
    if (v5 == 1)
    {

      return 1;
    }

    else
    {
      v7 = v5;
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
  v2 = self;
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
  v2 = self;
  v3 = sub_1891F0054();

  return v3;
}

- (_UISplitViewControllerAdaptiveImplStyle)init
{
  v3.receiver = self;
  v3.super_class = _UISplitViewControllerAdaptiveImplStyle;
  return [(_UISplitViewControllerAdaptiveImplStyle *)&v3 init];
}

- (_UISplitViewControllerAdaptiveImplStyle)initWithInstance:(id)a3
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