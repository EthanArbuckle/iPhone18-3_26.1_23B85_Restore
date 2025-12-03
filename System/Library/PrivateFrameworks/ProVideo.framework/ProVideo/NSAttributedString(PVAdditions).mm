@interface NSAttributedString(PVAdditions)
- (uint64_t)pv_isRightToLeft;
@end

@implementation NSAttributedString(PVAdditions)

- (uint64_t)pv_isRightToLeft
{
  v1 = CTLineCreateWithAttributedString(self);
  GlyphRuns = CTLineGetGlyphRuns(v1);
  Count = CFArrayGetCount(GlyphRuns);
  if (Count < 1)
  {
LABEL_5:
    v7 = 0;
  }

  else
  {
    v4 = Count;
    v5 = 0;
    while (1)
    {
      ValueAtIndex = CFArrayGetValueAtIndex(GlyphRuns, v5);
      if (!CTRunGetStringRange(ValueAtIndex).location)
      {
        break;
      }

      if (v4 == ++v5)
      {
        goto LABEL_5;
      }
    }

    v7 = CTRunGetStatus(ValueAtIndex) & 1;
  }

  CFRelease(v1);
  return v7;
}

@end