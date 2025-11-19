@interface SIRINLUINTERNALCCQROverrideTemplate
- (BOOL)isEqual:(id)a3;
- (id)copyWithZone:(_NSZone *)a3;
- (id)description;
- (id)dictionaryRepresentation;
- (void)copyTo:(id)a3;
- (void)mergeFrom:(id)a3;
- (void)writeTo:(id)a3;
@end

@implementation SIRINLUINTERNALCCQROverrideTemplate

- (void)mergeFrom:(id)a3
{
  v4 = a3;
  rewriteMessage = self->_rewriteMessage;
  v6 = v4[1];
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

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  if ([v4 isMemberOfClass:objc_opt_class()])
  {
    rewriteMessage = self->_rewriteMessage;
    if (rewriteMessage | v4[1])
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

- (id)copyWithZone:(_NSZone *)a3
{
  v5 = [objc_msgSend(objc_opt_class() allocWithZone:{a3), "init"}];
  v6 = [(SIRINLUEXTERNALRewriteMessage *)self->_rewriteMessage copyWithZone:a3];
  v7 = v5[1];
  v5[1] = v6;

  return v5;
}

- (void)copyTo:(id)a3
{
  rewriteMessage = self->_rewriteMessage;
  if (rewriteMessage)
  {
    [a3 setRewriteMessage:rewriteMessage];
  }
}

- (void)writeTo:(id)a3
{
  if (self->_rewriteMessage)
  {
    PBDataWriterWriteSubmessage();
  }
}

- (id)dictionaryRepresentation
{
  v3 = [MEMORY[0x1E695DF90] dictionary];
  rewriteMessage = self->_rewriteMessage;
  if (rewriteMessage)
  {
    v5 = [(SIRINLUEXTERNALRewriteMessage *)rewriteMessage dictionaryRepresentation];
    [v3 setObject:v5 forKey:@"rewrite_message"];
  }

  return v3;
}

- (id)description
{
  v3 = MEMORY[0x1E696AEC0];
  v8.receiver = self;
  v8.super_class = SIRINLUINTERNALCCQROverrideTemplate;
  v4 = [(SIRINLUINTERNALCCQROverrideTemplate *)&v8 description];
  v5 = [(SIRINLUINTERNALCCQROverrideTemplate *)self dictionaryRepresentation];
  v6 = [v3 stringWithFormat:@"%@ %@", v4, v5];

  return v6;
}

@end