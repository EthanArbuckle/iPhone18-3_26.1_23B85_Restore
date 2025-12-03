@interface NSObject(AXDebug)
- (id)_axElementsDescription;
- (void)_accessibilityElementsDescriptionProcess:()AXDebug tabCount:;
@end

@implementation NSObject(AXDebug)

- (void)_accessibilityElementsDescriptionProcess:()AXDebug tabCount:
{
  v12 = a3;
  accessibilityElementCount = [self accessibilityElementCount];
  if (accessibilityElementCount >= 1)
  {
    v7 = accessibilityElementCount;
    for (i = 0; i != v7; ++i)
    {
      v9 = [self accessibilityElementAtIndex:i];
      string = [MEMORY[0x1E696AD60] string];
      v11 = a4;
      if (a4 >= 1)
      {
        do
        {
          [string appendString:@"\t"];
          --v11;
        }

        while (v11);
      }

      if ([v9 isAccessibilityElement])
      {
        [v12 appendFormat:@"+%@%@\n", string, v9];
      }

      else
      {
        [v12 appendFormat:@"-%@%@\n", string, v9];
        [v9 _accessibilityElementsDescriptionProcess:v12 tabCount:a4 + 1];
      }
    }
  }
}

- (id)_axElementsDescription
{
  string = [MEMORY[0x1E696AD60] string];
  [self _accessibilityElementsDescriptionProcess:string tabCount:0];

  return string;
}

@end