@interface _SFPBRFRGBValue
- (BOOL)isEqual:(id)equal;
- (NSData)jsonData;
- (_SFPBRFRGBValue)initWithDictionary:(id)dictionary;
- (_SFPBRFRGBValue)initWithFacade:(id)facade;
- (_SFPBRFRGBValue)initWithJSON:(id)n;
- (id)dictionaryRepresentation;
- (unint64_t)hash;
- (void)writeTo:(id)to;
@end

@implementation _SFPBRFRGBValue

- (_SFPBRFRGBValue)initWithFacade:(id)facade
{
  facadeCopy = facade;
  v5 = [(_SFPBRFRGBValue *)self init];
  if (v5)
  {
    v6 = [facadeCopy red];

    if (v6)
    {
      v7 = [facadeCopy red];
      [v7 floatValue];
      [(_SFPBRFRGBValue *)v5 setRed:?];
    }

    green = [facadeCopy green];

    if (green)
    {
      green2 = [facadeCopy green];
      [green2 floatValue];
      [(_SFPBRFRGBValue *)v5 setGreen:?];
    }

    blue = [facadeCopy blue];

    if (blue)
    {
      blue2 = [facadeCopy blue];
      [blue2 floatValue];
      [(_SFPBRFRGBValue *)v5 setBlue:?];
    }

    v12 = v5;
  }

  return v5;
}

- (_SFPBRFRGBValue)initWithDictionary:(id)dictionary
{
  dictionaryCopy = dictionary;
  v11.receiver = self;
  v11.super_class = _SFPBRFRGBValue;
  v5 = [(_SFPBRFRGBValue *)&v11 init];
  if (v5)
  {
    v6 = [dictionaryCopy objectForKeyedSubscript:@"red"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      [v6 floatValue];
      [(_SFPBRFRGBValue *)v5 setRed:?];
    }

    v7 = [dictionaryCopy objectForKeyedSubscript:@"green"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      [v7 floatValue];
      [(_SFPBRFRGBValue *)v5 setGreen:?];
    }

    v8 = [dictionaryCopy objectForKeyedSubscript:@"blue"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      [v8 floatValue];
      [(_SFPBRFRGBValue *)v5 setBlue:?];
    }

    v9 = v5;
  }

  return v5;
}

- (_SFPBRFRGBValue)initWithJSON:(id)n
{
  v7 = 0;
  v4 = [MEMORY[0x1E696ACB0] JSONObjectWithData:n options:0 error:&v7];
  if (v7 || (objc_opt_class(), (objc_opt_isKindOfClass() & 1) == 0))
  {
    selfCopy = 0;
  }

  else
  {
    self = [(_SFPBRFRGBValue *)self initWithDictionary:v4];
    selfCopy = self;
  }

  return selfCopy;
}

- (NSData)jsonData
{
  dictionaryRepresentation = [(_SFPBRFRGBValue *)self dictionaryRepresentation];
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
  if (self->_blue != 0.0)
  {
    v4 = MEMORY[0x1E696AD98];
    [(_SFPBRFRGBValue *)self blue];
    v5 = [v4 numberWithFloat:?];
    [dictionary setObject:v5 forKeyedSubscript:@"blue"];
  }

  if (self->_green != 0.0)
  {
    v6 = MEMORY[0x1E696AD98];
    [(_SFPBRFRGBValue *)self green];
    v7 = [v6 numberWithFloat:?];
    [dictionary setObject:v7 forKeyedSubscript:@"green"];
  }

  if (self->_red != 0.0)
  {
    v8 = MEMORY[0x1E696AD98];
    [(_SFPBRFRGBValue *)self red];
    v9 = [v8 numberWithFloat:?];
    [dictionary setObject:v9 forKeyedSubscript:@"red"];
  }

  return dictionary;
}

- (unint64_t)hash
{
  red = self->_red;
  v5 = red < 0.0;
  if (red == 0.0)
  {
    v9 = 0;
  }

  else
  {
    v6 = red;
    if (v5)
    {
      v6 = -v6;
    }

    *v2.i64 = floor(v6 + 0.5);
    v7 = (v6 - *v2.i64) * 1.84467441e19;
    *v3.i64 = *v2.i64 - trunc(*v2.i64 * 5.42101086e-20) * 1.84467441e19;
    v8.f64[0] = NAN;
    v8.f64[1] = NAN;
    v2 = vbslq_s8(vnegq_f64(v8), v3, v2);
    v9 = 2654435761u * *v2.i64;
    if (v7 >= 0.0)
    {
      if (v7 > 0.0)
      {
        v9 += v7;
      }
    }

    else
    {
      v9 -= fabs(v7);
    }
  }

  green = self->_green;
  v11 = green < 0.0;
  if (green == 0.0)
  {
    v15 = 0;
  }

  else
  {
    v12 = green;
    if (v11)
    {
      v12 = -v12;
    }

    *v2.i64 = floor(v12 + 0.5);
    v13 = (v12 - *v2.i64) * 1.84467441e19;
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

  blue = self->_blue;
  v17 = blue < 0.0;
  if (blue == 0.0)
  {
    v21 = 0;
  }

  else
  {
    v18 = blue;
    if (v17)
    {
      v18 = -v18;
    }

    *v2.i64 = floor(v18 + 0.5);
    v19 = (v18 - *v2.i64) * 1.84467441e19;
    *v3.i64 = *v2.i64 - trunc(*v2.i64 * 5.42101086e-20) * 1.84467441e19;
    v20.f64[0] = NAN;
    v20.f64[1] = NAN;
    v21 = 2654435761u * *vbslq_s8(vnegq_f64(v20), v3, v2).i64;
    if (v19 >= 0.0)
    {
      if (v19 > 0.0)
      {
        v21 += v19;
      }
    }

    else
    {
      v21 -= fabs(v19);
    }
  }

  return v15 ^ v9 ^ v21;
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  if ([equalCopy isMemberOfClass:objc_opt_class()] && (red = self->_red, objc_msgSend(equalCopy, "red"), red == v6) && (green = self->_green, objc_msgSend(equalCopy, "green"), green == v8))
  {
    blue = self->_blue;
    [equalCopy blue];
    v9 = blue == v12;
  }

  else
  {
    v9 = 0;
  }

  return v9;
}

- (void)writeTo:(id)to
{
  toCopy = to;
  [(_SFPBRFRGBValue *)self red];
  if (v4 != 0.0)
  {
    PBDataWriterWriteFloatField();
  }

  [(_SFPBRFRGBValue *)self green];
  if (v5 != 0.0)
  {
    PBDataWriterWriteFloatField();
  }

  [(_SFPBRFRGBValue *)self blue];
  v6 = toCopy;
  if (v7 != 0.0)
  {
    PBDataWriterWriteFloatField();
    v6 = toCopy;
  }
}

@end