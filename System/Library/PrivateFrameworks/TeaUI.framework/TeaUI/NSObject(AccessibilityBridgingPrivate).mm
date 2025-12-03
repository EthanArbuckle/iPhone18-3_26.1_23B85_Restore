@interface NSObject(AccessibilityBridgingPrivate)
- (BOOL)ts_axHasValueForKey:()AccessibilityBridgingPrivate;
- (uint64_t)ts_axBoolValueForKey:()AccessibilityBridgingPrivate;
- (void)ts_axSetBoolValue:()AccessibilityBridgingPrivate forKey:;
@end

@implementation NSObject(AccessibilityBridgingPrivate)

- (void)ts_axSetBoolValue:()AccessibilityBridgingPrivate forKey:
{
  v6 = a4;
  v7 = [v6 hash];
  v8 = [MEMORY[0x1E696AD98] numberWithBool:a3];
  objc_setAssociatedObject(self, v7, v8, 0x301);
}

- (uint64_t)ts_axBoolValueForKey:()AccessibilityBridgingPrivate
{
  v4 = a3;
  v5 = objc_getAssociatedObject(self, [v4 hash]);

  bOOLValue = [v5 BOOLValue];
  return bOOLValue;
}

- (BOOL)ts_axHasValueForKey:()AccessibilityBridgingPrivate
{
  v4 = a3;
  v5 = objc_getAssociatedObject(self, [v4 hash]);

  return v5 != 0;
}

@end