@interface NSObject(AccessibilityBridging)
- (id)ts_accessibilityLeafDescendants;
@end

@implementation NSObject(AccessibilityBridging)

- (id)ts_accessibilityLeafDescendants
{
  array = [MEMORY[0x1E695DF70] array];
  defaultVoiceOverOptions = [MEMORY[0x1E69DB5C8] defaultVoiceOverOptions];
  v4 = [self _accessibilityLeafDescendantsWithOptions:defaultVoiceOverOptions];
  if (v4)
  {
    [array axSafelyAddObjectsFromArray:v4];
  }

  v5 = [array copy];

  return v5;
}

@end