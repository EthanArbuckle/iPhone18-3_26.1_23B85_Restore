@interface NSLayoutConstraint
- (void)_baselineLoweringInfoForFirstItem:(void *)result;
@end

@implementation NSLayoutConstraint

- (void)_baselineLoweringInfoForFirstItem:(void *)result
{
  if (!result)
  {
    return result;
  }

  v2 = result;
  if (a2)
  {
    if ([result firstAttribute] - 11 < 2)
    {
      AssociatedObject = objc_getAssociatedObject(v2, &unk_1ED4981B4);
      result = [AssociatedObject count];
      if (result)
      {
        v4 = [AssociatedObject objectAtIndexedSubscript:0];
        if ([v4 isEqual:{objc_msgSend(MEMORY[0x1E695DFB0], "null")}])
        {
          return 0;
        }

        else
        {
          return v4;
        }
      }

      return result;
    }

    return 0;
  }

  if ([result secondAttribute] - 11 >= 2)
  {
    return 0;
  }

  v5 = objc_getAssociatedObject(v2, &unk_1ED4981B4);
  if ([v5 count] != 2)
  {
    return 0;
  }

  return [v5 objectAtIndexedSubscript:1];
}

@end