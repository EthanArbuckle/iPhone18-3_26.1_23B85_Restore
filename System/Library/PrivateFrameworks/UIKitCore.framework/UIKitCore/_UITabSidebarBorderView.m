@interface _UITabSidebarBorderView
- (_UITabSidebarBorderView)initWithFrame:(CGRect)a3;
- (id)pointerInteraction:(id)a3 regionForRequest:(id)a4 defaultRegion:(id)a5;
- (id)pointerInteraction:(id)a3 styleForRegion:(id)a4;
@end

@implementation _UITabSidebarBorderView

- (_UITabSidebarBorderView)initWithFrame:(CGRect)a3
{
  v8.receiver = self;
  v8.super_class = _UITabSidebarBorderView;
  v3 = [(UIView *)&v8 initWithFrame:a3.origin.x, a3.origin.y, a3.size.width, a3.size.height];
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

- (id)pointerInteraction:(id)a3 regionForRequest:(id)a4 defaultRegion:(id)a5
{
  v5 = a3;
  v6 = [v5 view];
  [v6 bounds];
  v8 = v7;
  v10 = v9;
  v12 = v11;
  v14 = v13;
  v15 = [v5 view];

  [v15 _touchInsets];
  v17 = v8 + v16;
  v19 = v10 + v18;
  v21 = v12 - (v16 + v20);
  v23 = v14 - (v18 + v22);

  v24 = [UIPointerRegion regionWithRect:@"SidebarResizeRegion" identifier:v17, v19, v21, v23];
  [v24 setLatchingAxes:1];

  return v24;
}

- (id)pointerInteraction:(id)a3 styleForRegion:(id)a4
{
  v10[2] = *MEMORY[0x1E69E9840];
  v4 = [UIPointerAccessory arrowAccessoryWithPosition:a3, a4, 6.0, 4.71238898];
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