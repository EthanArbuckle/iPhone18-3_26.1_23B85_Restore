@interface SIRINLUINTERNALMENTION_DETECTORMentionDetectorRequest
- (BOOL)isEqual:(id)equal;
- (id)copyWithZone:(_NSZone *)zone;
- (id)description;
- (id)dictionaryRepresentation;
- (unint64_t)hash;
- (void)copyTo:(id)to;
- (void)mergeFrom:(id)from;
- (void)writeTo:(id)to;
@end

@implementation SIRINLUINTERNALMENTION_DETECTORMentionDetectorRequest

- (void)mergeFrom:(id)from
{
  fromCopy = from;
  requestId = self->_requestId;
  v6 = fromCopy[5];
  v15 = fromCopy;
  if (requestId)
  {
    if (!v6)
    {
      goto LABEL_7;
    }

    [(SIRINLUEXTERNALUUID *)requestId mergeFrom:?];
  }

  else
  {
    if (!v6)
    {
      goto LABEL_7;
    }

    [(SIRINLUINTERNALMENTION_DETECTORMentionDetectorRequest *)self setRequestId:?];
  }

  fromCopy = v15;
LABEL_7:
  nluRequestId = self->_nluRequestId;
  v8 = fromCopy[4];
  if (nluRequestId)
  {
    if (!v8)
    {
      goto LABEL_13;
    }

    [(SIRINLUEXTERNALUUID *)nluRequestId mergeFrom:?];
  }

  else
  {
    if (!v8)
    {
      goto LABEL_13;
    }

    [(SIRINLUINTERNALMENTION_DETECTORMentionDetectorRequest *)self setNluRequestId:?];
  }

  fromCopy = v15;
LABEL_13:
  if (fromCopy[6])
  {
    [(SIRINLUINTERNALMENTION_DETECTORMentionDetectorRequest *)self setResultCandidateId:?];
    fromCopy = v15;
  }

  if (fromCopy[8])
  {
    [(SIRINLUINTERNALMENTION_DETECTORMentionDetectorRequest *)self setUtterance:?];
    fromCopy = v15;
  }

  tokenChain = self->_tokenChain;
  v10 = fromCopy[7];
  if (tokenChain)
  {
    if (!v10)
    {
      goto LABEL_23;
    }

    [(SIRINLUINTERNALTokenChain *)tokenChain mergeFrom:?];
  }

  else
  {
    if (!v10)
    {
      goto LABEL_23;
    }

    [(SIRINLUINTERNALMENTION_DETECTORMentionDetectorRequest *)self setTokenChain:?];
  }

  fromCopy = v15;
LABEL_23:
  embeddingTensor = self->_embeddingTensor;
  v12 = fromCopy[3];
  if (embeddingTensor)
  {
    if (!v12)
    {
      goto LABEL_29;
    }

    [(SIRINLUINTERNALNLv4EmbeddingTensor *)embeddingTensor mergeFrom:?];
  }

  else
  {
    if (!v12)
    {
      goto LABEL_29;
    }

    [(SIRINLUINTERNALMENTION_DETECTORMentionDetectorRequest *)self setEmbeddingTensor:?];
  }

  fromCopy = v15;
LABEL_29:
  if (fromCopy[9])
  {
    self->_maxCandidates = fromCopy[1];
    *&self->_has |= 1u;
  }

  cdmRequestId = self->_cdmRequestId;
  v14 = fromCopy[2];
  if (cdmRequestId)
  {
    if (v14)
    {
      [(SIRINLUEXTERNALRequestID *)cdmRequestId mergeFrom:?];
    }
  }

  else if (v14)
  {
    [(SIRINLUINTERNALMENTION_DETECTORMentionDetectorRequest *)self setCdmRequestId:?];
  }

  MEMORY[0x1EEE66BB8]();
}

- (unint64_t)hash
{
  v3 = [(SIRINLUEXTERNALUUID *)self->_requestId hash];
  v4 = [(SIRINLUEXTERNALUUID *)self->_nluRequestId hash];
  v5 = [(NSString *)self->_resultCandidateId hash];
  v6 = [(NSString *)self->_utterance hash];
  v7 = [(SIRINLUINTERNALTokenChain *)self->_tokenChain hash];
  v8 = [(SIRINLUINTERNALNLv4EmbeddingTensor *)self->_embeddingTensor hash];
  if (*&self->_has)
  {
    v9 = 2654435761u * self->_maxCandidates;
  }

  else
  {
    v9 = 0;
  }

  return v4 ^ v3 ^ v5 ^ v6 ^ v7 ^ v8 ^ v9 ^ [(SIRINLUEXTERNALRequestID *)self->_cdmRequestId hash];
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  if (![equalCopy isMemberOfClass:objc_opt_class()])
  {
    goto LABEL_21;
  }

  requestId = self->_requestId;
  if (requestId | *(equalCopy + 5))
  {
    if (![(SIRINLUEXTERNALUUID *)requestId isEqual:?])
    {
      goto LABEL_21;
    }
  }

  nluRequestId = self->_nluRequestId;
  if (nluRequestId | *(equalCopy + 4))
  {
    if (![(SIRINLUEXTERNALUUID *)nluRequestId isEqual:?])
    {
      goto LABEL_21;
    }
  }

  resultCandidateId = self->_resultCandidateId;
  if (resultCandidateId | *(equalCopy + 6))
  {
    if (![(NSString *)resultCandidateId isEqual:?])
    {
      goto LABEL_21;
    }
  }

  utterance = self->_utterance;
  if (utterance | *(equalCopy + 8))
  {
    if (![(NSString *)utterance isEqual:?])
    {
      goto LABEL_21;
    }
  }

  tokenChain = self->_tokenChain;
  if (tokenChain | *(equalCopy + 7))
  {
    if (![(SIRINLUINTERNALTokenChain *)tokenChain isEqual:?])
    {
      goto LABEL_21;
    }
  }

  embeddingTensor = self->_embeddingTensor;
  if (embeddingTensor | *(equalCopy + 3))
  {
    if (![(SIRINLUINTERNALNLv4EmbeddingTensor *)embeddingTensor isEqual:?])
    {
      goto LABEL_21;
    }
  }

  v11 = *(equalCopy + 72);
  if (*&self->_has)
  {
    if ((*(equalCopy + 72) & 1) == 0 || self->_maxCandidates != *(equalCopy + 1))
    {
      goto LABEL_21;
    }
  }

  else if (*(equalCopy + 72))
  {
LABEL_21:
    v13 = 0;
    goto LABEL_22;
  }

  cdmRequestId = self->_cdmRequestId;
  if (cdmRequestId | *(equalCopy + 2))
  {
    v13 = [(SIRINLUEXTERNALRequestID *)cdmRequestId isEqual:?];
  }

  else
  {
    v13 = 1;
  }

LABEL_22:

  return v13;
}

- (id)copyWithZone:(_NSZone *)zone
{
  v5 = [objc_msgSend(objc_opt_class() allocWithZone:{zone), "init"}];
  v6 = [(SIRINLUEXTERNALUUID *)self->_requestId copyWithZone:zone];
  v7 = *(v5 + 40);
  *(v5 + 40) = v6;

  v8 = [(SIRINLUEXTERNALUUID *)self->_nluRequestId copyWithZone:zone];
  v9 = *(v5 + 32);
  *(v5 + 32) = v8;

  v10 = [(NSString *)self->_resultCandidateId copyWithZone:zone];
  v11 = *(v5 + 48);
  *(v5 + 48) = v10;

  v12 = [(NSString *)self->_utterance copyWithZone:zone];
  v13 = *(v5 + 64);
  *(v5 + 64) = v12;

  v14 = [(SIRINLUINTERNALTokenChain *)self->_tokenChain copyWithZone:zone];
  v15 = *(v5 + 56);
  *(v5 + 56) = v14;

  v16 = [(SIRINLUINTERNALNLv4EmbeddingTensor *)self->_embeddingTensor copyWithZone:zone];
  v17 = *(v5 + 24);
  *(v5 + 24) = v16;

  if (*&self->_has)
  {
    *(v5 + 8) = self->_maxCandidates;
    *(v5 + 72) |= 1u;
  }

  v18 = [(SIRINLUEXTERNALRequestID *)self->_cdmRequestId copyWithZone:zone];
  v19 = *(v5 + 16);
  *(v5 + 16) = v18;

  return v5;
}

- (void)copyTo:(id)to
{
  toCopy = to;
  v5 = toCopy;
  if (self->_requestId)
  {
    [toCopy setRequestId:?];
    toCopy = v5;
  }

  if (self->_nluRequestId)
  {
    [v5 setNluRequestId:?];
    toCopy = v5;
  }

  if (self->_resultCandidateId)
  {
    [v5 setResultCandidateId:?];
    toCopy = v5;
  }

  if (self->_utterance)
  {
    [v5 setUtterance:?];
    toCopy = v5;
  }

  if (self->_tokenChain)
  {
    [v5 setTokenChain:?];
    toCopy = v5;
  }

  if (self->_embeddingTensor)
  {
    [v5 setEmbeddingTensor:?];
    toCopy = v5;
  }

  if (*&self->_has)
  {
    *(toCopy + 1) = self->_maxCandidates;
    *(toCopy + 72) |= 1u;
  }

  if (self->_cdmRequestId)
  {
    [v5 setCdmRequestId:?];
    toCopy = v5;
  }
}

- (void)writeTo:(id)to
{
  toCopy = to;
  v6 = toCopy;
  if (self->_requestId)
  {
    PBDataWriterWriteSubmessage();
    toCopy = v6;
  }

  if (self->_nluRequestId)
  {
    PBDataWriterWriteSubmessage();
    toCopy = v6;
  }

  if (self->_resultCandidateId)
  {
    PBDataWriterWriteStringField();
    toCopy = v6;
  }

  if (self->_utterance)
  {
    PBDataWriterWriteStringField();
    toCopy = v6;
  }

  if (self->_tokenChain)
  {
    PBDataWriterWriteSubmessage();
    toCopy = v6;
  }

  if (self->_embeddingTensor)
  {
    PBDataWriterWriteSubmessage();
    toCopy = v6;
  }

  if (*&self->_has)
  {
    maxCandidates = self->_maxCandidates;
    PBDataWriterWriteUint64Field();
    toCopy = v6;
  }

  if (self->_cdmRequestId)
  {
    PBDataWriterWriteSubmessage();
    toCopy = v6;
  }
}

- (id)dictionaryRepresentation
{
  dictionary = [MEMORY[0x1E695DF90] dictionary];
  requestId = self->_requestId;
  if (requestId)
  {
    dictionaryRepresentation = [(SIRINLUEXTERNALUUID *)requestId dictionaryRepresentation];
    [dictionary setObject:dictionaryRepresentation forKey:@"request_id"];
  }

  nluRequestId = self->_nluRequestId;
  if (nluRequestId)
  {
    dictionaryRepresentation2 = [(SIRINLUEXTERNALUUID *)nluRequestId dictionaryRepresentation];
    [dictionary setObject:dictionaryRepresentation2 forKey:@"nlu_request_id"];
  }

  resultCandidateId = self->_resultCandidateId;
  if (resultCandidateId)
  {
    [dictionary setObject:resultCandidateId forKey:@"result_candidate_id"];
  }

  utterance = self->_utterance;
  if (utterance)
  {
    [dictionary setObject:utterance forKey:@"utterance"];
  }

  tokenChain = self->_tokenChain;
  if (tokenChain)
  {
    dictionaryRepresentation3 = [(SIRINLUINTERNALTokenChain *)tokenChain dictionaryRepresentation];
    [dictionary setObject:dictionaryRepresentation3 forKey:@"token_chain"];
  }

  embeddingTensor = self->_embeddingTensor;
  if (embeddingTensor)
  {
    dictionaryRepresentation4 = [(SIRINLUINTERNALNLv4EmbeddingTensor *)embeddingTensor dictionaryRepresentation];
    [dictionary setObject:dictionaryRepresentation4 forKey:@"embedding_tensor"];
  }

  if (*&self->_has)
  {
    v14 = [MEMORY[0x1E696AD98] numberWithUnsignedLongLong:self->_maxCandidates];
    [dictionary setObject:v14 forKey:@"max_candidates"];
  }

  cdmRequestId = self->_cdmRequestId;
  if (cdmRequestId)
  {
    dictionaryRepresentation5 = [(SIRINLUEXTERNALRequestID *)cdmRequestId dictionaryRepresentation];
    [dictionary setObject:dictionaryRepresentation5 forKey:@"cdm_request_id"];
  }

  return dictionary;
}

- (id)description
{
  v3 = MEMORY[0x1E696AEC0];
  v8.receiver = self;
  v8.super_class = SIRINLUINTERNALMENTION_DETECTORMentionDetectorRequest;
  v4 = [(SIRINLUINTERNALMENTION_DETECTORMentionDetectorRequest *)&v8 description];
  dictionaryRepresentation = [(SIRINLUINTERNALMENTION_DETECTORMentionDetectorRequest *)self dictionaryRepresentation];
  v6 = [v3 stringWithFormat:@"%@ %@", v4, dictionaryRepresentation];

  return v6;
}

@end