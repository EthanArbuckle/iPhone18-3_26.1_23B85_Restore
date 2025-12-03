@interface _SFPBFlightDateDescriptor
- (BOOL)isEqual:(id)equal;
- (NSData)jsonData;
- (_SFPBFlightDateDescriptor)initWithDictionary:(id)dictionary;
- (_SFPBFlightDateDescriptor)initWithFacade:(id)facade;
- (_SFPBFlightDateDescriptor)initWithJSON:(id)n;
- (id)dictionaryRepresentation;
- (unint64_t)hash;
- (void)writeTo:(id)to;
@end

@implementation _SFPBFlightDateDescriptor

- (_SFPBFlightDateDescriptor)initWithFacade:(id)facade
{
  facadeCopy = facade;
  v5 = [(_SFPBFlightDateDescriptor *)self init];
  if (v5)
  {
    scheduled = [facadeCopy scheduled];

    if (scheduled)
    {
      v7 = [_SFPBDate alloc];
      scheduled2 = [facadeCopy scheduled];
      v9 = [(_SFPBDate *)v7 initWithNSDate:scheduled2];
      [(_SFPBFlightDateDescriptor *)v5 setScheduled:v9];
    }

    current = [facadeCopy current];

    if (current)
    {
      v11 = [_SFPBDate alloc];
      current2 = [facadeCopy current];
      v13 = [(_SFPBDate *)v11 initWithNSDate:current2];
      [(_SFPBFlightDateDescriptor *)v5 setCurrent:v13];
    }

    bufferMinutes = [facadeCopy bufferMinutes];

    if (bufferMinutes)
    {
      bufferMinutes2 = [facadeCopy bufferMinutes];
      [bufferMinutes2 floatValue];
      [(_SFPBFlightDateDescriptor *)v5 setBufferMinutes:?];
    }

    v16 = v5;
  }

  return v5;
}

- (_SFPBFlightDateDescriptor)initWithDictionary:(id)dictionary
{
  dictionaryCopy = dictionary;
  v13.receiver = self;
  v13.super_class = _SFPBFlightDateDescriptor;
  v5 = [(_SFPBFlightDateDescriptor *)&v13 init];
  if (v5)
  {
    v6 = [dictionaryCopy objectForKeyedSubscript:@"scheduled"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v7 = [[_SFPBDate alloc] initWithDictionary:v6];
      [(_SFPBFlightDateDescriptor *)v5 setScheduled:v7];
    }

    v8 = [dictionaryCopy objectForKeyedSubscript:@"current"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v9 = [[_SFPBDate alloc] initWithDictionary:v8];
      [(_SFPBFlightDateDescriptor *)v5 setCurrent:v9];
    }

    v10 = [dictionaryCopy objectForKeyedSubscript:@"bufferMinutes"];
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

- (_SFPBFlightDateDescriptor)initWithJSON:(id)n
{
  v7 = 0;
  v4 = [MEMORY[0x1E696ACB0] JSONObjectWithData:n options:0 error:&v7];
  if (v7 || (objc_opt_class(), (objc_opt_isKindOfClass() & 1) == 0))
  {
    selfCopy = 0;
  }

  else
  {
    self = [(_SFPBFlightDateDescriptor *)self initWithDictionary:v4];
    selfCopy = self;
  }

  return selfCopy;
}

- (NSData)jsonData
{
  dictionaryRepresentation = [(_SFPBFlightDateDescriptor *)self dictionaryRepresentation];
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
  if (self->_bufferMinutes != 0.0)
  {
    v4 = MEMORY[0x1E696AD98];
    [(_SFPBFlightDateDescriptor *)self bufferMinutes];
    v5 = [v4 numberWithFloat:?];
    [dictionary setObject:v5 forKeyedSubscript:@"bufferMinutes"];
  }

  if (self->_current)
  {
    current = [(_SFPBFlightDateDescriptor *)self current];
    dictionaryRepresentation = [current dictionaryRepresentation];
    if (dictionaryRepresentation)
    {
      [dictionary setObject:dictionaryRepresentation forKeyedSubscript:@"current"];
    }

    else
    {
      null = [MEMORY[0x1E695DFB0] null];
      [dictionary setObject:null forKeyedSubscript:@"current"];
    }
  }

  if (self->_scheduled)
  {
    scheduled = [(_SFPBFlightDateDescriptor *)self scheduled];
    dictionaryRepresentation2 = [scheduled dictionaryRepresentation];
    if (dictionaryRepresentation2)
    {
      [dictionary setObject:dictionaryRepresentation2 forKeyedSubscript:@"scheduled"];
    }

    else
    {
      null2 = [MEMORY[0x1E695DFB0] null];
      [dictionary setObject:null2 forKeyedSubscript:@"scheduled"];
    }
  }

  return dictionary;
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

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  if (![equalCopy isMemberOfClass:objc_opt_class()])
  {
    goto LABEL_12;
  }

  scheduled = [(_SFPBFlightDateDescriptor *)self scheduled];
  scheduled2 = [equalCopy scheduled];
  if ((scheduled != 0) == (scheduled2 == 0))
  {
    goto LABEL_11;
  }

  scheduled3 = [(_SFPBFlightDateDescriptor *)self scheduled];
  if (scheduled3)
  {
    v8 = scheduled3;
    scheduled4 = [(_SFPBFlightDateDescriptor *)self scheduled];
    scheduled5 = [equalCopy scheduled];
    v11 = [scheduled4 isEqual:scheduled5];

    if (!v11)
    {
      goto LABEL_12;
    }
  }

  else
  {
  }

  scheduled = [(_SFPBFlightDateDescriptor *)self current];
  scheduled2 = [equalCopy current];
  if ((scheduled != 0) != (scheduled2 == 0))
  {
    current = [(_SFPBFlightDateDescriptor *)self current];
    if (!current)
    {

LABEL_15:
      bufferMinutes = self->_bufferMinutes;
      [equalCopy bufferMinutes];
      v17 = bufferMinutes == v20;
      goto LABEL_13;
    }

    v13 = current;
    current2 = [(_SFPBFlightDateDescriptor *)self current];
    current3 = [equalCopy current];
    v16 = [current2 isEqual:current3];

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

- (void)writeTo:(id)to
{
  toCopy = to;
  scheduled = [(_SFPBFlightDateDescriptor *)self scheduled];
  if (scheduled)
  {
    PBDataWriterWriteSubmessage();
  }

  current = [(_SFPBFlightDateDescriptor *)self current];
  if (current)
  {
    PBDataWriterWriteSubmessage();
  }

  [(_SFPBFlightDateDescriptor *)self bufferMinutes];
  v6 = toCopy;
  if (v7 != 0.0)
  {
    PBDataWriterWriteFloatField();
    v6 = toCopy;
  }
}

@end