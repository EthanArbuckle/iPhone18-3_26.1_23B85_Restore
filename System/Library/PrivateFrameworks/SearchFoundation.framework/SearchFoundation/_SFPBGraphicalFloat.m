@interface _SFPBGraphicalFloat
- (BOOL)isEqual:(id)a3;
- (NSData)jsonData;
- (_SFPBGraphicalFloat)initWithCGFloat:(double)a3;
- (_SFPBGraphicalFloat)initWithDictionary:(id)a3;
- (_SFPBGraphicalFloat)initWithJSON:(id)a3;
- (id)dictionaryRepresentation;
- (unint64_t)hash;
- (void)writeTo:(id)a3;
@end

@implementation _SFPBGraphicalFloat

- (_SFPBGraphicalFloat)initWithCGFloat:(double)a3
{
  v8.receiver = self;
  v8.super_class = _SFPBGraphicalFloat;
  v4 = [(_SFPBGraphicalFloat *)&v8 init];
  v5 = v4;
  if (v4)
  {
    [(_SFPBGraphicalFloat *)v4 setDoubleValue:a3];
    v6 = v5;
  }

  return v5;
}

- (_SFPBGraphicalFloat)initWithDictionary:(id)a3
{
  v4 = a3;
  v9.receiver = self;
  v9.super_class = _SFPBGraphicalFloat;
  v5 = [(_SFPBGraphicalFloat *)&v9 init];
  if (v5)
  {
    v6 = [v4 objectForKeyedSubscript:@"doubleValue"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      [v6 doubleValue];
      [(_SFPBGraphicalFloat *)v5 setDoubleValue:?];
    }

    v7 = v5;
  }

  return v5;
}

- (_SFPBGraphicalFloat)initWithJSON:(id)a3
{
  v7 = 0;
  v4 = [MEMORY[0x1E696ACB0] JSONObjectWithData:a3 options:0 error:&v7];
  if (v7 || (objc_opt_class(), (objc_opt_isKindOfClass() & 1) == 0))
  {
    v5 = 0;
  }

  else
  {
    self = [(_SFPBGraphicalFloat *)self initWithDictionary:v4];
    v5 = self;
  }

  return v5;
}

- (NSData)jsonData
{
  v2 = [(_SFPBGraphicalFloat *)self dictionaryRepresentation];
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
  if (self->_doubleValue != 0.0)
  {
    v4 = MEMORY[0x1E696AD98];
    [(_SFPBGraphicalFloat *)self doubleValue];
    v5 = [v4 numberWithDouble:?];
    [v3 setObject:v5 forKeyedSubscript:@"doubleValue"];
  }

  return v3;
}

- (unint64_t)hash
{
  doubleValue = self->_doubleValue;
  if (doubleValue == 0.0)
  {
    return 0;
  }

  if (doubleValue < 0.0)
  {
    doubleValue = -doubleValue;
  }

  *v2.i64 = floor(doubleValue + 0.5);
  v5 = (doubleValue - *v2.i64) * 1.84467441e19;
  *v3.i64 = *v2.i64 - trunc(*v2.i64 * 5.42101086e-20) * 1.84467441e19;
  v6.f64[0] = NAN;
  v6.f64[1] = NAN;
  result = 2654435761u * *vbslq_s8(vnegq_f64(v6), v3, v2).i64;
  if (v5 >= 0.0)
  {
    if (v5 > 0.0)
    {
      result += v5;
    }
  }

  else
  {
    result -= fabs(v5);
  }

  return result;
}

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  if ([v4 isMemberOfClass:objc_opt_class()])
  {
    doubleValue = self->_doubleValue;
    [v4 doubleValue];
    v7 = doubleValue == v6;
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
  [(_SFPBGraphicalFloat *)self doubleValue];
  if (v4 != 0.0)
  {
    PBDataWriterWriteDoubleField();
  }
}

@end