@interface UIEventSessionTouchEvent
- (BOOL)containsTouchID:(id)a3;
- (UIEventSessionTouchEvent)initWithTouchType:(int64_t)a3 withTrackpadFingerDownCount:(int64_t)a4;
@end

@implementation UIEventSessionTouchEvent

- (UIEventSessionTouchEvent)initWithTouchType:(int64_t)a3 withTrackpadFingerDownCount:(int64_t)a4
{
  v10.receiver = self;
  v10.super_class = UIEventSessionTouchEvent;
  v6 = [(UIEventSessionTouchEvent *)&v10 init];
  if (v6)
  {
    v7 = objc_alloc_init(MEMORY[0x1E695DF90]);
    touchStatus = v6->_touchStatus;
    v6->_touchStatus = v7;

    v6->_touchType = a3;
    v6->_trackpadFingerDownCount = a4;
  }

  return v6;
}

- (BOOL)containsTouchID:(id)a3
{
  v3 = [(NSMutableDictionary *)self->_touchStatus objectForKeyedSubscript:a3];
  v4 = v3 != 0;

  return v4;
}

@end