@interface _UIZoomEffectViewEntry
- (id)description;
- (void)applyIdentityEffectToView:(id)view;
- (void)applyRequestedEffectToView:(id)view;
- (void)removeEffectFromView:(id)view;
@end

@implementation _UIZoomEffectViewEntry

- (void)applyRequestedEffectToView:(id)view
{
  zoomAmount = self->_zoomAmount;
  layer = [view layer];
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v5 = layer;
  }

  else
  {
    v5 = 0;
  }

  v6 = v5;

  [v6 setZoom:zoomAmount];
}

- (void)applyIdentityEffectToView:(id)view
{
  layer = [view layer];
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v4 = layer;
  }

  else
  {
    v4 = 0;
  }

  v5 = v4;

  [v5 setZoom:0.0];
}

- (void)removeEffectFromView:(id)view
{
  layer = [view layer];
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v4 = layer;
  }

  else
  {
    v4 = 0;
  }

  v5 = v4;

  [v5 setZoom:0.0];
}

- (id)description
{
  v6.receiver = self;
  v6.super_class = _UIZoomEffectViewEntry;
  v3 = [(_UIVisualEffectViewEntry *)&v6 description];
  v4 = [v3 stringByAppendingFormat:@" zoomAmount=%f", *&self->_zoomAmount];

  return v4;
}

@end