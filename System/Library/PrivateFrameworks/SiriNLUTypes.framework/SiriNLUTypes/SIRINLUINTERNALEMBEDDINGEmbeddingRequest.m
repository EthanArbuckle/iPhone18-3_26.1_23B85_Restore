@interface SIRINLUINTERNALEMBEDDINGEmbeddingRequest
- (BOOL)isEqual:(id)a3;
- (id)copyWithZone:(_NSZone *)a3;
- (id)description;
- (id)dictionaryRepresentation;
- (void)copyTo:(id)a3;
- (void)mergeFrom:(id)a3;
- (void)writeTo:(id)a3;
@end

@implementation SIRINLUINTERNALEMBEDDINGEmbeddingRequest

- (void)mergeFrom:(id)a3
{
  v4 = a3;
  v7 = v4;
  if (v4[1])
  {
    [(SIRINLUINTERNALEMBEDDINGEmbeddingRequest *)self setText:?];
    v4 = v7;
  }

  tokenChain = self->_tokenChain;
  v6 = v4[2];
  if (tokenChain)
  {
    if (v6)
    {
      [(SIRINLUINTERNALTokenChain *)tokenChain mergeFrom:?];
    }
  }

  else if (v6)
  {
    [(SIRINLUINTERNALEMBEDDINGEmbeddingRequest *)self setTokenChain:?];
  }

  MEMORY[0x1EEE66BB8]();
}

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  if ([v4 isMemberOfClass:objc_opt_class()] && ((text = self->_text, !(text | v4[1])) || -[NSString isEqual:](text, "isEqual:")))
  {
    tokenChain = self->_tokenChain;
    if (tokenChain | v4[2])
    {
      v7 = [(SIRINLUINTERNALTokenChain *)tokenChain isEqual:?];
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

- (id)copyWithZone:(_NSZone *)a3
{
  v5 = [objc_msgSend(objc_opt_class() allocWithZone:{a3), "init"}];
  v6 = [(NSString *)self->_text copyWithZone:a3];
  v7 = v5[1];
  v5[1] = v6;

  v8 = [(SIRINLUINTERNALTokenChain *)self->_tokenChain copyWithZone:a3];
  v9 = v5[2];
  v5[2] = v8;

  return v5;
}

- (void)copyTo:(id)a3
{
  v4 = a3;
  v5 = v4;
  if (self->_text)
  {
    [v4 setText:?];
    v4 = v5;
  }

  if (self->_tokenChain)
  {
    [v5 setTokenChain:?];
    v4 = v5;
  }
}

- (void)writeTo:(id)a3
{
  v4 = a3;
  v5 = v4;
  if (self->_text)
  {
    PBDataWriterWriteStringField();
    v4 = v5;
  }

  if (self->_tokenChain)
  {
    PBDataWriterWriteSubmessage();
    v4 = v5;
  }
}

- (id)dictionaryRepresentation
{
  v3 = [MEMORY[0x1E695DF90] dictionary];
  v4 = v3;
  text = self->_text;
  if (text)
  {
    [v3 setObject:text forKey:@"text"];
  }

  tokenChain = self->_tokenChain;
  if (tokenChain)
  {
    v7 = [(SIRINLUINTERNALTokenChain *)tokenChain dictionaryRepresentation];
    [v4 setObject:v7 forKey:@"token_chain"];
  }

  return v4;
}

- (id)description
{
  v3 = MEMORY[0x1E696AEC0];
  v8.receiver = self;
  v8.super_class = SIRINLUINTERNALEMBEDDINGEmbeddingRequest;
  v4 = [(SIRINLUINTERNALEMBEDDINGEmbeddingRequest *)&v8 description];
  v5 = [(SIRINLUINTERNALEMBEDDINGEmbeddingRequest *)self dictionaryRepresentation];
  v6 = [v3 stringWithFormat:@"%@ %@", v4, v5];

  return v6;
}

@end