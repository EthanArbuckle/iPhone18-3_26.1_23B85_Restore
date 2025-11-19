@interface AmbientMatchUIView
- (CGSize)intrinsicContentSize;
@end

@implementation AmbientMatchUIView

- (CGSize)intrinsicContentSize
{
  v2 = self;
  v3 = [(AmbientMatchUIView *)v2 superview];
  if (v3)
  {
    v4 = v3;
    [v3 bounds];
    v6 = v5;
    v8 = v7;
  }

  else
  {
    v6 = 0.0;
    v8 = 0.0;
  }

  v9 = sub_265FA4660();
  [v9 setConstant_];

  v10 = v6;
  v11 = v8;
  result.height = v11;
  result.width = v10;
  return result;
}

@end