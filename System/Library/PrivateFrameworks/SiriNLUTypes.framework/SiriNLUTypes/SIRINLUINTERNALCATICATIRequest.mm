@interface SIRINLUINTERNALCATICATIRequest
- (BOOL)isEqual:(id)equal;
- (id)copyWithZone:(_NSZone *)zone;
- (id)description;
- (id)dictionaryRepresentation;
- (unint64_t)hash;
- (void)copyTo:(id)to;
- (void)mergeFrom:(id)from;
- (void)writeTo:(id)to;
@end

@implementation SIRINLUINTERNALCATICATIRequest

- (void)mergeFrom:(id)from
{
  fromCopy = from;
  embeddings = self->_embeddings;
  v11 = fromCopy;
  v6 = fromCopy[1];
  if (embeddings)
  {
    if (v6)
    {
      [(SIRINLUINTERNALNLv4EmbeddingTensor *)embeddings mergeFrom:?];
    }
  }

  else if (v6)
  {
    [(SIRINLUINTERNALCATICATIRequest *)self setEmbeddings:?];
  }

  if (v11[3])
  {
    [(SIRINLUINTERNALCATICATIRequest *)self setOriginalUtterance:?];
  }

  if (v11[2])
  {
    [(SIRINLUINTERNALCATICATIRequest *)self setNormalisedUtterance:?];
  }

  requestId = self->_requestId;
  v8 = v11[4];
  if (requestId)
  {
    if (v8)
    {
      [(SIRINLUEXTERNALUUID *)requestId mergeFrom:?];
    }
  }

  else if (v8)
  {
    [(SIRINLUINTERNALCATICATIRequest *)self setRequestId:?];
  }

  turnInput = self->_turnInput;
  v10 = v11[5];
  if (turnInput)
  {
    if (v10)
    {
      [(SIRINLUEXTERNALTurnInput *)turnInput mergeFrom:?];
    }
  }

  else if (v10)
  {
    [(SIRINLUINTERNALCATICATIRequest *)self setTurnInput:?];
  }
}

- (unint64_t)hash
{
  v3 = [(SIRINLUINTERNALNLv4EmbeddingTensor *)self->_embeddings hash];
  v4 = [(NSString *)self->_originalUtterance hash]^ v3;
  v5 = [(NSString *)self->_normalisedUtterance hash];
  v6 = v4 ^ v5 ^ [(SIRINLUEXTERNALUUID *)self->_requestId hash];
  return v6 ^ [(SIRINLUEXTERNALTurnInput *)self->_turnInput hash];
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  if ([equalCopy isMemberOfClass:objc_opt_class()] && ((embeddings = self->_embeddings, !(embeddings | equalCopy[1])) || -[SIRINLUINTERNALNLv4EmbeddingTensor isEqual:](embeddings, "isEqual:")) && ((originalUtterance = self->_originalUtterance, !(originalUtterance | equalCopy[3])) || -[NSString isEqual:](originalUtterance, "isEqual:")) && ((normalisedUtterance = self->_normalisedUtterance, !(normalisedUtterance | equalCopy[2])) || -[NSString isEqual:](normalisedUtterance, "isEqual:")) && ((requestId = self->_requestId, !(requestId | equalCopy[4])) || -[SIRINLUEXTERNALUUID isEqual:](requestId, "isEqual:")))
  {
    turnInput = self->_turnInput;
    if (turnInput | equalCopy[5])
    {
      v10 = [(SIRINLUEXTERNALTurnInput *)turnInput isEqual:?];
    }

    else
    {
      v10 = 1;
    }
  }

  else
  {
    v10 = 0;
  }

  return v10;
}

- (id)copyWithZone:(_NSZone *)zone
{
  v5 = [objc_msgSend(objc_opt_class() allocWithZone:{zone), "init"}];
  v6 = [(SIRINLUINTERNALNLv4EmbeddingTensor *)self->_embeddings copyWithZone:zone];
  v7 = v5[1];
  v5[1] = v6;

  v8 = [(NSString *)self->_originalUtterance copyWithZone:zone];
  v9 = v5[3];
  v5[3] = v8;

  v10 = [(NSString *)self->_normalisedUtterance copyWithZone:zone];
  v11 = v5[2];
  v5[2] = v10;

  v12 = [(SIRINLUEXTERNALUUID *)self->_requestId copyWithZone:zone];
  v13 = v5[4];
  v5[4] = v12;

  v14 = [(SIRINLUEXTERNALTurnInput *)self->_turnInput copyWithZone:zone];
  v15 = v5[5];
  v5[5] = v14;

  return v5;
}

- (void)copyTo:(id)to
{
  toCopy = to;
  v5 = toCopy;
  if (self->_embeddings)
  {
    [toCopy setEmbeddings:?];
    toCopy = v5;
  }

  if (self->_originalUtterance)
  {
    [v5 setOriginalUtterance:?];
    toCopy = v5;
  }

  if (self->_normalisedUtterance)
  {
    [v5 setNormalisedUtterance:?];
    toCopy = v5;
  }

  if (self->_requestId)
  {
    [v5 setRequestId:?];
    toCopy = v5;
  }

  if (self->_turnInput)
  {
    [v5 setTurnInput:?];
    toCopy = v5;
  }
}

- (void)writeTo:(id)to
{
  toCopy = to;
  v5 = toCopy;
  if (self->_embeddings)
  {
    PBDataWriterWriteSubmessage();
    toCopy = v5;
  }

  if (self->_originalUtterance)
  {
    PBDataWriterWriteStringField();
    toCopy = v5;
  }

  if (self->_normalisedUtterance)
  {
    PBDataWriterWriteStringField();
    toCopy = v5;
  }

  if (self->_requestId)
  {
    PBDataWriterWriteSubmessage();
    toCopy = v5;
  }

  if (self->_turnInput)
  {
    PBDataWriterWriteSubmessage();
    toCopy = v5;
  }
}

- (id)dictionaryRepresentation
{
  dictionary = [MEMORY[0x1E695DF90] dictionary];
  embeddings = self->_embeddings;
  if (embeddings)
  {
    dictionaryRepresentation = [(SIRINLUINTERNALNLv4EmbeddingTensor *)embeddings dictionaryRepresentation];
    [dictionary setObject:dictionaryRepresentation forKey:@"embeddings"];
  }

  originalUtterance = self->_originalUtterance;
  if (originalUtterance)
  {
    [dictionary setObject:originalUtterance forKey:@"original_utterance"];
  }

  normalisedUtterance = self->_normalisedUtterance;
  if (normalisedUtterance)
  {
    [dictionary setObject:normalisedUtterance forKey:@"normalised_utterance"];
  }

  requestId = self->_requestId;
  if (requestId)
  {
    dictionaryRepresentation2 = [(SIRINLUEXTERNALUUID *)requestId dictionaryRepresentation];
    [dictionary setObject:dictionaryRepresentation2 forKey:@"request_id"];
  }

  turnInput = self->_turnInput;
  if (turnInput)
  {
    dictionaryRepresentation3 = [(SIRINLUEXTERNALTurnInput *)turnInput dictionaryRepresentation];
    [dictionary setObject:dictionaryRepresentation3 forKey:@"turn_input"];
  }

  return dictionary;
}

- (id)description
{
  v3 = MEMORY[0x1E696AEC0];
  v8.receiver = self;
  v8.super_class = SIRINLUINTERNALCATICATIRequest;
  v4 = [(SIRINLUINTERNALCATICATIRequest *)&v8 description];
  dictionaryRepresentation = [(SIRINLUINTERNALCATICATIRequest *)self dictionaryRepresentation];
  v6 = [v3 stringWithFormat:@"%@ %@", v4, dictionaryRepresentation];

  return v6;
}

@end