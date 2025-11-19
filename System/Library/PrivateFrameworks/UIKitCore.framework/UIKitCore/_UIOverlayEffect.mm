@interface _UIOverlayEffect
- (_UIOverlayEffect)init;
- (_UIOverlayEffect)initWithCoder:(id)a3;
- (void)_updateEffectDescriptor:(id)a3 forEnvironment:(id)a4 usage:(int64_t)a5;
- (void)encodeWithCoder:(id)a3;
@end

@implementation _UIOverlayEffect

- (_UIOverlayEffect)init
{
  v3.receiver = self;
  v3.super_class = _UIOverlayEffect;
  result = [(_UIOverlayEffect *)&v3 init];
  if (result)
  {
    result->_alpha = 1.0;
  }

  return result;
}

- (_UIOverlayEffect)initWithCoder:(id)a3
{
  v4.receiver = self;
  v4.super_class = _UIOverlayEffect;
  return [(UIVisualEffect *)&v4 initWithCoder:a3];
}

- (void)encodeWithCoder:(id)a3
{
  v3.receiver = self;
  v3.super_class = _UIOverlayEffect;
  [(UIVisualEffect *)&v3 encodeWithCoder:a3];
}

- (void)_updateEffectDescriptor:(id)a3 forEnvironment:(id)a4 usage:(int64_t)a5
{
  v10 = a3;
  v7 = a4;
  if (self->_image)
  {
    v8 = [_UIOverlayEffectViewEntry newEntryWithFilterType:self->_filterType image:self->_alpha alpha:?];
  }

  else
  {
    if (!self->_color)
    {
      goto LABEL_7;
    }

    v8 = [_UIOverlayEffectViewEntry newEntryWithFilterType:self->_filterType color:self->_alpha alpha:?];
  }

  v9 = v8;
  if (v8)
  {
    [v10 addOverlay:v8];
  }

LABEL_7:
}

@end