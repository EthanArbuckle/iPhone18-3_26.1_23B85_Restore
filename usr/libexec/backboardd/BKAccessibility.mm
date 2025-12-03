@interface BKAccessibility
+ (BOOL)_isDisplayBacklightOff;
+ (BOOL)_objectWithinProximity;
+ (CGPoint)_displayConvertFromCAScreen:(CGPoint)screen;
+ (CGPoint)_displayConvertToCAScreen:(CGPoint)screen;
+ (void)_accessibilityProcessExternHIDEvent:(__IOHIDEvent *)event;
@end

@implementation BKAccessibility

+ (BOOL)_isDisplayBacklightOff
{
  os_unfair_lock_lock(&stru_100125E20);
  v2 = *&dword_100125E24;
  os_unfair_lock_unlock(&stru_100125E20);
  return v2 == 0.0;
}

+ (BOOL)_objectWithinProximity
{
  v2 = +[BKHIDEventProcessorRegistry sharedInstance];
  v3 = [v2 eventProcessorOfClass:objc_opt_class()];

  LOBYTE(v2) = [v3 isObjectWithinProximity];
  return v2;
}

+ (CGPoint)_displayConvertToCAScreen:(CGPoint)screen
{
  sub_100007C3C(0);
  result.y = v4;
  result.x = v3;
  return result;
}

+ (CGPoint)_displayConvertFromCAScreen:(CGPoint)screen
{
  sub_100028ED0(0);
  result.y = v4;
  result.x = v3;
  return result;
}

+ (void)_accessibilityProcessExternHIDEvent:(__IOHIDEvent *)event
{
  v4 = +[BKHIDSystemInterface sharedInstance];
  [v4 injectHIDEvent:event];
}

@end