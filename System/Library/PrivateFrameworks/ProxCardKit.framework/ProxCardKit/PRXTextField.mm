@interface PRXTextField
- (CGRect)editingRectForBounds:(CGRect)a3;
- (CGRect)placeholderRectForBounds:(CGRect)a3;
- (CGRect)textRectForBounds:(CGRect)a3;
- (CGSize)intrinsicContentSize;
- (PRXTextField)initWithFrame:(CGRect)a3;
@end

@implementation PRXTextField

- (PRXTextField)initWithFrame:(CGRect)a3
{
  v9.receiver = self;
  v9.super_class = PRXTextField;
  v3 = [(PRXTextField *)&v9 initWithFrame:a3.origin.x, a3.origin.y, a3.size.width, a3.size.height];
  v4 = v3;
  if (v3)
  {
    [(PRXTextField *)v3 setBorderStyle:3];
    v5 = [MEMORY[0x277D75348] clearColor];
    [(PRXTextField *)v4 _setBackgroundStrokeColor:v5];

    v6 = [MEMORY[0x277D75348] secondarySystemBackgroundColor];
    [(PRXTextField *)v4 _setBackgroundFillColor:v6];

    [(PRXTextField *)v4 _setRoundedRectBackgroundCornerRadius:12.0];
    v7 = v4;
  }

  return v4;
}

- (CGSize)intrinsicContentSize
{
  v5.receiver = self;
  v5.super_class = PRXTextField;
  [(PRXTextField *)&v5 intrinsicContentSize];
  v4 = fmax(v3, 50.0);
  result.height = v4;
  result.width = v2;
  return result;
}

- (CGRect)textRectForBounds:(CGRect)a3
{
  width = a3.size.width;
  v9.receiver = self;
  v9.super_class = PRXTextField;
  [(PRXTextField *)&v9 textRectForBounds:a3.origin.x, a3.origin.y, a3.size.width, a3.size.height];
  v8 = fmax(v7, 20.0);
  if (width + -40.0 < v5)
  {
    v5 = width + -40.0;
  }

  result.size.height = v6;
  result.size.width = v5;
  result.origin.y = v4;
  result.origin.x = v8;
  return result;
}

- (CGRect)editingRectForBounds:(CGRect)a3
{
  width = a3.size.width;
  v9.receiver = self;
  v9.super_class = PRXTextField;
  [(PRXTextField *)&v9 editingRectForBounds:a3.origin.x, a3.origin.y, a3.size.width, a3.size.height];
  v8 = fmax(v7, 20.0);
  if (width + -40.0 < v5)
  {
    v5 = width + -40.0;
  }

  result.size.height = v6;
  result.size.width = v5;
  result.origin.y = v4;
  result.origin.x = v8;
  return result;
}

- (CGRect)placeholderRectForBounds:(CGRect)a3
{
  width = a3.size.width;
  v9.receiver = self;
  v9.super_class = PRXTextField;
  [(PRXTextField *)&v9 placeholderRectForBounds:a3.origin.x, a3.origin.y, a3.size.width, a3.size.height];
  v8 = fmax(v7, 20.0);
  if (width + -40.0 < v5)
  {
    v5 = width + -40.0;
  }

  result.size.height = v6;
  result.size.width = v5;
  result.origin.y = v4;
  result.origin.x = v8;
  return result;
}

@end