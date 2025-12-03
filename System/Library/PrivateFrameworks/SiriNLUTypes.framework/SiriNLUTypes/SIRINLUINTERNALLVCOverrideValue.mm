@interface SIRINLUINTERNALLVCOverrideValue
- (BOOL)isEqual:(id)equal;
- (id)copyWithZone:(_NSZone *)zone;
- (id)description;
- (id)dictionaryRepresentation;
- (void)copyTo:(id)to;
- (void)mergeFrom:(id)from;
- (void)writeTo:(id)to;
@end

@implementation SIRINLUINTERNALLVCOverrideValue

- (void)mergeFrom:(id)from
{
  fromCopy = from;
  lvcValue = self->_lvcValue;
  v6 = fromCopy[1];
  if (lvcValue)
  {
    if (v6)
    {
      [(SIRINLUEXTERNALMultilingualVariant *)lvcValue mergeFrom:?];
    }
  }

  else if (v6)
  {
    [(SIRINLUINTERNALLVCOverrideValue *)self setLvcValue:?];
  }

  MEMORY[0x1EEE66BB8]();
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  if ([equalCopy isMemberOfClass:objc_opt_class()])
  {
    lvcValue = self->_lvcValue;
    if (lvcValue | equalCopy[1])
    {
      v6 = [(SIRINLUEXTERNALMultilingualVariant *)lvcValue isEqual:?];
    }

    else
    {
      v6 = 1;
    }
  }

  else
  {
    v6 = 0;
  }

  return v6;
}

- (id)copyWithZone:(_NSZone *)zone
{
  v5 = [objc_msgSend(objc_opt_class() allocWithZone:{zone), "init"}];
  v6 = [(SIRINLUEXTERNALMultilingualVariant *)self->_lvcValue copyWithZone:zone];
  v7 = v5[1];
  v5[1] = v6;

  return v5;
}

- (void)copyTo:(id)to
{
  lvcValue = self->_lvcValue;
  if (lvcValue)
  {
    [to setLvcValue:lvcValue];
  }
}

- (void)writeTo:(id)to
{
  if (self->_lvcValue)
  {
    PBDataWriterWriteSubmessage();
  }
}

- (id)dictionaryRepresentation
{
  dictionary = [MEMORY[0x1E695DF90] dictionary];
  lvcValue = self->_lvcValue;
  if (lvcValue)
  {
    dictionaryRepresentation = [(SIRINLUEXTERNALMultilingualVariant *)lvcValue dictionaryRepresentation];
    [dictionary setObject:dictionaryRepresentation forKey:@"lvc_value"];
  }

  return dictionary;
}

- (id)description
{
  v3 = MEMORY[0x1E696AEC0];
  v8.receiver = self;
  v8.super_class = SIRINLUINTERNALLVCOverrideValue;
  v4 = [(SIRINLUINTERNALLVCOverrideValue *)&v8 description];
  dictionaryRepresentation = [(SIRINLUINTERNALLVCOverrideValue *)self dictionaryRepresentation];
  v6 = [v3 stringWithFormat:@"%@ %@", v4, dictionaryRepresentation];

  return v6;
}

@end