@interface _UIBarBackgroundLayoutModern
- (_UIBarBackgroundLayoutModern)initWithLayout:(id)a3;
- (double)bg1Alpha;
- (double)bg1ShadowAlpha;
- (double)bg2ShadowAlpha;
- (id)bg1ShadowColor;
- (id)bg1ShadowTint;
- (id)bg2ShadowColor;
- (id)bg2ShadowTint;
- (void)describeInto:(id)a3;
- (void)setBackgroundData1:(id)a3;
- (void)setBackgroundData2:(id)a3;
@end

@implementation _UIBarBackgroundLayoutModern

- (id)bg1ShadowTint
{
  if (self->_backgroundsAreSame || self->super._useExplicitGeometry)
  {
    v3 = [(_UIBarBackgroundAppearanceData *)self->_backgroundData1 shadowViewTintColor];
  }

  else
  {
    if (![(_UIBarBackgroundAppearanceData *)self->_backgroundData2 hasShadow])
    {
      v6 = [(_UIBarBackgroundAppearanceData *)self->_backgroundData1 shadowViewTintColor];
      v7 = [(_UIBarBackgroundAppearanceData *)self->_backgroundData2 shadowViewTintColor];
      v8 = _interpolateColors(v6, v7, self->super._backgroundTransitionProgress);
      v9 = v8;
      if (v8)
      {
        v10 = v8;
      }

      else
      {
        v10 = +[UIColor clearColor];
      }

      v4 = v10;

      goto LABEL_5;
    }

    v3 = +[UIColor clearColor];
  }

  v4 = v3;
LABEL_5:

  return v4;
}

- (double)bg1Alpha
{
  v2 = 1.0;
  if (!self->_backgroundsAreSame && ![(_UIBarBackgroundAppearanceData *)self->_backgroundData2 hasBackground])
  {
    return 1.0 - self->super._backgroundTransitionProgress;
  }

  return v2;
}

- (id)bg1ShadowColor
{
  if (self->_backgroundsAreSame || self->super._useExplicitGeometry || self->super._backgroundTransitionProgress <= 0.0)
  {
    v3 = [(_UIBarBackgroundAppearanceData *)self->_backgroundData1 shadowViewBackgroundColor];
  }

  else if ([(_UIBarBackgroundAppearanceData *)self->_backgroundData2 hasShadow])
  {
    v3 = 0;
  }

  else
  {
    v5 = [(_UIBarBackgroundAppearanceData *)self->_backgroundData1 shadowViewBackgroundColor];
    v6 = [(_UIBarBackgroundAppearanceData *)self->_backgroundData2 shadowViewBackgroundColor];
    v3 = _interpolateColors(v5, v6, self->super._backgroundTransitionProgress);
  }

  return v3;
}

- (double)bg1ShadowAlpha
{
  if (self->_backgroundsAreSame || !self->super._useExplicitGeometry)
  {
    return self->super._shadowAlpha;
  }

  else
  {
    return self->super._shadowAlpha * (1.0 - self->super._backgroundTransitionProgress);
  }
}

- (id)bg2ShadowColor
{
  if (self->super._useExplicitGeometry || self->super._backgroundTransitionProgress >= 1.0)
  {
    v5 = [(_UIBarBackgroundAppearanceData *)self->_backgroundData2 shadowViewBackgroundColor];
  }

  else
  {
    v3 = [(_UIBarBackgroundAppearanceData *)self->_backgroundData1 shadowViewBackgroundColor];
    v4 = [(_UIBarBackgroundAppearanceData *)self->_backgroundData2 shadowViewBackgroundColor];
    v5 = _interpolateColors(v3, v4, self->super._backgroundTransitionProgress);
  }

  return v5;
}

- (id)bg2ShadowTint
{
  if (self->super._useExplicitGeometry)
  {
    v3 = [(_UIBarBackgroundAppearanceData *)self->_backgroundData2 shadowViewTintColor];
  }

  else
  {
    v4 = [(_UIBarBackgroundAppearanceData *)self->_backgroundData1 shadowViewTintColor];
    v5 = [(_UIBarBackgroundAppearanceData *)self->_backgroundData2 shadowViewTintColor];
    v3 = _interpolateColors(v4, v5, self->super._backgroundTransitionProgress);
  }

  return v3;
}

- (double)bg2ShadowAlpha
{
  result = self->super._shadowAlpha;
  if (self->super._useExplicitGeometry)
  {
    return result * self->super._backgroundTransitionProgress;
  }

  return result;
}

- (_UIBarBackgroundLayoutModern)initWithLayout:(id)a3
{
  v4 = a3;
  v8.receiver = self;
  v8.super_class = _UIBarBackgroundLayoutModern;
  v5 = [(_UIBarBackgroundLayout *)&v8 initWithLayout:v4];
  if (v5 && [v4 isMemberOfClass:objc_opt_class()])
  {
    objc_storeStrong(&v5->_backgroundData1, v4[12]);
    v6 = v4;
    objc_storeStrong(&v5->_backgroundData2, v6[13]);
  }

  return v5;
}

- (void)setBackgroundData1:(id)a3
{
  v11 = a3;
  objc_storeStrong(&self->_backgroundData1, a3);
  backgroundData2 = self->_backgroundData2;
  v6 = self->_backgroundData1;
  v7 = backgroundData2;
  v8 = v7;
  if (v6 == v7)
  {
    v10 = 1;
  }

  else
  {
    if (v6)
    {
      v9 = v7 == 0;
    }

    else
    {
      v9 = 1;
    }

    if (v9)
    {
      v10 = 0;
    }

    else
    {
      v10 = [(_UIBarAppearanceData *)v6 isEqual:v7];
    }
  }

  self->_backgroundsAreSame = v10;
}

- (void)setBackgroundData2:(id)a3
{
  v11 = a3;
  objc_storeStrong(&self->_backgroundData2, a3);
  backgroundData2 = self->_backgroundData2;
  v6 = self->_backgroundData1;
  v7 = backgroundData2;
  v8 = v7;
  if (v6 == v7)
  {
    v10 = 1;
  }

  else
  {
    if (v6)
    {
      v9 = v7 == 0;
    }

    else
    {
      v9 = 1;
    }

    if (v9)
    {
      v10 = 0;
    }

    else
    {
      v10 = [(_UIBarAppearanceData *)v6 isEqual:v7];
    }
  }

  self->_backgroundsAreSame = v10;
}

- (void)describeInto:(id)a3
{
  v4 = a3;
  v5.receiver = self;
  v5.super_class = _UIBarBackgroundLayoutModern;
  [(_UIBarBackgroundLayout *)&v5 describeInto:v4];
  if (self->_backgroundData1)
  {
    [v4 appendFormat:@" background1=%@", self->_backgroundData1];
    if (self->_backgroundData2)
    {
      [v4 appendFormat:@" background2=%@", self->_backgroundData2];
    }
  }
}

@end