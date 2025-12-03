@interface _SFPBRFOptionalFloat
- (BOOL)isEqual:(id)equal;
- (NSData)jsonData;
- (_SFPBRFOptionalFloat)initWithDictionary:(id)dictionary;
- (_SFPBRFOptionalFloat)initWithFacade:(id)facade;
- (_SFPBRFOptionalFloat)initWithJSON:(id)n;
- (id)dictionaryRepresentation;
- (unint64_t)hash;
- (void)writeTo:(id)to;
@end

@implementation _SFPBRFOptionalFloat

- (_SFPBRFOptionalFloat)initWithFacade:(id)facade
{
  facadeCopy = facade;
  v5 = [(_SFPBRFOptionalFloat *)self init];
  if (v5)
  {
    value = [facadeCopy value];

    if (value)
    {
      value2 = [facadeCopy value];
      [value2 floatValue];
      [(_SFPBRFOptionalFloat *)v5 setValue:?];
    }

    v8 = v5;
  }

  return v5;
}

- (_SFPBRFOptionalFloat)initWithDictionary:(id)dictionary
{
  dictionaryCopy = dictionary;
  v9.receiver = self;
  v9.super_class = _SFPBRFOptionalFloat;
  v5 = [(_SFPBRFOptionalFloat *)&v9 init];
  if (v5)
  {
    v6 = [dictionaryCopy objectForKeyedSubscript:@"value"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      [v6 floatValue];
      [(_SFPBRFOptionalFloat *)v5 setValue:?];
    }

    v7 = v5;
  }

  return v5;
}

- (_SFPBRFOptionalFloat)initWithJSON:(id)n
{
  v7 = 0;
  v4 = [MEMORY[0x1E696ACB0] JSONObjectWithData:n options:0 error:&v7];
  if (v7 || (objc_opt_class(), (objc_opt_isKindOfClass() & 1) == 0))
  {
    selfCopy = 0;
  }

  else
  {
    self = [(_SFPBRFOptionalFloat *)self initWithDictionary:v4];
    selfCopy = self;
  }

  return selfCopy;
}

- (NSData)jsonData
{
  dictionaryRepresentation = [(_SFPBRFOptionalFloat *)self dictionaryRepresentation];
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
  if (self->_value != 0.0)
  {
    v4 = MEMORY[0x1E696AD98];
    [(_SFPBRFOptionalFloat *)self value];
    v5 = [v4 numberWithFloat:?];
    [dictionary setObject:v5 forKeyedSubscript:@"value"];
  }

  return dictionary;
}

- (unint64_t)hash
{
  value = self->_value;
  v5 = value < 0.0;
  if (value == 0.0)
  {
    return 0;
  }

  v6 = value;
  if (v5)
  {
    v6 = -v6;
  }

  *v2.i64 = floor(v6 + 0.5);
  v7 = (v6 - *v2.i64) * 1.84467441e19;
  *v3.i64 = *v2.i64 - trunc(*v2.i64 * 5.42101086e-20) * 1.84467441e19;
  v8.f64[0] = NAN;
  v8.f64[1] = NAN;
  result = 2654435761u * *vbslq_s8(vnegq_f64(v8), v3, v2).i64;
  if (v7 >= 0.0)
  {
    if (v7 > 0.0)
    {
      result += v7;
    }
  }

  else
  {
    result -= fabs(v7);
  }

  return result;
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  if ([equalCopy isMemberOfClass:objc_opt_class()])
  {
    value = self->_value;
    [equalCopy value];
    v7 = value == v6;
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
  [(_SFPBRFOptionalFloat *)self value];
  if (v4 != 0.0)
  {
    PBDataWriterWriteFloatField();
  }
}

@end