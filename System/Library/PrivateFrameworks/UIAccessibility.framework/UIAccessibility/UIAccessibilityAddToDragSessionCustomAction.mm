@interface UIAccessibilityAddToDragSessionCustomAction
- (BOOL)_accessibilityInvokeAddToSession;
- (UIAccessibilityAddToDragSessionCustomAction)initWithPoint:(CGPoint)point inSourceView:(id)view;
- (id)_accessibilityCustomActionIdentifier;
@end

@implementation UIAccessibilityAddToDragSessionCustomAction

- (UIAccessibilityAddToDragSessionCustomAction)initWithPoint:(CGPoint)point inSourceView:(id)view
{
  y = point.y;
  x = point.x;
  viewCopy = view;
  v8 = UIKitAccessibilityLocalizedString(@"add.to.session");
  v11.receiver = self;
  v11.super_class = UIAccessibilityAddToDragSessionCustomAction;
  v9 = [(UIAccessibilityAddToDragSessionCustomAction *)&v11 initWithName:v8 target:self selector:sel__accessibilityInvokeAddToSession];

  if (v9)
  {
    v9->_pt.x = x;
    v9->_pt.y = y;
    objc_storeWeak(&v9->_view, viewCopy);
  }

  return v9;
}

- (BOOL)_accessibilityInvokeAddToSession
{
  selfCopy = self;
  WeakRetained = objc_loadWeakRetained(&self->_view);
  LOBYTE(selfCopy) = [WeakRetained _accessibilityAddItemsToDragSessionAtPoint:{selfCopy->_pt.x, selfCopy->_pt.y}];

  return selfCopy;
}

- (id)_accessibilityCustomActionIdentifier
{
  v3 = MEMORY[0x1E696AEC0];
  WeakRetained = objc_loadWeakRetained(&self->_view);
  v5 = NSStringFromCGPoint(self->_pt);
  v6 = [v3 stringWithFormat:@"UIAccessibilityAddToDragSessionCustomAction.\nTarget:%p\npoint:%@", WeakRetained, v5];

  return v6;
}

@end