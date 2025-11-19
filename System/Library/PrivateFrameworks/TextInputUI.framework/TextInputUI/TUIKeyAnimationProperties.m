@interface TUIKeyAnimationProperties
- (UIEdgeInsets)endingBackgroundInsets;
- (UIEdgeInsets)endingPrimaryLabelInsets;
- (UIEdgeInsets)endingSecondaryLabelInsets;
- (UIEdgeInsets)startingBackgroundInsets;
- (UIEdgeInsets)startingPrimaryLabelInsets;
- (UIEdgeInsets)startingSecondaryLabelInsets;
- (id)description;
@end

@implementation TUIKeyAnimationProperties

- (UIEdgeInsets)endingSecondaryLabelInsets
{
  top = self->_endingSecondaryLabelInsets.top;
  left = self->_endingSecondaryLabelInsets.left;
  bottom = self->_endingSecondaryLabelInsets.bottom;
  right = self->_endingSecondaryLabelInsets.right;
  result.right = right;
  result.bottom = bottom;
  result.left = left;
  result.top = top;
  return result;
}

- (UIEdgeInsets)startingSecondaryLabelInsets
{
  top = self->_startingSecondaryLabelInsets.top;
  left = self->_startingSecondaryLabelInsets.left;
  bottom = self->_startingSecondaryLabelInsets.bottom;
  right = self->_startingSecondaryLabelInsets.right;
  result.right = right;
  result.bottom = bottom;
  result.left = left;
  result.top = top;
  return result;
}

- (UIEdgeInsets)endingPrimaryLabelInsets
{
  top = self->_endingPrimaryLabelInsets.top;
  left = self->_endingPrimaryLabelInsets.left;
  bottom = self->_endingPrimaryLabelInsets.bottom;
  right = self->_endingPrimaryLabelInsets.right;
  result.right = right;
  result.bottom = bottom;
  result.left = left;
  result.top = top;
  return result;
}

- (UIEdgeInsets)startingPrimaryLabelInsets
{
  top = self->_startingPrimaryLabelInsets.top;
  left = self->_startingPrimaryLabelInsets.left;
  bottom = self->_startingPrimaryLabelInsets.bottom;
  right = self->_startingPrimaryLabelInsets.right;
  result.right = right;
  result.bottom = bottom;
  result.left = left;
  result.top = top;
  return result;
}

- (UIEdgeInsets)endingBackgroundInsets
{
  top = self->_endingBackgroundInsets.top;
  left = self->_endingBackgroundInsets.left;
  bottom = self->_endingBackgroundInsets.bottom;
  right = self->_endingBackgroundInsets.right;
  result.right = right;
  result.bottom = bottom;
  result.left = left;
  result.top = top;
  return result;
}

- (UIEdgeInsets)startingBackgroundInsets
{
  top = self->_startingBackgroundInsets.top;
  left = self->_startingBackgroundInsets.left;
  bottom = self->_startingBackgroundInsets.bottom;
  right = self->_startingBackgroundInsets.right;
  result.right = right;
  result.bottom = bottom;
  result.left = left;
  result.top = top;
  return result;
}

- (id)description
{
  v3 = MEMORY[0x1E696AEC0];
  v4 = objc_opt_class();
  [(TUIKeyAnimationProperties *)self startingCornerRadius];
  v6 = v5;
  [(TUIKeyAnimationProperties *)self endingCornerRadius];
  v8 = v7;
  [(TUIKeyAnimationProperties *)self startingFontSize];
  v10 = v9;
  [(TUIKeyAnimationProperties *)self endingFontSize];
  return [v3 stringWithFormat:@"<%@: %p; radius: %0.2f > %0.2f; fontSize: %0.2f > %0.2f; >", v4, self, v6, v8, v10, v11];
}

@end