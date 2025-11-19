@interface _UIReplicantView
- (_UIReplicantLayer)_layer;
- (_UIReplicantView)initWithFrame:(CGRect)a3;
- (_UIReplicantView)initWithSurface:(const _UIRenderingSurface *)a3;
- (id)initAsCopyOf:(id)a3;
@end

@implementation _UIReplicantView

- (_UIReplicantLayer)_layer
{
  v4.receiver = self;
  v4.super_class = _UIReplicantView;
  v2 = [(UIView *)&v4 layer];

  return v2;
}

- (_UIReplicantView)initWithFrame:(CGRect)a3
{
  v3 = *MEMORY[0x1E695EFF8];
  v4 = *(MEMORY[0x1E695EFF8] + 8);
  v6.receiver = self;
  v6.super_class = _UIReplicantView;
  return [(UIView *)&v6 initWithFrame:v3, v4, a3.size.width, a3.size.height];
}

- (_UIReplicantView)initWithSurface:(const _UIRenderingSurface *)a3
{
  v4 = [(_UIReplicantView *)self initWithFrame:a3->var0.origin.x, a3->var0.origin.y, a3->var0.size.width, a3->var0.size.height];
  if (v4)
  {
    v5 = _UIRenderingSurfaceRasterSize(a3);
    v7 = [[_UISlotId alloc] initWithSize:v5, v6];
    v8 = [(_UIReplicantView *)v4 _layer];
    [v8 _setSlotId:v7];

    [(UIView *)v4 setContentScaleFactor:a3->var1];
  }

  return v4;
}

- (id)initAsCopyOf:(id)a3
{
  v4 = a3;
  [v4 frame];
  v5 = [(_UIReplicantView *)self initWithFrame:?];
  if (v5)
  {
    v6 = [v4 _layer];
    v7 = [v6 _slotId];
    v8 = [(_UIReplicantView *)v5 _layer];
    [v8 _setSlotId:v7];

    [v4 contentScaleFactor];
    [(UIView *)v5 setContentScaleFactor:?];
    -[UIView setAccessibilityIgnoresInvertColors:](v5, "setAccessibilityIgnoresInvertColors:", [v4 accessibilityIgnoresInvertColors]);
  }

  return v5;
}

@end