@interface SIRINLUINTERNALCATICATIRequest
- (BOOL)isEqual:(id)a3;
- (id)copyWithZone:(_NSZone *)a3;
- (id)description;
- (id)dictionaryRepresentation;
- (unint64_t)hash;
- (void)copyTo:(id)a3;
- (void)mergeFrom:(id)a3;
- (void)writeTo:(id)a3;
@end

@implementation SIRINLUINTERNALCATICATIRequest

- (void)mergeFrom:(id)a3
{
  v4 = a3;
  embeddings = self->_embeddings;
  v11 = v4;
  v6 = v4[1];
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

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  if ([v4 isMemberOfClass:objc_opt_class()] && ((embeddings = self->_embeddings, !(embeddings | v4[1])) || -[SIRINLUINTERNALNLv4EmbeddingTensor isEqual:](embeddings, "isEqual:")) && ((originalUtterance = self->_originalUtterance, !(originalUtterance | v4[3])) || -[NSString isEqual:](originalUtterance, "isEqual:")) && ((normalisedUtterance = self->_normalisedUtterance, !(normalisedUtterance | v4[2])) || -[NSString isEqual:](normalisedUtterance, "isEqual:")) && ((requestId = self->_requestId, !(requestId | v4[4])) || -[SIRINLUEXTERNALUUID isEqual:](requestId, "isEqual:")))
  {
    turnInput = self->_turnInput;
    if (turnInput | v4[5])
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

- (id)copyWithZone:(_NSZone *)a3
{
  v5 = [objc_msgSend(objc_opt_class() allocWithZone:{a3), "init"}];
  v6 = [(SIRINLUINTERNALNLv4EmbeddingTensor *)self->_embeddings copyWithZone:a3];
  v7 = v5[1];
  v5[1] = v6;

  v8 = [(NSString *)self->_originalUtterance copyWithZone:a3];
  v9 = v5[3];
  v5[3] = v8;

  v10 = [(NSString *)self->_normalisedUtterance copyWithZone:a3];
  v11 = v5[2];
  v5[2] = v10;

  v12 = [(SIRINLUEXTERNALUUID *)self->_requestId copyWithZone:a3];
  v13 = v5[4];
  v5[4] = v12;

  v14 = [(SIRINLUEXTERNALTurnInput *)self->_turnInput copyWithZone:a3];
  v15 = v5[5];
  v5[5] = v14;

  return v5;
}

- (void)copyTo:(id)a3
{
  v4 = a3;
  v5 = v4;
  if (self->_embeddings)
  {
    [v4 setEmbeddings:?];
    v4 = v5;
  }

  if (self->_originalUtterance)
  {
    [v5 setOriginalUtterance:?];
    v4 = v5;
  }

  if (self->_normalisedUtterance)
  {
    [v5 setNormalisedUtterance:?];
    v4 = v5;
  }

  if (self->_requestId)
  {
    [v5 setRequestId:?];
    v4 = v5;
  }

  if (self->_turnInput)
  {
    [v5 setTurnInput:?];
    v4 = v5;
  }
}

- (void)writeTo:(id)a3
{
  v4 = a3;
  v5 = v4;
  if (self->_embeddings)
  {
    PBDataWriterWriteSubmessage();
    v4 = v5;
  }

  if (self->_originalUtterance)
  {
    PBDataWriterWriteStringField();
    v4 = v5;
  }

  if (self->_normalisedUtterance)
  {
    PBDataWriterWriteStringField();
    v4 = v5;
  }

  if (self->_requestId)
  {
    PBDataWriterWriteSubmessage();
    v4 = v5;
  }

  if (self->_turnInput)
  {
    PBDataWriterWriteSubmessage();
    v4 = v5;
  }
}

- (id)dictionaryRepresentation
{
  v3 = [MEMORY[0x1E695DF90] dictionary];
  embeddings = self->_embeddings;
  if (embeddings)
  {
    v5 = [(SIRINLUINTERNALNLv4EmbeddingTensor *)embeddings dictionaryRepresentation];
    [v3 setObject:v5 forKey:@"embeddings"];
  }

  originalUtterance = self->_originalUtterance;
  if (originalUtterance)
  {
    [v3 setObject:originalUtterance forKey:@"original_utterance"];
  }

  normalisedUtterance = self->_normalisedUtterance;
  if (normalisedUtterance)
  {
    [v3 setObject:normalisedUtterance forKey:@"normalised_utterance"];
  }

  requestId = self->_requestId;
  if (requestId)
  {
    v9 = [(SIRINLUEXTERNALUUID *)requestId dictionaryRepresentation];
    [v3 setObject:v9 forKey:@"request_id"];
  }

  turnInput = self->_turnInput;
  if (turnInput)
  {
    v11 = [(SIRINLUEXTERNALTurnInput *)turnInput dictionaryRepresentation];
    [v3 setObject:v11 forKey:@"turn_input"];
  }

  return v3;
}

- (id)description
{
  v3 = MEMORY[0x1E696AEC0];
  v8.receiver = self;
  v8.super_class = SIRINLUINTERNALCATICATIRequest;
  v4 = [(SIRINLUINTERNALCATICATIRequest *)&v8 description];
  v5 = [(SIRINLUINTERNALCATICATIRequest *)self dictionaryRepresentation];
  v6 = [v3 stringWithFormat:@"%@ %@", v4, v5];

  return v6;
}

@end