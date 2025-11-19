@interface _SFPBRFMapPoint
- (BOOL)isEqual:(id)a3;
- (NSData)jsonData;
- (_SFPBRFMapPoint)initWithDictionary:(id)a3;
- (_SFPBRFMapPoint)initWithFacade:(id)a3;
- (_SFPBRFMapPoint)initWithJSON:(id)a3;
- (id)dictionaryRepresentation;
- (unint64_t)hash;
- (void)writeTo:(id)a3;
@end

@implementation _SFPBRFMapPoint

- (_SFPBRFMapPoint)initWithFacade:(id)a3
{
  v4 = a3;
  v5 = [(_SFPBRFMapPoint *)self init];
  if (v5)
  {
    if ([v4 hasX])
    {
      [v4 x];
      [(_SFPBRFMapPoint *)v5 setX:?];
    }

    if ([v4 hasY])
    {
      [v4 y];
      [(_SFPBRFMapPoint *)v5 setY:?];
    }

    v6 = v5;
  }

  return v5;
}

- (_SFPBRFMapPoint)initWithDictionary:(id)a3
{
  v4 = a3;
  v10.receiver = self;
  v10.super_class = _SFPBRFMapPoint;
  v5 = [(_SFPBRFMapPoint *)&v10 init];
  if (v5)
  {
    v6 = [v4 objectForKeyedSubscript:@"x"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      [v6 doubleValue];
      [(_SFPBRFMapPoint *)v5 setX:?];
    }

    v7 = [v4 objectForKeyedSubscript:@"y"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      [v7 doubleValue];
      [(_SFPBRFMapPoint *)v5 setY:?];
    }

    v8 = v5;
  }

  return v5;
}

- (_SFPBRFMapPoint)initWithJSON:(id)a3
{
  v7 = 0;
  v4 = [MEMORY[0x1E696ACB0] JSONObjectWithData:a3 options:0 error:&v7];
  if (v7 || (objc_opt_class(), (objc_opt_isKindOfClass() & 1) == 0))
  {
    v5 = 0;
  }

  else
  {
    self = [(_SFPBRFMapPoint *)self initWithDictionary:v4];
    v5 = self;
  }

  return v5;
}

- (NSData)jsonData
{
  v2 = [(_SFPBRFMapPoint *)self dictionaryRepresentation];
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
  if (self->_x != 0.0)
  {
    v4 = MEMORY[0x1E696AD98];
    [(_SFPBRFMapPoint *)self x];
    v5 = [v4 numberWithDouble:?];
    [v3 setObject:v5 forKeyedSubscript:@"x"];
  }

  if (self->_y != 0.0)
  {
    v6 = MEMORY[0x1E696AD98];
    [(_SFPBRFMapPoint *)self y];
    v7 = [v6 numberWithDouble:?];
    [v3 setObject:v7 forKeyedSubscript:@"y"];
  }

  return v3;
}

- (unint64_t)hash
{
  x = self->_x;
  if (x == 0.0)
  {
    v7 = 0;
  }

  else
  {
    if (x < 0.0)
    {
      x = -x;
    }

    *v2.i64 = floor(x + 0.5);
    v5 = (x - *v2.i64) * 1.84467441e19;
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

  y = self->_y;
  if (y == 0.0)
  {
    v11 = 0;
  }

  else
  {
    if (y < 0.0)
    {
      y = -y;
    }

    *v2.i64 = floor(y + 0.5);
    v9 = (y - *v2.i64) * 1.84467441e19;
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
  if ([v4 isMemberOfClass:objc_opt_class()] && (x = self->_x, objc_msgSend(v4, "x"), x == v6))
  {
    y = self->_y;
    [v4 y];
    v7 = y == v10;
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
  [(_SFPBRFMapPoint *)self x];
  if (v4 != 0.0)
  {
    PBDataWriterWriteDoubleField();
  }

  [(_SFPBRFMapPoint *)self y];
  if (v5 != 0.0)
  {
    PBDataWriterWriteDoubleField();
  }
}

@end