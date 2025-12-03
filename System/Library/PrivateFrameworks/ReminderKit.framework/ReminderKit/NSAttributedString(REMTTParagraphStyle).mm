@interface NSAttributedString(REMTTParagraphStyle)
- (REMTTParagraphStyle)rem_paragraphStyleAtIndex:()REMTTParagraphStyle effectiveRange:;
@end

@implementation NSAttributedString(REMTTParagraphStyle)

- (REMTTParagraphStyle)rem_paragraphStyleAtIndex:()REMTTParagraphStyle effectiveRange:
{
  if ((a3 & 0x8000000000000000) != 0 || ([self string], v7 = objc_claimAutoreleasedReturnValue(), v8 = objc_msgSend(v7, "length"), v7, v8 <= a3))
  {
    v10 = 0;
    if (a4)
    {
      *a4 = xmmword_19A2310A0;
    }
  }

  else
  {
    v9 = [self attribute:TTAttributeNameParagraphStyle atIndex:a3 effectiveRange:a4];
    if (v9)
    {
      v10 = [[REMTTParagraphStyle alloc] initWithContents:v9];
    }

    else
    {
      v10 = 0;
      if (a4)
      {
        *a4 = xmmword_19A2310A0;
      }
    }
  }

  return v10;
}

@end