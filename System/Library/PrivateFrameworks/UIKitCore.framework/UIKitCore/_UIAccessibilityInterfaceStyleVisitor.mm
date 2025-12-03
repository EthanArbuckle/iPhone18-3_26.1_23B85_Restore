@interface _UIAccessibilityInterfaceStyleVisitor
- (BOOL)_prepareToVisitView:(id)view changedSubview:(id)subview previousWindow:(id)window previousSuperview:(id)superview;
- (BOOL)_visitView:(id)view;
@end

@implementation _UIAccessibilityInterfaceStyleVisitor

- (BOOL)_visitView:(id)view
{
  superview = [view superview];
  if ([view _accessibilityInterfaceStyleIntent] == 1 && objc_msgSend(view, "_accessibilityResolvedInterfaceStyle") != 1)
  {
    v6 = 1;
  }

  else
  {
    v6 = [view _accessibilityInterfaceStyleIntent] == 2 && objc_msgSend(view, "_accessibilityResolvedInterfaceStyle") != 2;
  }

  objc_opt_class();
  v7 = (objc_opt_isKindOfClass() & 1) != 0 && [view _accessibilityInterfaceStyleIntent] != 2 && objc_msgSend(view, "_accessibilityResolvedInterfaceStyle") == 2;
  if (v6 || v7)
  {
    if ([view _accessibilityInterfaceStyleIntent] == 2)
    {
      v8 = 2;
    }

    else
    {
      v8 = 1;
    }

    goto LABEL_15;
  }

  if (superview)
  {
    if (![view _accessibilityInterfaceStyleIntent])
    {
      _accessibilityResolvedInterfaceStyle = [superview _accessibilityResolvedInterfaceStyle];
      if (_accessibilityResolvedInterfaceStyle != [view _accessibilityResolvedInterfaceStyle])
      {
        v8 = [objc_msgSend(view "superview")];
LABEL_15:
        [view _accessibilitySetResolvedInterfaceStyle:v8];
        [view _tintColorDidChange];
        return 1;
      }
    }
  }

  return self->_originalVisitedView == view;
}

- (BOOL)_prepareToVisitView:(id)view changedSubview:(id)subview previousWindow:(id)window previousSuperview:(id)superview
{
  if (-[_UIViewVisitor tracksHierarchy](self, "tracksHierarchy", view, subview, window, superview) && [subview superview] != view)
  {
    return 0;
  }

  self->_originalVisitedView = view;
  return 1;
}

@end