@interface _SFPBWeatherColor
- (BOOL)isEqual:(id)equal;
- (NSData)jsonData;
- (_SFPBWeatherColor)initWithDictionary:(id)dictionary;
- (_SFPBWeatherColor)initWithFacade:(id)facade;
- (_SFPBWeatherColor)initWithJSON:(id)n;
- (id)dictionaryRepresentation;
- (unint64_t)hash;
- (void)setCondition:(id)condition;
- (void)writeTo:(id)to;
@end

@implementation _SFPBWeatherColor

- (_SFPBWeatherColor)initWithFacade:(id)facade
{
  facadeCopy = facade;
  v5 = [(_SFPBWeatherColor *)self init];
  if (v5)
  {
    condition = [facadeCopy condition];

    if (condition)
    {
      condition2 = [facadeCopy condition];
      [(_SFPBWeatherColor *)v5 setCondition:condition2];
    }

    location = [facadeCopy location];

    if (location)
    {
      v9 = [_SFPBLatLng alloc];
      location2 = [facadeCopy location];
      v11 = [(_SFPBLatLng *)v9 initWithFacade:location2];
      [(_SFPBWeatherColor *)v5 setLocation:v11];
    }

    date = [facadeCopy date];

    if (date)
    {
      v13 = [_SFPBDate alloc];
      date2 = [facadeCopy date];
      v15 = [(_SFPBDate *)v13 initWithNSDate:date2];
      [(_SFPBWeatherColor *)v5 setDate:v15];
    }

    if ([facadeCopy hasCloudCover])
    {
      [facadeCopy cloudCover];
      [(_SFPBWeatherColor *)v5 setCloudCover:?];
    }

    if ([facadeCopy hasCloudCoverLowAltPct])
    {
      [facadeCopy cloudCoverLowAltPct];
      [(_SFPBWeatherColor *)v5 setCloudCoverLowAltPct:?];
    }

    if ([facadeCopy hasCloudCoverMidAltPct])
    {
      [facadeCopy cloudCoverMidAltPct];
      [(_SFPBWeatherColor *)v5 setCloudCoverMidAltPct:?];
    }

    if ([facadeCopy hasCloudCoverHighAltPct])
    {
      [facadeCopy cloudCoverHighAltPct];
      [(_SFPBWeatherColor *)v5 setCloudCoverHighAltPct:?];
    }

    v16 = v5;
  }

  return v5;
}

- (_SFPBWeatherColor)initWithDictionary:(id)dictionary
{
  dictionaryCopy = dictionary;
  v18.receiver = self;
  v18.super_class = _SFPBWeatherColor;
  v5 = [(_SFPBWeatherColor *)&v18 init];
  if (v5)
  {
    v6 = [dictionaryCopy objectForKeyedSubscript:@"condition"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v7 = [v6 copy];
      [(_SFPBWeatherColor *)v5 setCondition:v7];
    }

    v8 = [dictionaryCopy objectForKeyedSubscript:@"location"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v9 = [[_SFPBLatLng alloc] initWithDictionary:v8];
      [(_SFPBWeatherColor *)v5 setLocation:v9];
    }

    v10 = [dictionaryCopy objectForKeyedSubscript:@"date"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v11 = [[_SFPBDate alloc] initWithDictionary:v10];
      [(_SFPBWeatherColor *)v5 setDate:v11];
    }

    v12 = [dictionaryCopy objectForKeyedSubscript:@"cloudCover"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      [v12 doubleValue];
      [(_SFPBWeatherColor *)v5 setCloudCover:?];
    }

    v13 = [dictionaryCopy objectForKeyedSubscript:@"cloudCoverLowAltPct"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      [v13 doubleValue];
      [(_SFPBWeatherColor *)v5 setCloudCoverLowAltPct:?];
    }

    v14 = [dictionaryCopy objectForKeyedSubscript:@"cloudCoverMidAltPct"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      [v14 doubleValue];
      [(_SFPBWeatherColor *)v5 setCloudCoverMidAltPct:?];
    }

    v15 = [dictionaryCopy objectForKeyedSubscript:@"cloudCoverHighAltPct"];
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

- (_SFPBWeatherColor)initWithJSON:(id)n
{
  v7 = 0;
  v4 = [MEMORY[0x1E696ACB0] JSONObjectWithData:n options:0 error:&v7];
  if (v7 || (objc_opt_class(), (objc_opt_isKindOfClass() & 1) == 0))
  {
    selfCopy = 0;
  }

  else
  {
    self = [(_SFPBWeatherColor *)self initWithDictionary:v4];
    selfCopy = self;
  }

  return selfCopy;
}

- (NSData)jsonData
{
  dictionaryRepresentation = [(_SFPBWeatherColor *)self dictionaryRepresentation];
  if ([MEMORY[0x1E696ACB0] isValidJSONObject:dictionaryRepresentation])
  {
    v3 = [MEMORY[0x1E696ACB0] dataWithJSONObject:dictionaryRepresentation options:0 error:0];
  }

  else
  {
    v3 = 0;
  }

  return v3;
}

- (id)dictionaryRepresentation
{
  dictionary = [MEMORY[0x1E695DF90] dictionary];
  if (self->_cloudCover != 0.0)
  {
    v4 = MEMORY[0x1E696AD98];
    [(_SFPBWeatherColor *)self cloudCover];
    v5 = [v4 numberWithDouble:?];
    [dictionary setObject:v5 forKeyedSubscript:@"cloudCover"];
  }

  if (self->_cloudCoverHighAltPct != 0.0)
  {
    v6 = MEMORY[0x1E696AD98];
    [(_SFPBWeatherColor *)self cloudCoverHighAltPct];
    v7 = [v6 numberWithDouble:?];
    [dictionary setObject:v7 forKeyedSubscript:@"cloudCoverHighAltPct"];
  }

  if (self->_cloudCoverLowAltPct != 0.0)
  {
    v8 = MEMORY[0x1E696AD98];
    [(_SFPBWeatherColor *)self cloudCoverLowAltPct];
    v9 = [v8 numberWithDouble:?];
    [dictionary setObject:v9 forKeyedSubscript:@"cloudCoverLowAltPct"];
  }

  if (self->_cloudCoverMidAltPct != 0.0)
  {
    v10 = MEMORY[0x1E696AD98];
    [(_SFPBWeatherColor *)self cloudCoverMidAltPct];
    v11 = [v10 numberWithDouble:?];
    [dictionary setObject:v11 forKeyedSubscript:@"cloudCoverMidAltPct"];
  }

  if (self->_condition)
  {
    condition = [(_SFPBWeatherColor *)self condition];
    v13 = [condition copy];
    [dictionary setObject:v13 forKeyedSubscript:@"condition"];
  }

  if (self->_date)
  {
    date = [(_SFPBWeatherColor *)self date];
    dictionaryRepresentation = [date dictionaryRepresentation];
    if (dictionaryRepresentation)
    {
      [dictionary setObject:dictionaryRepresentation forKeyedSubscript:@"date"];
    }

    else
    {
      null = [MEMORY[0x1E695DFB0] null];
      [dictionary setObject:null forKeyedSubscript:@"date"];
    }
  }

  if (self->_location)
  {
    location = [(_SFPBWeatherColor *)self location];
    dictionaryRepresentation2 = [location dictionaryRepresentation];
    if (dictionaryRepresentation2)
    {
      [dictionary setObject:dictionaryRepresentation2 forKeyedSubscript:@"location"];
    }

    else
    {
      null2 = [MEMORY[0x1E695DFB0] null];
      [dictionary setObject:null2 forKeyedSubscript:@"location"];
    }
  }

  return dictionary;
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

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  if (![equalCopy isMemberOfClass:objc_opt_class()])
  {
    goto LABEL_17;
  }

  condition = [(_SFPBWeatherColor *)self condition];
  condition2 = [equalCopy condition];
  if ((condition != 0) == (condition2 == 0))
  {
    goto LABEL_16;
  }

  condition3 = [(_SFPBWeatherColor *)self condition];
  if (condition3)
  {
    v8 = condition3;
    condition4 = [(_SFPBWeatherColor *)self condition];
    condition5 = [equalCopy condition];
    v11 = [condition4 isEqual:condition5];

    if (!v11)
    {
      goto LABEL_17;
    }
  }

  else
  {
  }

  condition = [(_SFPBWeatherColor *)self location];
  condition2 = [equalCopy location];
  if ((condition != 0) == (condition2 == 0))
  {
    goto LABEL_16;
  }

  location = [(_SFPBWeatherColor *)self location];
  if (location)
  {
    v13 = location;
    location2 = [(_SFPBWeatherColor *)self location];
    location3 = [equalCopy location];
    v16 = [location2 isEqual:location3];

    if (!v16)
    {
      goto LABEL_17;
    }
  }

  else
  {
  }

  condition = [(_SFPBWeatherColor *)self date];
  condition2 = [equalCopy date];
  if ((condition != 0) == (condition2 == 0))
  {
LABEL_16:

    goto LABEL_17;
  }

  date = [(_SFPBWeatherColor *)self date];
  if (date)
  {
    v18 = date;
    date2 = [(_SFPBWeatherColor *)self date];
    date3 = [equalCopy date];
    v21 = [date2 isEqual:date3];

    if (!v21)
    {
      goto LABEL_17;
    }
  }

  else
  {
  }

  cloudCover = self->_cloudCover;
  [equalCopy cloudCover];
  if (cloudCover == v25)
  {
    cloudCoverLowAltPct = self->_cloudCoverLowAltPct;
    [equalCopy cloudCoverLowAltPct];
    if (cloudCoverLowAltPct == v27)
    {
      cloudCoverMidAltPct = self->_cloudCoverMidAltPct;
      [equalCopy cloudCoverMidAltPct];
      if (cloudCoverMidAltPct == v29)
      {
        cloudCoverHighAltPct = self->_cloudCoverHighAltPct;
        [equalCopy cloudCoverHighAltPct];
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

- (void)writeTo:(id)to
{
  toCopy = to;
  condition = [(_SFPBWeatherColor *)self condition];
  if (condition)
  {
    PBDataWriterWriteStringField();
  }

  location = [(_SFPBWeatherColor *)self location];
  if (location)
  {
    PBDataWriterWriteSubmessage();
  }

  date = [(_SFPBWeatherColor *)self date];
  if (date)
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
  v10 = toCopy;
  if (v11 != 0.0)
  {
    PBDataWriterWriteDoubleField();
    v10 = toCopy;
  }
}

- (void)setCondition:(id)condition
{
  v4 = [condition copy];
  condition = self->_condition;
  self->_condition = v4;

  MEMORY[0x1EEE66BB8]();
}

@end