@interface SXSolidBorderView
- (SXSolidBorderView)initWithStrokeStyle:(id)a3;
@end

@implementation SXSolidBorderView

- (SXSolidBorderView)initWithStrokeStyle:(id)a3
{
  v5 = a3;
  v10.receiver = self;
  v10.super_class = SXSolidBorderView;
  v6 = [(SXSolidBorderView *)&v10 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_strokeStyle, a3);
    v8 = [v5 color];
    [(SXSolidBorderView *)v7 setBackgroundColor:v8];
  }

  return v7;
}

@end