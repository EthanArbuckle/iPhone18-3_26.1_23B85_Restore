@interface SpotlightPseudoHeaderHyperlinkView
- (double)preferredHeightForWidth:(double)a3;
@end

@implementation SpotlightPseudoHeaderHyperlinkView

- (double)preferredHeightForWidth:(double)a3
{
  v9.receiver = self;
  v9.super_class = SpotlightPseudoHeaderHyperlinkView;
  [(SpotlightPseudoHeaderHyperlinkView *)&v9 preferredHeightForWidth:a3];
  v4 = v3;
  PSTableSectionFooterBottomPad();
  v6 = v5;
  PSTextViewInsets();
  return v4 - (v6 + v7);
}

@end