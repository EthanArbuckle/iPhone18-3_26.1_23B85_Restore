@interface SIRINLUEXTERNALSpanProperty
- (BOOL)isEqual:(id)equal;
- (id)copyWithZone:(_NSZone *)zone;
- (id)description;
- (id)dictionaryRepresentation;
- (unint64_t)hash;
- (void)copyTo:(id)to;
- (void)mergeFrom:(id)from;
- (void)writeTo:(id)to;
@end

@implementation SIRINLUEXTERNALSpanProperty

- (void)mergeFrom:(id)from
{
  fromCopy = from;
  if (fromCopy[1])
  {
    [(SIRINLUEXTERNALSpanProperty *)self setKey:?];
  }

  valueString = self->_valueString;
  v5 = fromCopy[4];
  if (valueString)
  {
    if (v5)
    {
      [(SIRICOMMONStringValue *)valueString mergeFrom:?];
    }
  }

  else if (v5)
  {
    [(SIRINLUEXTERNALSpanProperty *)self setValueString:?];
  }

  valueInt = self->_valueInt;
  v7 = fromCopy[3];
  if (valueInt)
  {
    if (v7)
    {
      [(SIRICOMMONInt32Value *)valueInt mergeFrom:?];
    }
  }

  else if (v7)
  {
    [(SIRINLUEXTERNALSpanProperty *)self setValueInt:?];
  }

  valueFloat = self->_valueFloat;
  v9 = fromCopy[2];
  if (valueFloat)
  {
    if (v9)
    {
      [(SIRICOMMONFloatValue *)valueFloat mergeFrom:?];
    }
  }

  else if (v9)
  {
    [(SIRINLUEXTERNALSpanProperty *)self setValueFloat:?];
  }
}

- (unint64_t)hash
{
  v3 = [(NSString *)self->_key hash];
  v4 = [(SIRICOMMONStringValue *)self->_valueString hash]^ v3;
  v5 = [(SIRICOMMONInt32Value *)self->_valueInt hash];
  return v4 ^ v5 ^ [(SIRICOMMONFloatValue *)self->_valueFloat hash];
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  if ([equalCopy isMemberOfClass:objc_opt_class()] && ((key = self->_key, !(key | equalCopy[1])) || -[NSString isEqual:](key, "isEqual:")) && ((valueString = self->_valueString, !(valueString | equalCopy[4])) || -[SIRICOMMONStringValue isEqual:](valueString, "isEqual:")) && ((valueInt = self->_valueInt, !(valueInt | equalCopy[3])) || -[SIRICOMMONInt32Value isEqual:](valueInt, "isEqual:")))
  {
    valueFloat = self->_valueFloat;
    if (valueFloat | equalCopy[2])
    {
      v9 = [(SIRICOMMONFloatValue *)valueFloat isEqual:?];
    }

    else
    {
      v9 = 1;
    }
  }

  else
  {
    v9 = 0;
  }

  return v9;
}

- (id)copyWithZone:(_NSZone *)zone
{
  v5 = [objc_msgSend(objc_opt_class() allocWithZone:{zone), "init"}];
  v6 = [(NSString *)self->_key copyWithZone:zone];
  v7 = v5[1];
  v5[1] = v6;

  v8 = [(SIRICOMMONStringValue *)self->_valueString copyWithZone:zone];
  v9 = v5[4];
  v5[4] = v8;

  v10 = [(SIRICOMMONInt32Value *)self->_valueInt copyWithZone:zone];
  v11 = v5[3];
  v5[3] = v10;

  v12 = [(SIRICOMMONFloatValue *)self->_valueFloat copyWithZone:zone];
  v13 = v5[2];
  v5[2] = v12;

  return v5;
}

- (void)copyTo:(id)to
{
  toCopy = to;
  v5 = toCopy;
  if (self->_key)
  {
    [toCopy setKey:?];
    toCopy = v5;
  }

  if (self->_valueString)
  {
    [v5 setValueString:?];
    toCopy = v5;
  }

  if (self->_valueInt)
  {
    [v5 setValueInt:?];
    toCopy = v5;
  }

  if (self->_valueFloat)
  {
    [v5 setValueFloat:?];
    toCopy = v5;
  }
}

- (void)writeTo:(id)to
{
  toCopy = to;
  v5 = toCopy;
  if (self->_key)
  {
    PBDataWriterWriteStringField();
    toCopy = v5;
  }

  if (self->_valueString)
  {
    PBDataWriterWriteSubmessage();
    toCopy = v5;
  }

  if (self->_valueInt)
  {
    PBDataWriterWriteSubmessage();
    toCopy = v5;
  }

  if (self->_valueFloat)
  {
    PBDataWriterWriteSubmessage();
    toCopy = v5;
  }
}

- (id)dictionaryRepresentation
{
  dictionary = [MEMORY[0x1E695DF90] dictionary];
  v4 = dictionary;
  key = self->_key;
  if (key)
  {
    [dictionary setObject:key forKey:@"key"];
  }

  valueString = self->_valueString;
  if (valueString)
  {
    dictionaryRepresentation = [(SIRICOMMONStringValue *)valueString dictionaryRepresentation];
    [v4 setObject:dictionaryRepresentation forKey:@"value_string"];
  }

  valueInt = self->_valueInt;
  if (valueInt)
  {
    dictionaryRepresentation2 = [(SIRICOMMONInt32Value *)valueInt dictionaryRepresentation];
    [v4 setObject:dictionaryRepresentation2 forKey:@"value_int"];
  }

  valueFloat = self->_valueFloat;
  if (valueFloat)
  {
    dictionaryRepresentation3 = [(SIRICOMMONFloatValue *)valueFloat dictionaryRepresentation];
    [v4 setObject:dictionaryRepresentation3 forKey:@"value_float"];
  }

  return v4;
}

- (id)description
{
  v3 = MEMORY[0x1E696AEC0];
  v8.receiver = self;
  v8.super_class = SIRINLUEXTERNALSpanProperty;
  v4 = [(SIRINLUEXTERNALSpanProperty *)&v8 description];
  dictionaryRepresentation = [(SIRINLUEXTERNALSpanProperty *)self dictionaryRepresentation];
  v6 = [v3 stringWithFormat:@"%@ %@", v4, dictionaryRepresentation];

  return v6;
}

@end