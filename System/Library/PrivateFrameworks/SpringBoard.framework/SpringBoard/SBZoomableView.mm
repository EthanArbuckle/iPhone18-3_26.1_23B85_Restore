@interface SBZoomableView
- (BOOL)_shouldAnimatePropertyWithKey:(id)a3;
@end

@implementation SBZoomableView

- (BOOL)_shouldAnimatePropertyWithKey:(id)a3
{
  v4 = a3;
  if ([v4 isEqualToString:@"zPosition"])
  {
    v5 = 1;
  }

  else
  {
    v7.receiver = self;
    v7.super_class = SBZoomableView;
    v5 = [(SBZoomableView *)&v7 _shouldAnimatePropertyWithKey:v4];
  }

  return v5;
}

@end