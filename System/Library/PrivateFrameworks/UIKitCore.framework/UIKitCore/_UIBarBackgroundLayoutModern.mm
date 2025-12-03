@interface _UIBarBackgroundLayoutModern
- (_UIBarBackgroundLayoutModern)initWithLayout:(id)layout;
- (double)bg1Alpha;
- (double)bg1ShadowAlpha;
- (double)bg2ShadowAlpha;
- (id)bg1ShadowColor;
- (id)bg1ShadowTint;
- (id)bg2ShadowColor;
- (id)bg2ShadowTint;
- (void)describeInto:(id)into;
- (void)setBackgroundData1:(id)data1;
- (void)setBackgroundData2:(id)data2;
@end

@implementation _UIBarBackgroundLayoutModern

- (id)bg1ShadowTint
{
  if (self->_backgroundsAreSame || self->super._useExplicitGeometry)
  {
    shadowViewTintColor = [(_UIBarBackgroundAppearanceData *)self->_backgroundData1 shadowViewTintColor];
  }

  else
  {
    if (![(_UIBarBackgroundAppearanceData *)self->_backgroundData2 hasShadow])
    {
      shadowViewTintColor2 = [(_UIBarBackgroundAppearanceData *)self->_backgroundData1 shadowViewTintColor];
      shadowViewTintColor3 = [(_UIBarBackgroundAppearanceData *)self->_backgroundData2 shadowViewTintColor];
      v8 = _interpolateColors(shadowViewTintColor2, shadowViewTintColor3, self->super._backgroundTransitionProgress);
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

    shadowViewTintColor = +[UIColor clearColor];
  }

  v4 = shadowViewTintColor;
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
    shadowViewBackgroundColor = [(_UIBarBackgroundAppearanceData *)self->_backgroundData1 shadowViewBackgroundColor];
  }

  else if ([(_UIBarBackgroundAppearanceData *)self->_backgroundData2 hasShadow])
  {
    shadowViewBackgroundColor = 0;
  }

  else
  {
    shadowViewBackgroundColor2 = [(_UIBarBackgroundAppearanceData *)self->_backgroundData1 shadowViewBackgroundColor];
    shadowViewBackgroundColor3 = [(_UIBarBackgroundAppearanceData *)self->_backgroundData2 shadowViewBackgroundColor];
    shadowViewBackgroundColor = _interpolateColors(shadowViewBackgroundColor2, shadowViewBackgroundColor3, self->super._backgroundTransitionProgress);
  }

  return shadowViewBackgroundColor;
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
    shadowViewBackgroundColor = [(_UIBarBackgroundAppearanceData *)self->_backgroundData2 shadowViewBackgroundColor];
  }

  else
  {
    shadowViewBackgroundColor2 = [(_UIBarBackgroundAppearanceData *)self->_backgroundData1 shadowViewBackgroundColor];
    shadowViewBackgroundColor3 = [(_UIBarBackgroundAppearanceData *)self->_backgroundData2 shadowViewBackgroundColor];
    shadowViewBackgroundColor = _interpolateColors(shadowViewBackgroundColor2, shadowViewBackgroundColor3, self->super._backgroundTransitionProgress);
  }

  return shadowViewBackgroundColor;
}

- (id)bg2ShadowTint
{
  if (self->super._useExplicitGeometry)
  {
    shadowViewTintColor = [(_UIBarBackgroundAppearanceData *)self->_backgroundData2 shadowViewTintColor];
  }

  else
  {
    shadowViewTintColor2 = [(_UIBarBackgroundAppearanceData *)self->_backgroundData1 shadowViewTintColor];
    shadowViewTintColor3 = [(_UIBarBackgroundAppearanceData *)self->_backgroundData2 shadowViewTintColor];
    shadowViewTintColor = _interpolateColors(shadowViewTintColor2, shadowViewTintColor3, self->super._backgroundTransitionProgress);
  }

  return shadowViewTintColor;
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

- (_UIBarBackgroundLayoutModern)initWithLayout:(id)layout
{
  layoutCopy = layout;
  v8.receiver = self;
  v8.super_class = _UIBarBackgroundLayoutModern;
  v5 = [(_UIBarBackgroundLayout *)&v8 initWithLayout:layoutCopy];
  if (v5 && [layoutCopy isMemberOfClass:objc_opt_class()])
  {
    objc_storeStrong(&v5->_backgroundData1, layoutCopy[12]);
    v6 = layoutCopy;
    objc_storeStrong(&v5->_backgroundData2, v6[13]);
  }

  return v5;
}

- (void)setBackgroundData1:(id)data1
{
  data1Copy = data1;
  objc_storeStrong(&self->_backgroundData1, data1);
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

- (void)setBackgroundData2:(id)data2
{
  data2Copy = data2;
  objc_storeStrong(&self->_backgroundData2, data2);
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

- (void)describeInto:(id)into
{
  intoCopy = into;
  v5.receiver = self;
  v5.super_class = _UIBarBackgroundLayoutModern;
  [(_UIBarBackgroundLayout *)&v5 describeInto:intoCopy];
  if (self->_backgroundData1)
  {
    [intoCopy appendFormat:@" background1=%@", self->_backgroundData1];
    if (self->_backgroundData2)
    {
      [intoCopy appendFormat:@" background2=%@", self->_backgroundData2];
    }
  }
}

@end