@interface _SFPBMapRegion
- (BOOL)isEqual:(id)a3;
- (NSData)jsonData;
- (_SFPBMapRegion)initWithDictionary:(id)a3;
- (_SFPBMapRegion)initWithFacade:(id)a3;
- (_SFPBMapRegion)initWithJSON:(id)a3;
- (id)dictionaryRepresentation;
- (unint64_t)hash;
- (void)writeTo:(id)a3;
@end

@implementation _SFPBMapRegion

- (_SFPBMapRegion)initWithFacade:(id)a3
{
  v4 = a3;
  v5 = [(_SFPBMapRegion *)self init];
  if (v5)
  {
    if ([v4 hasSouthLat])
    {
      [v4 southLat];
      [(_SFPBMapRegion *)v5 setSouthLat:?];
    }

    if ([v4 hasWestLng])
    {
      [v4 westLng];
      [(_SFPBMapRegion *)v5 setWestLng:?];
    }

    if ([v4 hasNorthLat])
    {
      [v4 northLat];
      [(_SFPBMapRegion *)v5 setNorthLat:?];
    }

    if ([v4 hasEastLng])
    {
      [v4 eastLng];
      [(_SFPBMapRegion *)v5 setEastLng:?];
    }

    if ([v4 hasAltitudeInMeters])
    {
      [v4 altitudeInMeters];
      [(_SFPBMapRegion *)v5 setAltitudeInMeters:?];
    }

    v6 = v5;
  }

  return v5;
}

- (_SFPBMapRegion)initWithDictionary:(id)a3
{
  v4 = a3;
  v13.receiver = self;
  v13.super_class = _SFPBMapRegion;
  v5 = [(_SFPBMapRegion *)&v13 init];
  if (v5)
  {
    v6 = [v4 objectForKeyedSubscript:@"southLat"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      [v6 doubleValue];
      [(_SFPBMapRegion *)v5 setSouthLat:?];
    }

    v7 = [v4 objectForKeyedSubscript:@"westLng"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      [v7 doubleValue];
      [(_SFPBMapRegion *)v5 setWestLng:?];
    }

    v8 = [v4 objectForKeyedSubscript:@"northLat"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      [v8 doubleValue];
      [(_SFPBMapRegion *)v5 setNorthLat:?];
    }

    v9 = [v4 objectForKeyedSubscript:@"eastLng"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      [v9 doubleValue];
      [(_SFPBMapRegion *)v5 setEastLng:?];
    }

    v10 = [v4 objectForKeyedSubscript:@"altitudeInMeters"];
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

- (_SFPBMapRegion)initWithJSON:(id)a3
{
  v7 = 0;
  v4 = [MEMORY[0x1E696ACB0] JSONObjectWithData:a3 options:0 error:&v7];
  if (v7 || (objc_opt_class(), (objc_opt_isKindOfClass() & 1) == 0))
  {
    v5 = 0;
  }

  else
  {
    self = [(_SFPBMapRegion *)self initWithDictionary:v4];
    v5 = self;
  }

  return v5;
}

- (NSData)jsonData
{
  v2 = [(_SFPBMapRegion *)self dictionaryRepresentation];
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
  if (self->_altitudeInMeters != 0.0)
  {
    v4 = MEMORY[0x1E696AD98];
    [(_SFPBMapRegion *)self altitudeInMeters];
    v5 = [v4 numberWithDouble:?];
    [v3 setObject:v5 forKeyedSubscript:@"altitudeInMeters"];
  }

  if (self->_eastLng != 0.0)
  {
    v6 = MEMORY[0x1E696AD98];
    [(_SFPBMapRegion *)self eastLng];
    v7 = [v6 numberWithDouble:?];
    [v3 setObject:v7 forKeyedSubscript:@"eastLng"];
  }

  if (self->_northLat != 0.0)
  {
    v8 = MEMORY[0x1E696AD98];
    [(_SFPBMapRegion *)self northLat];
    v9 = [v8 numberWithDouble:?];
    [v3 setObject:v9 forKeyedSubscript:@"northLat"];
  }

  if (self->_southLat != 0.0)
  {
    v10 = MEMORY[0x1E696AD98];
    [(_SFPBMapRegion *)self southLat];
    v11 = [v10 numberWithDouble:?];
    [v3 setObject:v11 forKeyedSubscript:@"southLat"];
  }

  if (self->_westLng != 0.0)
  {
    v12 = MEMORY[0x1E696AD98];
    [(_SFPBMapRegion *)self westLng];
    v13 = [v12 numberWithDouble:?];
    [v3 setObject:v13 forKeyedSubscript:@"westLng"];
  }

  return v3;
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

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  if (![v4 isMemberOfClass:objc_opt_class()])
  {
    goto LABEL_6;
  }

  southLat = self->_southLat;
  [v4 southLat];
  if (southLat != v6)
  {
    goto LABEL_6;
  }

  westLng = self->_westLng;
  [v4 westLng];
  if (westLng == v8 && (northLat = self->_northLat, [v4 northLat], northLat == v10) && (eastLng = self->_eastLng, objc_msgSend(v4, "eastLng"), eastLng == v12))
  {
    altitudeInMeters = self->_altitudeInMeters;
    [v4 altitudeInMeters];
    v13 = altitudeInMeters == v16;
  }

  else
  {
LABEL_6:
    v13 = 0;
  }

  return v13;
}

- (void)writeTo:(id)a3
{
  v10 = a3;
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
  v8 = v10;
  if (v9 != 0.0)
  {
    PBDataWriterWriteDoubleField();
    v8 = v10;
  }
}

@end