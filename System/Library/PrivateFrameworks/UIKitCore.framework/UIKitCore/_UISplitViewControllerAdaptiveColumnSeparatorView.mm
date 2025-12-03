@interface _UISplitViewControllerAdaptiveColumnSeparatorView
+ (double)pointerHitTargetWidth;
- (_UISplitViewControllerAdaptiveColumnSeparatorView)initWithSplitViewControllerColumn:(int64_t)column;
- (id)pointerInteraction:(id)interaction regionForRequest:(id)request defaultRegion:(id)region;
- (id)pointerInteraction:(id)interaction styleForRegion:(id)region;
- (void)setPermittedResizeDirections:(unint64_t)directions;
@end

@implementation _UISplitViewControllerAdaptiveColumnSeparatorView

+ (double)pointerHitTargetWidth
{
  v2 = +[_UIPointerSettingsDomain rootSettings];
  beamSettings = [v2 beamSettings];

  [beamSettings width];
  v5 = v4;

  return v5;
}

- (_UISplitViewControllerAdaptiveColumnSeparatorView)initWithSplitViewControllerColumn:(int64_t)column
{
  v15.receiver = self;
  v15.super_class = _UISplitViewControllerAdaptiveColumnSeparatorView;
  v4 = [(UIView *)&v15 initWithFrame:*MEMORY[0x1E695F058], *(MEMORY[0x1E695F058] + 8), *(MEMORY[0x1E695F058] + 16), *(MEMORY[0x1E695F058] + 24)];
  v5 = v4;
  if (v4)
  {
    v4->_splitViewControllerColumn = column;
    v6 = +[UIColor _splitViewBorderColor];
    [(UIView *)v5 setBackgroundColor:v6];

    v7 = [[UIPointerInteraction alloc] initWithDelegate:v5];
    [(UIView *)v5 addInteraction:v7];
    pointerInteraction = v5->_pointerInteraction;
    v5->_pointerInteraction = v7;
    v9 = v7;

    +[_UISplitViewControllerAdaptiveColumnSeparatorView pointerHitTargetWidth];
    v11 = -v10;
    +[_UISplitViewControllerAdaptiveColumnSeparatorView pointerHitTargetWidth];
    v13 = v12;

    [(UIView *)v5 _setTouchInsets:0.0, v11, 0.0, -v13];
  }

  return v5;
}

- (void)setPermittedResizeDirections:(unint64_t)directions
{
  if (self->_permittedResizeDirections != directions)
  {
    self->_permittedResizeDirections = directions;
    [(UIPointerInteraction *)self->_pointerInteraction invalidate];
  }
}

- (id)pointerInteraction:(id)interaction regionForRequest:(id)request defaultRegion:(id)region
{
  if ([(_UISplitViewControllerAdaptiveColumnSeparatorView *)self permittedResizeDirections:interaction])
  {
    view = [interaction view];
    [view bounds];
    v8 = v7;
    v10 = v9;
    v12 = v11;
    v14 = v13;
    +[_UISplitViewControllerAdaptiveColumnSeparatorView pointerHitTargetWidth];
    v16 = v15 * -0.5;
    v24.origin.x = v8;
    v24.origin.y = v10;
    v24.size.width = v12;
    v24.size.height = v14;
    v25 = CGRectInset(v24, v16, 0.0);
    x = v25.origin.x;
    y = v25.origin.y;
    width = v25.size.width;
    height = v25.size.height;

    height = [UIPointerRegion regionWithRect:0 identifier:x, y, width, height];
    [height setLatchingAxes:1];
  }

  else
  {
    height = 0;
  }

  return height;
}

- (id)pointerInteraction:(id)interaction styleForRegion:(id)region
{
  v4 = [(_UISplitViewControllerAdaptiveColumnSeparatorView *)self permittedResizeDirections:interaction];
  v5 = [objc_alloc(MEMORY[0x1E695DF70]) initWithCapacity:2];
  if ((v4 & 2) != 0)
  {
    v6 = [UIPointerAccessory arrowAccessoryWithPosition:6.0, 4.71238898];
    [v5 addObject:v6];
  }

  if ((v4 & 8) != 0)
  {
    v7 = [UIPointerAccessory arrowAccessoryWithPosition:6.0, 1.57079633];
    [v5 addObject:v7];
  }

  v8 = [UIPointerShape beamWithPreferredLength:2 axis:30.0];
  v9 = [UIPointerStyle styleWithShape:v8 constrainedAxes:1];
  [v9 setAccessories:v5];

  return v9;
}

@end