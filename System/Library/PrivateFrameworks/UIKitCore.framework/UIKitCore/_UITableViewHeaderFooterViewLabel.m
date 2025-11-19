@interface _UITableViewHeaderFooterViewLabel
- (CGSize)patternPhase;
- (_UITableViewHeaderFooterViewLabel)init;
- (void)drawRect:(CGRect)a3;
- (void)setPatternPhase:(CGSize)a3;
@end

@implementation _UITableViewHeaderFooterViewLabel

- (_UITableViewHeaderFooterViewLabel)init
{
  v3.receiver = self;
  v3.super_class = _UITableViewHeaderFooterViewLabel;
  result = [(UIView *)&v3 init];
  if (result)
  {
    result->_patternPhase = *MEMORY[0x1E695F060];
  }

  return result;
}

- (CGSize)patternPhase
{
  width = self->_patternPhase.width;
  height = self->_patternPhase.height;
  result.height = height;
  result.width = width;
  return result;
}

- (void)setPatternPhase:(CGSize)a3
{
  if (self->_patternPhase.width != a3.width || self->_patternPhase.height != a3.height)
  {
    self->_patternPhase = a3;
    [(UILabel *)self setNeedsDisplay];
  }
}

- (void)drawRect:(CGRect)a3
{
  height = a3.size.height;
  width = a3.size.width;
  y = a3.origin.y;
  x = a3.origin.x;
  if (self->_patternPhase.width != *MEMORY[0x1E695F060] || self->_patternPhase.height != *(MEMORY[0x1E695F060] + 8))
  {
    ContextStack = GetContextStack(0);
    if (*ContextStack < 1)
    {
      v10 = 0;
    }

    else
    {
      v10 = ContextStack[3 * (*ContextStack - 1) + 1];
    }

    [(_UITableViewHeaderFooterViewLabel *)self patternPhase];
    CGContextSetPatternPhase(v10, v13);
    v11 = [(UIView *)self backgroundColor];
    [v11 set];

    UIRectFillUsingOperation(1, x, y, width, height);
  }

  v12.receiver = self;
  v12.super_class = _UITableViewHeaderFooterViewLabel;
  [(UILabel *)&v12 drawRect:x, y, width, height];
}

@end