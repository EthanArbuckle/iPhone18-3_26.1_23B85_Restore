@interface RPTWindowCoordinateSpaceConverter
- (CGPoint)convertPoint:(CGPoint)point;
- (CGRect)convertRect:(CGRect)rect;
- (CGSize)convertSize:(CGSize)size;
- (CGVector)convertVector:(CGVector)vector;
- (id)initFromWindow:(id)window toScreen:(id)screen;
@end

@implementation RPTWindowCoordinateSpaceConverter

- (id)initFromWindow:(id)window toScreen:(id)screen
{
  windowCopy = window;
  screenCopy = screen;
  v12.receiver = self;
  v12.super_class = RPTWindowCoordinateSpaceConverter;
  v9 = [(RPTWindowCoordinateSpaceConverter *)&v12 init];
  p_isa = &v9->super.super.isa;
  if (v9)
  {
    objc_storeStrong(&v9->_window, window);
    objc_storeStrong(p_isa + 2, screen);
  }

  return p_isa;
}

- (CGPoint)convertPoint:(CGPoint)point
{
  y = point.y;
  x = point.x;
  processInfo = [MEMORY[0x277CCAC38] processInfo];
  isiOSAppOnMac = [processInfo isiOSAppOnMac];

  if (isiOSAppOnMac)
  {
    window = [(RPTWindowCoordinateSpaceConverter *)self window];
    nsWindowProxy = [window nsWindowProxy];
    [nsWindowProxy convertPointFromUIWindow:{x, y}];
    v11 = v10;
    v13 = v12;

    window2 = [(RPTWindowCoordinateSpaceConverter *)self window];
    nsWindowProxy2 = [window2 nsWindowProxy];
    [nsWindowProxy2 convertPointToScreen:{v11, v13}];
    v17 = v16;
    v19 = v18;

    window3 = [(RPTWindowCoordinateSpaceConverter *)self window];
    nsScreen = [window3 nsScreen];
    [nsScreen frame];
    v22 = CGRectGetHeight(v29) - v19;
  }

  else
  {
    window = self->_window;
    window3 = [(UIScreen *)self->_screen fixedCoordinateSpace];
    [(UIWindow *)window convertPoint:window3 toCoordinateSpace:x, y];
    v17 = v24;
    v22 = v25;
  }

  v26 = v17;
  v27 = v22;
  result.y = v27;
  result.x = v26;
  return result;
}

- (CGSize)convertSize:(CGSize)size
{
  height = size.height;
  width = size.width;
  window = self->_window;
  fixedCoordinateSpace = [(UIScreen *)self->_screen fixedCoordinateSpace];
  [(UIWindow *)window convertRect:fixedCoordinateSpace toCoordinateSpace:0.0, 0.0, width, height];
  v8 = v7;
  v10 = v9;

  v11 = v8;
  v12 = v10;
  result.height = v12;
  result.width = v11;
  return result;
}

- (CGRect)convertRect:(CGRect)rect
{
  height = rect.size.height;
  width = rect.size.width;
  y = rect.origin.y;
  x = rect.origin.x;
  window = self->_window;
  fixedCoordinateSpace = [(UIScreen *)self->_screen fixedCoordinateSpace];
  [(UIWindow *)window convertRect:fixedCoordinateSpace toCoordinateSpace:x, y, width, height];
  v10 = v9;
  v12 = v11;
  v14 = v13;
  v16 = v15;

  v17 = v10;
  v18 = v12;
  v19 = v14;
  v20 = v16;
  result.size.height = v20;
  result.size.width = v19;
  result.origin.y = v18;
  result.origin.x = v17;
  return result;
}

- (CGVector)convertVector:(CGVector)vector
{
  dy = vector.dy;
  dx = vector.dx;
  [(RPTWindowCoordinateSpaceConverter *)self convertPoint:*MEMORY[0x277CBF348], *(MEMORY[0x277CBF348] + 8)];
  v7 = v6;
  v9 = v8;
  [(RPTWindowCoordinateSpaceConverter *)self convertPoint:dx, dy];
  v11 = v10 - v7;
  v13 = v12 - v9;
  result.dy = v13;
  result.dx = v11;
  return result;
}

@end