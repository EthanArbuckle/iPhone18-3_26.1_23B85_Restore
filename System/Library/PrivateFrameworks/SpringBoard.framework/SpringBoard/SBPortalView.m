@interface SBPortalView
- (BOOL)allowsBackdropGroups;
- (BOOL)hidesSourceView;
- (BOOL)matchesAlpha;
- (BOOL)matchesPosition;
- (BOOL)matchesTransform;
- (UIView)sourceView;
- (id)description;
- (id)hitTest:(CGPoint)a3 withEvent:(id)a4;
- (void)setAllowsBackdropGroups:(BOOL)a3;
- (void)setHidesSourceView:(BOOL)a3;
- (void)setMatchesAlpha:(BOOL)a3;
- (void)setMatchesPosition:(BOOL)a3;
- (void)setMatchesTransform:(BOOL)a3;
- (void)setSourceView:(id)a3;
@end

@implementation SBPortalView

- (void)setSourceView:(id)a3
{
  v4 = a3;
  objc_storeWeak(&self->_sourceView, v4);
  v6 = [v4 layer];

  v5 = [(SBPortalView *)self portalLayer];
  [v5 setSourceLayer:v6];
}

- (BOOL)hidesSourceView
{
  v2 = [(SBPortalView *)self portalLayer];
  v3 = [v2 hidesSourceLayer];

  return v3;
}

- (void)setHidesSourceView:(BOOL)a3
{
  v3 = a3;
  v4 = [(SBPortalView *)self portalLayer];
  [v4 setHidesSourceLayer:v3];
}

- (BOOL)matchesAlpha
{
  v2 = [(SBPortalView *)self portalLayer];
  v3 = [v2 matchesOpacity];

  return v3;
}

- (void)setMatchesAlpha:(BOOL)a3
{
  v3 = a3;
  v4 = [(SBPortalView *)self portalLayer];
  [v4 setMatchesOpacity:v3];
}

- (BOOL)matchesTransform
{
  v2 = [(SBPortalView *)self portalLayer];
  v3 = [v2 matchesTransform];

  return v3;
}

- (void)setMatchesTransform:(BOOL)a3
{
  v3 = a3;
  v4 = [(SBPortalView *)self portalLayer];
  [v4 setMatchesTransform:v3];
}

- (BOOL)matchesPosition
{
  v2 = [(SBPortalView *)self portalLayer];
  v3 = [v2 matchesPosition];

  return v3;
}

- (void)setMatchesPosition:(BOOL)a3
{
  v3 = a3;
  v4 = [(SBPortalView *)self portalLayer];
  [v4 setMatchesPosition:v3];
}

- (BOOL)allowsBackdropGroups
{
  v2 = [(SBPortalView *)self portalLayer];
  v3 = [v2 allowsBackdropGroups];

  return v3;
}

- (void)setAllowsBackdropGroups:(BOOL)a3
{
  v3 = a3;
  v4 = [(SBPortalView *)self portalLayer];
  [v4 setAllowsBackdropGroups:v3];
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

  v5 = [(SBPortalView *)self sourceView];
  [v4 appendFormat:@"sourceView = <%@: %p>>", objc_opt_class(), v5];

  return v4;
}

- (id)hitTest:(CGPoint)a3 withEvent:(id)a4
{
  v7.receiver = self;
  v7.super_class = SBPortalView;
  v5 = [(SBPortalView *)&v7 hitTest:a4 withEvent:a3.x, a3.y];
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