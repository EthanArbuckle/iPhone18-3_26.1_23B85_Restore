@interface SIRINLUINTERNALCCQROverrideTemplate
- (BOOL)isEqual:(id)equal;
- (id)copyWithZone:(_NSZone *)zone;
- (id)description;
- (id)dictionaryRepresentation;
- (void)copyTo:(id)to;
- (void)mergeFrom:(id)from;
- (void)writeTo:(id)to;
@end

@implementation SIRINLUINTERNALCCQROverrideTemplate

- (void)mergeFrom:(id)from
{
  fromCopy = from;
  rewriteMessage = self->_rewriteMessage;
  v6 = fromCopy[1];
  if (rewriteMessage)
  {
    if (v6)
    {
      [(SIRINLUEXTERNALRewriteMessage *)rewriteMessage mergeFrom:?];
    }
  }

  else if (v6)
  {
    [(SIRINLUINTERNALCCQROverrideTemplate *)self setRewriteMessage:?];
  }

  MEMORY[0x1EEE66BB8]();
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  if ([equalCopy isMemberOfClass:objc_opt_class()])
  {
    rewriteMessage = self->_rewriteMessage;
    if (rewriteMessage | equalCopy[1])
    {
      v6 = [(SIRINLUEXTERNALRewriteMessage *)rewriteMessage isEqual:?];
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
  v6 = [(SIRINLUEXTERNALRewriteMessage *)self->_rewriteMessage copyWithZone:zone];
  v7 = v5[1];
  v5[1] = v6;

  return v5;
}

- (void)copyTo:(id)to
{
  rewriteMessage = self->_rewriteMessage;
  if (rewriteMessage)
  {
    [to setRewriteMessage:rewriteMessage];
  }
}

- (void)writeTo:(id)to
{
  if (self->_rewriteMessage)
  {
    PBDataWriterWriteSubmessage();
  }
}

- (id)dictionaryRepresentation
{
  dictionary = [MEMORY[0x1E695DF90] dictionary];
  rewriteMessage = self->_rewriteMessage;
  if (rewriteMessage)
  {
    dictionaryRepresentation = [(SIRINLUEXTERNALRewriteMessage *)rewriteMessage dictionaryRepresentation];
    [dictionary setObject:dictionaryRepresentation forKey:@"rewrite_message"];
  }

  return dictionary;
}

- (id)description
{
  v3 = MEMORY[0x1E696AEC0];
  v8.receiver = self;
  v8.super_class = SIRINLUINTERNALCCQROverrideTemplate;
  v4 = [(SIRINLUINTERNALCCQROverrideTemplate *)&v8 description];
  dictionaryRepresentation = [(SIRINLUINTERNALCCQROverrideTemplate *)self dictionaryRepresentation];
  v6 = [v3 stringWithFormat:@"%@ %@", v4, dictionaryRepresentation];

  return v6;
}

@end