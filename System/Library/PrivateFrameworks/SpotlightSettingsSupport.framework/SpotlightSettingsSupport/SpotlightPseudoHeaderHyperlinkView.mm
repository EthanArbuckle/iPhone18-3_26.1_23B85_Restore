@interface SpotlightPseudoHeaderHyperlinkView
- (double)preferredHeightForWidth:(double)width;
@end

@implementation SpotlightPseudoHeaderHyperlinkView

- (double)preferredHeightForWidth:(double)width
{
  v9.receiver = self;
  v9.super_class = SpotlightPseudoHeaderHyperlinkView;
  [(SpotlightPseudoHeaderHyperlinkView *)&v9 preferredHeightForWidth:width];
  v4 = v3;
  PSTableSectionFooterBottomPad();
  v6 = v5;
  PSTextViewInsets();
  return v4 - (v6 + v7);
}

@end