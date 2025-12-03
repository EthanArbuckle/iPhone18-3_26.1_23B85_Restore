@interface UIAccessibilityLinkSubelement
- (CGRect)accessibilityFrame;
- (_NSRange)range;
- (id)textRangeForTextView:(id)view;
@end

@implementation UIAccessibilityLinkSubelement

- (id)textRangeForTextView:(id)view
{
  viewCopy = view;
  beginningOfDocument = [viewCopy beginningOfDocument];
  v6 = [viewCopy positionFromPosition:beginningOfDocument offset:{-[UIAccessibilityLinkSubelement range](self, "range")}];
  range = [(UIAccessibilityLinkSubelement *)self range];
  [(UIAccessibilityLinkSubelement *)self range];
  v9 = [viewCopy positionFromPosition:beginningOfDocument offset:v8 + range];
  v10 = [viewCopy textRangeFromPosition:v6 toPosition:v9];

  return v10;
}

- (CGRect)accessibilityFrame
{
  v3 = [self _accessibilityGetBlockForAttribute:6];
  v4 = v3;
  if (!v3)
  {
    accessibilityContainer = [(UIAccessibilityLinkSubelement *)self accessibilityContainer];
    objc_opt_class();
    isKindOfClass = objc_opt_isKindOfClass();

    if (isKindOfClass)
    {
      accessibilityContainer2 = [(UIAccessibilityLinkSubelement *)self accessibilityContainer];
      v15 = [accessibilityContainer2 hitTest:0 withEvent:{0.0, 0.0}];

      accessibilityContainer3 = [(UIAccessibilityLinkSubelement *)self accessibilityContainer];
      accessibilityContainer4 = [(UIAccessibilityLinkSubelement *)self textRangeForTextView:accessibilityContainer3];
      [(UIView *)accessibilityContainer3 firstRectForRange:accessibilityContainer4];
      v23 = UIAccessibilityConvertFrameToScreenCoordinates(v22, accessibilityContainer3);
    }

    else
    {
      accessibilityContainer3 = [(UIAccessibilityElement *)self accessibilityDelegate];
      if (accessibilityContainer3)
      {
        if (objc_opt_respondsToSelector())
        {
          [(UIView *)accessibilityContainer3 accessibilityFrame:self];
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

      accessibilityContainer4 = [(UIAccessibilityLinkSubelement *)self accessibilityContainer];
      [accessibilityContainer4 accessibilityFrame];
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