@interface _UIDragPreviewShadowProperties
- (CGAffineTransform)liftedTransform;
- (_UIDragPreviewShadowProperties)init;
- (_UIDragPreviewShadowProperties)initWithCoder:(id)a3;
- (id)copyWithZone:(_NSZone *)a3;
- (void)encodeWithCoder:(id)a3;
- (void)setLiftedTransform:(CGAffineTransform *)a3;
@end

@implementation _UIDragPreviewShadowProperties

- (_UIDragPreviewShadowProperties)init
{
  v5.receiver = self;
  v5.super_class = _UIDragPreviewShadowProperties;
  result = [(_UIDragPreviewShadowProperties *)&v5 init];
  if (result)
  {
    result->_shadowType = 0;
    v3 = *MEMORY[0x1E695EFD0];
    v4 = *(MEMORY[0x1E695EFD0] + 32);
    *&result->_liftedTransform.c = *(MEMORY[0x1E695EFD0] + 16);
    *&result->_liftedTransform.tx = v4;
    *&result->_liftedAlpha = xmmword_18A6827F0;
    *&result->_liftedTransform.a = v3;
  }

  return result;
}

- (_UIDragPreviewShadowProperties)initWithCoder:(id)a3
{
  v4 = a3;
  v12.receiver = self;
  v12.super_class = _UIDragPreviewShadowProperties;
  v5 = [(_UIDragPreviewShadowProperties *)&v12 init];
  if (v5)
  {
    v5->_shadowType = [v4 decodeIntegerForKey:@"shadowType"];
    if (v4)
    {
      [v4 decodeCGAffineTransformForKey:@"liftedTransform"];
    }

    else
    {
      v10 = 0u;
      v11 = 0u;
      v9 = 0u;
    }

    *&v5->_liftedTransform.a = v9;
    *&v5->_liftedTransform.c = v10;
    *&v5->_liftedTransform.tx = v11;
    [v4 decodeDoubleForKey:{@"liftedAlpha", v9, v10, v11}];
    v5->_liftedAlpha = v6;
    [v4 decodeDoubleForKey:@"radiosityBlurRadius"];
    v5->_radiosityBlurRadius = v7;
  }

  return v5;
}

- (void)encodeWithCoder:(id)a3
{
  shadowType = self->_shadowType;
  v5 = a3;
  [v5 encodeInteger:shadowType forKey:@"shadowType"];
  v6 = *&self->_liftedTransform.c;
  v7[0] = *&self->_liftedTransform.a;
  v7[1] = v6;
  v7[2] = *&self->_liftedTransform.tx;
  [v5 encodeCGAffineTransform:v7 forKey:@"liftedTransform"];
  [v5 encodeDouble:@"liftedAlpha" forKey:self->_liftedAlpha];
  [v5 encodeDouble:@"radiosityBlurRadius" forKey:self->_radiosityBlurRadius];
}

- (id)copyWithZone:(_NSZone *)a3
{
  v4 = objc_alloc_init(_UIDragPreviewShadowProperties);
  [(_UIDragPreviewShadowProperties *)v4 setShadowType:[(_UIDragPreviewShadowProperties *)self shadowType]];
  [(_UIDragPreviewShadowProperties *)self liftedTransform];
  v6[0] = v6[3];
  v6[1] = v6[4];
  v6[2] = v6[5];
  [(_UIDragPreviewShadowProperties *)v4 setLiftedTransform:v6];
  [(_UIDragPreviewShadowProperties *)self liftedAlpha];
  [(_UIDragPreviewShadowProperties *)v4 setLiftedAlpha:?];
  [(_UIDragPreviewShadowProperties *)self radiosityBlurRadius];
  [(_UIDragPreviewShadowProperties *)v4 setRadiosityBlurRadius:?];
  return v4;
}

- (CGAffineTransform)liftedTransform
{
  v3 = *&self[1].a;
  *&retstr->a = *&self->tx;
  *&retstr->c = v3;
  *&retstr->tx = *&self[1].c;
  return self;
}

- (void)setLiftedTransform:(CGAffineTransform *)a3
{
  v3 = *&a3->a;
  v4 = *&a3->tx;
  *&self->_liftedTransform.c = *&a3->c;
  *&self->_liftedTransform.tx = v4;
  *&self->_liftedTransform.a = v3;
}

@end