@interface PGPortalView
- (UIView)sourceView;
- (void)setSourceView:(id)a3;
@end

@implementation PGPortalView

- (void)setSourceView:(id)a3
{
  v4 = a3;
  v5 = [(PGPortalView *)self portalLayer];
  v6 = [v4 layer];

  [v5 setSourceLayer:v6];
  v7 = [(PGPortalView *)self portalLayer];
  [v7 setMatchesTransform:1];
}

- (UIView)sourceView
{
  WeakRetained = objc_loadWeakRetained(&self->_sourceView);

  return WeakRetained;
}

@end