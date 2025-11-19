@interface _UIButtonBarLayout
- (_UIButtonBarLayout)init;
- (_UIButtonBarLayout)initWithLayoutMetrics:(id)a3;
- (id)description;
- (void)addConstraintsToActivate:(id)a3 toDeactivate:(id)a4;
- (void)addLayoutGuides:(id)a3;
- (void)addLayoutViews:(id)a3;
- (void)addLayoutViews:(id)a3 layoutGuides:(id)a4 constraintsToActivate:(id)a5 constraintsToDeactivate:(id)a6;
- (void)configure;
- (void)setDirty:(BOOL)a3;
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

- (_UIButtonBarLayout)initWithLayoutMetrics:(id)a3
{
  v4 = a3;
  v9.receiver = self;
  v9.super_class = _UIButtonBarLayout;
  v5 = [(_UIButtonBarLayout *)&v9 init];
  if (v5)
  {
    v6 = [v4 copy];
    layoutMetrics = v5->_layoutMetrics;
    v5->_layoutMetrics = v6;

    v5->_dirty = 1;
  }

  return v5;
}

- (void)setDirty:(BOOL)a3
{
  if (self->_dirty != a3)
  {
    self->_dirty = a3;
    if (!a3)
    {
      [(_UIButtonBarLayout *)self _configure];
    }
  }
}

- (void)addLayoutViews:(id)a3 layoutGuides:(id)a4 constraintsToActivate:(id)a5 constraintsToDeactivate:(id)a6
{
  v10 = a6;
  v13 = a5;
  v11 = a4;
  v12 = a3;
  [(_UIButtonBarLayout *)self configure];
  [(_UIButtonBarLayout *)self _addLayoutViews:v12];

  [(_UIButtonBarLayout *)self _addLayoutGuides:v11];
  [(_UIButtonBarLayout *)self _addConstraintsToActivate:v13 toDeactivate:v10];
}

- (void)addLayoutViews:(id)a3
{
  v4 = a3;
  [(_UIButtonBarLayout *)self configure];
  [(_UIButtonBarLayout *)self _addLayoutViews:v4];
}

- (void)addLayoutGuides:(id)a3
{
  v4 = a3;
  [(_UIButtonBarLayout *)self configure];
  [(_UIButtonBarLayout *)self _addLayoutGuides:v4];
}

- (void)addConstraintsToActivate:(id)a3 toDeactivate:(id)a4
{
  v6 = a4;
  v7 = a3;
  [(_UIButtonBarLayout *)self configure];
  [(_UIButtonBarLayout *)self _addConstraintsToActivate:v7 toDeactivate:v6];
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