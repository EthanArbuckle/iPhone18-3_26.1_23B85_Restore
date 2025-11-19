@interface _UIPopoverShapeLayerView
- (BOOL)_shouldAnimatePropertyWithKey:(id)a3;
@end

@implementation _UIPopoverShapeLayerView

- (BOOL)_shouldAnimatePropertyWithKey:(id)a3
{
  v4 = a3;
  if ([@"path" isEqualToString:v4])
  {
    v5 = 1;
  }

  else
  {
    v7.receiver = self;
    v7.super_class = _UIPopoverShapeLayerView;
    v5 = [(UIView *)&v7 _shouldAnimatePropertyWithKey:v4];
  }

  return v5;
}

@end