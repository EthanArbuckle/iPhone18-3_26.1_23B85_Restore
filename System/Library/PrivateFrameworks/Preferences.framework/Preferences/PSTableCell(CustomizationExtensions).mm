@interface PSTableCell(CustomizationExtensions)
- (void)setIsCopyable:()CustomizationExtensions;
@end

@implementation PSTableCell(CustomizationExtensions)

- (void)setIsCopyable:()CustomizationExtensions
{
  if (self->_isCopyable != a3)
  {
    self->_isCopyable = a3;
    if (a3)
    {
      if (!self->_longTapRecognizer)
      {
        v4 = [objc_alloc(MEMORY[0x1E69DCC48]) initWithTarget:self action:sel_longPressed_];
        longTapRecognizer = self->_longTapRecognizer;
        self->_longTapRecognizer = v4;
      }

      gestureRecognizers = [(PSTableCell *)self gestureRecognizers];
      v7 = [gestureRecognizers containsObject:self->_longTapRecognizer];

      if ((v7 & 1) == 0)
      {
        v8 = self->_longTapRecognizer;

        [(PSTableCell *)self addGestureRecognizer:v8];
      }
    }

    else
    {
      [(PSTableCell *)self removeGestureRecognizer:self->_longTapRecognizer];
      v9 = self->_longTapRecognizer;
      self->_longTapRecognizer = 0;
    }
  }
}

@end