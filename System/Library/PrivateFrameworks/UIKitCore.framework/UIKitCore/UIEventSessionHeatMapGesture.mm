@interface UIEventSessionHeatMapGesture
- (BOOL)containsTouchID:(id)a3;
- (UIEventSessionHeatMapGesture)initWithTouchType:(int64_t)a3 interfaceOrientation:(int64_t)a4 hardwareKeyboardState:(int64_t)a5 magicKeyboardState:(int64_t)a6;
@end

@implementation UIEventSessionHeatMapGesture

- (UIEventSessionHeatMapGesture)initWithTouchType:(int64_t)a3 interfaceOrientation:(int64_t)a4 hardwareKeyboardState:(int64_t)a5 magicKeyboardState:(int64_t)a6
{
  v14.receiver = self;
  v14.super_class = UIEventSessionHeatMapGesture;
  v10 = [(UIEventSessionHeatMapGesture *)&v14 init];
  if (v10)
  {
    v11 = objc_alloc_init(MEMORY[0x1E695DF90]);
    touches = v10->_touches;
    v10->_touches = v11;

    v10->_touchType = a3;
    v10->_uiInterfaceOrientation = a4;
    v10->_hardwareKeyboardState = a5;
    v10->_magicKeyboardState = a6;
  }

  return v10;
}

- (BOOL)containsTouchID:(id)a3
{
  v3 = [(NSMutableDictionary *)self->_touches objectForKeyedSubscript:a3];
  v4 = v3 != 0;

  return v4;
}

@end