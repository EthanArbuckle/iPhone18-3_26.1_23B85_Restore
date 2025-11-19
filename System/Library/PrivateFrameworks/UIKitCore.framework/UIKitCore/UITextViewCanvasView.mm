@interface UITextViewCanvasView
@end

@implementation UITextViewCanvasView

unint64_t __40___UITextViewCanvasView_drawTextInRect___block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 32) glyphRangeForBoundingRect:*(a1 + 40) inTextContainer:{*(a1 + 72) - *(*(*(a1 + 64) + 8) + 32), *(a1 + 80) - *(*(*(a1 + 64) + 8) + 40), *(a1 + 88), *(a1 + 96)}];
  v4 = v3;
  result = [*(a1 + 48) textContainerOrigin];
  v6 = *(*(a1 + 64) + 8);
  *(v6 + 32) = v7;
  *(v6 + 40) = v8;
  if (v4)
  {
    v9 = [*(a1 + 32) hasNonContiguousLayout];
    v10 = *(a1 + 32);
    result = v9 ? [v10 numberOfGlyphs] : objc_msgSend(v10, "firstUnlaidGlyphIndex");
    if (result > v2)
    {
      v11 = v2 + v4 <= result ? v4 : result - v2;
      if (v11)
      {
        v12 = [*(a1 + 56) _extendedGlyphRangeForRange:v2 maxGlyphIndex:{v11, result}];
        v14 = v13;
        [*(a1 + 32) drawBackgroundForGlyphRange:v12 atPoint:{v13, *(*(*(a1 + 64) + 8) + 32), *(*(*(a1 + 64) + 8) + 40)}];
        v15 = *(a1 + 32);
        v16 = *(*(a1 + 64) + 8);
        v17 = *(v16 + 32);
        v18 = *(v16 + 40);

        return [v15 drawGlyphsForGlyphRange:v12 atPoint:{v14, v17, v18}];
      }
    }
  }

  return result;
}

@end