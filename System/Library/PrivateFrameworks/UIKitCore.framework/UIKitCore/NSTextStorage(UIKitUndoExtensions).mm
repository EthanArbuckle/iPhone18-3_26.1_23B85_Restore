@interface NSTextStorage(UIKitUndoExtensions)
- (id)_UIUndoRedoAttributedSubstringFromRange:()UIKitUndoExtensions;
@end

@implementation NSTextStorage(UIKitUndoExtensions)

- (id)_UIUndoRedoAttributedSubstringFromRange:()UIKitUndoExtensions
{
  v7 = [a1 string];
  v8 = a3 + a4;
  v9 = [v7 length];
  if (a3 + a4 >= v9)
  {
    v10 = v9;
  }

  else
  {
    v10 = a3 + a4;
  }

  if (v8 <= v9)
  {
    v11 = a4;
  }

  else
  {
    v11 = v9 - a3;
  }

  if (v11 == v9)
  {
    v12 = [a1 copyWithZone:0];
  }

  else
  {
    if (v8 <= v9)
    {
      v13 = a4;
    }

    else
    {
      v13 = v9 - a3;
    }

    v14 = [v7 substringWithRange:{a3, v13}];

    v12 = [objc_alloc(MEMORY[0x1E696AD40]) initWithString:v14];
    if (a3 < v10)
    {
      v15 = a3;
      do
      {
        v20 = 0;
        v21 = 0;
        v16 = [a1 attributesAtIndex:v15 effectiveRange:&v20];
        if (v21 + v20 <= v10)
        {
          v17 = v20 - v15 + v21;
        }

        else
        {
          v17 = v10 - v15;
        }

        if (v20 != v15 || v21 + v20 > v10)
        {
          v21 = v17;
        }

        [v12 addAttributes:v16 range:{v15 - a3, v17}];
        v15 += v21;
      }

      while (v15 < v10);
    }

    v7 = v14;
  }

  return v12;
}

@end