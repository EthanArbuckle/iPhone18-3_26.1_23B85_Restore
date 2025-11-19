@interface _UIActionSliderTrackComponentView
- (BOOL)_shouldAnimatePropertyWithKey:(id)a3;
@end

@implementation _UIActionSliderTrackComponentView

- (BOOL)_shouldAnimatePropertyWithKey:(id)a3
{
  v4 = a3;
  if ([v4 isEqualToString:@"path"])
  {
    v5 = 1;
  }

  else
  {
    v7.receiver = self;
    v7.super_class = _UIActionSliderTrackComponentView;
    v5 = [(UIView *)&v7 _shouldAnimatePropertyWithKey:v4];
  }

  return v5;
}

@end