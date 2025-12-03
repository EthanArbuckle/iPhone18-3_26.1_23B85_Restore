@interface _UIReplicantView
- (_UIReplicantLayer)_layer;
- (_UIReplicantView)initWithFrame:(CGRect)frame;
- (_UIReplicantView)initWithSurface:(const _UIRenderingSurface *)surface;
- (id)initAsCopyOf:(id)of;
@end

@implementation _UIReplicantView

- (_UIReplicantLayer)_layer
{
  v4.receiver = self;
  v4.super_class = _UIReplicantView;
  layer = [(UIView *)&v4 layer];

  return layer;
}

- (_UIReplicantView)initWithFrame:(CGRect)frame
{
  v3 = *MEMORY[0x1E695EFF8];
  v4 = *(MEMORY[0x1E695EFF8] + 8);
  v6.receiver = self;
  v6.super_class = _UIReplicantView;
  return [(UIView *)&v6 initWithFrame:v3, v4, frame.size.width, frame.size.height];
}

- (_UIReplicantView)initWithSurface:(const _UIRenderingSurface *)surface
{
  v4 = [(_UIReplicantView *)self initWithFrame:surface->var0.origin.x, surface->var0.origin.y, surface->var0.size.width, surface->var0.size.height];
  if (v4)
  {
    v5 = _UIRenderingSurfaceRasterSize(surface);
    v7 = [[_UISlotId alloc] initWithSize:v5, v6];
    _layer = [(_UIReplicantView *)v4 _layer];
    [_layer _setSlotId:v7];

    [(UIView *)v4 setContentScaleFactor:surface->var1];
  }

  return v4;
}

- (id)initAsCopyOf:(id)of
{
  ofCopy = of;
  [ofCopy frame];
  v5 = [(_UIReplicantView *)self initWithFrame:?];
  if (v5)
  {
    _layer = [ofCopy _layer];
    _slotId = [_layer _slotId];
    _layer2 = [(_UIReplicantView *)v5 _layer];
    [_layer2 _setSlotId:_slotId];

    [ofCopy contentScaleFactor];
    [(UIView *)v5 setContentScaleFactor:?];
    -[UIView setAccessibilityIgnoresInvertColors:](v5, "setAccessibilityIgnoresInvertColors:", [ofCopy accessibilityIgnoresInvertColors]);
  }

  return v5;
}

@end