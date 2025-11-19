@interface UIAccessibilityAddToDragSessionCustomAction
- (BOOL)_accessibilityInvokeAddToSession;
- (UIAccessibilityAddToDragSessionCustomAction)initWithPoint:(CGPoint)a3 inSourceView:(id)a4;
- (id)_accessibilityCustomActionIdentifier;
@end

@implementation UIAccessibilityAddToDragSessionCustomAction

- (UIAccessibilityAddToDragSessionCustomAction)initWithPoint:(CGPoint)a3 inSourceView:(id)a4
{
  y = a3.y;
  x = a3.x;
  v7 = a4;
  v8 = UIKitAccessibilityLocalizedString(@"add.to.session");
  v11.receiver = self;
  v11.super_class = UIAccessibilityAddToDragSessionCustomAction;
  v9 = [(UIAccessibilityAddToDragSessionCustomAction *)&v11 initWithName:v8 target:self selector:sel__accessibilityInvokeAddToSession];

  if (v9)
  {
    v9->_pt.x = x;
    v9->_pt.y = y;
    objc_storeWeak(&v9->_view, v7);
  }

  return v9;
}

- (BOOL)_accessibilityInvokeAddToSession
{
  v2 = self;
  WeakRetained = objc_loadWeakRetained(&self->_view);
  LOBYTE(v2) = [WeakRetained _accessibilityAddItemsToDragSessionAtPoint:{v2->_pt.x, v2->_pt.y}];

  return v2;
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