@interface B332PillWindow
- (id)hitTest:(CGPoint)test withEvent:(id)event;
@end

@implementation B332PillWindow

- (id)hitTest:(CGPoint)test withEvent:(id)event
{
  v7.receiver = self;
  v7.super_class = B332PillWindow;
  v4 = [(B332PillWindow *)&v7 hitTest:event withEvent:test.x, test.y];
  v5 = b332_log();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138412290;
    v9 = v4;
    _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEFAULT, "hitResult: %@", buf, 0xCu);
  }

  return v4;
}

@end