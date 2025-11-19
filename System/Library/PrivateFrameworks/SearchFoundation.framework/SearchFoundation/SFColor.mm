@interface SFColor
- (BOOL)isEqual:(id)a3;
- (NSData)jsonData;
- (NSDictionary)dictionaryRepresentation;
- (SFColor)initWithCoder:(id)a3;
- (SFColor)initWithProtobuf:(id)a3;
- (id)copyWithZone:(_NSZone *)a3;
- (unint64_t)hash;
- (void)encodeWithCoder:(id)a3;
@end

@implementation SFColor

- (unint64_t)hash
{
  [(SFColor *)self redComponent];
  v31 = v3;
  [(SFColor *)self greenComponent];
  v29 = v4;
  [(SFColor *)self blueComponent];
  v28 = v5;
  [(SFColor *)self alphaComponent];
  v6.f64[0] = v31;
  v6.f64[1] = v29;
  v7.f64[0] = v28;
  v7.f64[1] = v8;
  v9 = vbslq_s8(vcltzq_f64(v6), vnegq_f64(v6), v6);
  v10 = vbslq_s8(vcltzq_f64(v7), vnegq_f64(v7), v7);
  v11.f64[0] = NAN;
  v11.f64[1] = NAN;
  v12 = vrndaq_f64(v10);
  v13 = vrndaq_f64(v9);
  v14 = vsubq_f64(v9, v13);
  v15 = vsubq_f64(v10, v12);
  v16 = vdupq_n_s64(0x3BF0000000000000uLL);
  v17 = vdupq_n_s64(0x43F0000000000000uLL);
  v18 = vnegq_f64(v11);
  v19 = vbslq_s8(v18, vmlsq_f64(v12, v17, vrndq_f64(vmulq_f64(v12, v16))), v12);
  v20 = vbslq_s8(v18, vmlsq_f64(v13, v17, vrndq_f64(vmulq_f64(v13, v16))), v13);
  v21 = vdupq_n_s64(0x41E3C6EF36200000uLL);
  v30 = vaddq_s64(vcvtq_u64_f64(vmulq_f64(v19, v21)), vcvtq_n_u64_f64(v15, 0x40uLL));
  v32 = vaddq_s64(vcvtq_u64_f64(vmulq_f64(v20, v21)), vcvtq_n_u64_f64(v14, 0x40uLL));
  v22 = [(SFColor *)self colorTintStyle];
  v23 = [(SFColor *)self darkModeColor];
  v24 = [v23 hash];
  v25 = veorq_s8(v32, v30);
  v26 = *&veor_s8(*v25.i8, *&vextq_s8(v25, v25, 8uLL)) ^ v24;

  return v26 ^ v22;
}

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  if (self == v4)
  {
    v24 = 1;
  }

  else if ([(SFColor *)v4 isMemberOfClass:objc_opt_class()])
  {
    v5 = v4;
    [(SFColor *)self redComponent];
    v7 = v6;
    [(SFColor *)v5 redComponent];
    if (vabdd_f64(v7, v8) >= 2.22044605e-16)
    {
      goto LABEL_13;
    }

    [(SFColor *)self greenComponent];
    v10 = v9;
    [(SFColor *)v5 greenComponent];
    if (vabdd_f64(v10, v11) >= 2.22044605e-16)
    {
      goto LABEL_13;
    }

    [(SFColor *)self blueComponent];
    v13 = v12;
    [(SFColor *)v5 blueComponent];
    if (vabdd_f64(v13, v14) < 2.22044605e-16 && ([(SFColor *)self alphaComponent], v16 = v15, [(SFColor *)v5 alphaComponent], vabdd_f64(v16, v17) < 2.22044605e-16) && (v18 = [(SFColor *)self colorTintStyle], v18 == [(SFColor *)v5 colorTintStyle]))
    {
      v19 = [(SFColor *)self darkModeColor];
      v20 = [(SFColor *)v5 darkModeColor];
      if ((v19 != 0) == (v20 == 0))
      {
        v24 = 0;
      }

      else
      {
        v21 = [(SFColor *)self darkModeColor];
        if (v21)
        {
          v22 = [(SFColor *)self darkModeColor];
          v23 = [(SFColor *)v5 darkModeColor];
          v24 = [v22 isEqual:v23];
        }

        else
        {
          v24 = 1;
        }
      }
    }

    else
    {
LABEL_13:
      v24 = 0;
    }
  }

  else
  {
    v24 = 0;
  }

  return v24;
}

- (id)copyWithZone:(_NSZone *)a3
{
  v4 = [objc_msgSend(objc_opt_class() allocWithZone:{a3), "init"}];
  [(SFColor *)self redComponent];
  [v4 setRedComponent:?];
  [(SFColor *)self greenComponent];
  [v4 setGreenComponent:?];
  [(SFColor *)self blueComponent];
  [v4 setBlueComponent:?];
  [(SFColor *)self alphaComponent];
  [v4 setAlphaComponent:?];
  [v4 setColorTintStyle:{-[SFColor colorTintStyle](self, "colorTintStyle")}];
  v5 = [(SFColor *)self darkModeColor];
  v6 = [v5 copy];
  [v4 setDarkModeColor:v6];

  return v4;
}

- (NSData)jsonData
{
  v2 = [[_SFPBColor alloc] initWithFacade:self];
  v3 = [(_SFPBColor *)v2 jsonData];

  return v3;
}

- (NSDictionary)dictionaryRepresentation
{
  v2 = [[_SFPBColor alloc] initWithFacade:self];
  v3 = [(_SFPBColor *)v2 dictionaryRepresentation];

  return v3;
}

- (void)encodeWithCoder:(id)a3
{
  v4 = a3;
  v6 = [[_SFPBColor alloc] initWithFacade:self];
  v5 = [(_SFPBColor *)v6 data];
  [v4 encodeObject:v5 forKey:@"_backingStore"];
}

- (SFColor)initWithCoder:(id)a3
{
  v4 = a3;
  v5 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"_backingStore"];

  v6 = [SFColor alloc];
  v7 = [[_SFPBColor alloc] initWithData:v5];
  v8 = [(SFColor *)v6 initWithProtobuf:v7];

  return v8;
}

- (SFColor)initWithProtobuf:(id)a3
{
  v4 = a3;
  v40.receiver = self;
  v40.super_class = SFColor;
  v5 = [(SFColor *)&v40 init];
  if (v5)
  {
    v6 = [v4 redComponent];

    if (v6)
    {
      v7 = [v4 redComponent];
      [v7 doubleValue];
      [(SFColor *)v5 setRedComponent:?];
    }

    v8 = [v4 greenComponent];

    if (v8)
    {
      v9 = [v4 greenComponent];
      [v9 doubleValue];
      [(SFColor *)v5 setGreenComponent:?];
    }

    v10 = [v4 blueComponent];

    if (v10)
    {
      v11 = [v4 blueComponent];
      [v11 doubleValue];
      [(SFColor *)v5 setBlueComponent:?];
    }

    v12 = [v4 alphaComponent];

    if (v12)
    {
      v13 = [v4 alphaComponent];
      [v13 doubleValue];
      [(SFColor *)v5 setAlphaComponent:?];
    }

    if ([v4 colorTintStyle])
    {
      -[SFColor setColorTintStyle:](v5, "setColorTintStyle:", [v4 colorTintStyle]);
    }

    v14 = [v4 darkModeColor];

    if (v14)
    {
      v15 = [SFColor alloc];
      v16 = [v4 darkModeColor];
      v17 = [(SFColor *)v15 initWithProtobuf:v16];
      [(SFColor *)v5 setDarkModeColor:v17];
    }

    v18 = [v4 calendarColor];

    if (v18)
    {
      v19 = [SFCalendarColor alloc];
      v20 = [v4 calendarColor];
    }

    else
    {
      v22 = [v4 appColor];

      if (v22)
      {
        v19 = [SFAppColor alloc];
        v20 = [v4 appColor];
      }

      else
      {
        v23 = [v4 imageDerivedColor];

        if (v23)
        {
          v19 = [SFImageDerivedColor alloc];
          v20 = [v4 imageDerivedColor];
        }

        else
        {
          v24 = [v4 gradientColor];

          if (v24)
          {
            v19 = [SFGradientColor alloc];
            v20 = [v4 gradientColor];
          }

          else
          {
            v25 = [v4 weatherColor];

            if (!v25)
            {
              v21 = v5;
              goto LABEL_37;
            }

            v19 = [SFWeatherColor alloc];
            v20 = [v4 weatherColor];
          }
        }
      }
    }

    v26 = v20;
    v21 = [(SFCalendarColor *)v19 initWithProtobuf:v20];

    v27 = [v4 redComponent];

    if (v27)
    {
      v28 = [v4 redComponent];
      [v28 doubleValue];
      [(SFColor *)v21 setRedComponent:?];
    }

    v29 = [v4 greenComponent];

    if (v29)
    {
      v30 = [v4 greenComponent];
      [v30 doubleValue];
      [(SFColor *)v21 setGreenComponent:?];
    }

    v31 = [v4 blueComponent];

    if (v31)
    {
      v32 = [v4 blueComponent];
      [v32 doubleValue];
      [(SFColor *)v21 setBlueComponent:?];
    }

    v33 = [v4 alphaComponent];

    if (v33)
    {
      v34 = [v4 alphaComponent];
      [v34 doubleValue];
      [(SFColor *)v21 setAlphaComponent:?];
    }

    if ([v4 colorTintStyle])
    {
      -[SFColor setColorTintStyle:](v21, "setColorTintStyle:", [v4 colorTintStyle]);
    }

    v35 = [v4 darkModeColor];

    if (v35)
    {
      v36 = [SFColor alloc];
      v37 = [v4 darkModeColor];
      v38 = [(SFColor *)v36 initWithProtobuf:v37];
      [(SFColor *)v21 setDarkModeColor:v38];
    }
  }

  else
  {
    v21 = 0;
  }

LABEL_37:

  return v21;
}

@end