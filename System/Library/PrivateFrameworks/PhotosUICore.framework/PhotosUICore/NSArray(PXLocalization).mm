@interface NSArray(PXLocalization)
- (__CFString)px_localizedComposedStringThatFitsWidth:()PXLocalization maxCount:useUndefinedMoreCount:withMeasuringBlock:;
@end

@implementation NSArray(PXLocalization)

- (__CFString)px_localizedComposedStringThatFitsWidth:()PXLocalization maxCount:useUndefinedMoreCount:withMeasuringBlock:
{
  v7 = a5;
  v8 = [a1 count];
  if (v8)
  {
    if (v8 == 1)
    {
      v9 = [a1 objectAtIndex:0];
    }

    else
    {
      if (v8 >= a3)
      {
        v10 = a3;
      }

      else
      {
        v10 = v8;
      }

      if (v10 <= 1)
      {
        v11 = 1;
      }

      else
      {
        v11 = v10;
      }

      if (v11 >= 1)
      {
        PXLocalizedComposedString();
      }

      v9 = 0;
    }
  }

  else
  {
    v9 = &stru_1F1741150;
  }

  return v9;
}

@end