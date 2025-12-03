@interface _SFPBRFFont_RFSystemFont
- (BOOL)isEqual:(id)equal;
- (NSData)jsonData;
- (_SFPBRFFont_RFSystemFont)initWithDictionary:(id)dictionary;
- (_SFPBRFFont_RFSystemFont)initWithFacade:(id)facade;
- (_SFPBRFFont_RFSystemFont)initWithJSON:(id)n;
- (id)dictionaryRepresentation;
- (unint64_t)hash;
- (void)writeTo:(id)to;
@end

@implementation _SFPBRFFont_RFSystemFont

- (_SFPBRFFont_RFSystemFont)initWithFacade:(id)facade
{
  facadeCopy = facade;
  v5 = [(_SFPBRFFont_RFSystemFont *)self init];
  if (v5)
  {
    v6 = [facadeCopy size];

    if (v6)
    {
      v7 = [facadeCopy size];
      [v7 floatValue];
      [(_SFPBRFFont_RFSystemFont *)v5 setSize:?];
    }

    if ([facadeCopy hasWeight])
    {
      -[_SFPBRFFont_RFSystemFont setWeight:](v5, "setWeight:", [facadeCopy weight]);
    }

    v8 = v5;
  }

  return v5;
}

- (_SFPBRFFont_RFSystemFont)initWithDictionary:(id)dictionary
{
  dictionaryCopy = dictionary;
  v10.receiver = self;
  v10.super_class = _SFPBRFFont_RFSystemFont;
  v5 = [(_SFPBRFFont_RFSystemFont *)&v10 init];
  if (v5)
  {
    v6 = [dictionaryCopy objectForKeyedSubscript:@"size"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      [v6 floatValue];
      [(_SFPBRFFont_RFSystemFont *)v5 setSize:?];
    }

    v7 = [dictionaryCopy objectForKeyedSubscript:@"weight"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      -[_SFPBRFFont_RFSystemFont setWeight:](v5, "setWeight:", [v7 intValue]);
    }

    v8 = v5;
  }

  return v5;
}

- (_SFPBRFFont_RFSystemFont)initWithJSON:(id)n
{
  v7 = 0;
  v4 = [MEMORY[0x1E696ACB0] JSONObjectWithData:n options:0 error:&v7];
  if (v7 || (objc_opt_class(), (objc_opt_isKindOfClass() & 1) == 0))
  {
    selfCopy = 0;
  }

  else
  {
    self = [(_SFPBRFFont_RFSystemFont *)self initWithDictionary:v4];
    selfCopy = self;
  }

  return selfCopy;
}

- (NSData)jsonData
{
  dictionaryRepresentation = [(_SFPBRFFont_RFSystemFont *)self dictionaryRepresentation];
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
  if (self->_size != 0.0)
  {
    v4 = MEMORY[0x1E696AD98];
    [(_SFPBRFFont_RFSystemFont *)self size];
    v5 = [v4 numberWithFloat:?];
    [dictionary setObject:v5 forKeyedSubscript:@"size"];
  }

  if (self->_weight)
  {
    weight = [(_SFPBRFFont_RFSystemFont *)self weight];
    if (weight >= 0xA)
    {
      v7 = [MEMORY[0x1E696AEC0] stringWithFormat:@"(unknown: %i)", weight];
    }

    else
    {
      v7 = off_1E7ACE220[weight];
    }

    [dictionary setObject:v7 forKeyedSubscript:@"weight"];
  }

  return dictionary;
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

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  if ([equalCopy isMemberOfClass:objc_opt_class()] && (size = self->_size, objc_msgSend(equalCopy, "size"), size == v6))
  {
    weight = self->_weight;
    v7 = weight == [equalCopy weight];
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