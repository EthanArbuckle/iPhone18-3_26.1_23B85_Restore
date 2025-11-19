@interface UILabel
@end

@implementation UILabel

uint64_t __41__UILabel_VideosUI__vui_textSizeForSize___block_invoke(uint64_t a1, double a2, double a3)
{
  if ([*(a1 + 32) numberOfLines] >= 2)
  {
    return [*(a1 + 32) textRectForBounds:objc_msgSend(*(a1 + 32) limitedToNumberOfLines:{"numberOfLines"), 0.0, 0.0, a2, 3.40282347e38}];
  }

  v7 = *(a1 + 32);

  return [v7 sizeThatFits:{a2, a3}];
}

void __57__UILabel_VideosUI__vui_alignmentInsetsForExpectedWidth___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = *(*(*(a1 + 32) + 8) + 24);
  v13 = v3;
  [v3 capHeight];
  if (v4 < v5)
  {
    [v13 ascender];
    v7 = v6;
    [v13 capHeight];
    *(*(*(a1 + 40) + 8) + 32) = v7 - v8;
    [v13 capHeight];
    *(*(*(a1 + 32) + 8) + 24) = v9;
  }

  v10 = *(*(*(a1 + 40) + 8) + 48);
  [v13 descender];
  if (v10 < -v11)
  {
    [v13 descender];
    *(*(*(a1 + 40) + 8) + 48) = -v12;
  }
}

@end