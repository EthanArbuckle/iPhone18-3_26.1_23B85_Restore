@interface _SFPBLatLng
- (BOOL)isEqual:(id)equal;
- (NSData)jsonData;
- (_SFPBLatLng)initWithDictionary:(id)dictionary;
- (_SFPBLatLng)initWithFacade:(id)facade;
- (_SFPBLatLng)initWithJSON:(id)n;
- (id)dictionaryRepresentation;
- (unint64_t)hash;
- (void)writeTo:(id)to;
@end

@implementation _SFPBLatLng

- (_SFPBLatLng)initWithFacade:(id)facade
{
  facadeCopy = facade;
  v5 = [(_SFPBLatLng *)self init];
  if (v5)
  {
    if ([facadeCopy hasLat])
    {
      [facadeCopy lat];
      [(_SFPBLatLng *)v5 setLat:?];
    }

    if ([facadeCopy hasLng])
    {
      [facadeCopy lng];
      [(_SFPBLatLng *)v5 setLng:?];
    }

    v6 = v5;
  }

  return v5;
}

- (_SFPBLatLng)initWithDictionary:(id)dictionary
{
  dictionaryCopy = dictionary;
  v10.receiver = self;
  v10.super_class = _SFPBLatLng;
  v5 = [(_SFPBLatLng *)&v10 init];
  if (v5)
  {
    v6 = [dictionaryCopy objectForKeyedSubscript:@"lat"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      [v6 doubleValue];
      [(_SFPBLatLng *)v5 setLat:?];
    }

    v7 = [dictionaryCopy objectForKeyedSubscript:@"lng"];
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

- (_SFPBLatLng)initWithJSON:(id)n
{
  v7 = 0;
  v4 = [MEMORY[0x1E696ACB0] JSONObjectWithData:n options:0 error:&v7];
  if (v7 || (objc_opt_class(), (objc_opt_isKindOfClass() & 1) == 0))
  {
    selfCopy = 0;
  }

  else
  {
    self = [(_SFPBLatLng *)self initWithDictionary:v4];
    selfCopy = self;
  }

  return selfCopy;
}

- (NSData)jsonData
{
  dictionaryRepresentation = [(_SFPBLatLng *)self dictionaryRepresentation];
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
  if (self->_lat != 0.0)
  {
    v4 = MEMORY[0x1E696AD98];
    [(_SFPBLatLng *)self lat];
    v5 = [v4 numberWithDouble:?];
    [dictionary setObject:v5 forKeyedSubscript:@"lat"];
  }

  if (self->_lng != 0.0)
  {
    v6 = MEMORY[0x1E696AD98];
    [(_SFPBLatLng *)self lng];
    v7 = [v6 numberWithDouble:?];
    [dictionary setObject:v7 forKeyedSubscript:@"lng"];
  }

  return dictionary;
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

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  if ([equalCopy isMemberOfClass:objc_opt_class()] && (lat = self->_lat, objc_msgSend(equalCopy, "lat"), lat == v6))
  {
    lng = self->_lng;
    [equalCopy lng];
    v7 = lng == v10;
  }

  else
  {
    v7 = 0;
  }

  return v7;
}

- (void)writeTo:(id)to
{
  toCopy = to;
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