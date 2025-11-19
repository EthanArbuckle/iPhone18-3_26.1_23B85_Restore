@interface _UIPortalView
- (BOOL)_allowedInContextTransform;
- (BOOL)_shouldAnimatePropertyWithKey:(id)a3;
- (BOOL)allowsBackdropGroups;
- (BOOL)allowsHitTesting;
- (BOOL)hidesSourceView;
- (BOOL)matchesAlpha;
- (BOOL)matchesPosition;
- (BOOL)matchesTransform;
- (BOOL)pointInside:(CGPoint)a3 withEvent:(id)a4;
- (CGPoint)_pointInSourceViewForPoint:(CGPoint)a3;
- (NSString)description;
- (UIView)sourceView;
- (_UIPortalView)initWithFrame:(CGRect)a3;
- (_UIPortalView)initWithSourceView:(id)a3;
- (double)sourceViewAlphaScale;
- (id)hitTest:(CGPoint)a3 withEvent:(id)a4;
- (void)_setAllowedInContextTransform:(BOOL)a3;
- (void)_setPrefersClientLayer:(BOOL)a3;
- (void)_updateSourceLayer;
- (void)setAllowsBackdropGroups:(BOOL)a3;
- (void)setAllowsHitTesting:(BOOL)a3;
- (void)setBounds:(CGRect)a3;
- (void)setCenter:(CGPoint)a3;
- (void)setFrame:(CGRect)a3;
- (void)setHidden:(BOOL)a3;
- (void)setHidesSourceLayerInOtherPortals:(BOOL)a3;
- (void)setHidesSourceView:(BOOL)a3;
- (void)setMatchesAlpha:(BOOL)a3;
- (void)setMatchesPosition:(BOOL)a3;
- (void)setMatchesTransform:(BOOL)a3;
- (void)setName:(id)a3;
- (void)setSourceView:(id)a3;
- (void)setSourceViewAlphaScale:(double)a3;
@end

@implementation _UIPortalView

- (void)_updateSourceLayer
{
  v3 = [(_UIPortalView *)self _prefersClientLayer];
  v4 = [(_UIPortalView *)self sourceView];
  v7 = v4;
  if (v3)
  {
    [(UIView *)v4 _backing_clientLayer];
  }

  else
  {
    [(UIView *)v4 _backing_outermostLayer];
  }
  v5 = ;
  v6 = [(_UIPortalView *)self portalLayer];
  [v6 setSourceLayer:v5];
}

- (UIView)sourceView
{
  WeakRetained = objc_loadWeakRetained(&self->_sourceView);

  return WeakRetained;
}

- (BOOL)matchesPosition
{
  v2 = [(_UIPortalView *)self portalLayer];
  v3 = [v2 matchesPosition];

  return v3;
}

- (_UIPortalView)initWithSourceView:(id)a3
{
  v4 = a3;
  [v4 bounds];
  v5 = [(_UIPortalView *)self initWithFrame:0.0, 0.0];
  v6 = v5;
  if (v5)
  {
    [(_UIPortalView *)v5 setSourceView:v4];
  }

  return v6;
}

- (_UIPortalView)initWithFrame:(CGRect)a3
{
  v6.receiver = self;
  v6.super_class = _UIPortalView;
  v3 = [(UIView *)&v6 initWithFrame:a3.origin.x, a3.origin.y, a3.size.width, a3.size.height];
  v4 = v3;
  if (v3)
  {
    [(_UIPortalView *)v3 setAllowsHitTesting:0];
  }

  return v4;
}

- (void)setName:(id)a3
{
  v7 = a3;
  if (![(NSString *)self->_name isEqualToString:?])
  {
    v4 = [v7 copy];
    name = self->_name;
    self->_name = v4;

    if (os_variant_has_internal_diagnostics())
    {
      v6 = [(UIView *)self layer];
      [v6 setName:v7];
    }
  }
}

- (void)setSourceView:(id)a3
{
  obj = a3;
  WeakRetained = objc_loadWeakRetained(&self->_sourceView);

  if (WeakRetained != obj)
  {
    v5 = objc_loadWeakRetained(&self->_sourceView);
    [(UIView *)v5 _removeMultiLayerDelegate:?];

    v6 = objc_storeWeak(&self->_sourceView, obj);
    [(UIView *)obj _registerMultiLayerDelegate:?];

    [(_UIPortalView *)self _updateSourceLayer];
  }
}

- (BOOL)hidesSourceView
{
  v2 = [(_UIPortalView *)self portalLayer];
  v3 = [v2 hidesSourceLayer];

  return v3;
}

- (void)setHidesSourceView:(BOOL)a3
{
  v3 = a3;
  v4 = [(_UIPortalView *)self portalLayer];
  [v4 setHidesSourceLayer:v3];
}

- (BOOL)matchesAlpha
{
  v2 = [(_UIPortalView *)self portalLayer];
  v3 = [v2 matchesOpacity];

  return v3;
}

- (void)setMatchesAlpha:(BOOL)a3
{
  v3 = a3;
  v4 = [(_UIPortalView *)self portalLayer];
  [v4 setMatchesOpacity:v3];
}

- (BOOL)matchesTransform
{
  v2 = [(_UIPortalView *)self portalLayer];
  v3 = [v2 matchesTransform];

  return v3;
}

- (void)setMatchesTransform:(BOOL)a3
{
  v3 = a3;
  v4 = [(_UIPortalView *)self portalLayer];
  [v4 setMatchesTransform:v3];
}

- (void)setMatchesPosition:(BOOL)a3
{
  v3 = a3;
  v4 = [(_UIPortalView *)self portalLayer];
  [v4 setMatchesPosition:v3];
}

- (BOOL)allowsBackdropGroups
{
  v2 = [(_UIPortalView *)self portalLayer];
  v3 = [v2 allowsBackdropGroups];

  return v3;
}

- (void)setAllowsBackdropGroups:(BOOL)a3
{
  v3 = a3;
  v4 = [(_UIPortalView *)self portalLayer];
  [v4 setAllowsBackdropGroups:v3];
}

- (BOOL)allowsHitTesting
{
  v2 = [(_UIPortalView *)self portalLayer];
  v3 = [v2 allowsHitTesting];

  return v3;
}

- (void)setAllowsHitTesting:(BOOL)a3
{
  v3 = a3;
  v4 = [(_UIPortalView *)self portalLayer];
  [v4 setAllowsHitTesting:v3];
}

- (void)setSourceViewAlphaScale:(double)a3
{
  v3 = a3;
  v5 = [(_UIPortalView *)self portalLayer];
  *&v4 = v3;
  [v5 setSourceLayerOpacityScale:v4];
}

- (double)sourceViewAlphaScale
{
  v2 = [(_UIPortalView *)self portalLayer];
  [v2 sourceLayerOpacityScale];
  v4 = v3;

  return v4;
}

- (void)_setPrefersClientLayer:(BOOL)a3
{
  if (self->__prefersClientLayer != a3)
  {
    self->__prefersClientLayer = a3;
    [(_UIPortalView *)self _updateSourceLayer];
  }
}

- (void)setHidesSourceLayerInOtherPortals:(BOOL)a3
{
  if (self->_hidesSourceLayerInOtherPortals != a3)
  {
    self->_hidesSourceLayerInOtherPortals = a3;
    v4 = [(_UIPortalView *)self portalLayer];
    v5 = objc_opt_respondsToSelector();

    if (v5)
    {
      v6 = [(_UIPortalView *)self portalLayer];
      [v6 setHidesSourceLayerInOtherPortals:1];
    }
  }
}

- (void)_setAllowedInContextTransform:(BOOL)a3
{
  v3 = a3;
  v4 = [(_UIPortalView *)self portalLayer];
  [v4 setAllowedInContextTransform:v3];
}

- (BOOL)_allowedInContextTransform
{
  v2 = [(_UIPortalView *)self portalLayer];
  v3 = [v2 allowedInContextTransform];

  return v3;
}

- (CGPoint)_pointInSourceViewForPoint:(CGPoint)a3
{
  y = a3.y;
  x = a3.x;
  v6 = [(_UIPortalView *)self sourceView];
  if ([(_UIPortalView *)self matchesPosition]&& v6)
  {
    [v6 convertPoint:self fromView:{x, y}];
    x = v7;
    y = v8;
  }

  v9 = x;
  v10 = y;
  result.y = v10;
  result.x = v9;
  return result;
}

- (id)hitTest:(CGPoint)a3 withEvent:(id)a4
{
  y = a3.y;
  x = a3.x;
  v7 = a4;
  v12.receiver = self;
  v12.super_class = _UIPortalView;
  v8 = [(UIView *)&v12 hitTest:v7 withEvent:x, y];
  v9 = [(_UIPortalView *)self sourceView];
  if ([(_UIPortalView *)self forwardsClientHitTestingToSourceView]&& v9 && v8 == self)
  {
    [(_UIPortalView *)self _pointInSourceViewForPoint:x, y];
    v10 = [v9 hitTest:v7 withEvent:?];

    v8 = v10;
  }

  return v8;
}

- (BOOL)pointInside:(CGPoint)a3 withEvent:(id)a4
{
  y = a3.y;
  x = a3.x;
  v7 = a4;
  v11.receiver = self;
  v11.super_class = _UIPortalView;
  v8 = [(UIView *)&v11 pointInside:v7 withEvent:x, y];
  v9 = [(_UIPortalView *)self sourceView];
  if ([(_UIPortalView *)self forwardsClientHitTestingToSourceView]&& v9)
  {
    [(_UIPortalView *)self _pointInSourceViewForPoint:x, y];
    v8 = [v9 pointInside:v7 withEvent:?];
  }

  return v8;
}

- (NSString)description
{
  v12.receiver = self;
  v12.super_class = _UIPortalView;
  v3 = [(UIView *)&v12 description];
  v4 = [v3 mutableCopy];

  [v4 replaceCharactersInRange:objc_msgSend(v4 withString:{"length") - 1, 1, @"; "}];
  if (os_variant_has_internal_diagnostics())
  {
    v6 = [(_UIPortalView *)self name];

    if (v6)
    {
      v7 = MEMORY[0x1E696AEC0];
      v8 = [(_UIPortalView *)self name];
      v9 = [v7 stringWithFormat:@"name = %@ ", v8];;
      [v4 appendString:v9];
    }

    if ([(_UIPortalView *)self hidesSourceView])
    {
      [v4 appendString:@"hidesSourceView = YES; "];
    }

    if ([(_UIPortalView *)self matchesAlpha])
    {
      [v4 appendString:@"matchesAlpha = YES; "];
    }

    if ([(_UIPortalView *)self matchesPosition])
    {
      [v4 appendString:@"matchesPosition = YES; "];
    }

    if ([(_UIPortalView *)self matchesTransform])
    {
      [v4 appendString:@"matchesTransform = YES; "];
    }

    if ([(_UIPortalView *)self allowsBackdropGroups])
    {
      [v4 appendString:@"allowsBackdropGroups = YES; "];
    }

    if ([(_UIPortalView *)self allowsHitTesting])
    {
      [v4 appendString:@"allowsHitTesting = YES; "];
    }

    if ([(_UIPortalView *)self _isGeometryFrozen])
    {
      [v4 appendString:@"_geometryFrozen = YES; "];
    }

    v10 = [(_UIPortalView *)self sourceView];
    v11 = _UIBriefDescription(v10);
    [v4 appendFormat:@"sourceView = %@>", v11];
  }

  return v4;
}

- (void)setHidden:(BOOL)a3
{
  v3 = a3;
  if (![(_UIPortalView *)self _isGeometryFrozen])
  {
    v5.receiver = self;
    v5.super_class = _UIPortalView;
    [(UIView *)&v5 setHidden:v3];
  }
}

- (BOOL)_shouldAnimatePropertyWithKey:(id)a3
{
  v4 = a3;
  v8.receiver = self;
  v8.super_class = _UIPortalView;
  if ([(UIView *)&v8 _shouldAnimatePropertyWithKey:v4])
  {
    v5 = 1;
  }

  else
  {
    v6 = [(_UIPortalView *)self _additionalAnimatableKeyPaths];
    v5 = [v6 containsObject:v4];
  }

  return v5;
}

- (void)setFrame:(CGRect)a3
{
  height = a3.size.height;
  width = a3.size.width;
  y = a3.origin.y;
  x = a3.origin.x;
  if (![(_UIPortalView *)self _isGeometryFrozen])
  {
    v8.receiver = self;
    v8.super_class = _UIPortalView;
    [(UIView *)&v8 setFrame:x, y, width, height];
  }
}

- (void)setBounds:(CGRect)a3
{
  height = a3.size.height;
  width = a3.size.width;
  y = a3.origin.y;
  x = a3.origin.x;
  if (![(_UIPortalView *)self _isGeometryFrozen])
  {
    v8.receiver = self;
    v8.super_class = _UIPortalView;
    [(UIView *)&v8 setBounds:x, y, width, height];
  }
}

- (void)setCenter:(CGPoint)a3
{
  y = a3.y;
  x = a3.x;
  if (![(_UIPortalView *)self _isGeometryFrozen])
  {
    v6.receiver = self;
    v6.super_class = _UIPortalView;
    [(UIView *)&v6 setCenter:x, y];
  }
}

@end