@interface PKDatePickerLabel
- (UIEdgeInsets)contentInset;
- (void)drawTextInRect:(CGRect)rect;
@end

@implementation PKDatePickerLabel

- (void)drawTextInRect:(CGRect)rect
{
  top = self->_contentInset.top;
  left = self->_contentInset.left;
  v5 = rect.size.width - (left + self->_contentInset.right);
  v6 = rect.size.height - (top + self->_contentInset.bottom);
  v7.receiver = self;
  v7.super_class = PKDatePickerLabel;
  [(PKDatePickerLabel *)&v7 drawTextInRect:rect.origin.x + left, rect.origin.y + top, v5, v6];
}

- (UIEdgeInsets)contentInset
{
  top = self->_contentInset.top;
  left = self->_contentInset.left;
  bottom = self->_contentInset.bottom;
  right = self->_contentInset.right;
  result.right = right;
  result.bottom = bottom;
  result.left = left;
  result.top = top;
  return result;
}

@end