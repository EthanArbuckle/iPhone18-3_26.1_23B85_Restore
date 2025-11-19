@interface _SFPBRFFont_RFSystemFont
- (BOOL)isEqual:(id)a3;
- (NSData)jsonData;
- (_SFPBRFFont_RFSystemFont)initWithDictionary:(id)a3;
- (_SFPBRFFont_RFSystemFont)initWithFacade:(id)a3;
- (_SFPBRFFont_RFSystemFont)initWithJSON:(id)a3;
- (id)dictionaryRepresentation;
- (unint64_t)hash;
- (void)writeTo:(id)a3;
@end

@implementation _SFPBRFFont_RFSystemFont

- (_SFPBRFFont_RFSystemFont)initWithFacade:(id)a3
{
  v4 = a3;
  v5 = [(_SFPBRFFont_RFSystemFont *)self init];
  if (v5)
  {
    v6 = [v4 size];

    if (v6)
    {
      v7 = [v4 size];
      [v7 floatValue];
      [(_SFPBRFFont_RFSystemFont *)v5 setSize:?];
    }

    if ([v4 hasWeight])
    {
      -[_SFPBRFFont_RFSystemFont setWeight:](v5, "setWeight:", [v4 weight]);
    }

    v8 = v5;
  }

  return v5;
}

- (_SFPBRFFont_RFSystemFont)initWithDictionary:(id)a3
{
  v4 = a3;
  v10.receiver = self;
  v10.super_class = _SFPBRFFont_RFSystemFont;
  v5 = [(_SFPBRFFont_RFSystemFont *)&v10 init];
  if (v5)
  {
    v6 = [v4 objectForKeyedSubscript:@"size"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      [v6 floatValue];
      [(_SFPBRFFont_RFSystemFont *)v5 setSize:?];
    }

    v7 = [v4 objectForKeyedSubscript:@"weight"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      -[_SFPBRFFont_RFSystemFont setWeight:](v5, "setWeight:", [v7 intValue]);
    }

    v8 = v5;
  }

  return v5;
}

- (_SFPBRFFont_RFSystemFont)initWithJSON:(id)a3
{
  v7 = 0;
  v4 = [MEMORY[0x1E696ACB0] JSONObjectWithData:a3 options:0 error:&v7];
  if (v7 || (objc_opt_class(), (objc_opt_isKindOfClass() & 1) == 0))
  {
    v5 = 0;
  }

  else
  {
    self = [(_SFPBRFFont_RFSystemFont *)self initWithDictionary:v4];
    v5 = self;
  }

  return v5;
}

- (NSData)jsonData
{
  v2 = [(_SFPBRFFont_RFSystemFont *)self dictionaryRepresentation];
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
  if (self->_size != 0.0)
  {
    v4 = MEMORY[0x1E696AD98];
    [(_SFPBRFFont_RFSystemFont *)self size];
    v5 = [v4 numberWithFloat:?];
    [v3 setObject:v5 forKeyedSubscript:@"size"];
  }

  if (self->_weight)
  {
    v6 = [(_SFPBRFFont_RFSystemFont *)self weight];
    if (v6 >= 0xA)
    {
      v7 = [MEMORY[0x1E696AEC0] stringWithFormat:@"(unknown: %i)", v6];
    }

    else
    {
      v7 = off_1E7ACE220[v6];
    }

    [v3 setObject:v7 forKeyedSubscript:@"weight"];
  }

  return v3;
}

- (unint64_t)hash
{
  size = self->_size;
  v5 = size < 0.0;
  if (size == 0.0)
  {
    v9 = 0;
  }

  else
  {
    v6 = size;
    if (v5)
    {
      v6 = -v6;
    }

    *v2.i64 = floor(v6 + 0.5);
    v7 = (v6 - *v2.i64) * 1.84467441e19;
    *v3.i64 = *v2.i64 - trunc(*v2.i64 * 5.42101086e-20) * 1.84467441e19;
    v8.f64[0] = NAN;
    v8.f64[1] = NAN;
    v9 = 2654435761u * *vbslq_s8(vnegq_f64(v8), v3, v2).i64;
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

  return (2654435761 * self->_weight) ^ v9;
}

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  if ([v4 isMemberOfClass:objc_opt_class()] && (size = self->_size, objc_msgSend(v4, "size"), size == v6))
  {
    weight = self->_weight;
    v7 = weight == [v4 weight];
  }

  else
  {
    v7 = 0;
  }

  return v7;
}

- (void)writeTo:(id)a3
{
  v5 = a3;
  [(_SFPBRFFont_RFSystemFont *)self size];
  if (v4 != 0.0)
  {
    PBDataWriterWriteFloatField();
  }

  if ([(_SFPBRFFont_RFSystemFont *)self weight])
  {
    PBDataWriterWriteInt32Field();
  }
}

@end