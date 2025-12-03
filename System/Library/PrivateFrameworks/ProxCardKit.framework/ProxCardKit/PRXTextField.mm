@interface PRXTextField
- (CGRect)editingRectForBounds:(CGRect)bounds;
- (CGRect)placeholderRectForBounds:(CGRect)bounds;
- (CGRect)textRectForBounds:(CGRect)bounds;
- (CGSize)intrinsicContentSize;
- (PRXTextField)initWithFrame:(CGRect)frame;
@end

@implementation PRXTextField

- (PRXTextField)initWithFrame:(CGRect)frame
{
  v9.receiver = self;
  v9.super_class = PRXTextField;
  v3 = [(PRXTextField *)&v9 initWithFrame:frame.origin.x, frame.origin.y, frame.size.width, frame.size.height];
  v4 = v3;
  if (v3)
  {
    [(PRXTextField *)v3 setBorderStyle:3];
    clearColor = [MEMORY[0x277D75348] clearColor];
    [(PRXTextField *)v4 _setBackgroundStrokeColor:clearColor];

    secondarySystemBackgroundColor = [MEMORY[0x277D75348] secondarySystemBackgroundColor];
    [(PRXTextField *)v4 _setBackgroundFillColor:secondarySystemBackgroundColor];

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

- (CGRect)textRectForBounds:(CGRect)bounds
{
  width = bounds.size.width;
  v9.receiver = self;
  v9.super_class = PRXTextField;
  [(PRXTextField *)&v9 textRectForBounds:bounds.origin.x, bounds.origin.y, bounds.size.width, bounds.size.height];
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

- (CGRect)editingRectForBounds:(CGRect)bounds
{
  width = bounds.size.width;
  v9.receiver = self;
  v9.super_class = PRXTextField;
  [(PRXTextField *)&v9 editingRectForBounds:bounds.origin.x, bounds.origin.y, bounds.size.width, bounds.size.height];
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

- (CGRect)placeholderRectForBounds:(CGRect)bounds
{
  width = bounds.size.width;
  v9.receiver = self;
  v9.super_class = PRXTextField;
  [(PRXTextField *)&v9 placeholderRectForBounds:bounds.origin.x, bounds.origin.y, bounds.size.width, bounds.size.height];
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