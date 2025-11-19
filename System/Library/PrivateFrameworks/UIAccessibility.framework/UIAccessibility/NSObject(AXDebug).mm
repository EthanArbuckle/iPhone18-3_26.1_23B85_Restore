@interface NSObject(AXDebug)
- (id)_axElementsDescription;
- (void)_accessibilityElementsDescriptionProcess:()AXDebug tabCount:;
@end

@implementation NSObject(AXDebug)

- (void)_accessibilityElementsDescriptionProcess:()AXDebug tabCount:
{
  v12 = a3;
  v6 = [a1 accessibilityElementCount];
  if (v6 >= 1)
  {
    v7 = v6;
    for (i = 0; i != v7; ++i)
    {
      v9 = [a1 accessibilityElementAtIndex:i];
      v10 = [MEMORY[0x1E696AD60] string];
      v11 = a4;
      if (a4 >= 1)
      {
        do
        {
          [v10 appendString:@"\t"];
          --v11;
        }

        while (v11);
      }

      if ([v9 isAccessibilityElement])
      {
        [v12 appendFormat:@"+%@%@\n", v10, v9];
      }

      else
      {
        [v12 appendFormat:@"-%@%@\n", v10, v9];
        [v9 _accessibilityElementsDescriptionProcess:v12 tabCount:a4 + 1];
      }
    }
  }
}

- (id)_axElementsDescription
{
  v2 = [MEMORY[0x1E696AD60] string];
  [a1 _accessibilityElementsDescriptionProcess:v2 tabCount:0];

  return v2;
}

@end