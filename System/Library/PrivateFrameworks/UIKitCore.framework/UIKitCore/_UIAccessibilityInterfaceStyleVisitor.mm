@interface _UIAccessibilityInterfaceStyleVisitor
- (BOOL)_prepareToVisitView:(id)a3 changedSubview:(id)a4 previousWindow:(id)a5 previousSuperview:(id)a6;
- (BOOL)_visitView:(id)a3;
@end

@implementation _UIAccessibilityInterfaceStyleVisitor

- (BOOL)_visitView:(id)a3
{
  v5 = [a3 superview];
  if ([a3 _accessibilityInterfaceStyleIntent] == 1 && objc_msgSend(a3, "_accessibilityResolvedInterfaceStyle") != 1)
  {
    v6 = 1;
  }

  else
  {
    v6 = [a3 _accessibilityInterfaceStyleIntent] == 2 && objc_msgSend(a3, "_accessibilityResolvedInterfaceStyle") != 2;
  }

  objc_opt_class();
  v7 = (objc_opt_isKindOfClass() & 1) != 0 && [a3 _accessibilityInterfaceStyleIntent] != 2 && objc_msgSend(a3, "_accessibilityResolvedInterfaceStyle") == 2;
  if (v6 || v7)
  {
    if ([a3 _accessibilityInterfaceStyleIntent] == 2)
    {
      v8 = 2;
    }

    else
    {
      v8 = 1;
    }

    goto LABEL_15;
  }

  if (v5)
  {
    if (![a3 _accessibilityInterfaceStyleIntent])
    {
      v10 = [v5 _accessibilityResolvedInterfaceStyle];
      if (v10 != [a3 _accessibilityResolvedInterfaceStyle])
      {
        v8 = [objc_msgSend(a3 "superview")];
LABEL_15:
        [a3 _accessibilitySetResolvedInterfaceStyle:v8];
        [a3 _tintColorDidChange];
        return 1;
      }
    }
  }

  return self->_originalVisitedView == a3;
}

- (BOOL)_prepareToVisitView:(id)a3 changedSubview:(id)a4 previousWindow:(id)a5 previousSuperview:(id)a6
{
  if (-[_UIViewVisitor tracksHierarchy](self, "tracksHierarchy", a3, a4, a5, a6) && [a4 superview] != a3)
  {
    return 0;
  }

  self->_originalVisitedView = a3;
  return 1;
}

@end