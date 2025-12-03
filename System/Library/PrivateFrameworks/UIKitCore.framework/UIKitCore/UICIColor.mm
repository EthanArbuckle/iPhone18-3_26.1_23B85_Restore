@interface UICIColor
- (BOOL)getRed:(double *)red green:(double *)green blue:(double *)blue alpha:(double *)alpha;
- (BOOL)getWhite:(double *)white alpha:(double *)alpha;
- (BOOL)isEqual:(id)equal;
- (CGColor)CGColor;
- (UICIColor)colorWithAlphaComponent:(double)component;
- (UICIColor)initWithCIColor:(id)color;
- (id)_rgbColor;
- (id)description;
- (void)set;
- (void)setFill;
- (void)setStroke;
@end

@implementation UICIColor

- (UICIColor)initWithCIColor:(id)color
{
  colorCopy = color;
  v9.receiver = self;
  v9.super_class = UICIColor;
  v6 = [(UICIColor *)&v9 init];
  v7 = v6;
  if (v6)
  {
    if (colorCopy)
    {
      objc_storeStrong(&v6->_ciColor, color);
    }

    else
    {

      v7 = 0;
    }
  }

  return v7;
}

- (id)description
{
  v3 = MEMORY[0x1E696AEC0];
  [(CIColor *)self->_ciColor red];
  v5 = v4;
  [(CIColor *)self->_ciColor green];
  v7 = v6;
  [(CIColor *)self->_ciColor blue];
  v9 = v8;
  [(CIColor *)self->_ciColor alpha];
  return [v3 stringWithFormat:@"CIColor %g %g %g %g", v5, v7, v9, v10];
}

- (id)_rgbColor
{
  components[4] = *MEMORY[0x1E69E9840];
  if (self)
  {
    selfCopy = self;
    if (!self[4])
    {
      colorSpace = [self[3] colorSpace];
      if (qword_1ED49BED0 != -1)
      {
        dispatch_once(&qword_1ED49BED0, &__block_literal_global_2245);
      }

      if (colorSpace == qword_1ED49BEC8)
      {
        v10 = [UIDeviceRGBColor alloc];
        [selfCopy[3] red];
        v12 = v11;
        [selfCopy[3] green];
        v14 = v13;
        [selfCopy[3] blue];
        v16 = v15;
        [selfCopy[3] alpha];
        v18 = [(UIDeviceRGBColor *)v10 initWithRed:v12 green:v14 blue:v16 alpha:v17];
        v19 = selfCopy[4];
        selfCopy[4] = v18;
      }

      else
      {
        [selfCopy[3] red];
        components[0] = v3;
        [selfCopy[3] green];
        components[1] = v4;
        [selfCopy[3] blue];
        components[2] = v5;
        [selfCopy[3] alpha];
        components[3] = v6;
        v7 = CGColorCreate(colorSpace, components);
        v8 = [[UICGColor alloc] initWithCGColor:v7];
        v9 = selfCopy[4];
        selfCopy[4] = v8;

        CGColorRelease(v7);
      }
    }

    self = selfCopy[4];
  }

  return self;
}

- (void)set
{
  _rgbColor = [(UICIColor *)&self->super.super.isa _rgbColor];
  [_rgbColor set];
}

- (void)setFill
{
  _rgbColor = [(UICIColor *)&self->super.super.isa _rgbColor];
  [_rgbColor setFill];
}

- (void)setStroke
{
  _rgbColor = [(UICIColor *)&self->super.super.isa _rgbColor];
  [_rgbColor setStroke];
}

- (UICIColor)colorWithAlphaComponent:(double)component
{
  [(CIColor *)self->_ciColor red];
  v6 = v5;
  [(CIColor *)self->_ciColor green];
  v8 = v7;
  [(CIColor *)self->_ciColor blue];

  return [UIColor colorWithRed:v6 green:v8 blue:v9 alpha:component];
}

- (CGColor)CGColor
{
  _rgbColor = [(UICIColor *)&self->super.super.isa _rgbColor];
  cGColor = [_rgbColor CGColor];

  return cGColor;
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v5 = [(CIColor *)self->_ciColor isEqual:equalCopy];
  }

  else
  {
    v5 = 0;
  }

  return v5;
}

- (BOOL)getRed:(double *)red green:(double *)green blue:(double *)blue alpha:(double *)alpha
{
  _rgbColor = [(UICIColor *)&self->super.super.isa _rgbColor];
  LOBYTE(alpha) = [_rgbColor getRed:red green:green blue:blue alpha:alpha];

  return alpha;
}

- (BOOL)getWhite:(double *)white alpha:(double *)alpha
{
  _rgbColor = [(UICIColor *)&self->super.super.isa _rgbColor];
  LOBYTE(alpha) = [_rgbColor getWhite:white alpha:alpha];

  return alpha;
}

@end