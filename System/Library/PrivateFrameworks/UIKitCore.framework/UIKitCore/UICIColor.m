@interface UICIColor
- (BOOL)getRed:(double *)a3 green:(double *)a4 blue:(double *)a5 alpha:(double *)a6;
- (BOOL)getWhite:(double *)a3 alpha:(double *)a4;
- (BOOL)isEqual:(id)a3;
- (CGColor)CGColor;
- (UICIColor)colorWithAlphaComponent:(double)a3;
- (UICIColor)initWithCIColor:(id)a3;
- (id)_rgbColor;
- (id)description;
- (void)set;
- (void)setFill;
- (void)setStroke;
@end

@implementation UICIColor

- (UICIColor)initWithCIColor:(id)a3
{
  v5 = a3;
  v9.receiver = self;
  v9.super_class = UICIColor;
  v6 = [(UICIColor *)&v9 init];
  v7 = v6;
  if (v6)
  {
    if (v5)
    {
      objc_storeStrong(&v6->_ciColor, a3);
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
  if (a1)
  {
    v1 = a1;
    if (!a1[4])
    {
      v2 = [a1[3] colorSpace];
      if (qword_1ED49BED0 != -1)
      {
        dispatch_once(&qword_1ED49BED0, &__block_literal_global_2245);
      }

      if (v2 == qword_1ED49BEC8)
      {
        v10 = [UIDeviceRGBColor alloc];
        [v1[3] red];
        v12 = v11;
        [v1[3] green];
        v14 = v13;
        [v1[3] blue];
        v16 = v15;
        [v1[3] alpha];
        v18 = [(UIDeviceRGBColor *)v10 initWithRed:v12 green:v14 blue:v16 alpha:v17];
        v19 = v1[4];
        v1[4] = v18;
      }

      else
      {
        [v1[3] red];
        components[0] = v3;
        [v1[3] green];
        components[1] = v4;
        [v1[3] blue];
        components[2] = v5;
        [v1[3] alpha];
        components[3] = v6;
        v7 = CGColorCreate(v2, components);
        v8 = [[UICGColor alloc] initWithCGColor:v7];
        v9 = v1[4];
        v1[4] = v8;

        CGColorRelease(v7);
      }
    }

    a1 = v1[4];
  }

  return a1;
}

- (void)set
{
  v2 = [(UICIColor *)&self->super.super.isa _rgbColor];
  [v2 set];
}

- (void)setFill
{
  v2 = [(UICIColor *)&self->super.super.isa _rgbColor];
  [v2 setFill];
}

- (void)setStroke
{
  v2 = [(UICIColor *)&self->super.super.isa _rgbColor];
  [v2 setStroke];
}

- (UICIColor)colorWithAlphaComponent:(double)a3
{
  [(CIColor *)self->_ciColor red];
  v6 = v5;
  [(CIColor *)self->_ciColor green];
  v8 = v7;
  [(CIColor *)self->_ciColor blue];

  return [UIColor colorWithRed:v6 green:v8 blue:v9 alpha:a3];
}

- (CGColor)CGColor
{
  v2 = [(UICIColor *)&self->super.super.isa _rgbColor];
  v3 = [v2 CGColor];

  return v3;
}

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v5 = [(CIColor *)self->_ciColor isEqual:v4];
  }

  else
  {
    v5 = 0;
  }

  return v5;
}

- (BOOL)getRed:(double *)a3 green:(double *)a4 blue:(double *)a5 alpha:(double *)a6
{
  v10 = [(UICIColor *)&self->super.super.isa _rgbColor];
  LOBYTE(a6) = [v10 getRed:a3 green:a4 blue:a5 alpha:a6];

  return a6;
}

- (BOOL)getWhite:(double *)a3 alpha:(double *)a4
{
  v6 = [(UICIColor *)&self->super.super.isa _rgbColor];
  LOBYTE(a4) = [v6 getWhite:a3 alpha:a4];

  return a4;
}

@end