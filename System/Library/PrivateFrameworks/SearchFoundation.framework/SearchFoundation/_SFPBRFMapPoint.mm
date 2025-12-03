@interface _SFPBRFMapPoint
- (BOOL)isEqual:(id)equal;
- (NSData)jsonData;
- (_SFPBRFMapPoint)initWithDictionary:(id)dictionary;
- (_SFPBRFMapPoint)initWithFacade:(id)facade;
- (_SFPBRFMapPoint)initWithJSON:(id)n;
- (id)dictionaryRepresentation;
- (unint64_t)hash;
- (void)writeTo:(id)to;
@end

@implementation _SFPBRFMapPoint

- (_SFPBRFMapPoint)initWithFacade:(id)facade
{
  facadeCopy = facade;
  v5 = [(_SFPBRFMapPoint *)self init];
  if (v5)
  {
    if ([facadeCopy hasX])
    {
      [facadeCopy x];
      [(_SFPBRFMapPoint *)v5 setX:?];
    }

    if ([facadeCopy hasY])
    {
      [facadeCopy y];
      [(_SFPBRFMapPoint *)v5 setY:?];
    }

    v6 = v5;
  }

  return v5;
}

- (_SFPBRFMapPoint)initWithDictionary:(id)dictionary
{
  dictionaryCopy = dictionary;
  v10.receiver = self;
  v10.super_class = _SFPBRFMapPoint;
  v5 = [(_SFPBRFMapPoint *)&v10 init];
  if (v5)
  {
    v6 = [dictionaryCopy objectForKeyedSubscript:@"x"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      [v6 doubleValue];
      [(_SFPBRFMapPoint *)v5 setX:?];
    }

    v7 = [dictionaryCopy objectForKeyedSubscript:@"y"];
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

- (_SFPBRFMapPoint)initWithJSON:(id)n
{
  v7 = 0;
  v4 = [MEMORY[0x1E696ACB0] JSONObjectWithData:n options:0 error:&v7];
  if (v7 || (objc_opt_class(), (objc_opt_isKindOfClass() & 1) == 0))
  {
    selfCopy = 0;
  }

  else
  {
    self = [(_SFPBRFMapPoint *)self initWithDictionary:v4];
    selfCopy = self;
  }

  return selfCopy;
}

- (NSData)jsonData
{
  dictionaryRepresentation = [(_SFPBRFMapPoint *)self dictionaryRepresentation];
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
  if (self->_x != 0.0)
  {
    v4 = MEMORY[0x1E696AD98];
    [(_SFPBRFMapPoint *)self x];
    v5 = [v4 numberWithDouble:?];
    [dictionary setObject:v5 forKeyedSubscript:@"x"];
  }

  if (self->_y != 0.0)
  {
    v6 = MEMORY[0x1E696AD98];
    [(_SFPBRFMapPoint *)self y];
    v7 = [v6 numberWithDouble:?];
    [dictionary setObject:v7 forKeyedSubscript:@"y"];
  }

  return dictionary;
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

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  if ([equalCopy isMemberOfClass:objc_opt_class()] && (x = self->_x, objc_msgSend(equalCopy, "x"), x == v6))
  {
    y = self->_y;
    [equalCopy y];
    v7 = y == v10;
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