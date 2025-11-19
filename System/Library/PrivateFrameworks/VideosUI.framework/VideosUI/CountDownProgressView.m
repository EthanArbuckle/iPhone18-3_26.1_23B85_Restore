@interface CountDownProgressView
- (CGSize)vui_layoutSubviews:(CGSize)a3 computationOnly:(BOOL)a4;
- (void)animationDidStop:(id)a3 finished:(BOOL)a4;
@end

@implementation CountDownProgressView

- (CGSize)vui_layoutSubviews:(CGSize)a3 computationOnly:(BOOL)a4
{
  height = a3.height;
  width = a3.width;
  v7 = self;
  sub_1E4004F90(a4, width, height);
  v9 = v8;
  v11 = v10;

  v12 = v9;
  v13 = v11;
  result.height = v13;
  result.width = v12;
  return result;
}

- (void)animationDidStop:(id)a3 finished:(BOOL)a4
{
  v6 = a3;
  v7 = self;
  sub_1E40051A4(v7, a4);
}

@end