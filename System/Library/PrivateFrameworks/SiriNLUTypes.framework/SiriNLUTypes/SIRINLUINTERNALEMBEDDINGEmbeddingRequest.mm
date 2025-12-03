@interface SIRINLUINTERNALEMBEDDINGEmbeddingRequest
- (BOOL)isEqual:(id)equal;
- (id)copyWithZone:(_NSZone *)zone;
- (id)description;
- (id)dictionaryRepresentation;
- (void)copyTo:(id)to;
- (void)mergeFrom:(id)from;
- (void)writeTo:(id)to;
@end

@implementation SIRINLUINTERNALEMBEDDINGEmbeddingRequest

- (void)mergeFrom:(id)from
{
  fromCopy = from;
  v7 = fromCopy;
  if (fromCopy[1])
  {
    [(SIRINLUINTERNALEMBEDDINGEmbeddingRequest *)self setText:?];
    fromCopy = v7;
  }

  tokenChain = self->_tokenChain;
  v6 = fromCopy[2];
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

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  if ([equalCopy isMemberOfClass:objc_opt_class()] && ((text = self->_text, !(text | equalCopy[1])) || -[NSString isEqual:](text, "isEqual:")))
  {
    tokenChain = self->_tokenChain;
    if (tokenChain | equalCopy[2])
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

- (id)copyWithZone:(_NSZone *)zone
{
  v5 = [objc_msgSend(objc_opt_class() allocWithZone:{zone), "init"}];
  v6 = [(NSString *)self->_text copyWithZone:zone];
  v7 = v5[1];
  v5[1] = v6;

  v8 = [(SIRINLUINTERNALTokenChain *)self->_tokenChain copyWithZone:zone];
  v9 = v5[2];
  v5[2] = v8;

  return v5;
}

- (void)copyTo:(id)to
{
  toCopy = to;
  v5 = toCopy;
  if (self->_text)
  {
    [toCopy setText:?];
    toCopy = v5;
  }

  if (self->_tokenChain)
  {
    [v5 setTokenChain:?];
    toCopy = v5;
  }
}

- (void)writeTo:(id)to
{
  toCopy = to;
  v5 = toCopy;
  if (self->_text)
  {
    PBDataWriterWriteStringField();
    toCopy = v5;
  }

  if (self->_tokenChain)
  {
    PBDataWriterWriteSubmessage();
    toCopy = v5;
  }
}

- (id)dictionaryRepresentation
{
  dictionary = [MEMORY[0x1E695DF90] dictionary];
  v4 = dictionary;
  text = self->_text;
  if (text)
  {
    [dictionary setObject:text forKey:@"text"];
  }

  tokenChain = self->_tokenChain;
  if (tokenChain)
  {
    dictionaryRepresentation = [(SIRINLUINTERNALTokenChain *)tokenChain dictionaryRepresentation];
    [v4 setObject:dictionaryRepresentation forKey:@"token_chain"];
  }

  return v4;
}

- (id)description
{
  v3 = MEMORY[0x1E696AEC0];
  v8.receiver = self;
  v8.super_class = SIRINLUINTERNALEMBEDDINGEmbeddingRequest;
  v4 = [(SIRINLUINTERNALEMBEDDINGEmbeddingRequest *)&v8 description];
  dictionaryRepresentation = [(SIRINLUINTERNALEMBEDDINGEmbeddingRequest *)self dictionaryRepresentation];
  v6 = [v3 stringWithFormat:@"%@ %@", v4, dictionaryRepresentation];

  return v6;
}

@end