@interface PGPortalView
- (UIView)sourceView;
- (void)setSourceView:(id)view;
@end

@implementation PGPortalView

- (void)setSourceView:(id)view
{
  viewCopy = view;
  portalLayer = [(PGPortalView *)self portalLayer];
  layer = [viewCopy layer];

  [portalLayer setSourceLayer:layer];
  portalLayer2 = [(PGPortalView *)self portalLayer];
  [portalLayer2 setMatchesTransform:1];
}

- (UIView)sourceView
{
  WeakRetained = objc_loadWeakRetained(&self->_sourceView);

  return WeakRetained;
}

@end