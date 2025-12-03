@interface SFWeatherColor
- (BOOL)isEqual:(id)equal;
- (NSData)jsonData;
- (NSDictionary)dictionaryRepresentation;
- (SFWeatherColor)initWithCoder:(id)coder;
- (SFWeatherColor)initWithProtobuf:(id)protobuf;
- (id)copyWithZone:(_NSZone *)zone;
- (unint64_t)hash;
- (void)encodeWithCoder:(id)coder;
@end

@implementation SFWeatherColor

- (unint64_t)hash
{
  v35.receiver = self;
  v35.super_class = SFWeatherColor;
  v3 = [(SFColor *)&v35 hash];
  condition = [(SFWeatherColor *)self condition];
  v5 = [condition hash];
  location = [(SFWeatherColor *)self location];
  v7 = [location hash];
  date = [(SFWeatherColor *)self date];
  v9 = [date hash];
  [(SFWeatherColor *)self cloudCover];
  v34 = v10;
  [(SFWeatherColor *)self cloudCoverLowAltPct];
  v33 = v11;
  [(SFWeatherColor *)self cloudCoverMidAltPct];
  v32 = v12;
  [(SFWeatherColor *)self cloudCoverHighAltPct];
  v13.f64[0] = v34;
  v13.f64[1] = v33;
  v14.f64[0] = v32;
  v14.f64[1] = v15;
  v16 = vbslq_s8(vcltzq_f64(v13), vnegq_f64(v13), v13);
  v17 = vbslq_s8(vcltzq_f64(v14), vnegq_f64(v14), v14);
  v18.f64[0] = NAN;
  v18.f64[1] = NAN;
  v19 = vrndaq_f64(v17);
  v20 = vrndaq_f64(v16);
  v21 = vsubq_f64(v16, v20);
  v22 = vsubq_f64(v17, v19);
  v23 = vdupq_n_s64(0x3BF0000000000000uLL);
  v24 = vdupq_n_s64(0x43F0000000000000uLL);
  v25 = vnegq_f64(v18);
  v26 = vbslq_s8(v25, vmlsq_f64(v19, v24, vrndq_f64(vmulq_f64(v19, v23))), v19);
  v27 = vbslq_s8(v25, vmlsq_f64(v20, v24, vrndq_f64(vmulq_f64(v20, v23))), v20);
  v28 = vdupq_n_s64(0x41E3C6EF36200000uLL);
  v29 = veorq_s8(vaddq_s64(vcvtq_u64_f64(vmulq_f64(v27, v28)), vcvtq_n_u64_f64(v21, 0x40uLL)), vaddq_s64(vcvtq_u64_f64(vmulq_f64(v26, v28)), vcvtq_n_u64_f64(v22, 0x40uLL)));
  v30 = *&veor_s8(*v29.i8, *&vextq_s8(v29, v29, 8uLL)) ^ v9;

  return v30 ^ v7 ^ v3 ^ v5;
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  if (self == equalCopy)
  {
    v11 = 1;
  }

  else
  {
    if ([(SFWeatherColor *)equalCopy isMemberOfClass:objc_opt_class()])
    {
      v50.receiver = self;
      v50.super_class = SFWeatherColor;
      if ([(SFColor *)&v50 isEqual:equalCopy])
      {
        v6 = equalCopy;
        condition = [(SFWeatherColor *)self condition];
        condition2 = [(SFWeatherColor *)v6 condition];
        if ((condition != 0) == (condition2 == 0))
        {
          v11 = 0;
LABEL_39:

          goto LABEL_40;
        }

        condition3 = [(SFWeatherColor *)self condition];
        if (condition3)
        {
          condition4 = [(SFWeatherColor *)self condition];
          condition5 = [(SFWeatherColor *)v6 condition];
          if (![condition4 isEqual:condition5])
          {
            v11 = 0;
            goto LABEL_37;
          }

          v49 = condition4;
        }

        location = [(SFWeatherColor *)self location];
        location2 = [(SFWeatherColor *)v6 location];
        v14 = location2;
        if ((location != 0) == (location2 == 0))
        {

          v11 = 0;
          condition4 = v49;
          if (!condition3)
          {
            goto LABEL_38;
          }

          goto LABEL_37;
        }

        location3 = [(SFWeatherColor *)self location];
        v48 = condition5;
        if (location3)
        {
          v16 = location3;
          v17 = v14;
          v18 = location;
          location4 = [(SFWeatherColor *)self location];
          [(SFWeatherColor *)v6 location];
          v47 = v45 = location4;
          if (![location4 isEqual:?])
          {
            v11 = 0;
            location = v18;
            v14 = v17;
            v22 = v47;
            goto LABEL_35;
          }

          v46 = v16;
          location = v18;
          v14 = v17;
        }

        else
        {
          v46 = 0;
        }

        date = [(SFWeatherColor *)self date];
        date2 = [(SFWeatherColor *)v6 date];
        if ((date != 0) != (date2 == 0))
        {
          v43 = date2;
          v44 = date;
          [(SFWeatherColor *)self date];
          v42 = v22 = v47;
          if (!v42 || (-[SFWeatherColor date](self, "date"), v23 = objc_claimAutoreleasedReturnValue(), -[SFWeatherColor date](v6, "date"), v40 = objc_claimAutoreleasedReturnValue(), v41 = v23, [v23 isEqual:?]))
          {
            [(SFWeatherColor *)self cloudCover];
            v26 = v25;
            [(SFWeatherColor *)v6 cloudCover];
            if (vabdd_f64(v26, v27) >= 2.22044605e-16 || ([(SFWeatherColor *)self cloudCoverLowAltPct], v29 = v28, [(SFWeatherColor *)v6 cloudCoverLowAltPct], vabdd_f64(v29, v30) >= 2.22044605e-16) || ([(SFWeatherColor *)self cloudCoverMidAltPct], v32 = v31, [(SFWeatherColor *)v6 cloudCoverMidAltPct], vabdd_f64(v32, v33) >= 2.22044605e-16))
            {
              v11 = 0;
              v37 = 0;
            }

            else
            {
              [(SFWeatherColor *)self cloudCoverHighAltPct];
              v35 = v34;
              [(SFWeatherColor *)v6 cloudCoverHighAltPct];
              v11 = vabdd_f64(v35, v36) < 2.22044605e-16;
              v37 = v11;
            }

            v24 = v42;
            if (!v42)
            {
              v38 = v43;
              v11 = v37;
LABEL_34:

              v16 = v46;
              if (!v46)
              {
                goto LABEL_36;
              }

              goto LABEL_35;
            }
          }

          else
          {
            v11 = 0;
            v24 = v42;
          }

          v38 = v43;
          goto LABEL_34;
        }

        v11 = 0;
        v16 = v46;
        v22 = v47;
        if (!v46)
        {
LABEL_36:

          condition5 = v48;
          condition4 = v49;
          if (!condition3)
          {
LABEL_38:

            goto LABEL_39;
          }

LABEL_37:

          goto LABEL_38;
        }

LABEL_35:

        goto LABEL_36;
      }
    }

    v11 = 0;
  }

LABEL_40:

  return v11;
}

- (id)copyWithZone:(_NSZone *)zone
{
  v12.receiver = self;
  v12.super_class = SFWeatherColor;
  v4 = [(SFColor *)&v12 copyWithZone:zone];
  condition = [(SFWeatherColor *)self condition];
  v6 = [condition copy];
  [v4 setCondition:v6];

  location = [(SFWeatherColor *)self location];
  v8 = [location copy];
  [v4 setLocation:v8];

  date = [(SFWeatherColor *)self date];
  v10 = [date copy];
  [v4 setDate:v10];

  [(SFWeatherColor *)self cloudCover];
  [v4 setCloudCover:?];
  [(SFWeatherColor *)self cloudCoverLowAltPct];
  [v4 setCloudCoverLowAltPct:?];
  [(SFWeatherColor *)self cloudCoverMidAltPct];
  [v4 setCloudCoverMidAltPct:?];
  [(SFWeatherColor *)self cloudCoverHighAltPct];
  [v4 setCloudCoverHighAltPct:?];
  return v4;
}

- (NSData)jsonData
{
  v2 = [[_SFPBWeatherColor alloc] initWithFacade:self];
  jsonData = [(_SFPBWeatherColor *)v2 jsonData];

  return jsonData;
}

- (NSDictionary)dictionaryRepresentation
{
  v2 = [[_SFPBWeatherColor alloc] initWithFacade:self];
  dictionaryRepresentation = [(_SFPBWeatherColor *)v2 dictionaryRepresentation];

  return dictionaryRepresentation;
}

- (void)encodeWithCoder:(id)coder
{
  v3.receiver = self;
  v3.super_class = SFWeatherColor;
  [(SFColor *)&v3 encodeWithCoder:coder];
}

- (SFWeatherColor)initWithCoder:(id)coder
{
  coderCopy = coder;
  v5 = [(SFWeatherColor *)self init];
  v6 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"_backingStore"];

  v7 = [[_SFPBColor alloc] initWithData:v6];
  v8 = [[SFColor alloc] initWithProtobuf:v7];
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    condition = [(SFColor *)v8 condition];
    [(SFWeatherColor *)v5 setCondition:condition];

    location = [(SFColor *)v8 location];
    [(SFWeatherColor *)v5 setLocation:location];

    date = [(SFColor *)v8 date];
    [(SFWeatherColor *)v5 setDate:date];

    [(SFColor *)v8 cloudCover];
    [(SFWeatherColor *)v5 setCloudCover:?];
    [(SFColor *)v8 cloudCoverLowAltPct];
    [(SFWeatherColor *)v5 setCloudCoverLowAltPct:?];
    [(SFColor *)v8 cloudCoverMidAltPct];
    [(SFWeatherColor *)v5 setCloudCoverMidAltPct:?];
    [(SFColor *)v8 cloudCoverHighAltPct];
    [(SFWeatherColor *)v5 setCloudCoverHighAltPct:?];
    [(SFColor *)v8 redComponent];
    [(SFColor *)v5 setRedComponent:?];
    [(SFColor *)v8 greenComponent];
    [(SFColor *)v5 setGreenComponent:?];
    [(SFColor *)v8 blueComponent];
    [(SFColor *)v5 setBlueComponent:?];
    [(SFColor *)v8 alphaComponent];
    [(SFColor *)v5 setAlphaComponent:?];
    [(SFColor *)v5 setColorTintStyle:[(SFColor *)v8 colorTintStyle]];
    darkModeColor = [(SFColor *)v8 darkModeColor];
    [(SFColor *)v5 setDarkModeColor:darkModeColor];
  }

  return v5;
}

- (SFWeatherColor)initWithProtobuf:(id)protobuf
{
  protobufCopy = protobuf;
  v22.receiver = self;
  v22.super_class = SFWeatherColor;
  v5 = [(SFWeatherColor *)&v22 init];
  if (v5)
  {
    condition = [protobufCopy condition];

    if (condition)
    {
      condition2 = [protobufCopy condition];
      [(SFWeatherColor *)v5 setCondition:condition2];
    }

    location = [protobufCopy location];

    if (location)
    {
      v9 = [SFLatLng alloc];
      location2 = [protobufCopy location];
      v11 = [(SFLatLng *)v9 initWithProtobuf:location2];
      [(SFWeatherColor *)v5 setLocation:v11];
    }

    date = [protobufCopy date];

    if (date)
    {
      date2 = [protobufCopy date];
      v14 = MEMORY[0x1E695DF00];
      [date2 secondsSince1970];
      v15 = [v14 dateWithTimeIntervalSince1970:?];
      [(SFWeatherColor *)v5 setDate:v15];
    }

    [protobufCopy cloudCover];
    if (v16 != 0.0)
    {
      [protobufCopy cloudCover];
      [(SFWeatherColor *)v5 setCloudCover:?];
    }

    [protobufCopy cloudCoverLowAltPct];
    if (v17 != 0.0)
    {
      [protobufCopy cloudCoverLowAltPct];
      [(SFWeatherColor *)v5 setCloudCoverLowAltPct:?];
    }

    [protobufCopy cloudCoverMidAltPct];
    if (v18 != 0.0)
    {
      [protobufCopy cloudCoverMidAltPct];
      [(SFWeatherColor *)v5 setCloudCoverMidAltPct:?];
    }

    [protobufCopy cloudCoverHighAltPct];
    if (v19 != 0.0)
    {
      [protobufCopy cloudCoverHighAltPct];
      [(SFWeatherColor *)v5 setCloudCoverHighAltPct:?];
    }

    v20 = v5;
  }

  return v5;
}

@end