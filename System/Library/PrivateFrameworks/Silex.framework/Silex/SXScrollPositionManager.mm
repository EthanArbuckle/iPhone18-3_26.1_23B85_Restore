@interface SXScrollPositionManager
- (SXScrollPositionRestoring)scrollPositionRestoring;
- (void)updateScrollPosition:(id)a3 animated:(BOOL)a4;
@end

@implementation SXScrollPositionManager

- (void)updateScrollPosition:(id)a3 animated:(BOOL)a4
{
  v4 = a4;
  v6 = a3;
  v7 = [(SXScrollPositionManager *)self scrollPositionRestoring];
  [v7 updateScrollPosition:v6 animated:v4];
}

- (SXScrollPositionRestoring)scrollPositionRestoring
{
  WeakRetained = objc_loadWeakRetained(&self->_scrollPositionRestoring);

  return WeakRetained;
}

@end