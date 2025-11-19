@interface UITouchesEventAccessibility
- (BOOL)_accessibilityAutomationHitTest;
- (unsigned)_accessibilityHitTestType;
- (void)_setAccessibilityAutomationHitTest:(BOOL)a3;
- (void)_setAccessibilityHitTestType:(unsigned __int16)a3;
@end

@implementation UITouchesEventAccessibility

- (void)_setAccessibilityAutomationHitTest:(BOOL)a3
{
  if (a3)
  {
    v3 = &unk_1F1DC2758;
  }

  else
  {
    v3 = &unk_1F1DC2770;
  }

  objc_setAssociatedObject(self, &AXHitTestMode, v3, 1);
}

- (BOOL)_accessibilityAutomationHitTest
{
  v2 = objc_getAssociatedObject(self, &AXHitTestMode);
  v3 = [v2 longValue] == 2;

  return v3;
}

- (unsigned)_accessibilityHitTestType
{
  v2 = objc_getAssociatedObject(self, &AXHitTestMode);
  v3 = [v2 longValue];

  return v3;
}

- (void)_setAccessibilityHitTestType:(unsigned __int16)a3
{
  v4 = [MEMORY[0x1E696AD98] numberWithUnsignedShort:a3];
  objc_setAssociatedObject(self, &AXHitTestMode, v4, 1);
}

@end