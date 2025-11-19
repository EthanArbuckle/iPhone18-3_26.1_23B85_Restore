@interface NSArray(WAAccessibility)
+ (id)waaxArrayByIgnoringNilElementsWithCount:()WAAccessibility;
@end

@implementation NSArray(WAAccessibility)

+ (id)waaxArrayByIgnoringNilElementsWithCount:()WAAccessibility
{
  v9 = a3;
  v10 = [objc_alloc(MEMORY[0x277CBEB18]) initWithCapacity:a3];
  for (i = &a9; v9; --v9)
  {
    v11 = i++;
    if (*v11)
    {
      [v10 addObject:?];
    }
  }

  v12 = [v10 copy];

  return v12;
}

@end