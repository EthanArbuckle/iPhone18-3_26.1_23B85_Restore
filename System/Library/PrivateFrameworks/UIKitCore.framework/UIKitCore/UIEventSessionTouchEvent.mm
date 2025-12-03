@interface UIEventSessionTouchEvent
- (BOOL)containsTouchID:(id)d;
- (UIEventSessionTouchEvent)initWithTouchType:(int64_t)type withTrackpadFingerDownCount:(int64_t)count;
@end

@implementation UIEventSessionTouchEvent

- (UIEventSessionTouchEvent)initWithTouchType:(int64_t)type withTrackpadFingerDownCount:(int64_t)count
{
  v10.receiver = self;
  v10.super_class = UIEventSessionTouchEvent;
  v6 = [(UIEventSessionTouchEvent *)&v10 init];
  if (v6)
  {
    v7 = objc_alloc_init(MEMORY[0x1E695DF90]);
    touchStatus = v6->_touchStatus;
    v6->_touchStatus = v7;

    v6->_touchType = type;
    v6->_trackpadFingerDownCount = count;
  }

  return v6;
}

- (BOOL)containsTouchID:(id)d
{
  v3 = [(NSMutableDictionary *)self->_touchStatus objectForKeyedSubscript:d];
  v4 = v3 != 0;

  return v4;
}

@end