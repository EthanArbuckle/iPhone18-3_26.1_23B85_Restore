@interface _SFPBWeatherColor
- (BOOL)isEqual:(id)a3;
- (NSData)jsonData;
- (_SFPBWeatherColor)initWithDictionary:(id)a3;
- (_SFPBWeatherColor)initWithFacade:(id)a3;
- (_SFPBWeatherColor)initWithJSON:(id)a3;
- (id)dictionaryRepresentation;
- (unint64_t)hash;
- (void)setCondition:(id)a3;
- (void)writeTo:(id)a3;
@end

@implementation _SFPBWeatherColor

- (_SFPBWeatherColor)initWithFacade:(id)a3
{
  v4 = a3;
  v5 = [(_SFPBWeatherColor *)self init];
  if (v5)
  {
    v6 = [v4 condition];

    if (v6)
    {
      v7 = [v4 condition];
      [(_SFPBWeatherColor *)v5 setCondition:v7];
    }

    v8 = [v4 location];

    if (v8)
    {
      v9 = [_SFPBLatLng alloc];
      v10 = [v4 location];
      v11 = [(_SFPBLatLng *)v9 initWithFacade:v10];
      [(_SFPBWeatherColor *)v5 setLocation:v11];
    }

    v12 = [v4 date];

    if (v12)
    {
      v13 = [_SFPBDate alloc];
      v14 = [v4 date];
      v15 = [(_SFPBDate *)v13 initWithNSDate:v14];
      [(_SFPBWeatherColor *)v5 setDate:v15];
    }

    if ([v4 hasCloudCover])
    {
      [v4 cloudCover];
      [(_SFPBWeatherColor *)v5 setCloudCover:?];
    }

    if ([v4 hasCloudCoverLowAltPct])
    {
      [v4 cloudCoverLowAltPct];
      [(_SFPBWeatherColor *)v5 setCloudCoverLowAltPct:?];
    }

    if ([v4 hasCloudCoverMidAltPct])
    {
      [v4 cloudCoverMidAltPct];
      [(_SFPBWeatherColor *)v5 setCloudCoverMidAltPct:?];
    }

    if ([v4 hasCloudCoverHighAltPct])
    {
      [v4 cloudCoverHighAltPct];
      [(_SFPBWeatherColor *)v5 setCloudCoverHighAltPct:?];
    }

    v16 = v5;
  }

  return v5;
}

- (_SFPBWeatherColor)initWithDictionary:(id)a3
{
  v4 = a3;
  v18.receiver = self;
  v18.super_class = _SFPBWeatherColor;
  v5 = [(_SFPBWeatherColor *)&v18 init];
  if (v5)
  {
    v6 = [v4 objectForKeyedSubscript:@"condition"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v7 = [v6 copy];
      [(_SFPBWeatherColor *)v5 setCondition:v7];
    }

    v8 = [v4 objectForKeyedSubscript:@"location"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v9 = [[_SFPBLatLng alloc] initWithDictionary:v8];
      [(_SFPBWeatherColor *)v5 setLocation:v9];
    }

    v10 = [v4 objectForKeyedSubscript:@"date"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v11 = [[_SFPBDate alloc] initWithDictionary:v10];
      [(_SFPBWeatherColor *)v5 setDate:v11];
    }

    v12 = [v4 objectForKeyedSubscript:@"cloudCover"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      [v12 doubleValue];
      [(_SFPBWeatherColor *)v5 setCloudCover:?];
    }

    v13 = [v4 objectForKeyedSubscript:@"cloudCoverLowAltPct"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      [v13 doubleValue];
      [(_SFPBWeatherColor *)v5 setCloudCoverLowAltPct:?];
    }

    v14 = [v4 objectForKeyedSubscript:@"cloudCoverMidAltPct"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      [v14 doubleValue];
      [(_SFPBWeatherColor *)v5 setCloudCoverMidAltPct:?];
    }

    v15 = [v4 objectForKeyedSubscript:@"cloudCoverHighAltPct"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      [v15 doubleValue];
      [(_SFPBWeatherColor *)v5 setCloudCoverHighAltPct:?];
    }

    v16 = v5;
  }

  return v5;
}

- (_SFPBWeatherColor)initWithJSON:(id)a3
{
  v7 = 0;
  v4 = [MEMORY[0x1E696ACB0] JSONObjectWithData:a3 options:0 error:&v7];
  if (v7 || (objc_opt_class(), (objc_opt_isKindOfClass() & 1) == 0))
  {
    v5 = 0;
  }

  else
  {
    self = [(_SFPBWeatherColor *)self initWithDictionary:v4];
    v5 = self;
  }

  return v5;
}

- (NSData)jsonData
{
  v2 = [(_SFPBWeatherColor *)self dictionaryRepresentation];
  if ([MEMORY[0x1E696ACB0] isValidJSONObject:v2])
  {
    v3 = [MEMORY[0x1E696ACB0] dataWithJSONObject:v2 options:0 error:0];
  }

  else
  {
    v3 = 0;
  }

  return v3;
}

- (id)dictionaryRepresentation
{
  v3 = [MEMORY[0x1E695DF90] dictionary];
  if (self->_cloudCover != 0.0)
  {
    v4 = MEMORY[0x1E696AD98];
    [(_SFPBWeatherColor *)self cloudCover];
    v5 = [v4 numberWithDouble:?];
    [v3 setObject:v5 forKeyedSubscript:@"cloudCover"];
  }

  if (self->_cloudCoverHighAltPct != 0.0)
  {
    v6 = MEMORY[0x1E696AD98];
    [(_SFPBWeatherColor *)self cloudCoverHighAltPct];
    v7 = [v6 numberWithDouble:?];
    [v3 setObject:v7 forKeyedSubscript:@"cloudCoverHighAltPct"];
  }

  if (self->_cloudCoverLowAltPct != 0.0)
  {
    v8 = MEMORY[0x1E696AD98];
    [(_SFPBWeatherColor *)self cloudCoverLowAltPct];
    v9 = [v8 numberWithDouble:?];
    [v3 setObject:v9 forKeyedSubscript:@"cloudCoverLowAltPct"];
  }

  if (self->_cloudCoverMidAltPct != 0.0)
  {
    v10 = MEMORY[0x1E696AD98];
    [(_SFPBWeatherColor *)self cloudCoverMidAltPct];
    v11 = [v10 numberWithDouble:?];
    [v3 setObject:v11 forKeyedSubscript:@"cloudCoverMidAltPct"];
  }

  if (self->_condition)
  {
    v12 = [(_SFPBWeatherColor *)self condition];
    v13 = [v12 copy];
    [v3 setObject:v13 forKeyedSubscript:@"condition"];
  }

  if (self->_date)
  {
    v14 = [(_SFPBWeatherColor *)self date];
    v15 = [v14 dictionaryRepresentation];
    if (v15)
    {
      [v3 setObject:v15 forKeyedSubscript:@"date"];
    }

    else
    {
      v16 = [MEMORY[0x1E695DFB0] null];
      [v3 setObject:v16 forKeyedSubscript:@"date"];
    }
  }

  if (self->_location)
  {
    v17 = [(_SFPBWeatherColor *)self location];
    v18 = [v17 dictionaryRepresentation];
    if (v18)
    {
      [v3 setObject:v18 forKeyedSubscript:@"location"];
    }

    else
    {
      v19 = [MEMORY[0x1E695DFB0] null];
      [v3 setObject:v19 forKeyedSubscript:@"location"];
    }
  }

  return v3;
}

- (unint64_t)hash
{
  v3 = [(NSString *)self->_condition hash];
  v4 = [(_SFPBLatLng *)self->_location hash];
  v5 = [(_SFPBDate *)self->_date hash];
  cloudCover = self->_cloudCover;
  if (cloudCover == 0.0)
  {
    v11 = 0;
  }

  else
  {
    if (cloudCover < 0.0)
    {
      cloudCover = -cloudCover;
    }

    *v6.i64 = floor(cloudCover + 0.5);
    v9 = (cloudCover - *v6.i64) * 1.84467441e19;
    *v7.i64 = *v6.i64 - trunc(*v6.i64 * 5.42101086e-20) * 1.84467441e19;
    v10.f64[0] = NAN;
    v10.f64[1] = NAN;
    v6 = vbslq_s8(vnegq_f64(v10), v7, v6);
    v11 = 2654435761u * *v6.i64;
    if (v9 >= 0.0)
    {
      if (v9 > 0.0)
      {
        v11 += v9;
      }
    }

    else
    {
      v11 -= fabs(v9);
    }
  }

  cloudCoverLowAltPct = self->_cloudCoverLowAltPct;
  if (cloudCoverLowAltPct == 0.0)
  {
    v15 = 0;
  }

  else
  {
    if (cloudCoverLowAltPct < 0.0)
    {
      cloudCoverLowAltPct = -cloudCoverLowAltPct;
    }

    *v6.i64 = floor(cloudCoverLowAltPct + 0.5);
    v13 = (cloudCoverLowAltPct - *v6.i64) * 1.84467441e19;
    *v7.i64 = *v6.i64 - trunc(*v6.i64 * 5.42101086e-20) * 1.84467441e19;
    v14.f64[0] = NAN;
    v14.f64[1] = NAN;
    v6 = vbslq_s8(vnegq_f64(v14), v7, v6);
    v15 = 2654435761u * *v6.i64;
    if (v13 >= 0.0)
    {
      if (v13 > 0.0)
      {
        v15 += v13;
      }
    }

    else
    {
      v15 -= fabs(v13);
    }
  }

  cloudCoverMidAltPct = self->_cloudCoverMidAltPct;
  if (cloudCoverMidAltPct == 0.0)
  {
    v19 = 0;
  }

  else
  {
    if (cloudCoverMidAltPct < 0.0)
    {
      cloudCoverMidAltPct = -cloudCoverMidAltPct;
    }

    *v6.i64 = floor(cloudCoverMidAltPct + 0.5);
    v17 = (cloudCoverMidAltPct - *v6.i64) * 1.84467441e19;
    *v7.i64 = *v6.i64 - trunc(*v6.i64 * 5.42101086e-20) * 1.84467441e19;
    v18.f64[0] = NAN;
    v18.f64[1] = NAN;
    v6 = vbslq_s8(vnegq_f64(v18), v7, v6);
    v19 = 2654435761u * *v6.i64;
    if (v17 >= 0.0)
    {
      if (v17 > 0.0)
      {
        v19 += v17;
      }
    }

    else
    {
      v19 -= fabs(v17);
    }
  }

  cloudCoverHighAltPct = self->_cloudCoverHighAltPct;
  if (cloudCoverHighAltPct == 0.0)
  {
    v23 = 0;
  }

  else
  {
    if (cloudCoverHighAltPct < 0.0)
    {
      cloudCoverHighAltPct = -cloudCoverHighAltPct;
    }

    *v6.i64 = floor(cloudCoverHighAltPct + 0.5);
    v21 = (cloudCoverHighAltPct - *v6.i64) * 1.84467441e19;
    *v7.i64 = *v6.i64 - trunc(*v6.i64 * 5.42101086e-20) * 1.84467441e19;
    v22.f64[0] = NAN;
    v22.f64[1] = NAN;
    v23 = 2654435761u * *vbslq_s8(vnegq_f64(v22), v7, v6).i64;
    if (v21 >= 0.0)
    {
      if (v21 > 0.0)
      {
        v23 += v21;
      }
    }

    else
    {
      v23 -= fabs(v21);
    }
  }

  return v4 ^ v3 ^ v5 ^ v11 ^ v15 ^ v19 ^ v23;
}

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  if (![v4 isMemberOfClass:objc_opt_class()])
  {
    goto LABEL_17;
  }

  v5 = [(_SFPBWeatherColor *)self condition];
  v6 = [v4 condition];
  if ((v5 != 0) == (v6 == 0))
  {
    goto LABEL_16;
  }

  v7 = [(_SFPBWeatherColor *)self condition];
  if (v7)
  {
    v8 = v7;
    v9 = [(_SFPBWeatherColor *)self condition];
    v10 = [v4 condition];
    v11 = [v9 isEqual:v10];

    if (!v11)
    {
      goto LABEL_17;
    }
  }

  else
  {
  }

  v5 = [(_SFPBWeatherColor *)self location];
  v6 = [v4 location];
  if ((v5 != 0) == (v6 == 0))
  {
    goto LABEL_16;
  }

  v12 = [(_SFPBWeatherColor *)self location];
  if (v12)
  {
    v13 = v12;
    v14 = [(_SFPBWeatherColor *)self location];
    v15 = [v4 location];
    v16 = [v14 isEqual:v15];

    if (!v16)
    {
      goto LABEL_17;
    }
  }

  else
  {
  }

  v5 = [(_SFPBWeatherColor *)self date];
  v6 = [v4 date];
  if ((v5 != 0) == (v6 == 0))
  {
LABEL_16:

    goto LABEL_17;
  }

  v17 = [(_SFPBWeatherColor *)self date];
  if (v17)
  {
    v18 = v17;
    v19 = [(_SFPBWeatherColor *)self date];
    v20 = [v4 date];
    v21 = [v19 isEqual:v20];

    if (!v21)
    {
      goto LABEL_17;
    }
  }

  else
  {
  }

  cloudCover = self->_cloudCover;
  [v4 cloudCover];
  if (cloudCover == v25)
  {
    cloudCoverLowAltPct = self->_cloudCoverLowAltPct;
    [v4 cloudCoverLowAltPct];
    if (cloudCoverLowAltPct == v27)
    {
      cloudCoverMidAltPct = self->_cloudCoverMidAltPct;
      [v4 cloudCoverMidAltPct];
      if (cloudCoverMidAltPct == v29)
      {
        cloudCoverHighAltPct = self->_cloudCoverHighAltPct;
        [v4 cloudCoverHighAltPct];
        v22 = cloudCoverHighAltPct == v31;
        goto LABEL_18;
      }
    }
  }

LABEL_17:
  v22 = 0;
LABEL_18:

  return v22;
}

- (void)writeTo:(id)a3
{
  v12 = a3;
  v4 = [(_SFPBWeatherColor *)self condition];
  if (v4)
  {
    PBDataWriterWriteStringField();
  }

  v5 = [(_SFPBWeatherColor *)self location];
  if (v5)
  {
    PBDataWriterWriteSubmessage();
  }

  v6 = [(_SFPBWeatherColor *)self date];
  if (v6)
  {
    PBDataWriterWriteSubmessage();
  }

  [(_SFPBWeatherColor *)self cloudCover];
  if (v7 != 0.0)
  {
    PBDataWriterWriteDoubleField();
  }

  [(_SFPBWeatherColor *)self cloudCoverLowAltPct];
  if (v8 != 0.0)
  {
    PBDataWriterWriteDoubleField();
  }

  [(_SFPBWeatherColor *)self cloudCoverMidAltPct];
  if (v9 != 0.0)
  {
    PBDataWriterWriteDoubleField();
  }

  [(_SFPBWeatherColor *)self cloudCoverHighAltPct];
  v10 = v12;
  if (v11 != 0.0)
  {
    PBDataWriterWriteDoubleField();
    v10 = v12;
  }
}

- (void)setCondition:(id)a3
{
  v4 = [a3 copy];
  condition = self->_condition;
  self->_condition = v4;

  MEMORY[0x1EEE66BB8]();
}

@end