@interface _UIZoomEffectViewEntry
- (id)description;
- (void)applyIdentityEffectToView:(id)a3;
- (void)applyRequestedEffectToView:(id)a3;
- (void)removeEffectFromView:(id)a3;
@end

@implementation _UIZoomEffectViewEntry

- (void)applyRequestedEffectToView:(id)a3
{
  zoomAmount = self->_zoomAmount;
  v4 = [a3 layer];
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  v6 = v5;

  [v6 setZoom:zoomAmount];
}

- (void)applyIdentityEffectToView:(id)a3
{
  v3 = [a3 layer];
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v4 = v3;
  }

  else
  {
    v4 = 0;
  }

  v5 = v4;

  [v5 setZoom:0.0];
}

- (void)removeEffectFromView:(id)a3
{
  v3 = [a3 layer];
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v4 = v3;
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