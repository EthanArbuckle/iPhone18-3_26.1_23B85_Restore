@interface _UIBarBackgroundLayout
- (_UIBarBackgroundLayout)initWithLayout:(id)a3;
- (id)copyWithZone:(_NSZone *)a3;
- (id)description;
- (void)describeInto:(id)a3;
- (void)setBackgroundAlpha:(double)a3;
- (void)setShadowAlpha:(double)a3;
@end

@implementation _UIBarBackgroundLayout

- (_UIBarBackgroundLayout)initWithLayout:(id)a3
{
  v4 = a3;
  v13.receiver = self;
  v13.super_class = _UIBarBackgroundLayout;
  v5 = [(_UIBarBackgroundLayout *)&v13 init];
  v6 = v5;
  if (v5)
  {
    if (v4)
    {
      *(v5 + 1) = v4[1];
      *(v5 + 2) = v4[2];
      *(v5 + 3) = v4[3];
      *(v5 + 4) = v4[4];
      *(v5 + 5) = v4[5];
      *(v5 + 6) = v4[6];
      *(v5 + 7) = v4[7];
      v5[64] = *(v4 + 64);
      v5[65] = *(v4 + 65);
      v5[66] = *(v4 + 66);
    }

    else
    {
      __asm { FMOV            V0.2D, #1.0 }

      *(v5 + 8) = _Q0;
    }
  }

  return v6;
}

- (id)copyWithZone:(_NSZone *)a3
{
  v4 = objc_alloc(objc_opt_class());

  return [v4 initWithLayout:self];
}

- (void)setBackgroundAlpha:(double)a3
{
  v3 = fmax(fmin(a3, 1.0), 0.0);
  if (v3 != self->_backgroundAlpha)
  {
    self->_backgroundAlpha = v3;
  }
}

- (void)setShadowAlpha:(double)a3
{
  v3 = fmax(fmin(a3, 1.0), 0.0);
  if (v3 != self->_shadowAlpha)
  {
    self->_shadowAlpha = v3;
  }
}

- (void)describeInto:(id)a3
{
  v4 = a3;
  [v4 appendFormat:@" idiom=%li style=%li backgroundAlpha=%f shadowAlpha=%f", self->_interfaceIdiom, self->_interfaceStyle, *&self->_backgroundAlpha, *&self->_shadowAlpha];
  if (self->_shadowHidden)
  {
    [v4 appendString:@" shadowHidden"];
  }

  if (self->_useExplicitGeometry)
  {
    [v4 appendFormat:@" height1=%f height2=%f", *&self->_backgroundHeight1, *&self->_backgroundHeight2];
  }

  else
  {
    [v4 appendString:@" fullHeight"];
  }

  [v4 appendFormat:@" transitionProgress=%f", *&self->_backgroundTransitionProgress];
}

- (id)description
{
  v6.receiver = self;
  v6.super_class = _UIBarBackgroundLayout;
  v3 = [(_UIBarBackgroundLayout *)&v6 description];
  v4 = [v3 mutableCopy];

  [(_UIBarBackgroundLayout *)self describeInto:v4];

  return v4;
}

@end