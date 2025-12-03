@interface _UITableViewHeaderFooterViewLabel
- (CGSize)patternPhase;
- (_UITableViewHeaderFooterViewLabel)init;
- (void)drawRect:(CGRect)rect;
- (void)setPatternPhase:(CGSize)phase;
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

- (void)setPatternPhase:(CGSize)phase
{
  if (self->_patternPhase.width != phase.width || self->_patternPhase.height != phase.height)
  {
    self->_patternPhase = phase;
    [(UILabel *)self setNeedsDisplay];
  }
}

- (void)drawRect:(CGRect)rect
{
  height = rect.size.height;
  width = rect.size.width;
  y = rect.origin.y;
  x = rect.origin.x;
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
    backgroundColor = [(UIView *)self backgroundColor];
    [backgroundColor set];

    UIRectFillUsingOperation(1, x, y, width, height);
  }

  v12.receiver = self;
  v12.super_class = _UITableViewHeaderFooterViewLabel;
  [(UILabel *)&v12 drawRect:x, y, width, height];
}

@end