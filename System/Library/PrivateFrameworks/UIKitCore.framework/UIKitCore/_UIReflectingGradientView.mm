@interface _UIReflectingGradientView
- (BOOL)_shouldAnimatePropertyWithKey:(id)key;
@end

@implementation _UIReflectingGradientView

- (BOOL)_shouldAnimatePropertyWithKey:(id)key
{
  keyCopy = key;
  v7.receiver = self;
  v7.super_class = _UIReflectingGradientView;
  if (-[UIView _shouldAnimatePropertyWithKey:](&v7, sel__shouldAnimatePropertyWithKey_, keyCopy) || ([keyCopy isEqualToString:@"startPoint"] & 1) != 0)
  {
    v5 = 1;
  }

  else
  {
    v5 = [keyCopy isEqualToString:@"colors"];
  }

  return v5;
}

@end