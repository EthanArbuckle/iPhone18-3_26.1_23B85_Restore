@interface UIAccessibilityCustomRotorItemResult
- (UIAccessibilityCustomRotorItemResult)initWithTargetElement:(id)targetElement targetRange:(UITextRange *)targetRange;
- (id)targetElement;
@end

@implementation UIAccessibilityCustomRotorItemResult

- (UIAccessibilityCustomRotorItemResult)initWithTargetElement:(id)targetElement targetRange:(UITextRange *)targetRange
{
  v6 = targetElement;
  v7 = targetRange;
  v12.receiver = self;
  v12.super_class = UIAccessibilityCustomRotorItemResult;
  v8 = [(UIAccessibilityCustomRotorItemResult *)&v12 init];
  if (v8)
  {
    v9 = [MEMORY[0x1E696AFB0] UUID];
    [(UIAccessibilityCustomRotorItemResult *)v8 setUuid:v9];

    [(UIAccessibilityCustomRotorItemResult *)v8 setTargetElement:v6];
    [(UIAccessibilityCustomRotorItemResult *)v8 setTargetRange:v7];
    v10 = v8;
  }

  return v8;
}

- (id)targetElement
{
  WeakRetained = objc_loadWeakRetained(&self->_targetElement);

  return WeakRetained;
}

@end