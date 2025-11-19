@interface UIAccessibilityLinkSubelement
- (CGRect)accessibilityFrame;
- (_NSRange)range;
- (id)textRangeForTextView:(id)a3;
@end

@implementation UIAccessibilityLinkSubelement

- (id)textRangeForTextView:(id)a3
{
  v4 = a3;
  v5 = [v4 beginningOfDocument];
  v6 = [v4 positionFromPosition:v5 offset:{-[UIAccessibilityLinkSubelement range](self, "range")}];
  v7 = [(UIAccessibilityLinkSubelement *)self range];
  [(UIAccessibilityLinkSubelement *)self range];
  v9 = [v4 positionFromPosition:v5 offset:v8 + v7];
  v10 = [v4 textRangeFromPosition:v6 toPosition:v9];

  return v10;
}

- (CGRect)accessibilityFrame
{
  v3 = [self _accessibilityGetBlockForAttribute:6];
  v4 = v3;
  if (!v3)
  {
    v12 = [(UIAccessibilityLinkSubelement *)self accessibilityContainer];
    objc_opt_class();
    isKindOfClass = objc_opt_isKindOfClass();

    if (isKindOfClass)
    {
      v14 = [(UIAccessibilityLinkSubelement *)self accessibilityContainer];
      v15 = [v14 hitTest:0 withEvent:{0.0, 0.0}];

      v16 = [(UIAccessibilityLinkSubelement *)self accessibilityContainer];
      v17 = [(UIAccessibilityLinkSubelement *)self textRangeForTextView:v16];
      [(UIView *)v16 firstRectForRange:v17];
      v23 = UIAccessibilityConvertFrameToScreenCoordinates(v22, v16);
    }

    else
    {
      v16 = [(UIAccessibilityElement *)self accessibilityDelegate];
      if (v16)
      {
        if (objc_opt_respondsToSelector())
        {
          [(UIView *)v16 accessibilityFrame:self];
          x = v24.origin.x;
          y = v24.origin.y;
          width = v24.size.width;
          height = v24.size.height;
          if (!CGRectIsEmpty(v24))
          {
            goto LABEL_10;
          }
        }
      }

      v17 = [(UIAccessibilityLinkSubelement *)self accessibilityContainer];
      [v17 accessibilityFrame];
    }

    x = v23.origin.x;
    y = v23.origin.y;
    width = v23.size.width;
    height = v23.size.height;

LABEL_10:
    goto LABEL_11;
  }

  x = (*(v3 + 16))(v3);
  y = v6;
  width = v8;
  height = v10;
LABEL_11:

  v18 = x;
  v19 = y;
  v20 = width;
  v21 = height;
  result.size.height = v21;
  result.size.width = v20;
  result.origin.y = v19;
  result.origin.x = v18;
  return result;
}

- (_NSRange)range
{
  p_range = &self->_range;
  location = self->_range.location;
  length = p_range->length;
  result.length = length;
  result.location = location;
  return result;
}

@end