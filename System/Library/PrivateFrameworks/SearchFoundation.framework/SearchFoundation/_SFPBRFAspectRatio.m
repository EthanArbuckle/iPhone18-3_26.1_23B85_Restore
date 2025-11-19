@interface _SFPBRFAspectRatio
- (BOOL)isEqual:(id)a3;
- (NSData)jsonData;
- (_SFPBRFAspectRatio)initWithDictionary:(id)a3;
- (_SFPBRFAspectRatio)initWithFacade:(id)a3;
- (_SFPBRFAspectRatio)initWithJSON:(id)a3;
- (id)dictionaryRepresentation;
- (unint64_t)hash;
- (void)writeTo:(id)a3;
@end

@implementation _SFPBRFAspectRatio

- (_SFPBRFAspectRatio)initWithFacade:(id)a3
{
  v4 = a3;
  v5 = [(_SFPBRFAspectRatio *)self init];
  if (v5)
  {
    v6 = [v4 width];

    if (v6)
    {
      v7 = [v4 width];
      [v7 floatValue];
      [(_SFPBRFAspectRatio *)v5 setWidth:?];
    }

    v8 = [v4 height];

    if (v8)
    {
      v9 = [v4 height];
      [v9 floatValue];
      [(_SFPBRFAspectRatio *)v5 setHeight:?];
    }

    v10 = v5;
  }

  return v5;
}

- (_SFPBRFAspectRatio)initWithDictionary:(id)a3
{
  v4 = a3;
  v10.receiver = self;
  v10.super_class = _SFPBRFAspectRatio;
  v5 = [(_SFPBRFAspectRatio *)&v10 init];
  if (v5)
  {
    v6 = [v4 objectForKeyedSubscript:@"width"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      [v6 floatValue];
      [(_SFPBRFAspectRatio *)v5 setWidth:?];
    }

    v7 = [v4 objectForKeyedSubscript:@"height"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      [v7 floatValue];
      [(_SFPBRFAspectRatio *)v5 setHeight:?];
    }

    v8 = v5;
  }

  return v5;
}

- (_SFPBRFAspectRatio)initWithJSON:(id)a3
{
  v7 = 0;
  v4 = [MEMORY[0x1E696ACB0] JSONObjectWithData:a3 options:0 error:&v7];
  if (v7 || (objc_opt_class(), (objc_opt_isKindOfClass() & 1) == 0))
  {
    v5 = 0;
  }

  else
  {
    self = [(_SFPBRFAspectRatio *)self initWithDictionary:v4];
    v5 = self;
  }

  return v5;
}

- (NSData)jsonData
{
  v2 = [(_SFPBRFAspectRatio *)self dictionaryRepresentation];
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
  if (self->_height != 0.0)
  {
    v4 = MEMORY[0x1E696AD98];
    [(_SFPBRFAspectRatio *)self height];
    v5 = [v4 numberWithFloat:?];
    [v3 setObject:v5 forKeyedSubscript:@"height"];
  }

  if (self->_width != 0.0)
  {
    v6 = MEMORY[0x1E696AD98];
    [(_SFPBRFAspectRatio *)self width];
    v7 = [v6 numberWithFloat:?];
    [v3 setObject:v7 forKeyedSubscript:@"width"];
  }

  return v3;
}

- (unint64_t)hash
{
  width = self->_width;
  v5 = width < 0.0;
  if (width == 0.0)
  {
    v9 = 0;
  }

  else
  {
    v6 = width;
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

  height = self->_height;
  v11 = height < 0.0;
  if (height == 0.0)
  {
    v15 = 0;
  }

  else
  {
    v12 = height;
    if (v11)
    {
      v12 = -v12;
    }

    *v2.i64 = floor(v12 + 0.5);
    v13 = (v12 - *v2.i64) * 1.84467441e19;
    *v3.i64 = *v2.i64 - trunc(*v2.i64 * 5.42101086e-20) * 1.84467441e19;
    v14.f64[0] = NAN;
    v14.f64[1] = NAN;
    v15 = 2654435761u * *vbslq_s8(vnegq_f64(v14), v3, v2).i64;
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

  return v15 ^ v9;
}

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  if ([v4 isMemberOfClass:objc_opt_class()] && (width = self->_width, objc_msgSend(v4, "width"), width == v6))
  {
    height = self->_height;
    [v4 height];
    v7 = height == v10;
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
  [(_SFPBRFAspectRatio *)self width];
  if (v4 != 0.0)
  {
    PBDataWriterWriteFloatField();
  }

  [(_SFPBRFAspectRatio *)self height];
  if (v5 != 0.0)
  {
    PBDataWriterWriteFloatField();
  }
}

@end