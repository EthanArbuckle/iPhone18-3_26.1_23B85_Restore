@interface UILabelSummarySymbolTextAttachment
@end

@implementation UILabelSummarySymbolTextAttachment

void __84___UILabelSummarySymbolTextAttachment_initWithSummarySymbolOn_font_foregroundColor___block_invoke(uint64_t a1)
{
  v1 = *(a1 + 48);
  v2 = *(a1 + 32);
  v3 = [*(a1 + 40) CGColor];

  UILabelNewAnimatingSummarySymbolView(v1, v2, v3);
}

@end