@interface SIRINLUINTERNALMENTION_DETECTORMentionDetectorRequest
- (BOOL)isEqual:(id)a3;
- (id)copyWithZone:(_NSZone *)a3;
- (id)description;
- (id)dictionaryRepresentation;
- (unint64_t)hash;
- (void)copyTo:(id)a3;
- (void)mergeFrom:(id)a3;
- (void)writeTo:(id)a3;
@end

@implementation SIRINLUINTERNALMENTION_DETECTORMentionDetectorRequest

- (void)mergeFrom:(id)a3
{
  v4 = a3;
  requestId = self->_requestId;
  v6 = v4[5];
  v15 = v4;
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

  v4 = v15;
LABEL_7:
  nluRequestId = self->_nluRequestId;
  v8 = v4[4];
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

  v4 = v15;
LABEL_13:
  if (v4[6])
  {
    [(SIRINLUINTERNALMENTION_DETECTORMentionDetectorRequest *)self setResultCandidateId:?];
    v4 = v15;
  }

  if (v4[8])
  {
    [(SIRINLUINTERNALMENTION_DETECTORMentionDetectorRequest *)self setUtterance:?];
    v4 = v15;
  }

  tokenChain = self->_tokenChain;
  v10 = v4[7];
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

  v4 = v15;
LABEL_23:
  embeddingTensor = self->_embeddingTensor;
  v12 = v4[3];
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

  v4 = v15;
LABEL_29:
  if (v4[9])
  {
    self->_maxCandidates = v4[1];
    *&self->_has |= 1u;
  }

  cdmRequestId = self->_cdmRequestId;
  v14 = v4[2];
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

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  if (![v4 isMemberOfClass:objc_opt_class()])
  {
    goto LABEL_21;
  }

  requestId = self->_requestId;
  if (requestId | *(v4 + 5))
  {
    if (![(SIRINLUEXTERNALUUID *)requestId isEqual:?])
    {
      goto LABEL_21;
    }
  }

  nluRequestId = self->_nluRequestId;
  if (nluRequestId | *(v4 + 4))
  {
    if (![(SIRINLUEXTERNALUUID *)nluRequestId isEqual:?])
    {
      goto LABEL_21;
    }
  }

  resultCandidateId = self->_resultCandidateId;
  if (resultCandidateId | *(v4 + 6))
  {
    if (![(NSString *)resultCandidateId isEqual:?])
    {
      goto LABEL_21;
    }
  }

  utterance = self->_utterance;
  if (utterance | *(v4 + 8))
  {
    if (![(NSString *)utterance isEqual:?])
    {
      goto LABEL_21;
    }
  }

  tokenChain = self->_tokenChain;
  if (tokenChain | *(v4 + 7))
  {
    if (![(SIRINLUINTERNALTokenChain *)tokenChain isEqual:?])
    {
      goto LABEL_21;
    }
  }

  embeddingTensor = self->_embeddingTensor;
  if (embeddingTensor | *(v4 + 3))
  {
    if (![(SIRINLUINTERNALNLv4EmbeddingTensor *)embeddingTensor isEqual:?])
    {
      goto LABEL_21;
    }
  }

  v11 = *(v4 + 72);
  if (*&self->_has)
  {
    if ((*(v4 + 72) & 1) == 0 || self->_maxCandidates != *(v4 + 1))
    {
      goto LABEL_21;
    }
  }

  else if (*(v4 + 72))
  {
LABEL_21:
    v13 = 0;
    goto LABEL_22;
  }

  cdmRequestId = self->_cdmRequestId;
  if (cdmRequestId | *(v4 + 2))
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

- (id)copyWithZone:(_NSZone *)a3
{
  v5 = [objc_msgSend(objc_opt_class() allocWithZone:{a3), "init"}];
  v6 = [(SIRINLUEXTERNALUUID *)self->_requestId copyWithZone:a3];
  v7 = *(v5 + 40);
  *(v5 + 40) = v6;

  v8 = [(SIRINLUEXTERNALUUID *)self->_nluRequestId copyWithZone:a3];
  v9 = *(v5 + 32);
  *(v5 + 32) = v8;

  v10 = [(NSString *)self->_resultCandidateId copyWithZone:a3];
  v11 = *(v5 + 48);
  *(v5 + 48) = v10;

  v12 = [(NSString *)self->_utterance copyWithZone:a3];
  v13 = *(v5 + 64);
  *(v5 + 64) = v12;

  v14 = [(SIRINLUINTERNALTokenChain *)self->_tokenChain copyWithZone:a3];
  v15 = *(v5 + 56);
  *(v5 + 56) = v14;

  v16 = [(SIRINLUINTERNALNLv4EmbeddingTensor *)self->_embeddingTensor copyWithZone:a3];
  v17 = *(v5 + 24);
  *(v5 + 24) = v16;

  if (*&self->_has)
  {
    *(v5 + 8) = self->_maxCandidates;
    *(v5 + 72) |= 1u;
  }

  v18 = [(SIRINLUEXTERNALRequestID *)self->_cdmRequestId copyWithZone:a3];
  v19 = *(v5 + 16);
  *(v5 + 16) = v18;

  return v5;
}

- (void)copyTo:(id)a3
{
  v4 = a3;
  v5 = v4;
  if (self->_requestId)
  {
    [v4 setRequestId:?];
    v4 = v5;
  }

  if (self->_nluRequestId)
  {
    [v5 setNluRequestId:?];
    v4 = v5;
  }

  if (self->_resultCandidateId)
  {
    [v5 setResultCandidateId:?];
    v4 = v5;
  }

  if (self->_utterance)
  {
    [v5 setUtterance:?];
    v4 = v5;
  }

  if (self->_tokenChain)
  {
    [v5 setTokenChain:?];
    v4 = v5;
  }

  if (self->_embeddingTensor)
  {
    [v5 setEmbeddingTensor:?];
    v4 = v5;
  }

  if (*&self->_has)
  {
    *(v4 + 1) = self->_maxCandidates;
    *(v4 + 72) |= 1u;
  }

  if (self->_cdmRequestId)
  {
    [v5 setCdmRequestId:?];
    v4 = v5;
  }
}

- (void)writeTo:(id)a3
{
  v4 = a3;
  v6 = v4;
  if (self->_requestId)
  {
    PBDataWriterWriteSubmessage();
    v4 = v6;
  }

  if (self->_nluRequestId)
  {
    PBDataWriterWriteSubmessage();
    v4 = v6;
  }

  if (self->_resultCandidateId)
  {
    PBDataWriterWriteStringField();
    v4 = v6;
  }

  if (self->_utterance)
  {
    PBDataWriterWriteStringField();
    v4 = v6;
  }

  if (self->_tokenChain)
  {
    PBDataWriterWriteSubmessage();
    v4 = v6;
  }

  if (self->_embeddingTensor)
  {
    PBDataWriterWriteSubmessage();
    v4 = v6;
  }

  if (*&self->_has)
  {
    maxCandidates = self->_maxCandidates;
    PBDataWriterWriteUint64Field();
    v4 = v6;
  }

  if (self->_cdmRequestId)
  {
    PBDataWriterWriteSubmessage();
    v4 = v6;
  }
}

- (id)dictionaryRepresentation
{
  v3 = [MEMORY[0x1E695DF90] dictionary];
  requestId = self->_requestId;
  if (requestId)
  {
    v5 = [(SIRINLUEXTERNALUUID *)requestId dictionaryRepresentation];
    [v3 setObject:v5 forKey:@"request_id"];
  }

  nluRequestId = self->_nluRequestId;
  if (nluRequestId)
  {
    v7 = [(SIRINLUEXTERNALUUID *)nluRequestId dictionaryRepresentation];
    [v3 setObject:v7 forKey:@"nlu_request_id"];
  }

  resultCandidateId = self->_resultCandidateId;
  if (resultCandidateId)
  {
    [v3 setObject:resultCandidateId forKey:@"result_candidate_id"];
  }

  utterance = self->_utterance;
  if (utterance)
  {
    [v3 setObject:utterance forKey:@"utterance"];
  }

  tokenChain = self->_tokenChain;
  if (tokenChain)
  {
    v11 = [(SIRINLUINTERNALTokenChain *)tokenChain dictionaryRepresentation];
    [v3 setObject:v11 forKey:@"token_chain"];
  }

  embeddingTensor = self->_embeddingTensor;
  if (embeddingTensor)
  {
    v13 = [(SIRINLUINTERNALNLv4EmbeddingTensor *)embeddingTensor dictionaryRepresentation];
    [v3 setObject:v13 forKey:@"embedding_tensor"];
  }

  if (*&self->_has)
  {
    v14 = [MEMORY[0x1E696AD98] numberWithUnsignedLongLong:self->_maxCandidates];
    [v3 setObject:v14 forKey:@"max_candidates"];
  }

  cdmRequestId = self->_cdmRequestId;
  if (cdmRequestId)
  {
    v16 = [(SIRINLUEXTERNALRequestID *)cdmRequestId dictionaryRepresentation];
    [v3 setObject:v16 forKey:@"cdm_request_id"];
  }

  return v3;
}

- (id)description
{
  v3 = MEMORY[0x1E696AEC0];
  v8.receiver = self;
  v8.super_class = SIRINLUINTERNALMENTION_DETECTORMentionDetectorRequest;
  v4 = [(SIRINLUINTERNALMENTION_DETECTORMentionDetectorRequest *)&v8 description];
  v5 = [(SIRINLUINTERNALMENTION_DETECTORMentionDetectorRequest *)self dictionaryRepresentation];
  v6 = [v3 stringWithFormat:@"%@ %@", v4, v5];

  return v6;
}

@end