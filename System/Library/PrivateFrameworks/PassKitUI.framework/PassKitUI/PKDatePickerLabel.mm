@interface PKDatePickerLabel
- (UIEdgeInsets)contentInset;
- (void)drawTextInRect:(CGRect)a3;
@end

@implementation PKDatePickerLabel

- (void)drawTextInRect:(CGRect)a3
{
  top = self->_contentInset.top;
  left = self->_contentInset.left;
  v5 = a3.size.width - (left + self->_contentInset.right);
  v6 = a3.size.height - (top + self->_contentInset.bottom);
  v7.receiver = self;
  v7.super_class = PKDatePickerLabel;
  [(PKDatePickerLabel *)&v7 drawTextInRect:a3.origin.x + left, a3.origin.y + top, v5, v6];
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