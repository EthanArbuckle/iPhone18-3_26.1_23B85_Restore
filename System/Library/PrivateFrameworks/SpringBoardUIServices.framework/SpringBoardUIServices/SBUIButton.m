@interface SBUIButton
- (BOOL)pointInside:(CGPoint)a3 withEvent:(id)a4;
- (SBUIButton)initWithFrame:(CGRect)a3;
- (UIEdgeInsets)hitAreaAdjustments;
@end

@implementation SBUIButton

- (SBUIButton)initWithFrame:(CGRect)a3
{
  v5.receiver = self;
  v5.super_class = SBUIButton;
  result = [(SBUIButton *)&v5 initWithFrame:a3.origin.x, a3.origin.y, a3.size.width, a3.size.height];
  if (result)
  {
    v4 = *(MEMORY[0x1E69DDCE0] + 16);
    *&result->_hitAreaAdjustments.top = *MEMORY[0x1E69DDCE0];
    *&result->_hitAreaAdjustments.bottom = v4;
  }

  return result;
}

- (BOOL)pointInside:(CGPoint)a3 withEvent:(id)a4
{
  y = a3.y;
  x = a3.x;
  v7 = a4;
  [(SBUIButton *)self bounds];
  top = self->_hitAreaAdjustments.top;
  left = self->_hitAreaAdjustments.left;
  v18.origin.x = v10 + left;
  v18.origin.y = v11 + top;
  v18.size.width = v12 - (left + self->_hitAreaAdjustments.right);
  v18.size.height = v13 - (top + self->_hitAreaAdjustments.bottom);
  v17.x = x;
  v17.y = y;
  if (CGRectContainsPoint(v18, v17))
  {
    v14 = 1;
  }

  else
  {
    v16.receiver = self;
    v16.super_class = SBUIButton;
    v14 = [(SBUIButton *)&v16 pointInside:v7 withEvent:x, y];
  }

  return v14;
}

- (UIEdgeInsets)hitAreaAdjustments
{
  top = self->_hitAreaAdjustments.top;
  left = self->_hitAreaAdjustments.left;
  bottom = self->_hitAreaAdjustments.bottom;
  right = self->_hitAreaAdjustments.right;
  result.right = right;
  result.bottom = bottom;
  result.left = left;
  result.top = top;
  return result;
}

@end