@interface _UIBarBackgroundLayout
- (_UIBarBackgroundLayout)initWithLayout:(id)layout;
- (id)copyWithZone:(_NSZone *)zone;
- (id)description;
- (void)describeInto:(id)into;
- (void)setBackgroundAlpha:(double)alpha;
- (void)setShadowAlpha:(double)alpha;
@end

@implementation _UIBarBackgroundLayout

- (_UIBarBackgroundLayout)initWithLayout:(id)layout
{
  layoutCopy = layout;
  v13.receiver = self;
  v13.super_class = _UIBarBackgroundLayout;
  v5 = [(_UIBarBackgroundLayout *)&v13 init];
  v6 = v5;
  if (v5)
  {
    if (layoutCopy)
    {
      *(v5 + 1) = layoutCopy[1];
      *(v5 + 2) = layoutCopy[2];
      *(v5 + 3) = layoutCopy[3];
      *(v5 + 4) = layoutCopy[4];
      *(v5 + 5) = layoutCopy[5];
      *(v5 + 6) = layoutCopy[6];
      *(v5 + 7) = layoutCopy[7];
      v5[64] = *(layoutCopy + 64);
      v5[65] = *(layoutCopy + 65);
      v5[66] = *(layoutCopy + 66);
    }

    else
    {
      __asm { FMOV            V0.2D, #1.0 }

      *(v5 + 8) = _Q0;
    }
  }

  return v6;
}

- (id)copyWithZone:(_NSZone *)zone
{
  v4 = objc_alloc(objc_opt_class());

  return [v4 initWithLayout:self];
}

- (void)setBackgroundAlpha:(double)alpha
{
  v3 = fmax(fmin(alpha, 1.0), 0.0);
  if (v3 != self->_backgroundAlpha)
  {
    self->_backgroundAlpha = v3;
  }
}

- (void)setShadowAlpha:(double)alpha
{
  v3 = fmax(fmin(alpha, 1.0), 0.0);
  if (v3 != self->_shadowAlpha)
  {
    self->_shadowAlpha = v3;
  }
}

- (void)describeInto:(id)into
{
  intoCopy = into;
  [intoCopy appendFormat:@" idiom=%li style=%li backgroundAlpha=%f shadowAlpha=%f", self->_interfaceIdiom, self->_interfaceStyle, *&self->_backgroundAlpha, *&self->_shadowAlpha];
  if (self->_shadowHidden)
  {
    [intoCopy appendString:@" shadowHidden"];
  }

  if (self->_useExplicitGeometry)
  {
    [intoCopy appendFormat:@" height1=%f height2=%f", *&self->_backgroundHeight1, *&self->_backgroundHeight2];
  }

  else
  {
    [intoCopy appendString:@" fullHeight"];
  }

  [intoCopy appendFormat:@" transitionProgress=%f", *&self->_backgroundTransitionProgress];
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