@interface UITouchesEventAccessibility
- (BOOL)_accessibilityAutomationHitTest;
- (unsigned)_accessibilityHitTestType;
- (void)_setAccessibilityAutomationHitTest:(BOOL)test;
- (void)_setAccessibilityHitTestType:(unsigned __int16)type;
@end

@implementation UITouchesEventAccessibility

- (void)_setAccessibilityAutomationHitTest:(BOOL)test
{
  if (test)
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
  longValue = [v2 longValue];

  return longValue;
}

- (void)_setAccessibilityHitTestType:(unsigned __int16)type
{
  v4 = [MEMORY[0x1E696AD98] numberWithUnsignedShort:type];
  objc_setAssociatedObject(self, &AXHitTestMode, v4, 1);
}

@end