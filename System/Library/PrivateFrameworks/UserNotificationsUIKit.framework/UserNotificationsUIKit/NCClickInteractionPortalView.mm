@interface NCClickInteractionPortalView
- (NCClickInteractionPortalView)initWithSourceView:(id)a3;
@end

@implementation NCClickInteractionPortalView

- (NCClickInteractionPortalView)initWithSourceView:(id)a3
{
  v4 = a3;
  [v4 frame];
  v11.receiver = self;
  v11.super_class = NCClickInteractionPortalView;
  v5 = [(NCClickInteractionPortalView *)&v11 initWithFrame:?];
  v6 = v5;
  if (v5)
  {
    v7 = [(NCClickInteractionPortalView *)v5 _portalLayer];
    v8 = [v4 layer];
    [v7 setSourceLayer:v8];

    v9 = [(NCClickInteractionPortalView *)v6 _portalLayer];
    [v9 setHidesSourceLayer:1];
  }

  return v6;
}

@end