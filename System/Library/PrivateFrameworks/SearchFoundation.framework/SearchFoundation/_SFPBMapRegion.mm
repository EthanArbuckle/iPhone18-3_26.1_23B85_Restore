@interface _SFPBMapRegion
- (BOOL)isEqual:(id)equal;
- (NSData)jsonData;
- (_SFPBMapRegion)initWithDictionary:(id)dictionary;
- (_SFPBMapRegion)initWithFacade:(id)facade;
- (_SFPBMapRegion)initWithJSON:(id)n;
- (id)dictionaryRepresentation;
- (unint64_t)hash;
- (void)writeTo:(id)to;
@end

@implementation _SFPBMapRegion

- (_SFPBMapRegion)initWithFacade:(id)facade
{
  facadeCopy = facade;
  v5 = [(_SFPBMapRegion *)self init];
  if (v5)
  {
    if ([facadeCopy hasSouthLat])
    {
      [facadeCopy southLat];
      [(_SFPBMapRegion *)v5 setSouthLat:?];
    }

    if ([facadeCopy hasWestLng])
    {
      [facadeCopy westLng];
      [(_SFPBMapRegion *)v5 setWestLng:?];
    }

    if ([facadeCopy hasNorthLat])
    {
      [facadeCopy northLat];
      [(_SFPBMapRegion *)v5 setNorthLat:?];
    }

    if ([facadeCopy hasEastLng])
    {
      [facadeCopy eastLng];
      [(_SFPBMapRegion *)v5 setEastLng:?];
    }

    if ([facadeCopy hasAltitudeInMeters])
    {
      [facadeCopy altitudeInMeters];
      [(_SFPBMapRegion *)v5 setAltitudeInMeters:?];
    }

    v6 = v5;
  }

  return v5;
}

- (_SFPBMapRegion)initWithDictionary:(id)dictionary
{
  dictionaryCopy = dictionary;
  v13.receiver = self;
  v13.super_class = _SFPBMapRegion;
  v5 = [(_SFPBMapRegion *)&v13 init];
  if (v5)
  {
    v6 = [dictionaryCopy objectForKeyedSubscript:@"southLat"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      [v6 doubleValue];
      [(_SFPBMapRegion *)v5 setSouthLat:?];
    }

    v7 = [dictionaryCopy objectForKeyedSubscript:@"westLng"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      [v7 doubleValue];
      [(_SFPBMapRegion *)v5 setWestLng:?];
    }

    v8 = [dictionaryCopy objectForKeyedSubscript:@"northLat"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      [v8 doubleValue];
      [(_SFPBMapRegion *)v5 setNorthLat:?];
    }

    v9 = [dictionaryCopy objectForKeyedSubscript:@"eastLng"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      [v9 doubleValue];
      [(_SFPBMapRegion *)v5 setEastLng:?];
    }

    v10 = [dictionaryCopy objectForKeyedSubscript:@"altitudeInMeters"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      [v10 doubleValue];
      [(_SFPBMapRegion *)v5 setAltitudeInMeters:?];
    }

    v11 = v5;
  }

  return v5;
}

- (_SFPBMapRegion)initWithJSON:(id)n
{
  v7 = 0;
  v4 = [MEMORY[0x1E696ACB0] JSONObjectWithData:n options:0 error:&v7];
  if (v7 || (objc_opt_class(), (objc_opt_isKindOfClass() & 1) == 0))
  {
    selfCopy = 0;
  }

  else
  {
    self = [(_SFPBMapRegion *)self initWithDictionary:v4];
    selfCopy = self;
  }

  return selfCopy;
}

- (NSData)jsonData
{
  dictionaryRepresentation = [(_SFPBMapRegion *)self dictionaryRepresentation];
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
  if (self->_altitudeInMeters != 0.0)
  {
    v4 = MEMORY[0x1E696AD98];
    [(_SFPBMapRegion *)self altitudeInMeters];
    v5 = [v4 numberWithDouble:?];
    [dictionary setObject:v5 forKeyedSubscript:@"altitudeInMeters"];
  }

  if (self->_eastLng != 0.0)
  {
    v6 = MEMORY[0x1E696AD98];
    [(_SFPBMapRegion *)self eastLng];
    v7 = [v6 numberWithDouble:?];
    [dictionary setObject:v7 forKeyedSubscript:@"eastLng"];
  }

  if (self->_northLat != 0.0)
  {
    v8 = MEMORY[0x1E696AD98];
    [(_SFPBMapRegion *)self northLat];
    v9 = [v8 numberWithDouble:?];
    [dictionary setObject:v9 forKeyedSubscript:@"northLat"];
  }

  if (self->_southLat != 0.0)
  {
    v10 = MEMORY[0x1E696AD98];
    [(_SFPBMapRegion *)self southLat];
    v11 = [v10 numberWithDouble:?];
    [dictionary setObject:v11 forKeyedSubscript:@"southLat"];
  }

  if (self->_westLng != 0.0)
  {
    v12 = MEMORY[0x1E696AD98];
    [(_SFPBMapRegion *)self westLng];
    v13 = [v12 numberWithDouble:?];
    [dictionary setObject:v13 forKeyedSubscript:@"westLng"];
  }

  return dictionary;
}

- (unint64_t)hash
{
  southLat = self->_southLat;
  if (southLat == 0.0)
  {
    v7 = 0;
  }

  else
  {
    if (southLat < 0.0)
    {
      southLat = -southLat;
    }

    *v2.i64 = floor(southLat + 0.5);
    v5 = (southLat - *v2.i64) * 1.84467441e19;
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

  westLng = self->_westLng;
  if (westLng == 0.0)
  {
    v11 = 0;
  }

  else
  {
    if (westLng < 0.0)
    {
      westLng = -westLng;
    }

    *v2.i64 = floor(westLng + 0.5);
    v9 = (westLng - *v2.i64) * 1.84467441e19;
    *v3.i64 = *v2.i64 - trunc(*v2.i64 * 5.42101086e-20) * 1.84467441e19;
    v10.f64[0] = NAN;
    v10.f64[1] = NAN;
    v2 = vbslq_s8(vnegq_f64(v10), v3, v2);
    v11 = 2654435761u * *v2.i64;
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

  northLat = self->_northLat;
  if (northLat == 0.0)
  {
    v15 = 0;
  }

  else
  {
    if (northLat < 0.0)
    {
      northLat = -northLat;
    }

    *v2.i64 = floor(northLat + 0.5);
    v13 = (northLat - *v2.i64) * 1.84467441e19;
    *v3.i64 = *v2.i64 - trunc(*v2.i64 * 5.42101086e-20) * 1.84467441e19;
    v14.f64[0] = NAN;
    v14.f64[1] = NAN;
    v2 = vbslq_s8(vnegq_f64(v14), v3, v2);
    v15 = 2654435761u * *v2.i64;
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

  eastLng = self->_eastLng;
  if (eastLng == 0.0)
  {
    v19 = 0;
  }

  else
  {
    if (eastLng < 0.0)
    {
      eastLng = -eastLng;
    }

    *v2.i64 = floor(eastLng + 0.5);
    v17 = (eastLng - *v2.i64) * 1.84467441e19;
    *v3.i64 = *v2.i64 - trunc(*v2.i64 * 5.42101086e-20) * 1.84467441e19;
    v18.f64[0] = NAN;
    v18.f64[1] = NAN;
    v2 = vbslq_s8(vnegq_f64(v18), v3, v2);
    v19 = 2654435761u * *v2.i64;
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

  altitudeInMeters = self->_altitudeInMeters;
  if (altitudeInMeters == 0.0)
  {
    v23 = 0;
  }

  else
  {
    if (altitudeInMeters < 0.0)
    {
      altitudeInMeters = -altitudeInMeters;
    }

    *v2.i64 = floor(altitudeInMeters + 0.5);
    v21 = (altitudeInMeters - *v2.i64) * 1.84467441e19;
    *v3.i64 = *v2.i64 - trunc(*v2.i64 * 5.42101086e-20) * 1.84467441e19;
    v22.f64[0] = NAN;
    v22.f64[1] = NAN;
    v23 = 2654435761u * *vbslq_s8(vnegq_f64(v22), v3, v2).i64;
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

  return v11 ^ v7 ^ v15 ^ v19 ^ v23;
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  if (![equalCopy isMemberOfClass:objc_opt_class()])
  {
    goto LABEL_6;
  }

  southLat = self->_southLat;
  [equalCopy southLat];
  if (southLat != v6)
  {
    goto LABEL_6;
  }

  westLng = self->_westLng;
  [equalCopy westLng];
  if (westLng == v8 && (northLat = self->_northLat, [equalCopy northLat], northLat == v10) && (eastLng = self->_eastLng, objc_msgSend(equalCopy, "eastLng"), eastLng == v12))
  {
    altitudeInMeters = self->_altitudeInMeters;
    [equalCopy altitudeInMeters];
    v13 = altitudeInMeters == v16;
  }

  else
  {
LABEL_6:
    v13 = 0;
  }

  return v13;
}

- (void)writeTo:(id)to
{
  toCopy = to;
  [(_SFPBMapRegion *)self southLat];
  if (v4 != 0.0)
  {
    PBDataWriterWriteDoubleField();
  }

  [(_SFPBMapRegion *)self westLng];
  if (v5 != 0.0)
  {
    PBDataWriterWriteDoubleField();
  }

  [(_SFPBMapRegion *)self northLat];
  if (v6 != 0.0)
  {
    PBDataWriterWriteDoubleField();
  }

  [(_SFPBMapRegion *)self eastLng];
  if (v7 != 0.0)
  {
    PBDataWriterWriteDoubleField();
  }

  [(_SFPBMapRegion *)self altitudeInMeters];
  v8 = toCopy;
  if (v9 != 0.0)
  {
    PBDataWriterWriteDoubleField();
    v8 = toCopy;
  }
}

@end