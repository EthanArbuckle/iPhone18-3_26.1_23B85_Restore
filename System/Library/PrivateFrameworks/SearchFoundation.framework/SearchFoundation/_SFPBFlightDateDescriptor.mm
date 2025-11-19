@interface _SFPBFlightDateDescriptor
- (BOOL)isEqual:(id)a3;
- (NSData)jsonData;
- (_SFPBFlightDateDescriptor)initWithDictionary:(id)a3;
- (_SFPBFlightDateDescriptor)initWithFacade:(id)a3;
- (_SFPBFlightDateDescriptor)initWithJSON:(id)a3;
- (id)dictionaryRepresentation;
- (unint64_t)hash;
- (void)writeTo:(id)a3;
@end

@implementation _SFPBFlightDateDescriptor

- (_SFPBFlightDateDescriptor)initWithFacade:(id)a3
{
  v4 = a3;
  v5 = [(_SFPBFlightDateDescriptor *)self init];
  if (v5)
  {
    v6 = [v4 scheduled];

    if (v6)
    {
      v7 = [_SFPBDate alloc];
      v8 = [v4 scheduled];
      v9 = [(_SFPBDate *)v7 initWithNSDate:v8];
      [(_SFPBFlightDateDescriptor *)v5 setScheduled:v9];
    }

    v10 = [v4 current];

    if (v10)
    {
      v11 = [_SFPBDate alloc];
      v12 = [v4 current];
      v13 = [(_SFPBDate *)v11 initWithNSDate:v12];
      [(_SFPBFlightDateDescriptor *)v5 setCurrent:v13];
    }

    v14 = [v4 bufferMinutes];

    if (v14)
    {
      v15 = [v4 bufferMinutes];
      [v15 floatValue];
      [(_SFPBFlightDateDescriptor *)v5 setBufferMinutes:?];
    }

    v16 = v5;
  }

  return v5;
}

- (_SFPBFlightDateDescriptor)initWithDictionary:(id)a3
{
  v4 = a3;
  v13.receiver = self;
  v13.super_class = _SFPBFlightDateDescriptor;
  v5 = [(_SFPBFlightDateDescriptor *)&v13 init];
  if (v5)
  {
    v6 = [v4 objectForKeyedSubscript:@"scheduled"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v7 = [[_SFPBDate alloc] initWithDictionary:v6];
      [(_SFPBFlightDateDescriptor *)v5 setScheduled:v7];
    }

    v8 = [v4 objectForKeyedSubscript:@"current"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v9 = [[_SFPBDate alloc] initWithDictionary:v8];
      [(_SFPBFlightDateDescriptor *)v5 setCurrent:v9];
    }

    v10 = [v4 objectForKeyedSubscript:@"bufferMinutes"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      [v10 floatValue];
      [(_SFPBFlightDateDescriptor *)v5 setBufferMinutes:?];
    }

    v11 = v5;
  }

  return v5;
}

- (_SFPBFlightDateDescriptor)initWithJSON:(id)a3
{
  v7 = 0;
  v4 = [MEMORY[0x1E696ACB0] JSONObjectWithData:a3 options:0 error:&v7];
  if (v7 || (objc_opt_class(), (objc_opt_isKindOfClass() & 1) == 0))
  {
    v5 = 0;
  }

  else
  {
    self = [(_SFPBFlightDateDescriptor *)self initWithDictionary:v4];
    v5 = self;
  }

  return v5;
}

- (NSData)jsonData
{
  v2 = [(_SFPBFlightDateDescriptor *)self dictionaryRepresentation];
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
  if (self->_bufferMinutes != 0.0)
  {
    v4 = MEMORY[0x1E696AD98];
    [(_SFPBFlightDateDescriptor *)self bufferMinutes];
    v5 = [v4 numberWithFloat:?];
    [v3 setObject:v5 forKeyedSubscript:@"bufferMinutes"];
  }

  if (self->_current)
  {
    v6 = [(_SFPBFlightDateDescriptor *)self current];
    v7 = [v6 dictionaryRepresentation];
    if (v7)
    {
      [v3 setObject:v7 forKeyedSubscript:@"current"];
    }

    else
    {
      v8 = [MEMORY[0x1E695DFB0] null];
      [v3 setObject:v8 forKeyedSubscript:@"current"];
    }
  }

  if (self->_scheduled)
  {
    v9 = [(_SFPBFlightDateDescriptor *)self scheduled];
    v10 = [v9 dictionaryRepresentation];
    if (v10)
    {
      [v3 setObject:v10 forKeyedSubscript:@"scheduled"];
    }

    else
    {
      v11 = [MEMORY[0x1E695DFB0] null];
      [v3 setObject:v11 forKeyedSubscript:@"scheduled"];
    }
  }

  return v3;
}

- (unint64_t)hash
{
  v3 = [(_SFPBDate *)self->_scheduled hash];
  v4 = [(_SFPBDate *)self->_current hash];
  bufferMinutes = self->_bufferMinutes;
  v8 = bufferMinutes < 0.0;
  if (bufferMinutes == 0.0)
  {
    v12 = 0;
  }

  else
  {
    v9 = bufferMinutes;
    if (v8)
    {
      v9 = -v9;
    }

    *v5.i64 = floor(v9 + 0.5);
    v10 = (v9 - *v5.i64) * 1.84467441e19;
    *v6.i64 = *v5.i64 - trunc(*v5.i64 * 5.42101086e-20) * 1.84467441e19;
    v11.f64[0] = NAN;
    v11.f64[1] = NAN;
    v12 = 2654435761u * *vbslq_s8(vnegq_f64(v11), v6, v5).i64;
    if (v10 >= 0.0)
    {
      if (v10 > 0.0)
      {
        v12 += v10;
      }
    }

    else
    {
      v12 -= fabs(v10);
    }
  }

  return v4 ^ v3 ^ v12;
}

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  if (![v4 isMemberOfClass:objc_opt_class()])
  {
    goto LABEL_12;
  }

  v5 = [(_SFPBFlightDateDescriptor *)self scheduled];
  v6 = [v4 scheduled];
  if ((v5 != 0) == (v6 == 0))
  {
    goto LABEL_11;
  }

  v7 = [(_SFPBFlightDateDescriptor *)self scheduled];
  if (v7)
  {
    v8 = v7;
    v9 = [(_SFPBFlightDateDescriptor *)self scheduled];
    v10 = [v4 scheduled];
    v11 = [v9 isEqual:v10];

    if (!v11)
    {
      goto LABEL_12;
    }
  }

  else
  {
  }

  v5 = [(_SFPBFlightDateDescriptor *)self current];
  v6 = [v4 current];
  if ((v5 != 0) != (v6 == 0))
  {
    v12 = [(_SFPBFlightDateDescriptor *)self current];
    if (!v12)
    {

LABEL_15:
      bufferMinutes = self->_bufferMinutes;
      [v4 bufferMinutes];
      v17 = bufferMinutes == v20;
      goto LABEL_13;
    }

    v13 = v12;
    v14 = [(_SFPBFlightDateDescriptor *)self current];
    v15 = [v4 current];
    v16 = [v14 isEqual:v15];

    if (v16)
    {
      goto LABEL_15;
    }
  }

  else
  {
LABEL_11:
  }

LABEL_12:
  v17 = 0;
LABEL_13:

  return v17;
}

- (void)writeTo:(id)a3
{
  v8 = a3;
  v4 = [(_SFPBFlightDateDescriptor *)self scheduled];
  if (v4)
  {
    PBDataWriterWriteSubmessage();
  }

  v5 = [(_SFPBFlightDateDescriptor *)self current];
  if (v5)
  {
    PBDataWriterWriteSubmessage();
  }

  [(_SFPBFlightDateDescriptor *)self bufferMinutes];
  v6 = v8;
  if (v7 != 0.0)
  {
    PBDataWriterWriteFloatField();
    v6 = v8;
  }
}

@end