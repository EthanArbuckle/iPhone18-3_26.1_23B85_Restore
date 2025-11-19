@interface B332PillWindow
- (id)hitTest:(CGPoint)a3 withEvent:(id)a4;
@end

@implementation B332PillWindow

- (id)hitTest:(CGPoint)a3 withEvent:(id)a4
{
  v7.receiver = self;
  v7.super_class = B332PillWindow;
  v4 = [(B332PillWindow *)&v7 hitTest:a4 withEvent:a3.x, a3.y];
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