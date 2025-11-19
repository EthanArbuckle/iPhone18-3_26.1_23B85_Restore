@interface SIRINLUINTERNALLVCOverrideValue
- (BOOL)isEqual:(id)a3;
- (id)copyWithZone:(_NSZone *)a3;
- (id)description;
- (id)dictionaryRepresentation;
- (void)copyTo:(id)a3;
- (void)mergeFrom:(id)a3;
- (void)writeTo:(id)a3;
@end

@implementation SIRINLUINTERNALLVCOverrideValue

- (void)mergeFrom:(id)a3
{
  v4 = a3;
  lvcValue = self->_lvcValue;
  v6 = v4[1];
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

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  if ([v4 isMemberOfClass:objc_opt_class()])
  {
    lvcValue = self->_lvcValue;
    if (lvcValue | v4[1])
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

- (id)copyWithZone:(_NSZone *)a3
{
  v5 = [objc_msgSend(objc_opt_class() allocWithZone:{a3), "init"}];
  v6 = [(SIRINLUEXTERNALMultilingualVariant *)self->_lvcValue copyWithZone:a3];
  v7 = v5[1];
  v5[1] = v6;

  return v5;
}

- (void)copyTo:(id)a3
{
  lvcValue = self->_lvcValue;
  if (lvcValue)
  {
    [a3 setLvcValue:lvcValue];
  }
}

- (void)writeTo:(id)a3
{
  if (self->_lvcValue)
  {
    PBDataWriterWriteSubmessage();
  }
}

- (id)dictionaryRepresentation
{
  v3 = [MEMORY[0x1E695DF90] dictionary];
  lvcValue = self->_lvcValue;
  if (lvcValue)
  {
    v5 = [(SIRINLUEXTERNALMultilingualVariant *)lvcValue dictionaryRepresentation];
    [v3 setObject:v5 forKey:@"lvc_value"];
  }

  return v3;
}

- (id)description
{
  v3 = MEMORY[0x1E696AEC0];
  v8.receiver = self;
  v8.super_class = SIRINLUINTERNALLVCOverrideValue;
  v4 = [(SIRINLUINTERNALLVCOverrideValue *)&v8 description];
  v5 = [(SIRINLUINTERNALLVCOverrideValue *)self dictionaryRepresentation];
  v6 = [v3 stringWithFormat:@"%@ %@", v4, v5];

  return v6;
}

@end