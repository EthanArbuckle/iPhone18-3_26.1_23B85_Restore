@interface SBPortalView
- (BOOL)allowsBackdropGroups;
- (BOOL)hidesSourceView;
- (BOOL)matchesAlpha;
- (BOOL)matchesPosition;
- (BOOL)matchesTransform;
- (UIView)sourceView;
- (id)description;
- (id)hitTest:(CGPoint)test withEvent:(id)event;
- (void)setAllowsBackdropGroups:(BOOL)groups;
- (void)setHidesSourceView:(BOOL)view;
- (void)setMatchesAlpha:(BOOL)alpha;
- (void)setMatchesPosition:(BOOL)position;
- (void)setMatchesTransform:(BOOL)transform;
- (void)setSourceView:(id)view;
@end

@implementation SBPortalView

- (void)setSourceView:(id)view
{
  viewCopy = view;
  objc_storeWeak(&self->_sourceView, viewCopy);
  layer = [viewCopy layer];

  portalLayer = [(SBPortalView *)self portalLayer];
  [portalLayer setSourceLayer:layer];
}

- (BOOL)hidesSourceView
{
  portalLayer = [(SBPortalView *)self portalLayer];
  hidesSourceLayer = [portalLayer hidesSourceLayer];

  return hidesSourceLayer;
}

- (void)setHidesSourceView:(BOOL)view
{
  viewCopy = view;
  portalLayer = [(SBPortalView *)self portalLayer];
  [portalLayer setHidesSourceLayer:viewCopy];
}

- (BOOL)matchesAlpha
{
  portalLayer = [(SBPortalView *)self portalLayer];
  matchesOpacity = [portalLayer matchesOpacity];

  return matchesOpacity;
}

- (void)setMatchesAlpha:(BOOL)alpha
{
  alphaCopy = alpha;
  portalLayer = [(SBPortalView *)self portalLayer];
  [portalLayer setMatchesOpacity:alphaCopy];
}

- (BOOL)matchesTransform
{
  portalLayer = [(SBPortalView *)self portalLayer];
  matchesTransform = [portalLayer matchesTransform];

  return matchesTransform;
}

- (void)setMatchesTransform:(BOOL)transform
{
  transformCopy = transform;
  portalLayer = [(SBPortalView *)self portalLayer];
  [portalLayer setMatchesTransform:transformCopy];
}

- (BOOL)matchesPosition
{
  portalLayer = [(SBPortalView *)self portalLayer];
  matchesPosition = [portalLayer matchesPosition];

  return matchesPosition;
}

- (void)setMatchesPosition:(BOOL)position
{
  positionCopy = position;
  portalLayer = [(SBPortalView *)self portalLayer];
  [portalLayer setMatchesPosition:positionCopy];
}

- (BOOL)allowsBackdropGroups
{
  portalLayer = [(SBPortalView *)self portalLayer];
  allowsBackdropGroups = [portalLayer allowsBackdropGroups];

  return allowsBackdropGroups;
}

- (void)setAllowsBackdropGroups:(BOOL)groups
{
  groupsCopy = groups;
  portalLayer = [(SBPortalView *)self portalLayer];
  [portalLayer setAllowsBackdropGroups:groupsCopy];
}

- (id)description
{
  v7.receiver = self;
  v7.super_class = SBPortalView;
  v3 = [(SBPortalView *)&v7 description];
  v4 = [v3 mutableCopy];

  [v4 replaceCharactersInRange:objc_msgSend(v4 withString:{"length") - 1, 1, @"; "}];
  if ([(SBPortalView *)self hidesSourceView])
  {
    [v4 appendString:@"hidesSourceView = YES; "];
  }

  if ([(SBPortalView *)self matchesAlpha])
  {
    [v4 appendString:@"matchesAlpha = YES; "];
  }

  if ([(SBPortalView *)self matchesPosition])
  {
    [v4 appendString:@"matchesPosition = YES; "];
  }

  if ([(SBPortalView *)self matchesTransform])
  {
    [v4 appendString:@"matchesTransform = YES; "];
  }

  if ([(SBPortalView *)self allowsBackdropGroups])
  {
    [v4 appendString:@"allowsBackdropGroups = YES; "];
  }

  sourceView = [(SBPortalView *)self sourceView];
  [v4 appendFormat:@"sourceView = <%@: %p>>", objc_opt_class(), sourceView];

  return v4;
}

- (id)hitTest:(CGPoint)test withEvent:(id)event
{
  v7.receiver = self;
  v7.super_class = SBPortalView;
  v5 = [(SBPortalView *)&v7 hitTest:event withEvent:test.x, test.y];
  if (v5 == self && self->_passesTouchesThrough)
  {

    v5 = 0;
  }

  return v5;
}

- (UIView)sourceView
{
  WeakRetained = objc_loadWeakRetained(&self->_sourceView);

  return WeakRetained;
}

@end