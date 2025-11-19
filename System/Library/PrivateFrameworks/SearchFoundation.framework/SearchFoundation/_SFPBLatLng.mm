@interface _SFPBLatLng
- (BOOL)isEqual:(id)a3;
- (NSData)jsonData;
- (_SFPBLatLng)initWithDictionary:(id)a3;
- (_SFPBLatLng)initWithFacade:(id)a3;
- (_SFPBLatLng)initWithJSON:(id)a3;
- (id)dictionaryRepresentation;
- (unint64_t)hash;
- (void)writeTo:(id)a3;
@end

@implementation _SFPBLatLng

- (_SFPBLatLng)initWithFacade:(id)a3
{
  v4 = a3;
  v5 = [(_SFPBLatLng *)self init];
  if (v5)
  {
    if ([v4 hasLat])
    {
      [v4 lat];
      [(_SFPBLatLng *)v5 setLat:?];
    }

    if ([v4 hasLng])
    {
      [v4 lng];
      [(_SFPBLatLng *)v5 setLng:?];
    }

    v6 = v5;
  }

  return v5;
}

- (_SFPBLatLng)initWithDictionary:(id)a3
{
  v4 = a3;
  v10.receiver = self;
  v10.super_class = _SFPBLatLng;
  v5 = [(_SFPBLatLng *)&v10 init];
  if (v5)
  {
    v6 = [v4 objectForKeyedSubscript:@"lat"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      [v6 doubleValue];
      [(_SFPBLatLng *)v5 setLat:?];
    }

    v7 = [v4 objectForKeyedSubscript:@"lng"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      [v7 doubleValue];
      [(_SFPBLatLng *)v5 setLng:?];
    }

    v8 = v5;
  }

  return v5;
}

- (_SFPBLatLng)initWithJSON:(id)a3
{
  v7 = 0;
  v4 = [MEMORY[0x1E696ACB0] JSONObjectWithData:a3 options:0 error:&v7];
  if (v7 || (objc_opt_class(), (objc_opt_isKindOfClass() & 1) == 0))
  {
    v5 = 0;
  }

  else
  {
    self = [(_SFPBLatLng *)self initWithDictionary:v4];
    v5 = self;
  }

  return v5;
}

- (NSData)jsonData
{
  v2 = [(_SFPBLatLng *)self dictionaryRepresentation];
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
  if (self->_lat != 0.0)
  {
    v4 = MEMORY[0x1E696AD98];
    [(_SFPBLatLng *)self lat];
    v5 = [v4 numberWithDouble:?];
    [v3 setObject:v5 forKeyedSubscript:@"lat"];
  }

  if (self->_lng != 0.0)
  {
    v6 = MEMORY[0x1E696AD98];
    [(_SFPBLatLng *)self lng];
    v7 = [v6 numberWithDouble:?];
    [v3 setObject:v7 forKeyedSubscript:@"lng"];
  }

  return v3;
}

- (unint64_t)hash
{
  lat = self->_lat;
  if (lat == 0.0)
  {
    v7 = 0;
  }

  else
  {
    if (lat < 0.0)
    {
      lat = -lat;
    }

    *v2.i64 = floor(lat + 0.5);
    v5 = (lat - *v2.i64) * 1.84467441e19;
    *v3.i64 = *v2.i64 - trunc(*v2.i64 * 5.42101086e-20) * 1.84467441e19;
    v6.f64[0] = NAN;
    v6.f64[1] = NAN;
    v2 = vbslq_s8(vnegq_f64(v6), v3, v2);
    v7 = 2654435761u * *v2.i64;
    if (v5 >= 0.0)
    {
      if (v5 > 0.0)
      {
        v7 += v5;
      }
    }

    else
    {
      v7 -= fabs(v5);
    }
  }

  lng = self->_lng;
  if (lng == 0.0)
  {
    v11 = 0;
  }

  else
  {
    if (lng < 0.0)
    {
      lng = -lng;
    }

    *v2.i64 = floor(lng + 0.5);
    v9 = (lng - *v2.i64) * 1.84467441e19;
    *v3.i64 = *v2.i64 - trunc(*v2.i64 * 5.42101086e-20) * 1.84467441e19;
    v10.f64[0] = NAN;
    v10.f64[1] = NAN;
    v11 = 2654435761u * *vbslq_s8(vnegq_f64(v10), v3, v2).i64;
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

  return v11 ^ v7;
}

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  if ([v4 isMemberOfClass:objc_opt_class()] && (lat = self->_lat, objc_msgSend(v4, "lat"), lat == v6))
  {
    lng = self->_lng;
    [v4 lng];
    v7 = lng == v10;
  }

  else
  {
    v7 = 0;
  }

  return v7;
}

- (void)writeTo:(id)a3
{
  v6 = a3;
  [(_SFPBLatLng *)self lat];
  if (v4 != 0.0)
  {
    PBDataWriterWriteDoubleField();
  }

  [(_SFPBLatLng *)self lng];
  if (v5 != 0.0)
  {
    PBDataWriterWriteDoubleField();
  }
}

@end