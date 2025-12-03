@interface NSIndexPath(UIKitInternalAdditions)
- (__CFString)_ui_shortDescription;
- (uint64_t)ui_getSectionIndex:()UIKitInternalAdditions itemIndex:;
@end

@implementation NSIndexPath(UIKitInternalAdditions)

- (__CFString)_ui_shortDescription
{
  v2 = [self length];
  if (v2)
  {
    v3 = v2;
    v4 = objc_msgSend(MEMORY[0x1E696AD60], "stringWithString:", @"(");
    v5 = 0;
    do
    {
      if (v3 == 1)
      {
        v6 = @"");
      }

      else
      {
        v6 = @"-";
      }

      v7 = v6;
      v8 = [self indexAtPosition:v5];
      if (v8 == 0x7FFFFFFFFFFFFFFFLL)
      {
        [(__CFString *)v4 appendFormat:@"NSNotFound%@", v7, v10];
      }

      else
      {
        [(__CFString *)v4 appendFormat:@"%lu%@", v8, v7];
      }

      ++v5;
      --v3;
    }

    while (v3);
  }

  else
  {
    v4 = @"(empty)";
  }

  return v4;
}

- (uint64_t)ui_getSectionIndex:()UIKitInternalAdditions itemIndex:
{
  v13 = *MEMORY[0x1E69E9840];
  if (!a3)
  {
    currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
    [currentHandler handleFailureInMethod:a2 object:self file:@"NSIndexPath+UIKitAdditions.m" lineNumber:68 description:{@"Invalid parameter not satisfying: %@", @"outSectionIndex != NULL"}];

    if (a4)
    {
      goto LABEL_3;
    }

LABEL_5:
    currentHandler2 = [MEMORY[0x1E696AAA8] currentHandler];
    [currentHandler2 handleFailureInMethod:a2 object:self file:@"NSIndexPath+UIKitAdditions.m" lineNumber:69 description:{@"Invalid parameter not satisfying: %@", @"outItemIndex != NULL"}];

    goto LABEL_3;
  }

  if (!a4)
  {
    goto LABEL_5;
  }

LABEL_3:
  v12 = xmmword_18A677770;
  result = [self getIndexes:&v12 range:{0, 2}];
  v9 = *(&v12 + 1);
  *a3 = v12;
  *a4 = v9;
  return result;
}

@end