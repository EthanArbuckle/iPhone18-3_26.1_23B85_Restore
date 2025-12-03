@interface SFColor
- (BOOL)isEqual:(id)equal;
- (NSData)jsonData;
- (NSDictionary)dictionaryRepresentation;
- (SFColor)initWithCoder:(id)coder;
- (SFColor)initWithProtobuf:(id)protobuf;
- (id)copyWithZone:(_NSZone *)zone;
- (unint64_t)hash;
- (void)encodeWithCoder:(id)coder;
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
  colorTintStyle = [(SFColor *)self colorTintStyle];
  darkModeColor = [(SFColor *)self darkModeColor];
  v24 = [darkModeColor hash];
  v25 = veorq_s8(v32, v30);
  v26 = *&veor_s8(*v25.i8, *&vextq_s8(v25, v25, 8uLL)) ^ v24;

  return v26 ^ colorTintStyle;
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  if (self == equalCopy)
  {
    v24 = 1;
  }

  else if ([(SFColor *)equalCopy isMemberOfClass:objc_opt_class()])
  {
    v5 = equalCopy;
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
      darkModeColor = [(SFColor *)self darkModeColor];
      darkModeColor2 = [(SFColor *)v5 darkModeColor];
      if ((darkModeColor != 0) == (darkModeColor2 == 0))
      {
        v24 = 0;
      }

      else
      {
        darkModeColor3 = [(SFColor *)self darkModeColor];
        if (darkModeColor3)
        {
          darkModeColor4 = [(SFColor *)self darkModeColor];
          darkModeColor5 = [(SFColor *)v5 darkModeColor];
          v24 = [darkModeColor4 isEqual:darkModeColor5];
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

- (id)copyWithZone:(_NSZone *)zone
{
  v4 = [objc_msgSend(objc_opt_class() allocWithZone:{zone), "init"}];
  [(SFColor *)self redComponent];
  [v4 setRedComponent:?];
  [(SFColor *)self greenComponent];
  [v4 setGreenComponent:?];
  [(SFColor *)self blueComponent];
  [v4 setBlueComponent:?];
  [(SFColor *)self alphaComponent];
  [v4 setAlphaComponent:?];
  [v4 setColorTintStyle:{-[SFColor colorTintStyle](self, "colorTintStyle")}];
  darkModeColor = [(SFColor *)self darkModeColor];
  v6 = [darkModeColor copy];
  [v4 setDarkModeColor:v6];

  return v4;
}

- (NSData)jsonData
{
  v2 = [[_SFPBColor alloc] initWithFacade:self];
  jsonData = [(_SFPBColor *)v2 jsonData];

  return jsonData;
}

- (NSDictionary)dictionaryRepresentation
{
  v2 = [[_SFPBColor alloc] initWithFacade:self];
  dictionaryRepresentation = [(_SFPBColor *)v2 dictionaryRepresentation];

  return dictionaryRepresentation;
}

- (void)encodeWithCoder:(id)coder
{
  coderCopy = coder;
  v6 = [[_SFPBColor alloc] initWithFacade:self];
  data = [(_SFPBColor *)v6 data];
  [coderCopy encodeObject:data forKey:@"_backingStore"];
}

- (SFColor)initWithCoder:(id)coder
{
  coderCopy = coder;
  v5 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"_backingStore"];

  v6 = [SFColor alloc];
  v7 = [[_SFPBColor alloc] initWithData:v5];
  v8 = [(SFColor *)v6 initWithProtobuf:v7];

  return v8;
}

- (SFColor)initWithProtobuf:(id)protobuf
{
  protobufCopy = protobuf;
  v40.receiver = self;
  v40.super_class = SFColor;
  v5 = [(SFColor *)&v40 init];
  if (v5)
  {
    redComponent = [protobufCopy redComponent];

    if (redComponent)
    {
      redComponent2 = [protobufCopy redComponent];
      [redComponent2 doubleValue];
      [(SFColor *)v5 setRedComponent:?];
    }

    greenComponent = [protobufCopy greenComponent];

    if (greenComponent)
    {
      greenComponent2 = [protobufCopy greenComponent];
      [greenComponent2 doubleValue];
      [(SFColor *)v5 setGreenComponent:?];
    }

    blueComponent = [protobufCopy blueComponent];

    if (blueComponent)
    {
      blueComponent2 = [protobufCopy blueComponent];
      [blueComponent2 doubleValue];
      [(SFColor *)v5 setBlueComponent:?];
    }

    alphaComponent = [protobufCopy alphaComponent];

    if (alphaComponent)
    {
      alphaComponent2 = [protobufCopy alphaComponent];
      [alphaComponent2 doubleValue];
      [(SFColor *)v5 setAlphaComponent:?];
    }

    if ([protobufCopy colorTintStyle])
    {
      -[SFColor setColorTintStyle:](v5, "setColorTintStyle:", [protobufCopy colorTintStyle]);
    }

    darkModeColor = [protobufCopy darkModeColor];

    if (darkModeColor)
    {
      v15 = [SFColor alloc];
      darkModeColor2 = [protobufCopy darkModeColor];
      v17 = [(SFColor *)v15 initWithProtobuf:darkModeColor2];
      [(SFColor *)v5 setDarkModeColor:v17];
    }

    calendarColor = [protobufCopy calendarColor];

    if (calendarColor)
    {
      v19 = [SFCalendarColor alloc];
      calendarColor2 = [protobufCopy calendarColor];
    }

    else
    {
      appColor = [protobufCopy appColor];

      if (appColor)
      {
        v19 = [SFAppColor alloc];
        calendarColor2 = [protobufCopy appColor];
      }

      else
      {
        imageDerivedColor = [protobufCopy imageDerivedColor];

        if (imageDerivedColor)
        {
          v19 = [SFImageDerivedColor alloc];
          calendarColor2 = [protobufCopy imageDerivedColor];
        }

        else
        {
          gradientColor = [protobufCopy gradientColor];

          if (gradientColor)
          {
            v19 = [SFGradientColor alloc];
            calendarColor2 = [protobufCopy gradientColor];
          }

          else
          {
            weatherColor = [protobufCopy weatherColor];

            if (!weatherColor)
            {
              v21 = v5;
              goto LABEL_37;
            }

            v19 = [SFWeatherColor alloc];
            calendarColor2 = [protobufCopy weatherColor];
          }
        }
      }
    }

    v26 = calendarColor2;
    v21 = [(SFCalendarColor *)v19 initWithProtobuf:calendarColor2];

    redComponent3 = [protobufCopy redComponent];

    if (redComponent3)
    {
      redComponent4 = [protobufCopy redComponent];
      [redComponent4 doubleValue];
      [(SFColor *)v21 setRedComponent:?];
    }

    greenComponent3 = [protobufCopy greenComponent];

    if (greenComponent3)
    {
      greenComponent4 = [protobufCopy greenComponent];
      [greenComponent4 doubleValue];
      [(SFColor *)v21 setGreenComponent:?];
    }

    blueComponent3 = [protobufCopy blueComponent];

    if (blueComponent3)
    {
      blueComponent4 = [protobufCopy blueComponent];
      [blueComponent4 doubleValue];
      [(SFColor *)v21 setBlueComponent:?];
    }

    alphaComponent3 = [protobufCopy alphaComponent];

    if (alphaComponent3)
    {
      alphaComponent4 = [protobufCopy alphaComponent];
      [alphaComponent4 doubleValue];
      [(SFColor *)v21 setAlphaComponent:?];
    }

    if ([protobufCopy colorTintStyle])
    {
      -[SFColor setColorTintStyle:](v21, "setColorTintStyle:", [protobufCopy colorTintStyle]);
    }

    darkModeColor3 = [protobufCopy darkModeColor];

    if (darkModeColor3)
    {
      v36 = [SFColor alloc];
      darkModeColor4 = [protobufCopy darkModeColor];
      v38 = [(SFColor *)v36 initWithProtobuf:darkModeColor4];
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