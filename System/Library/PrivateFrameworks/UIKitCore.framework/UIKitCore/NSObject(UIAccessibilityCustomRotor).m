@interface NSObject(UIAccessibilityCustomRotor)
- (id)accessibilityCustomRotors;
@end

@implementation NSObject(UIAccessibilityCustomRotor)

- (id)accessibilityCustomRotors
{
  v2 = [a1 _accessibilityGetBlockForAttribute:40];
  v3 = v2;
  if (v2)
  {
    (*(v2 + 16))(v2);
  }

  else
  {
    objc_getAssociatedObject(a1, &AXCustomRotors);
  }
  v4 = ;

  return v4;
}

@end