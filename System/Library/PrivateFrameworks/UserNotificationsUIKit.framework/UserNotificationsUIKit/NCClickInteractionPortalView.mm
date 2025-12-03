@interface NCClickInteractionPortalView
- (NCClickInteractionPortalView)initWithSourceView:(id)view;
@end

@implementation NCClickInteractionPortalView

- (NCClickInteractionPortalView)initWithSourceView:(id)view
{
  viewCopy = view;
  [viewCopy frame];
  v11.receiver = self;
  v11.super_class = NCClickInteractionPortalView;
  v5 = [(NCClickInteractionPortalView *)&v11 initWithFrame:?];
  v6 = v5;
  if (v5)
  {
    _portalLayer = [(NCClickInteractionPortalView *)v5 _portalLayer];
    layer = [viewCopy layer];
    [_portalLayer setSourceLayer:layer];

    _portalLayer2 = [(NCClickInteractionPortalView *)v6 _portalLayer];
    [_portalLayer2 setHidesSourceLayer:1];
  }

  return v6;
}

@end