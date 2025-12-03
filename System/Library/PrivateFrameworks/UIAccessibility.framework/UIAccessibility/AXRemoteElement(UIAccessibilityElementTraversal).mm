@interface AXRemoteElement(UIAccessibilityElementTraversal)
- (uint64_t)_accessibilityEnumerateSiblingsWithParent:()UIAccessibilityElementTraversal options:usingBlock:;
@end

@implementation AXRemoteElement(UIAccessibilityElementTraversal)

- (uint64_t)_accessibilityEnumerateSiblingsWithParent:()UIAccessibilityElementTraversal options:usingBlock:
{
  v8 = a4;
  v9 = a5;
  if ([self onClientSide])
  {
    v12.receiver = self;
    v12.super_class = &off_1F1DFB028;
    v10 = objc_msgSendSuper2(&v12, sel__accessibilityEnumerateSiblingsWithParent_options_usingBlock_, a3, v8, v9);
  }

  else
  {
    if (a3)
    {
      *a3 = 0;
    }

    v10 = 1;
  }

  return v10;
}

@end