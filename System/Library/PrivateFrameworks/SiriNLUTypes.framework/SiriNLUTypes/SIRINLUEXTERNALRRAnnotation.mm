@interface SIRINLUEXTERNALRRAnnotation
- (BOOL)isEqual:(id)equal;
- (id)copyWithZone:(_NSZone *)zone;
- (id)description;
- (id)dictionaryRepresentation;
- (void)copyTo:(id)to;
- (void)mergeFrom:(id)from;
- (void)writeTo:(id)to;
@end

@implementation SIRINLUEXTERNALRRAnnotation

- (void)mergeFrom:(id)from
{
  fromCopy = from;
  key = self->_key;
  v6 = fromCopy[1];
  v9 = fromCopy;
  if (key)
  {
    if (!v6)
    {
      goto LABEL_7;
    }

    [(SIRICOMMONStringValue *)key mergeFrom:?];
  }

  else
  {
    if (!v6)
    {
      goto LABEL_7;
    }

    [(SIRINLUEXTERNALRRAnnotation *)self setKey:?];
  }

  fromCopy = v9;
LABEL_7:
  value = self->_value;
  v8 = fromCopy[2];
  if (value)
  {
    if (v8)
    {
      [(SIRICOMMONStringValue *)value mergeFrom:?];
    }
  }

  else if (v8)
  {
    [(SIRINLUEXTERNALRRAnnotation *)self setValue:?];
  }

  MEMORY[0x1EEE66BB8]();
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  if ([equalCopy isMemberOfClass:objc_opt_class()] && ((key = self->_key, !(key | equalCopy[1])) || -[SIRICOMMONStringValue isEqual:](key, "isEqual:")))
  {
    value = self->_value;
    if (value | equalCopy[2])
    {
      v7 = [(SIRICOMMONStringValue *)value isEqual:?];
    }

    else
    {
      v7 = 1;
    }
  }

  else
  {
    v7 = 0;
  }

  return v7;
}

- (id)copyWithZone:(_NSZone *)zone
{
  v5 = [objc_msgSend(objc_opt_class() allocWithZone:{zone), "init"}];
  v6 = [(SIRICOMMONStringValue *)self->_key copyWithZone:zone];
  v7 = v5[1];
  v5[1] = v6;

  v8 = [(SIRICOMMONStringValue *)self->_value copyWithZone:zone];
  v9 = v5[2];
  v5[2] = v8;

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

  if (self->_value)
  {
    [v5 setValue:?];
    toCopy = v5;
  }
}

- (void)writeTo:(id)to
{
  toCopy = to;
  v5 = toCopy;
  if (self->_key)
  {
    PBDataWriterWriteSubmessage();
    toCopy = v5;
  }

  if (self->_value)
  {
    PBDataWriterWriteSubmessage();
    toCopy = v5;
  }
}

- (id)dictionaryRepresentation
{
  dictionary = [MEMORY[0x1E695DF90] dictionary];
  key = self->_key;
  if (key)
  {
    dictionaryRepresentation = [(SIRICOMMONStringValue *)key dictionaryRepresentation];
    [dictionary setObject:dictionaryRepresentation forKey:@"key"];
  }

  value = self->_value;
  if (value)
  {
    dictionaryRepresentation2 = [(SIRICOMMONStringValue *)value dictionaryRepresentation];
    [dictionary setObject:dictionaryRepresentation2 forKey:@"value"];
  }

  return dictionary;
}

- (id)description
{
  v3 = MEMORY[0x1E696AEC0];
  v8.receiver = self;
  v8.super_class = SIRINLUEXTERNALRRAnnotation;
  v4 = [(SIRINLUEXTERNALRRAnnotation *)&v8 description];
  dictionaryRepresentation = [(SIRINLUEXTERNALRRAnnotation *)self dictionaryRepresentation];
  v6 = [v3 stringWithFormat:@"%@ %@", v4, dictionaryRepresentation];

  return v6;
}

@end