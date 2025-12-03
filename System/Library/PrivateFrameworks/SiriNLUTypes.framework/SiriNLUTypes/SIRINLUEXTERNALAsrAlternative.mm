@interface SIRINLUEXTERNALAsrAlternative
- (BOOL)isEqual:(id)equal;
- (id)copyWithZone:(_NSZone *)zone;
- (id)description;
- (id)dictionaryRepresentation;
- (void)copyTo:(id)to;
- (void)mergeFrom:(id)from;
- (void)writeTo:(id)to;
@end

@implementation SIRINLUEXTERNALAsrAlternative

- (void)mergeFrom:(id)from
{
  fromCopy = from;
  v7 = fromCopy;
  if (fromCopy[1])
  {
    [(SIRINLUEXTERNALAsrAlternative *)self setAlternative:?];
    fromCopy = v7;
  }

  probability = self->_probability;
  v6 = fromCopy[2];
  if (probability)
  {
    if (v6)
    {
      [(SIRICOMMONFloatValue *)probability mergeFrom:?];
    }
  }

  else if (v6)
  {
    [(SIRINLUEXTERNALAsrAlternative *)self setProbability:?];
  }

  MEMORY[0x1EEE66BB8]();
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  if ([equalCopy isMemberOfClass:objc_opt_class()] && ((alternative = self->_alternative, !(alternative | equalCopy[1])) || -[NSString isEqual:](alternative, "isEqual:")))
  {
    probability = self->_probability;
    if (probability | equalCopy[2])
    {
      v7 = [(SIRICOMMONFloatValue *)probability isEqual:?];
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
  v6 = [(NSString *)self->_alternative copyWithZone:zone];
  v7 = v5[1];
  v5[1] = v6;

  v8 = [(SIRICOMMONFloatValue *)self->_probability copyWithZone:zone];
  v9 = v5[2];
  v5[2] = v8;

  return v5;
}

- (void)copyTo:(id)to
{
  toCopy = to;
  v5 = toCopy;
  if (self->_alternative)
  {
    [toCopy setAlternative:?];
    toCopy = v5;
  }

  if (self->_probability)
  {
    [v5 setProbability:?];
    toCopy = v5;
  }
}

- (void)writeTo:(id)to
{
  toCopy = to;
  v5 = toCopy;
  if (self->_alternative)
  {
    PBDataWriterWriteStringField();
    toCopy = v5;
  }

  if (self->_probability)
  {
    PBDataWriterWriteSubmessage();
    toCopy = v5;
  }
}

- (id)dictionaryRepresentation
{
  dictionary = [MEMORY[0x1E695DF90] dictionary];
  v4 = dictionary;
  alternative = self->_alternative;
  if (alternative)
  {
    [dictionary setObject:alternative forKey:@"alternative"];
  }

  probability = self->_probability;
  if (probability)
  {
    dictionaryRepresentation = [(SIRICOMMONFloatValue *)probability dictionaryRepresentation];
    [v4 setObject:dictionaryRepresentation forKey:@"probability"];
  }

  return v4;
}

- (id)description
{
  v3 = MEMORY[0x1E696AEC0];
  v8.receiver = self;
  v8.super_class = SIRINLUEXTERNALAsrAlternative;
  v4 = [(SIRINLUEXTERNALAsrAlternative *)&v8 description];
  dictionaryRepresentation = [(SIRINLUEXTERNALAsrAlternative *)self dictionaryRepresentation];
  v6 = [v3 stringWithFormat:@"%@ %@", v4, dictionaryRepresentation];

  return v6;
}

@end