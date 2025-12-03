@interface UIEventSessionHeatMapGesture
- (BOOL)containsTouchID:(id)d;
- (UIEventSessionHeatMapGesture)initWithTouchType:(int64_t)type interfaceOrientation:(int64_t)orientation hardwareKeyboardState:(int64_t)state magicKeyboardState:(int64_t)keyboardState;
@end

@implementation UIEventSessionHeatMapGesture

- (UIEventSessionHeatMapGesture)initWithTouchType:(int64_t)type interfaceOrientation:(int64_t)orientation hardwareKeyboardState:(int64_t)state magicKeyboardState:(int64_t)keyboardState
{
  v14.receiver = self;
  v14.super_class = UIEventSessionHeatMapGesture;
  v10 = [(UIEventSessionHeatMapGesture *)&v14 init];
  if (v10)
  {
    v11 = objc_alloc_init(MEMORY[0x1E695DF90]);
    touches = v10->_touches;
    v10->_touches = v11;

    v10->_touchType = type;
    v10->_uiInterfaceOrientation = orientation;
    v10->_hardwareKeyboardState = state;
    v10->_magicKeyboardState = keyboardState;
  }

  return v10;
}

- (BOOL)containsTouchID:(id)d
{
  v3 = [(NSMutableDictionary *)self->_touches objectForKeyedSubscript:d];
  v4 = v3 != 0;

  return v4;
}

@end