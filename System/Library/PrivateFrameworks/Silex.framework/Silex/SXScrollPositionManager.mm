@interface SXScrollPositionManager
- (SXScrollPositionRestoring)scrollPositionRestoring;
- (void)updateScrollPosition:(id)position animated:(BOOL)animated;
@end

@implementation SXScrollPositionManager

- (void)updateScrollPosition:(id)position animated:(BOOL)animated
{
  animatedCopy = animated;
  positionCopy = position;
  scrollPositionRestoring = [(SXScrollPositionManager *)self scrollPositionRestoring];
  [scrollPositionRestoring updateScrollPosition:positionCopy animated:animatedCopy];
}

- (SXScrollPositionRestoring)scrollPositionRestoring
{
  WeakRetained = objc_loadWeakRetained(&self->_scrollPositionRestoring);

  return WeakRetained;
}

@end