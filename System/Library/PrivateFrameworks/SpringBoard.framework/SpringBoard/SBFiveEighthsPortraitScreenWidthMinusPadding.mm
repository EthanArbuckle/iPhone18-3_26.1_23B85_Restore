@interface SBFiveEighthsPortraitScreenWidthMinusPadding
@end

@implementation SBFiveEighthsPortraitScreenWidthMinusPadding

void ___SBFiveEighthsPortraitScreenWidthMinusPadding_block_invoke()
{
  v2 = [MEMORY[0x277D759A0] mainScreen];
  v0 = [v2 fixedCoordinateSpace];
  [v0 bounds];
  Width = CGRectGetWidth(v4);
  _SBFiveEighthsPortraitScreenWidthMinusPadding___size = floor(_SBPIPContentViewPaddingWhileStashed(0) * -2.0 + Width * 0.625 + -2.0);
}

@end