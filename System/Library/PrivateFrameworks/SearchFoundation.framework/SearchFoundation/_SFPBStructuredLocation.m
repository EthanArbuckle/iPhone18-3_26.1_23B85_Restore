@interface _SFPBStructuredLocation
- (BOOL)isEqual:(id)a3;
- (NSData)jsonData;
- (_SFPBStructuredLocation)initWithDictionary:(id)a3;
- (_SFPBStructuredLocation)initWithFacade:(id)a3;
- (_SFPBStructuredLocation)initWithJSON:(id)a3;
- (id)dictionaryRepresentation;
- (unint64_t)hash;
- (void)setTitle:(id)a3;
- (void)writeTo:(id)a3;
@end

@implementation _SFPBStructuredLocation

- (_SFPBStructuredLocation)initWithFacade:(id)a3
{
  v4 = a3;
  v5 = [(_SFPBStructuredLocation *)self init];
  if (v5)
  {
    v6 = [v4 title];

    if (v6)
    {
      v7 = [v4 title];
      [(_SFPBStructuredLocation *)v5 setTitle:v7];
    }

    v8 = [v4 geoLocation];

    if (v8)
    {
      v9 = [_SFPBLatLng alloc];
      v10 = [v4 geoLocation];
      v11 = [(_SFPBLatLng *)v9 initWithFacade:v10];
      [(_SFPBStructuredLocation *)v5 setGeoLocation:v11];
    }

    if ([v4 hasRadius])
    {
      [v4 radius];
      [(_SFPBStructuredLocation *)v5 setRadius:?];
    }

    v12 = v5;
  }

  return v5;
}

- (_SFPBStructuredLocation)initWithDictionary:(id)a3
{
  v4 = a3;
  v13.receiver = self;
  v13.super_class = _SFPBStructuredLocation;
  v5 = [(_SFPBStructuredLocation *)&v13 init];
  if (v5)
  {
    v6 = [v4 objectForKeyedSubscript:@"title"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v7 = [v6 copy];
      [(_SFPBStructuredLocation *)v5 setTitle:v7];
    }

    v8 = [v4 objectForKeyedSubscript:@"geoLocation"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v9 = [[_SFPBLatLng alloc] initWithDictionary:v8];
      [(_SFPBStructuredLocation *)v5 setGeoLocation:v9];
    }

    v10 = [v4 objectForKeyedSubscript:@"radius"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      [v10 doubleValue];
      [(_SFPBStructuredLocation *)v5 setRadius:?];
    }

    v11 = v5;
  }

  return v5;
}

- (_SFPBStructuredLocation)initWithJSON:(id)a3
{
  v7 = 0;
  v4 = [MEMORY[0x1E696ACB0] JSONObjectWithData:a3 options:0 error:&v7];
  if (v7 || (objc_opt_class(), (objc_opt_isKindOfClass() & 1) == 0))
  {
    v5 = 0;
  }

  else
  {
    self = [(_SFPBStructuredLocation *)self initWithDictionary:v4];
    v5 = self;
  }

  return v5;
}

- (NSData)jsonData
{
  v2 = [(_SFPBStructuredLocation *)self dictionaryRepresentation];
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
  if (self->_geoLocation)
  {
    v4 = [(_SFPBStructuredLocation *)self geoLocation];
    v5 = [v4 dictionaryRepresentation];
    if (v5)
    {
      [v3 setObject:v5 forKeyedSubscript:@"geoLocation"];
    }

    else
    {
      v6 = [MEMORY[0x1E695DFB0] null];
      [v3 setObject:v6 forKeyedSubscript:@"geoLocation"];
    }
  }

  if (self->_radius != 0.0)
  {
    v7 = MEMORY[0x1E696AD98];
    [(_SFPBStructuredLocation *)self radius];
    v8 = [v7 numberWithDouble:?];
    [v3 setObject:v8 forKeyedSubscript:@"radius"];
  }

  if (self->_title)
  {
    v9 = [(_SFPBStructuredLocation *)self title];
    v10 = [v9 copy];
    [v3 setObject:v10 forKeyedSubscript:@"title"];
  }

  return v3;
}

- (unint64_t)hash
{
  v3 = [(NSString *)self->_title hash];
  v4 = [(_SFPBLatLng *)self->_geoLocation hash];
  radius = self->_radius;
  if (radius == 0.0)
  {
    v10 = 0;
  }

  else
  {
    if (radius < 0.0)
    {
      radius = -radius;
    }

    *v5.i64 = floor(radius + 0.5);
    v8 = (radius - *v5.i64) * 1.84467441e19;
    *v6.i64 = *v5.i64 - trunc(*v5.i64 * 5.42101086e-20) * 1.84467441e19;
    v9.f64[0] = NAN;
    v9.f64[1] = NAN;
    v10 = 2654435761u * *vbslq_s8(vnegq_f64(v9), v6, v5).i64;
    if (v8 >= 0.0)
    {
      if (v8 > 0.0)
      {
        v10 += v8;
      }
    }

    else
    {
      v10 -= fabs(v8);
    }
  }

  return v4 ^ v3 ^ v10;
}

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  if (![v4 isMemberOfClass:objc_opt_class()])
  {
    goto LABEL_12;
  }

  v5 = [(_SFPBStructuredLocation *)self title];
  v6 = [v4 title];
  if ((v5 != 0) == (v6 == 0))
  {
    goto LABEL_11;
  }

  v7 = [(_SFPBStructuredLocation *)self title];
  if (v7)
  {
    v8 = v7;
    v9 = [(_SFPBStructuredLocation *)self title];
    v10 = [v4 title];
    v11 = [v9 isEqual:v10];

    if (!v11)
    {
      goto LABEL_12;
    }
  }

  else
  {
  }

  v5 = [(_SFPBStructuredLocation *)self geoLocation];
  v6 = [v4 geoLocation];
  if ((v5 != 0) != (v6 == 0))
  {
    v12 = [(_SFPBStructuredLocation *)self geoLocation];
    if (!v12)
    {

LABEL_15:
      radius = self->_radius;
      [v4 radius];
      v17 = radius == v20;
      goto LABEL_13;
    }

    v13 = v12;
    v14 = [(_SFPBStructuredLocation *)self geoLocation];
    v15 = [v4 geoLocation];
    v16 = [v14 isEqual:v15];

    if (v16)
    {
      goto LABEL_15;
    }
  }

  else
  {
LABEL_11:
  }

LABEL_12:
  v17 = 0;
LABEL_13:

  return v17;
}

- (void)writeTo:(id)a3
{
  v8 = a3;
  v4 = [(_SFPBStructuredLocation *)self title];
  if (v4)
  {
    PBDataWriterWriteStringField();
  }

  v5 = [(_SFPBStructuredLocation *)self geoLocation];
  if (v5)
  {
    PBDataWriterWriteSubmessage();
  }

  [(_SFPBStructuredLocation *)self radius];
  v6 = v8;
  if (v7 != 0.0)
  {
    PBDataWriterWriteDoubleField();
    v6 = v8;
  }
}

- (void)setTitle:(id)a3
{
  v4 = [a3 copy];
  title = self->_title;
  self->_title = v4;

  MEMORY[0x1EEE66BB8]();
}

@end