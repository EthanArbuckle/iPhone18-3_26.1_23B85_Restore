@interface _UIButtonBarLayout
- (_UIButtonBarLayout)init;
- (_UIButtonBarLayout)initWithLayoutMetrics:(id)metrics;
- (id)description;
- (void)addConstraintsToActivate:(id)activate toDeactivate:(id)deactivate;
- (void)addLayoutGuides:(id)guides;
- (void)addLayoutViews:(id)views;
- (void)addLayoutViews:(id)views layoutGuides:(id)guides constraintsToActivate:(id)activate constraintsToDeactivate:(id)deactivate;
- (void)configure;
- (void)setDirty:(BOOL)dirty;
@end

@implementation _UIButtonBarLayout

- (void)configure
{
  if (self->_dirty || [(_UIButtonBarLayout *)self _shouldBeDirty])
  {
    [(_UIButtonBarLayout *)self _configure];
    self->_dirty = 0;
  }
}

- (_UIButtonBarLayout)init
{
  [(_UIButtonBarLayout *)self doesNotRecognizeSelector:a2];

  return 0;
}

- (_UIButtonBarLayout)initWithLayoutMetrics:(id)metrics
{
  metricsCopy = metrics;
  v9.receiver = self;
  v9.super_class = _UIButtonBarLayout;
  v5 = [(_UIButtonBarLayout *)&v9 init];
  if (v5)
  {
    v6 = [metricsCopy copy];
    layoutMetrics = v5->_layoutMetrics;
    v5->_layoutMetrics = v6;

    v5->_dirty = 1;
  }

  return v5;
}

- (void)setDirty:(BOOL)dirty
{
  if (self->_dirty != dirty)
  {
    self->_dirty = dirty;
    if (!dirty)
    {
      [(_UIButtonBarLayout *)self _configure];
    }
  }
}

- (void)addLayoutViews:(id)views layoutGuides:(id)guides constraintsToActivate:(id)activate constraintsToDeactivate:(id)deactivate
{
  deactivateCopy = deactivate;
  activateCopy = activate;
  guidesCopy = guides;
  viewsCopy = views;
  [(_UIButtonBarLayout *)self configure];
  [(_UIButtonBarLayout *)self _addLayoutViews:viewsCopy];

  [(_UIButtonBarLayout *)self _addLayoutGuides:guidesCopy];
  [(_UIButtonBarLayout *)self _addConstraintsToActivate:activateCopy toDeactivate:deactivateCopy];
}

- (void)addLayoutViews:(id)views
{
  viewsCopy = views;
  [(_UIButtonBarLayout *)self configure];
  [(_UIButtonBarLayout *)self _addLayoutViews:viewsCopy];
}

- (void)addLayoutGuides:(id)guides
{
  guidesCopy = guides;
  [(_UIButtonBarLayout *)self configure];
  [(_UIButtonBarLayout *)self _addLayoutGuides:guidesCopy];
}

- (void)addConstraintsToActivate:(id)activate toDeactivate:(id)deactivate
{
  deactivateCopy = deactivate;
  activateCopy = activate;
  [(_UIButtonBarLayout *)self configure];
  [(_UIButtonBarLayout *)self _addConstraintsToActivate:activateCopy toDeactivate:deactivateCopy];
}

- (id)description
{
  v6.receiver = self;
  v6.super_class = _UIButtonBarLayout;
  v3 = [(_UIButtonBarLayout *)&v6 description];
  v4 = [v3 mutableCopy];

  [v4 appendFormat:@" layoutMetrics=%p", self->_layoutMetrics];
  if (self->_dirty)
  {
    [v4 appendString:@" dirty"];
  }

  return v4;
}

@end