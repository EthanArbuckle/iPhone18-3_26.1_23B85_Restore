@interface _UITabSidebarBorderView
- (_UITabSidebarBorderView)initWithFrame:(CGRect)frame;
- (id)pointerInteraction:(id)interaction regionForRequest:(id)request defaultRegion:(id)region;
- (id)pointerInteraction:(id)interaction styleForRegion:(id)region;
@end

@implementation _UITabSidebarBorderView

- (_UITabSidebarBorderView)initWithFrame:(CGRect)frame
{
  v8.receiver = self;
  v8.super_class = _UITabSidebarBorderView;
  v3 = [(UIView *)&v8 initWithFrame:frame.origin.x, frame.origin.y, frame.size.width, frame.size.height];
  v4 = v3;
  if (v3)
  {
    [(UIView *)v3 _setTouchInsets:0.0, -2.0, 0.0, -2.0];
    v5 = +[UIColor separatorColor];
    [(UIView *)v4 setBackgroundColor:v5];

    v6 = [[UIPointerInteraction alloc] initWithDelegate:v4];
    [(UIView *)v4 addInteraction:v6];
  }

  return v4;
}

- (id)pointerInteraction:(id)interaction regionForRequest:(id)request defaultRegion:(id)region
{
  interactionCopy = interaction;
  view = [interactionCopy view];
  [view bounds];
  v8 = v7;
  v10 = v9;
  v12 = v11;
  v14 = v13;
  view2 = [interactionCopy view];

  [view2 _touchInsets];
  v17 = v8 + v16;
  v19 = v10 + v18;
  v21 = v12 - (v16 + v20);
  v23 = v14 - (v18 + v22);

  v24 = [UIPointerRegion regionWithRect:@"SidebarResizeRegion" identifier:v17, v19, v21, v23];
  [v24 setLatchingAxes:1];

  return v24;
}

- (id)pointerInteraction:(id)interaction styleForRegion:(id)region
{
  v10[2] = *MEMORY[0x1E69E9840];
  v4 = [UIPointerAccessory arrowAccessoryWithPosition:interaction, region, 6.0, 4.71238898];
  v10[0] = v4;
  v5 = [UIPointerAccessory arrowAccessoryWithPosition:6.0, 1.57079633];
  v10[1] = v5;
  v6 = [MEMORY[0x1E695DEC8] arrayWithObjects:v10 count:2];

  v7 = [UIPointerShape beamWithPreferredLength:2 axis:30.0];
  v8 = [UIPointerStyle styleWithShape:v7 constrainedAxes:1];
  [v8 setAccessories:v6];

  return v8;
}

@end