@interface SBCoverSheetSpotlightBackgroundView
- (SBCoverSheetSpotlightBackgroundView)init;
@end

@implementation SBCoverSheetSpotlightBackgroundView

- (SBCoverSheetSpotlightBackgroundView)init
{
  v7.receiver = self;
  v7.super_class = SBCoverSheetSpotlightBackgroundView;
  v2 = [(SBCoverSheetSpotlightBackgroundView *)&v7 init];
  if (v2)
  {
    v3 = objc_alloc(MEMORY[0x277D66438]);
    v4 = [v3 initWithFrame:3 style:{*MEMORY[0x277CBF3A0], *(MEMORY[0x277CBF3A0] + 8), *(MEMORY[0x277CBF3A0] + 16), *(MEMORY[0x277CBF3A0] + 24)}];
    searchBlurBackdropView = v2->_searchBlurBackdropView;
    v2->_searchBlurBackdropView = v4;

    [(SBSearchBackdropView *)v2->_searchBlurBackdropView bs_setHitTestingDisabled:1];
    [(SBSearchBackdropView *)v2->_searchBlurBackdropView setAutoresizingMask:18];
    [(SBSearchBackdropView *)v2->_searchBlurBackdropView prepareForTransitionToBlurred:1];
    [(SBCoverSheetSpotlightBackgroundView *)v2 addSubview:v2->_searchBlurBackdropView];
  }

  return v2;
}

@end