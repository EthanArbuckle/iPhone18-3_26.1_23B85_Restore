@interface _SFPBRFRGBValue
- (BOOL)isEqual:(id)a3;
- (NSData)jsonData;
- (_SFPBRFRGBValue)initWithDictionary:(id)a3;
- (_SFPBRFRGBValue)initWithFacade:(id)a3;
- (_SFPBRFRGBValue)initWithJSON:(id)a3;
- (id)dictionaryRepresentation;
- (unint64_t)hash;
- (void)writeTo:(id)a3;
@end

@implementation _SFPBRFRGBValue

- (_SFPBRFRGBValue)initWithFacade:(id)a3
{
  v4 = a3;
  v5 = [(_SFPBRFRGBValue *)self init];
  if (v5)
  {
    v6 = [v4 red];

    if (v6)
    {
      v7 = [v4 red];
      [v7 floatValue];
      [(_SFPBRFRGBValue *)v5 setRed:?];
    }

    v8 = [v4 green];

    if (v8)
    {
      v9 = [v4 green];
      [v9 floatValue];
      [(_SFPBRFRGBValue *)v5 setGreen:?];
    }

    v10 = [v4 blue];

    if (v10)
    {
      v11 = [v4 blue];
      [v11 floatValue];
      [(_SFPBRFRGBValue *)v5 setBlue:?];
    }

    v12 = v5;
  }

  return v5;
}

- (_SFPBRFRGBValue)initWithDictionary:(id)a3
{
  v4 = a3;
  v11.receiver = self;
  v11.super_class = _SFPBRFRGBValue;
  v5 = [(_SFPBRFRGBValue *)&v11 init];
  if (v5)
  {
    v6 = [v4 objectForKeyedSubscript:@"red"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      [v6 floatValue];
      [(_SFPBRFRGBValue *)v5 setRed:?];
    }

    v7 = [v4 objectForKeyedSubscript:@"green"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      [v7 floatValue];
      [(_SFPBRFRGBValue *)v5 setGreen:?];
    }

    v8 = [v4 objectForKeyedSubscript:@"blue"];
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

- (_SFPBRFRGBValue)initWithJSON:(id)a3
{
  v7 = 0;
  v4 = [MEMORY[0x1E696ACB0] JSONObjectWithData:a3 options:0 error:&v7];
  if (v7 || (objc_opt_class(), (objc_opt_isKindOfClass() & 1) == 0))
  {
    v5 = 0;
  }

  else
  {
    self = [(_SFPBRFRGBValue *)self initWithDictionary:v4];
    v5 = self;
  }

  return v5;
}

- (NSData)jsonData
{
  v2 = [(_SFPBRFRGBValue *)self dictionaryRepresentation];
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
  if (self->_blue != 0.0)
  {
    v4 = MEMORY[0x1E696AD98];
    [(_SFPBRFRGBValue *)self blue];
    v5 = [v4 numberWithFloat:?];
    [v3 setObject:v5 forKeyedSubscript:@"blue"];
  }

  if (self->_green != 0.0)
  {
    v6 = MEMORY[0x1E696AD98];
    [(_SFPBRFRGBValue *)self green];
    v7 = [v6 numberWithFloat:?];
    [v3 setObject:v7 forKeyedSubscript:@"green"];
  }

  if (self->_red != 0.0)
  {
    v8 = MEMORY[0x1E696AD98];
    [(_SFPBRFRGBValue *)self red];
    v9 = [v8 numberWithFloat:?];
    [v3 setObject:v9 forKeyedSubscript:@"red"];
  }

  return v3;
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

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  if ([v4 isMemberOfClass:objc_opt_class()] && (red = self->_red, objc_msgSend(v4, "red"), red == v6) && (green = self->_green, objc_msgSend(v4, "green"), green == v8))
  {
    blue = self->_blue;
    [v4 blue];
    v9 = blue == v12;
  }

  else
  {
    v9 = 0;
  }

  return v9;
}

- (void)writeTo:(id)a3
{
  v8 = a3;
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
  v6 = v8;
  if (v7 != 0.0)
  {
    PBDataWriterWriteFloatField();
    v6 = v8;
  }
}

@end