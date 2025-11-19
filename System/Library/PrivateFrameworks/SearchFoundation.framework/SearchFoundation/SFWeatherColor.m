@interface SFWeatherColor
- (BOOL)isEqual:(id)a3;
- (NSData)jsonData;
- (NSDictionary)dictionaryRepresentation;
- (SFWeatherColor)initWithCoder:(id)a3;
- (SFWeatherColor)initWithProtobuf:(id)a3;
- (id)copyWithZone:(_NSZone *)a3;
- (unint64_t)hash;
- (void)encodeWithCoder:(id)a3;
@end

@implementation SFWeatherColor

- (unint64_t)hash
{
  v35.receiver = self;
  v35.super_class = SFWeatherColor;
  v3 = [(SFColor *)&v35 hash];
  v4 = [(SFWeatherColor *)self condition];
  v5 = [v4 hash];
  v6 = [(SFWeatherColor *)self location];
  v7 = [v6 hash];
  v8 = [(SFWeatherColor *)self date];
  v9 = [v8 hash];
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

- (BOOL)isEqual:(id)a3
{
  v5 = a3;
  if (self == v5)
  {
    v11 = 1;
  }

  else
  {
    if ([(SFWeatherColor *)v5 isMemberOfClass:objc_opt_class()])
    {
      v50.receiver = self;
      v50.super_class = SFWeatherColor;
      if ([(SFColor *)&v50 isEqual:v5])
      {
        v6 = v5;
        v7 = [(SFWeatherColor *)self condition];
        v8 = [(SFWeatherColor *)v6 condition];
        if ((v7 != 0) == (v8 == 0))
        {
          v11 = 0;
LABEL_39:

          goto LABEL_40;
        }

        v9 = [(SFWeatherColor *)self condition];
        if (v9)
        {
          v10 = [(SFWeatherColor *)self condition];
          v3 = [(SFWeatherColor *)v6 condition];
          if (![v10 isEqual:v3])
          {
            v11 = 0;
            goto LABEL_37;
          }

          v49 = v10;
        }

        v12 = [(SFWeatherColor *)self location];
        v13 = [(SFWeatherColor *)v6 location];
        v14 = v13;
        if ((v12 != 0) == (v13 == 0))
        {

          v11 = 0;
          v10 = v49;
          if (!v9)
          {
            goto LABEL_38;
          }

          goto LABEL_37;
        }

        v15 = [(SFWeatherColor *)self location];
        v48 = v3;
        if (v15)
        {
          v16 = v15;
          v17 = v14;
          v18 = v12;
          v19 = [(SFWeatherColor *)self location];
          [(SFWeatherColor *)v6 location];
          v47 = v45 = v19;
          if (![v19 isEqual:?])
          {
            v11 = 0;
            v12 = v18;
            v14 = v17;
            v22 = v47;
            goto LABEL_35;
          }

          v46 = v16;
          v12 = v18;
          v14 = v17;
        }

        else
        {
          v46 = 0;
        }

        v20 = [(SFWeatherColor *)self date];
        v21 = [(SFWeatherColor *)v6 date];
        if ((v20 != 0) != (v21 == 0))
        {
          v43 = v21;
          v44 = v20;
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

          v3 = v48;
          v10 = v49;
          if (!v9)
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

- (id)copyWithZone:(_NSZone *)a3
{
  v12.receiver = self;
  v12.super_class = SFWeatherColor;
  v4 = [(SFColor *)&v12 copyWithZone:a3];
  v5 = [(SFWeatherColor *)self condition];
  v6 = [v5 copy];
  [v4 setCondition:v6];

  v7 = [(SFWeatherColor *)self location];
  v8 = [v7 copy];
  [v4 setLocation:v8];

  v9 = [(SFWeatherColor *)self date];
  v10 = [v9 copy];
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
  v3 = [(_SFPBWeatherColor *)v2 jsonData];

  return v3;
}

- (NSDictionary)dictionaryRepresentation
{
  v2 = [[_SFPBWeatherColor alloc] initWithFacade:self];
  v3 = [(_SFPBWeatherColor *)v2 dictionaryRepresentation];

  return v3;
}

- (void)encodeWithCoder:(id)a3
{
  v3.receiver = self;
  v3.super_class = SFWeatherColor;
  [(SFColor *)&v3 encodeWithCoder:a3];
}

- (SFWeatherColor)initWithCoder:(id)a3
{
  v4 = a3;
  v5 = [(SFWeatherColor *)self init];
  v6 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"_backingStore"];

  v7 = [[_SFPBColor alloc] initWithData:v6];
  v8 = [[SFColor alloc] initWithProtobuf:v7];
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v9 = [(SFColor *)v8 condition];
    [(SFWeatherColor *)v5 setCondition:v9];

    v10 = [(SFColor *)v8 location];
    [(SFWeatherColor *)v5 setLocation:v10];

    v11 = [(SFColor *)v8 date];
    [(SFWeatherColor *)v5 setDate:v11];

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
    v12 = [(SFColor *)v8 darkModeColor];
    [(SFColor *)v5 setDarkModeColor:v12];
  }

  return v5;
}

- (SFWeatherColor)initWithProtobuf:(id)a3
{
  v4 = a3;
  v22.receiver = self;
  v22.super_class = SFWeatherColor;
  v5 = [(SFWeatherColor *)&v22 init];
  if (v5)
  {
    v6 = [v4 condition];

    if (v6)
    {
      v7 = [v4 condition];
      [(SFWeatherColor *)v5 setCondition:v7];
    }

    v8 = [v4 location];

    if (v8)
    {
      v9 = [SFLatLng alloc];
      v10 = [v4 location];
      v11 = [(SFLatLng *)v9 initWithProtobuf:v10];
      [(SFWeatherColor *)v5 setLocation:v11];
    }

    v12 = [v4 date];

    if (v12)
    {
      v13 = [v4 date];
      v14 = MEMORY[0x1E695DF00];
      [v13 secondsSince1970];
      v15 = [v14 dateWithTimeIntervalSince1970:?];
      [(SFWeatherColor *)v5 setDate:v15];
    }

    [v4 cloudCover];
    if (v16 != 0.0)
    {
      [v4 cloudCover];
      [(SFWeatherColor *)v5 setCloudCover:?];
    }

    [v4 cloudCoverLowAltPct];
    if (v17 != 0.0)
    {
      [v4 cloudCoverLowAltPct];
      [(SFWeatherColor *)v5 setCloudCoverLowAltPct:?];
    }

    [v4 cloudCoverMidAltPct];
    if (v18 != 0.0)
    {
      [v4 cloudCoverMidAltPct];
      [(SFWeatherColor *)v5 setCloudCoverMidAltPct:?];
    }

    [v4 cloudCoverHighAltPct];
    if (v19 != 0.0)
    {
      [v4 cloudCoverHighAltPct];
      [(SFWeatherColor *)v5 setCloudCoverHighAltPct:?];
    }

    v20 = v5;
  }

  return v5;
}

@end