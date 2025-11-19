@interface _UIReflectingGradientView
- (BOOL)_shouldAnimatePropertyWithKey:(id)a3;
@end

@implementation _UIReflectingGradientView

- (BOOL)_shouldAnimatePropertyWithKey:(id)a3
{
  v4 = a3;
  v7.receiver = self;
  v7.super_class = _UIReflectingGradientView;
  if (-[UIView _shouldAnimatePropertyWithKey:](&v7, sel__shouldAnimatePropertyWithKey_, v4) || ([v4 isEqualToString:@"startPoint"] & 1) != 0)
  {
    v5 = 1;
  }

  else
  {
    v5 = [v4 isEqualToString:@"colors"];
  }

  return v5;
}

@end