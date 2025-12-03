@interface _UIOverlayEffect
- (_UIOverlayEffect)init;
- (_UIOverlayEffect)initWithCoder:(id)coder;
- (void)_updateEffectDescriptor:(id)descriptor forEnvironment:(id)environment usage:(int64_t)usage;
- (void)encodeWithCoder:(id)coder;
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

- (_UIOverlayEffect)initWithCoder:(id)coder
{
  v4.receiver = self;
  v4.super_class = _UIOverlayEffect;
  return [(UIVisualEffect *)&v4 initWithCoder:coder];
}

- (void)encodeWithCoder:(id)coder
{
  v3.receiver = self;
  v3.super_class = _UIOverlayEffect;
  [(UIVisualEffect *)&v3 encodeWithCoder:coder];
}

- (void)_updateEffectDescriptor:(id)descriptor forEnvironment:(id)environment usage:(int64_t)usage
{
  descriptorCopy = descriptor;
  environmentCopy = environment;
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
    [descriptorCopy addOverlay:v8];
  }

LABEL_7:
}

@end