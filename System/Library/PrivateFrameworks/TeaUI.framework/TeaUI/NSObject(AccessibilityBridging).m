@interface NSObject(AccessibilityBridging)
- (id)ts_accessibilityLeafDescendants;
@end

@implementation NSObject(AccessibilityBridging)

- (id)ts_accessibilityLeafDescendants
{
  v2 = [MEMORY[0x1E695DF70] array];
  v3 = [MEMORY[0x1E69DB5C8] defaultVoiceOverOptions];
  v4 = [a1 _accessibilityLeafDescendantsWithOptions:v3];
  if (v4)
  {
    [v2 axSafelyAddObjectsFromArray:v4];
  }

  v5 = [v2 copy];

  return v5;
}

@end