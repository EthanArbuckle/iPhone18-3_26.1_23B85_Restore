@interface NSMutableAttributedString(TIExtras)
- (CFIndex)_ti_replaceOccurrencesOfString:()TIExtras withString:options:range:;
@end

@implementation NSMutableAttributedString(TIExtras)

- (CFIndex)_ti_replaceOccurrencesOfString:()TIExtras withString:options:range:
{
  v12 = a3;
  v13 = a4;
  v14 = [a1 length];
  if (!v12 || !v13)
  {
    v15 = MEMORY[0x1E695DF30];
    v16 = v12;
    v17 = *MEMORY[0x1E695D940];
    v18 = _NSMethodExceptionProem();
    v19 = v17;
    v12 = v16;
    [v15 raise:v19 format:{@"%@: nil argument", v18}];
  }

  if (v14 < a7 || a6 > v14 - a7)
  {
    v20 = MEMORY[0x1E695DF30];
    v21 = *MEMORY[0x1E695DA20];
    v22 = _NSMethodExceptionProem();
    [v20 raise:v21 format:{@"%@: Range {%lu, %lu} out of bounds; string length %lu", v22, a6, a7, v14}];
  }

  v23 = [a1 string];
  v32.location = a6;
  v32.length = a7;
  Results = CFStringCreateArrayWithFindResults(0, v23, v12, v32, ~(8 * a5) & 0x10 | a5);

  if (Results)
  {
    Count = CFArrayGetCount(Results);
    v26 = Count;
    if (Count)
    {
      v27 = 0;
      v28 = Count - 1;
      do
      {
        if ((a5 & 4) != 0)
        {
          v29 = v27;
        }

        else
        {
          v29 = v28;
        }

        ValueAtIndex = CFArrayGetValueAtIndex(Results, v29);
        [a1 replaceCharactersInRange:*ValueAtIndex withString:{ValueAtIndex[1], v13}];
        ++v27;
        --v28;
      }

      while (v28 != -1);
    }

    CFRelease(Results);
  }

  else
  {
    v26 = 0;
  }

  return v26;
}

@end