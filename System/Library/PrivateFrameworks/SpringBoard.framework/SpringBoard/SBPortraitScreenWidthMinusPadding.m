@interface SBPortraitScreenWidthMinusPadding
@end

@implementation SBPortraitScreenWidthMinusPadding

void ___SBPortraitScreenWidthMinusPadding_block_invoke()
{
  v2 = [MEMORY[0x277D759A0] mainScreen];
  v0 = [v2 fixedCoordinateSpace];
  [v0 bounds];
  Width = CGRectGetWidth(v4);
  _SBPortraitScreenWidthMinusPadding___size = floor(Width + _SBPIPContentViewPaddingWhileStashed(0) * -2.0 + -2.0);
}

@end