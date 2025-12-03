@interface _SFPBStructuredLocation
- (BOOL)isEqual:(id)equal;
- (NSData)jsonData;
- (_SFPBStructuredLocation)initWithDictionary:(id)dictionary;
- (_SFPBStructuredLocation)initWithFacade:(id)facade;
- (_SFPBStructuredLocation)initWithJSON:(id)n;
- (id)dictionaryRepresentation;
- (unint64_t)hash;
- (void)setTitle:(id)title;
- (void)writeTo:(id)to;
@end

@implementation _SFPBStructuredLocation

- (_SFPBStructuredLocation)initWithFacade:(id)facade
{
  facadeCopy = facade;
  v5 = [(_SFPBStructuredLocation *)self init];
  if (v5)
  {
    title = [facadeCopy title];

    if (title)
    {
      title2 = [facadeCopy title];
      [(_SFPBStructuredLocation *)v5 setTitle:title2];
    }

    geoLocation = [facadeCopy geoLocation];

    if (geoLocation)
    {
      v9 = [_SFPBLatLng alloc];
      geoLocation2 = [facadeCopy geoLocation];
      v11 = [(_SFPBLatLng *)v9 initWithFacade:geoLocation2];
      [(_SFPBStructuredLocation *)v5 setGeoLocation:v11];
    }

    if ([facadeCopy hasRadius])
    {
      [facadeCopy radius];
      [(_SFPBStructuredLocation *)v5 setRadius:?];
    }

    v12 = v5;
  }

  return v5;
}

- (_SFPBStructuredLocation)initWithDictionary:(id)dictionary
{
  dictionaryCopy = dictionary;
  v13.receiver = self;
  v13.super_class = _SFPBStructuredLocation;
  v5 = [(_SFPBStructuredLocation *)&v13 init];
  if (v5)
  {
    v6 = [dictionaryCopy objectForKeyedSubscript:@"title"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v7 = [v6 copy];
      [(_SFPBStructuredLocation *)v5 setTitle:v7];
    }

    v8 = [dictionaryCopy objectForKeyedSubscript:@"geoLocation"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v9 = [[_SFPBLatLng alloc] initWithDictionary:v8];
      [(_SFPBStructuredLocation *)v5 setGeoLocation:v9];
    }

    v10 = [dictionaryCopy objectForKeyedSubscript:@"radius"];
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

- (_SFPBStructuredLocation)initWithJSON:(id)n
{
  v7 = 0;
  v4 = [MEMORY[0x1E696ACB0] JSONObjectWithData:n options:0 error:&v7];
  if (v7 || (objc_opt_class(), (objc_opt_isKindOfClass() & 1) == 0))
  {
    selfCopy = 0;
  }

  else
  {
    self = [(_SFPBStructuredLocation *)self initWithDictionary:v4];
    selfCopy = self;
  }

  return selfCopy;
}

- (NSData)jsonData
{
  dictionaryRepresentation = [(_SFPBStructuredLocation *)self dictionaryRepresentation];
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
  if (self->_geoLocation)
  {
    geoLocation = [(_SFPBStructuredLocation *)self geoLocation];
    dictionaryRepresentation = [geoLocation dictionaryRepresentation];
    if (dictionaryRepresentation)
    {
      [dictionary setObject:dictionaryRepresentation forKeyedSubscript:@"geoLocation"];
    }

    else
    {
      null = [MEMORY[0x1E695DFB0] null];
      [dictionary setObject:null forKeyedSubscript:@"geoLocation"];
    }
  }

  if (self->_radius != 0.0)
  {
    v7 = MEMORY[0x1E696AD98];
    [(_SFPBStructuredLocation *)self radius];
    v8 = [v7 numberWithDouble:?];
    [dictionary setObject:v8 forKeyedSubscript:@"radius"];
  }

  if (self->_title)
  {
    title = [(_SFPBStructuredLocation *)self title];
    v10 = [title copy];
    [dictionary setObject:v10 forKeyedSubscript:@"title"];
  }

  return dictionary;
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

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  if (![equalCopy isMemberOfClass:objc_opt_class()])
  {
    goto LABEL_12;
  }

  title = [(_SFPBStructuredLocation *)self title];
  title2 = [equalCopy title];
  if ((title != 0) == (title2 == 0))
  {
    goto LABEL_11;
  }

  title3 = [(_SFPBStructuredLocation *)self title];
  if (title3)
  {
    v8 = title3;
    title4 = [(_SFPBStructuredLocation *)self title];
    title5 = [equalCopy title];
    v11 = [title4 isEqual:title5];

    if (!v11)
    {
      goto LABEL_12;
    }
  }

  else
  {
  }

  title = [(_SFPBStructuredLocation *)self geoLocation];
  title2 = [equalCopy geoLocation];
  if ((title != 0) != (title2 == 0))
  {
    geoLocation = [(_SFPBStructuredLocation *)self geoLocation];
    if (!geoLocation)
    {

LABEL_15:
      radius = self->_radius;
      [equalCopy radius];
      v17 = radius == v20;
      goto LABEL_13;
    }

    v13 = geoLocation;
    geoLocation2 = [(_SFPBStructuredLocation *)self geoLocation];
    geoLocation3 = [equalCopy geoLocation];
    v16 = [geoLocation2 isEqual:geoLocation3];

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

- (void)writeTo:(id)to
{
  toCopy = to;
  title = [(_SFPBStructuredLocation *)self title];
  if (title)
  {
    PBDataWriterWriteStringField();
  }

  geoLocation = [(_SFPBStructuredLocation *)self geoLocation];
  if (geoLocation)
  {
    PBDataWriterWriteSubmessage();
  }

  [(_SFPBStructuredLocation *)self radius];
  v6 = toCopy;
  if (v7 != 0.0)
  {
    PBDataWriterWriteDoubleField();
    v6 = toCopy;
  }
}

- (void)setTitle:(id)title
{
  v4 = [title copy];
  title = self->_title;
  self->_title = v4;

  MEMORY[0x1EEE66BB8]();
}

@end