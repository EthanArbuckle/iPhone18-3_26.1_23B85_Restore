@interface _UIPortalView
- (BOOL)_allowedInContextTransform;
- (BOOL)_shouldAnimatePropertyWithKey:(id)key;
- (BOOL)allowsBackdropGroups;
- (BOOL)allowsHitTesting;
- (BOOL)hidesSourceView;
- (BOOL)matchesAlpha;
- (BOOL)matchesPosition;
- (BOOL)matchesTransform;
- (BOOL)pointInside:(CGPoint)inside withEvent:(id)event;
- (CGPoint)_pointInSourceViewForPoint:(CGPoint)point;
- (NSString)description;
- (UIView)sourceView;
- (_UIPortalView)initWithFrame:(CGRect)frame;
- (_UIPortalView)initWithSourceView:(id)view;
- (double)sourceViewAlphaScale;
- (id)hitTest:(CGPoint)test withEvent:(id)event;
- (void)_setAllowedInContextTransform:(BOOL)transform;
- (void)_setPrefersClientLayer:(BOOL)layer;
- (void)_updateSourceLayer;
- (void)setAllowsBackdropGroups:(BOOL)groups;
- (void)setAllowsHitTesting:(BOOL)testing;
- (void)setBounds:(CGRect)bounds;
- (void)setCenter:(CGPoint)center;
- (void)setFrame:(CGRect)frame;
- (void)setHidden:(BOOL)hidden;
- (void)setHidesSourceLayerInOtherPortals:(BOOL)portals;
- (void)setHidesSourceView:(BOOL)view;
- (void)setMatchesAlpha:(BOOL)alpha;
- (void)setMatchesPosition:(BOOL)position;
- (void)setMatchesTransform:(BOOL)transform;
- (void)setName:(id)name;
- (void)setSourceView:(id)view;
- (void)setSourceViewAlphaScale:(double)scale;
@end

@implementation _UIPortalView

- (void)_updateSourceLayer
{
  _prefersClientLayer = [(_UIPortalView *)self _prefersClientLayer];
  sourceView = [(_UIPortalView *)self sourceView];
  v7 = sourceView;
  if (_prefersClientLayer)
  {
    [(UIView *)sourceView _backing_clientLayer];
  }

  else
  {
    [(UIView *)sourceView _backing_outermostLayer];
  }
  v5 = ;
  portalLayer = [(_UIPortalView *)self portalLayer];
  [portalLayer setSourceLayer:v5];
}

- (UIView)sourceView
{
  WeakRetained = objc_loadWeakRetained(&self->_sourceView);

  return WeakRetained;
}

- (BOOL)matchesPosition
{
  portalLayer = [(_UIPortalView *)self portalLayer];
  matchesPosition = [portalLayer matchesPosition];

  return matchesPosition;
}

- (_UIPortalView)initWithSourceView:(id)view
{
  viewCopy = view;
  [viewCopy bounds];
  v5 = [(_UIPortalView *)self initWithFrame:0.0, 0.0];
  v6 = v5;
  if (v5)
  {
    [(_UIPortalView *)v5 setSourceView:viewCopy];
  }

  return v6;
}

- (_UIPortalView)initWithFrame:(CGRect)frame
{
  v6.receiver = self;
  v6.super_class = _UIPortalView;
  v3 = [(UIView *)&v6 initWithFrame:frame.origin.x, frame.origin.y, frame.size.width, frame.size.height];
  v4 = v3;
  if (v3)
  {
    [(_UIPortalView *)v3 setAllowsHitTesting:0];
  }

  return v4;
}

- (void)setName:(id)name
{
  nameCopy = name;
  if (![(NSString *)self->_name isEqualToString:?])
  {
    v4 = [nameCopy copy];
    name = self->_name;
    self->_name = v4;

    if (os_variant_has_internal_diagnostics())
    {
      layer = [(UIView *)self layer];
      [layer setName:nameCopy];
    }
  }
}

- (void)setSourceView:(id)view
{
  obj = view;
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
  portalLayer = [(_UIPortalView *)self portalLayer];
  hidesSourceLayer = [portalLayer hidesSourceLayer];

  return hidesSourceLayer;
}

- (void)setHidesSourceView:(BOOL)view
{
  viewCopy = view;
  portalLayer = [(_UIPortalView *)self portalLayer];
  [portalLayer setHidesSourceLayer:viewCopy];
}

- (BOOL)matchesAlpha
{
  portalLayer = [(_UIPortalView *)self portalLayer];
  matchesOpacity = [portalLayer matchesOpacity];

  return matchesOpacity;
}

- (void)setMatchesAlpha:(BOOL)alpha
{
  alphaCopy = alpha;
  portalLayer = [(_UIPortalView *)self portalLayer];
  [portalLayer setMatchesOpacity:alphaCopy];
}

- (BOOL)matchesTransform
{
  portalLayer = [(_UIPortalView *)self portalLayer];
  matchesTransform = [portalLayer matchesTransform];

  return matchesTransform;
}

- (void)setMatchesTransform:(BOOL)transform
{
  transformCopy = transform;
  portalLayer = [(_UIPortalView *)self portalLayer];
  [portalLayer setMatchesTransform:transformCopy];
}

- (void)setMatchesPosition:(BOOL)position
{
  positionCopy = position;
  portalLayer = [(_UIPortalView *)self portalLayer];
  [portalLayer setMatchesPosition:positionCopy];
}

- (BOOL)allowsBackdropGroups
{
  portalLayer = [(_UIPortalView *)self portalLayer];
  allowsBackdropGroups = [portalLayer allowsBackdropGroups];

  return allowsBackdropGroups;
}

- (void)setAllowsBackdropGroups:(BOOL)groups
{
  groupsCopy = groups;
  portalLayer = [(_UIPortalView *)self portalLayer];
  [portalLayer setAllowsBackdropGroups:groupsCopy];
}

- (BOOL)allowsHitTesting
{
  portalLayer = [(_UIPortalView *)self portalLayer];
  allowsHitTesting = [portalLayer allowsHitTesting];

  return allowsHitTesting;
}

- (void)setAllowsHitTesting:(BOOL)testing
{
  testingCopy = testing;
  portalLayer = [(_UIPortalView *)self portalLayer];
  [portalLayer setAllowsHitTesting:testingCopy];
}

- (void)setSourceViewAlphaScale:(double)scale
{
  scaleCopy = scale;
  portalLayer = [(_UIPortalView *)self portalLayer];
  *&v4 = scaleCopy;
  [portalLayer setSourceLayerOpacityScale:v4];
}

- (double)sourceViewAlphaScale
{
  portalLayer = [(_UIPortalView *)self portalLayer];
  [portalLayer sourceLayerOpacityScale];
  v4 = v3;

  return v4;
}

- (void)_setPrefersClientLayer:(BOOL)layer
{
  if (self->__prefersClientLayer != layer)
  {
    self->__prefersClientLayer = layer;
    [(_UIPortalView *)self _updateSourceLayer];
  }
}

- (void)setHidesSourceLayerInOtherPortals:(BOOL)portals
{
  if (self->_hidesSourceLayerInOtherPortals != portals)
  {
    self->_hidesSourceLayerInOtherPortals = portals;
    portalLayer = [(_UIPortalView *)self portalLayer];
    v5 = objc_opt_respondsToSelector();

    if (v5)
    {
      portalLayer2 = [(_UIPortalView *)self portalLayer];
      [portalLayer2 setHidesSourceLayerInOtherPortals:1];
    }
  }
}

- (void)_setAllowedInContextTransform:(BOOL)transform
{
  transformCopy = transform;
  portalLayer = [(_UIPortalView *)self portalLayer];
  [portalLayer setAllowedInContextTransform:transformCopy];
}

- (BOOL)_allowedInContextTransform
{
  portalLayer = [(_UIPortalView *)self portalLayer];
  allowedInContextTransform = [portalLayer allowedInContextTransform];

  return allowedInContextTransform;
}

- (CGPoint)_pointInSourceViewForPoint:(CGPoint)point
{
  y = point.y;
  x = point.x;
  sourceView = [(_UIPortalView *)self sourceView];
  if ([(_UIPortalView *)self matchesPosition]&& sourceView)
  {
    [sourceView convertPoint:self fromView:{x, y}];
    x = v7;
    y = v8;
  }

  v9 = x;
  v10 = y;
  result.y = v10;
  result.x = v9;
  return result;
}

- (id)hitTest:(CGPoint)test withEvent:(id)event
{
  y = test.y;
  x = test.x;
  eventCopy = event;
  v12.receiver = self;
  v12.super_class = _UIPortalView;
  v8 = [(UIView *)&v12 hitTest:eventCopy withEvent:x, y];
  sourceView = [(_UIPortalView *)self sourceView];
  if ([(_UIPortalView *)self forwardsClientHitTestingToSourceView]&& sourceView && v8 == self)
  {
    [(_UIPortalView *)self _pointInSourceViewForPoint:x, y];
    v10 = [sourceView hitTest:eventCopy withEvent:?];

    v8 = v10;
  }

  return v8;
}

- (BOOL)pointInside:(CGPoint)inside withEvent:(id)event
{
  y = inside.y;
  x = inside.x;
  eventCopy = event;
  v11.receiver = self;
  v11.super_class = _UIPortalView;
  v8 = [(UIView *)&v11 pointInside:eventCopy withEvent:x, y];
  sourceView = [(_UIPortalView *)self sourceView];
  if ([(_UIPortalView *)self forwardsClientHitTestingToSourceView]&& sourceView)
  {
    [(_UIPortalView *)self _pointInSourceViewForPoint:x, y];
    v8 = [sourceView pointInside:eventCopy withEvent:?];
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
    name = [(_UIPortalView *)self name];

    if (name)
    {
      v7 = MEMORY[0x1E696AEC0];
      name2 = [(_UIPortalView *)self name];
      v9 = [v7 stringWithFormat:@"name = %@ ", name2];;
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

    sourceView = [(_UIPortalView *)self sourceView];
    v11 = _UIBriefDescription(sourceView);
    [v4 appendFormat:@"sourceView = %@>", v11];
  }

  return v4;
}

- (void)setHidden:(BOOL)hidden
{
  hiddenCopy = hidden;
  if (![(_UIPortalView *)self _isGeometryFrozen])
  {
    v5.receiver = self;
    v5.super_class = _UIPortalView;
    [(UIView *)&v5 setHidden:hiddenCopy];
  }
}

- (BOOL)_shouldAnimatePropertyWithKey:(id)key
{
  keyCopy = key;
  v8.receiver = self;
  v8.super_class = _UIPortalView;
  if ([(UIView *)&v8 _shouldAnimatePropertyWithKey:keyCopy])
  {
    v5 = 1;
  }

  else
  {
    _additionalAnimatableKeyPaths = [(_UIPortalView *)self _additionalAnimatableKeyPaths];
    v5 = [_additionalAnimatableKeyPaths containsObject:keyCopy];
  }

  return v5;
}

- (void)setFrame:(CGRect)frame
{
  height = frame.size.height;
  width = frame.size.width;
  y = frame.origin.y;
  x = frame.origin.x;
  if (![(_UIPortalView *)self _isGeometryFrozen])
  {
    v8.receiver = self;
    v8.super_class = _UIPortalView;
    [(UIView *)&v8 setFrame:x, y, width, height];
  }
}

- (void)setBounds:(CGRect)bounds
{
  height = bounds.size.height;
  width = bounds.size.width;
  y = bounds.origin.y;
  x = bounds.origin.x;
  if (![(_UIPortalView *)self _isGeometryFrozen])
  {
    v8.receiver = self;
    v8.super_class = _UIPortalView;
    [(UIView *)&v8 setBounds:x, y, width, height];
  }
}

- (void)setCenter:(CGPoint)center
{
  y = center.y;
  x = center.x;
  if (![(_UIPortalView *)self _isGeometryFrozen])
  {
    v6.receiver = self;
    v6.super_class = _UIPortalView;
    [(UIView *)&v6 setCenter:x, y];
  }
}

@end