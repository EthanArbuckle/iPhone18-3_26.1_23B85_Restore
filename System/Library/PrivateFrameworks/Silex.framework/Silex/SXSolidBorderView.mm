@interface SXSolidBorderView
- (SXSolidBorderView)initWithStrokeStyle:(id)style;
@end

@implementation SXSolidBorderView

- (SXSolidBorderView)initWithStrokeStyle:(id)style
{
  styleCopy = style;
  v10.receiver = self;
  v10.super_class = SXSolidBorderView;
  v6 = [(SXSolidBorderView *)&v10 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_strokeStyle, style);
    color = [styleCopy color];
    [(SXSolidBorderView *)v7 setBackgroundColor:color];
  }

  return v7;
}

@end