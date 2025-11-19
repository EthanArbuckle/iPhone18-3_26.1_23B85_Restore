@interface SIRINLUINTERNALMENTION_RESOLVERMentionResolverRequest
- (BOOL)isEqual:(id)a3;
- (id)copyWithZone:(_NSZone *)a3;
- (id)description;
- (id)dictionaryRepresentation;
- (unint64_t)hash;
- (void)addContextualSpans:(id)a3;
- (void)addDetectedMentions:(id)a3;
- (void)addEntityCandidates:(id)a3;
- (void)addMatchingSpans:(id)a3;
- (void)copyTo:(id)a3;
- (void)mergeFrom:(id)a3;
- (void)setHasTurnIndex:(BOOL)a3;
- (void)writeTo:(id)a3;
@end

@implementation SIRINLUINTERNALMENTION_RESOLVERMentionResolverRequest

- (void)mergeFrom:(id)a3
{
  v56 = *MEMORY[0x1E69E9840];
  v4 = a3;
  requestId = self->_requestId;
  v6 = *(v4 + 10);
  if (requestId)
  {
    if (v6)
    {
      [(SIRINLUEXTERNALUUID *)requestId mergeFrom:?];
    }
  }

  else if (v6)
  {
    [(SIRINLUINTERNALMENTION_RESOLVERMentionResolverRequest *)self setRequestId:?];
  }

  nluRequestId = self->_nluRequestId;
  v8 = *(v4 + 9);
  if (nluRequestId)
  {
    if (v8)
    {
      [(SIRINLUEXTERNALUUID *)nluRequestId mergeFrom:?];
    }
  }

  else if (v8)
  {
    [(SIRINLUINTERNALMENTION_RESOLVERMentionResolverRequest *)self setNluRequestId:?];
  }

  if (*(v4 + 11))
  {
    [(SIRINLUINTERNALMENTION_RESOLVERMentionResolverRequest *)self setResultCandidateId:?];
  }

  if (*(v4 + 13))
  {
    [(SIRINLUINTERNALMENTION_RESOLVERMentionResolverRequest *)self setUtterance:?];
  }

  tokenChain = self->_tokenChain;
  v10 = *(v4 + 12);
  if (tokenChain)
  {
    if (v10)
    {
      [(SIRINLUINTERNALTokenChain *)tokenChain mergeFrom:?];
    }
  }

  else if (v10)
  {
    [(SIRINLUINTERNALMENTION_RESOLVERMentionResolverRequest *)self setTokenChain:?];
  }

  embeddingTensor = self->_embeddingTensor;
  v12 = *(v4 + 6);
  if (embeddingTensor)
  {
    if (v12)
    {
      [(SIRINLUINTERNALNLv4EmbeddingTensor *)embeddingTensor mergeFrom:?];
    }
  }

  else if (v12)
  {
    [(SIRINLUINTERNALMENTION_RESOLVERMentionResolverRequest *)self setEmbeddingTensor:?];
  }

  v50 = 0u;
  v51 = 0u;
  v48 = 0u;
  v49 = 0u;
  v13 = *(v4 + 7);
  v14 = [v13 countByEnumeratingWithState:&v48 objects:v55 count:16];
  if (v14)
  {
    v15 = v14;
    v16 = *v49;
    do
    {
      for (i = 0; i != v15; ++i)
      {
        if (*v49 != v16)
        {
          objc_enumerationMutation(v13);
        }

        [(SIRINLUINTERNALMENTION_RESOLVERMentionResolverRequest *)self addEntityCandidates:*(*(&v48 + 1) + 8 * i)];
      }

      v15 = [v13 countByEnumeratingWithState:&v48 objects:v55 count:16];
    }

    while (v15);
  }

  v46 = 0u;
  v47 = 0u;
  v44 = 0u;
  v45 = 0u;
  v18 = *(v4 + 5);
  v19 = [v18 countByEnumeratingWithState:&v44 objects:v54 count:16];
  if (v19)
  {
    v20 = v19;
    v21 = *v45;
    do
    {
      for (j = 0; j != v20; ++j)
      {
        if (*v45 != v21)
        {
          objc_enumerationMutation(v18);
        }

        [(SIRINLUINTERNALMENTION_RESOLVERMentionResolverRequest *)self addDetectedMentions:*(*(&v44 + 1) + 8 * j)];
      }

      v20 = [v18 countByEnumeratingWithState:&v44 objects:v54 count:16];
    }

    while (v20);
  }

  if (*(v4 + 112))
  {
    self->_maxCandidates = *(v4 + 1);
    *&self->_has |= 1u;
  }

  v42 = 0u;
  v43 = 0u;
  v40 = 0u;
  v41 = 0u;
  v23 = *(v4 + 8);
  v24 = [v23 countByEnumeratingWithState:&v40 objects:v53 count:16];
  if (v24)
  {
    v25 = v24;
    v26 = *v41;
    do
    {
      for (k = 0; k != v25; ++k)
      {
        if (*v41 != v26)
        {
          objc_enumerationMutation(v23);
        }

        [(SIRINLUINTERNALMENTION_RESOLVERMentionResolverRequest *)self addMatchingSpans:*(*(&v40 + 1) + 8 * k)];
      }

      v25 = [v23 countByEnumeratingWithState:&v40 objects:v53 count:16];
    }

    while (v25);
  }

  if ((*(v4 + 112) & 2) != 0)
  {
    self->_turnIndex = *(v4 + 2);
    *&self->_has |= 2u;
  }

  cdmRequestId = self->_cdmRequestId;
  v29 = *(v4 + 3);
  if (cdmRequestId)
  {
    if (v29)
    {
      [(SIRINLUEXTERNALRequestID *)cdmRequestId mergeFrom:?];
    }
  }

  else if (v29)
  {
    [(SIRINLUINTERNALMENTION_RESOLVERMentionResolverRequest *)self setCdmRequestId:?];
  }

  v38 = 0u;
  v39 = 0u;
  v36 = 0u;
  v37 = 0u;
  v30 = *(v4 + 4);
  v31 = [v30 countByEnumeratingWithState:&v36 objects:v52 count:16];
  if (v31)
  {
    v32 = v31;
    v33 = *v37;
    do
    {
      for (m = 0; m != v32; ++m)
      {
        if (*v37 != v33)
        {
          objc_enumerationMutation(v30);
        }

        [(SIRINLUINTERNALMENTION_RESOLVERMentionResolverRequest *)self addContextualSpans:*(*(&v36 + 1) + 8 * m), v36];
      }

      v32 = [v30 countByEnumeratingWithState:&v36 objects:v52 count:16];
    }

    while (v32);
  }

  v35 = *MEMORY[0x1E69E9840];
}

- (unint64_t)hash
{
  v16 = [(SIRINLUEXTERNALUUID *)self->_requestId hash];
  v15 = [(SIRINLUEXTERNALUUID *)self->_nluRequestId hash];
  v3 = [(NSString *)self->_resultCandidateId hash];
  v4 = [(NSString *)self->_utterance hash];
  v5 = [(SIRINLUINTERNALTokenChain *)self->_tokenChain hash];
  v6 = [(SIRINLUINTERNALNLv4EmbeddingTensor *)self->_embeddingTensor hash];
  v7 = [(NSMutableArray *)self->_entityCandidates hash];
  v8 = [(NSMutableArray *)self->_detectedMentions hash];
  if (*&self->_has)
  {
    v9 = 2654435761u * self->_maxCandidates;
  }

  else
  {
    v9 = 0;
  }

  v10 = [(NSMutableArray *)self->_matchingSpans hash];
  if ((*&self->_has & 2) != 0)
  {
    v11 = 2654435761u * self->_turnIndex;
  }

  else
  {
    v11 = 0;
  }

  v12 = v15 ^ v16 ^ v3 ^ v4 ^ v5 ^ v6 ^ v7 ^ v8 ^ v9 ^ v10 ^ v11;
  v13 = [(SIRINLUEXTERNALRequestID *)self->_cdmRequestId hash];
  return v12 ^ v13 ^ [(NSMutableArray *)self->_contextualSpans hash];
}

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  if (![v4 isMemberOfClass:objc_opt_class()])
  {
    goto LABEL_35;
  }

  requestId = self->_requestId;
  if (requestId | *(v4 + 10))
  {
    if (![(SIRINLUEXTERNALUUID *)requestId isEqual:?])
    {
      goto LABEL_35;
    }
  }

  nluRequestId = self->_nluRequestId;
  if (nluRequestId | *(v4 + 9))
  {
    if (![(SIRINLUEXTERNALUUID *)nluRequestId isEqual:?])
    {
      goto LABEL_35;
    }
  }

  resultCandidateId = self->_resultCandidateId;
  if (resultCandidateId | *(v4 + 11))
  {
    if (![(NSString *)resultCandidateId isEqual:?])
    {
      goto LABEL_35;
    }
  }

  utterance = self->_utterance;
  if (utterance | *(v4 + 13))
  {
    if (![(NSString *)utterance isEqual:?])
    {
      goto LABEL_35;
    }
  }

  tokenChain = self->_tokenChain;
  if (tokenChain | *(v4 + 12))
  {
    if (![(SIRINLUINTERNALTokenChain *)tokenChain isEqual:?])
    {
      goto LABEL_35;
    }
  }

  embeddingTensor = self->_embeddingTensor;
  if (embeddingTensor | *(v4 + 6))
  {
    if (![(SIRINLUINTERNALNLv4EmbeddingTensor *)embeddingTensor isEqual:?])
    {
      goto LABEL_35;
    }
  }

  entityCandidates = self->_entityCandidates;
  if (entityCandidates | *(v4 + 7))
  {
    if (![(NSMutableArray *)entityCandidates isEqual:?])
    {
      goto LABEL_35;
    }
  }

  detectedMentions = self->_detectedMentions;
  if (detectedMentions | *(v4 + 5))
  {
    if (![(NSMutableArray *)detectedMentions isEqual:?])
    {
      goto LABEL_35;
    }
  }

  has = self->_has;
  v14 = *(v4 + 112);
  if (has)
  {
    if ((*(v4 + 112) & 1) == 0 || self->_maxCandidates != *(v4 + 1))
    {
      goto LABEL_35;
    }
  }

  else if (*(v4 + 112))
  {
    goto LABEL_35;
  }

  matchingSpans = self->_matchingSpans;
  if (matchingSpans | *(v4 + 8))
  {
    if (![(NSMutableArray *)matchingSpans isEqual:?])
    {
LABEL_35:
      v18 = 0;
      goto LABEL_36;
    }

    has = self->_has;
    v14 = *(v4 + 112);
  }

  if ((has & 2) != 0)
  {
    if ((v14 & 2) == 0 || self->_turnIndex != *(v4 + 2))
    {
      goto LABEL_35;
    }
  }

  else if ((v14 & 2) != 0)
  {
    goto LABEL_35;
  }

  cdmRequestId = self->_cdmRequestId;
  if (cdmRequestId | *(v4 + 3) && ![(SIRINLUEXTERNALRequestID *)cdmRequestId isEqual:?])
  {
    goto LABEL_35;
  }

  contextualSpans = self->_contextualSpans;
  if (contextualSpans | *(v4 + 4))
  {
    v18 = [(NSMutableArray *)contextualSpans isEqual:?];
  }

  else
  {
    v18 = 1;
  }

LABEL_36:

  return v18;
}

- (id)copyWithZone:(_NSZone *)a3
{
  v66 = *MEMORY[0x1E69E9840];
  v5 = [objc_msgSend(objc_opt_class() allocWithZone:{a3), "init"}];
  v6 = [(SIRINLUEXTERNALUUID *)self->_requestId copyWithZone:a3];
  v7 = *(v5 + 80);
  *(v5 + 80) = v6;

  v8 = [(SIRINLUEXTERNALUUID *)self->_nluRequestId copyWithZone:a3];
  v9 = *(v5 + 72);
  *(v5 + 72) = v8;

  v10 = [(NSString *)self->_resultCandidateId copyWithZone:a3];
  v11 = *(v5 + 88);
  *(v5 + 88) = v10;

  v12 = [(NSString *)self->_utterance copyWithZone:a3];
  v13 = *(v5 + 104);
  *(v5 + 104) = v12;

  v14 = [(SIRINLUINTERNALTokenChain *)self->_tokenChain copyWithZone:a3];
  v15 = *(v5 + 96);
  *(v5 + 96) = v14;

  v16 = [(SIRINLUINTERNALNLv4EmbeddingTensor *)self->_embeddingTensor copyWithZone:a3];
  v17 = *(v5 + 48);
  *(v5 + 48) = v16;

  v60 = 0u;
  v61 = 0u;
  v58 = 0u;
  v59 = 0u;
  v18 = self->_entityCandidates;
  v19 = [(NSMutableArray *)v18 countByEnumeratingWithState:&v58 objects:v65 count:16];
  if (v19)
  {
    v20 = v19;
    v21 = *v59;
    do
    {
      v22 = 0;
      do
      {
        if (*v59 != v21)
        {
          objc_enumerationMutation(v18);
        }

        v23 = [*(*(&v58 + 1) + 8 * v22) copyWithZone:a3];
        [v5 addEntityCandidates:v23];

        ++v22;
      }

      while (v20 != v22);
      v20 = [(NSMutableArray *)v18 countByEnumeratingWithState:&v58 objects:v65 count:16];
    }

    while (v20);
  }

  v56 = 0u;
  v57 = 0u;
  v54 = 0u;
  v55 = 0u;
  v24 = self->_detectedMentions;
  v25 = [(NSMutableArray *)v24 countByEnumeratingWithState:&v54 objects:v64 count:16];
  if (v25)
  {
    v26 = v25;
    v27 = *v55;
    do
    {
      v28 = 0;
      do
      {
        if (*v55 != v27)
        {
          objc_enumerationMutation(v24);
        }

        v29 = [*(*(&v54 + 1) + 8 * v28) copyWithZone:a3];
        [v5 addDetectedMentions:v29];

        ++v28;
      }

      while (v26 != v28);
      v26 = [(NSMutableArray *)v24 countByEnumeratingWithState:&v54 objects:v64 count:16];
    }

    while (v26);
  }

  if (*&self->_has)
  {
    *(v5 + 8) = self->_maxCandidates;
    *(v5 + 112) |= 1u;
  }

  v52 = 0u;
  v53 = 0u;
  v50 = 0u;
  v51 = 0u;
  v30 = self->_matchingSpans;
  v31 = [(NSMutableArray *)v30 countByEnumeratingWithState:&v50 objects:v63 count:16];
  if (v31)
  {
    v32 = v31;
    v33 = *v51;
    do
    {
      v34 = 0;
      do
      {
        if (*v51 != v33)
        {
          objc_enumerationMutation(v30);
        }

        v35 = [*(*(&v50 + 1) + 8 * v34) copyWithZone:a3];
        [v5 addMatchingSpans:v35];

        ++v34;
      }

      while (v32 != v34);
      v32 = [(NSMutableArray *)v30 countByEnumeratingWithState:&v50 objects:v63 count:16];
    }

    while (v32);
  }

  if ((*&self->_has & 2) != 0)
  {
    *(v5 + 16) = self->_turnIndex;
    *(v5 + 112) |= 2u;
  }

  v36 = [(SIRINLUEXTERNALRequestID *)self->_cdmRequestId copyWithZone:a3];
  v37 = *(v5 + 24);
  *(v5 + 24) = v36;

  v48 = 0u;
  v49 = 0u;
  v46 = 0u;
  v47 = 0u;
  v38 = self->_contextualSpans;
  v39 = [(NSMutableArray *)v38 countByEnumeratingWithState:&v46 objects:v62 count:16];
  if (v39)
  {
    v40 = v39;
    v41 = *v47;
    do
    {
      v42 = 0;
      do
      {
        if (*v47 != v41)
        {
          objc_enumerationMutation(v38);
        }

        v43 = [*(*(&v46 + 1) + 8 * v42) copyWithZone:{a3, v46}];
        [v5 addContextualSpans:v43];

        ++v42;
      }

      while (v40 != v42);
      v40 = [(NSMutableArray *)v38 countByEnumeratingWithState:&v46 objects:v62 count:16];
    }

    while (v40);
  }

  v44 = *MEMORY[0x1E69E9840];
  return v5;
}

- (void)copyTo:(id)a3
{
  v20 = a3;
  if (self->_requestId)
  {
    [v20 setRequestId:?];
  }

  if (self->_nluRequestId)
  {
    [v20 setNluRequestId:?];
  }

  if (self->_resultCandidateId)
  {
    [v20 setResultCandidateId:?];
  }

  if (self->_utterance)
  {
    [v20 setUtterance:?];
  }

  if (self->_tokenChain)
  {
    [v20 setTokenChain:?];
  }

  if (self->_embeddingTensor)
  {
    [v20 setEmbeddingTensor:?];
  }

  if ([(SIRINLUINTERNALMENTION_RESOLVERMentionResolverRequest *)self entityCandidatesCount])
  {
    [v20 clearEntityCandidates];
    v4 = [(SIRINLUINTERNALMENTION_RESOLVERMentionResolverRequest *)self entityCandidatesCount];
    if (v4)
    {
      v5 = v4;
      for (i = 0; i != v5; ++i)
      {
        v7 = [(SIRINLUINTERNALMENTION_RESOLVERMentionResolverRequest *)self entityCandidatesAtIndex:i];
        [v20 addEntityCandidates:v7];
      }
    }
  }

  if ([(SIRINLUINTERNALMENTION_RESOLVERMentionResolverRequest *)self detectedMentionsCount])
  {
    [v20 clearDetectedMentions];
    v8 = [(SIRINLUINTERNALMENTION_RESOLVERMentionResolverRequest *)self detectedMentionsCount];
    if (v8)
    {
      v9 = v8;
      for (j = 0; j != v9; ++j)
      {
        v11 = [(SIRINLUINTERNALMENTION_RESOLVERMentionResolverRequest *)self detectedMentionsAtIndex:j];
        [v20 addDetectedMentions:v11];
      }
    }
  }

  if (*&self->_has)
  {
    *(v20 + 1) = self->_maxCandidates;
    *(v20 + 112) |= 1u;
  }

  if ([(SIRINLUINTERNALMENTION_RESOLVERMentionResolverRequest *)self matchingSpansCount])
  {
    [v20 clearMatchingSpans];
    v12 = [(SIRINLUINTERNALMENTION_RESOLVERMentionResolverRequest *)self matchingSpansCount];
    if (v12)
    {
      v13 = v12;
      for (k = 0; k != v13; ++k)
      {
        v15 = [(SIRINLUINTERNALMENTION_RESOLVERMentionResolverRequest *)self matchingSpansAtIndex:k];
        [v20 addMatchingSpans:v15];
      }
    }
  }

  if ((*&self->_has & 2) != 0)
  {
    *(v20 + 2) = self->_turnIndex;
    *(v20 + 112) |= 2u;
  }

  if (self->_cdmRequestId)
  {
    [v20 setCdmRequestId:?];
  }

  if ([(SIRINLUINTERNALMENTION_RESOLVERMentionResolverRequest *)self contextualSpansCount])
  {
    [v20 clearContextualSpans];
    v16 = [(SIRINLUINTERNALMENTION_RESOLVERMentionResolverRequest *)self contextualSpansCount];
    if (v16)
    {
      v17 = v16;
      for (m = 0; m != v17; ++m)
      {
        v19 = [(SIRINLUINTERNALMENTION_RESOLVERMentionResolverRequest *)self contextualSpansAtIndex:m];
        [v20 addContextualSpans:v19];
      }
    }
  }
}

- (void)writeTo:(id)a3
{
  v52 = *MEMORY[0x1E69E9840];
  v4 = a3;
  if (self->_requestId)
  {
    PBDataWriterWriteSubmessage();
  }

  if (self->_nluRequestId)
  {
    PBDataWriterWriteSubmessage();
  }

  if (self->_resultCandidateId)
  {
    PBDataWriterWriteStringField();
  }

  if (self->_utterance)
  {
    PBDataWriterWriteStringField();
  }

  if (self->_tokenChain)
  {
    PBDataWriterWriteSubmessage();
  }

  if (self->_embeddingTensor)
  {
    PBDataWriterWriteSubmessage();
  }

  v46 = 0u;
  v47 = 0u;
  v44 = 0u;
  v45 = 0u;
  v5 = self->_entityCandidates;
  v6 = [(NSMutableArray *)v5 countByEnumeratingWithState:&v44 objects:v51 count:16];
  if (v6)
  {
    v7 = v6;
    v8 = *v45;
    do
    {
      v9 = 0;
      do
      {
        if (*v45 != v8)
        {
          objc_enumerationMutation(v5);
        }

        v10 = *(*(&v44 + 1) + 8 * v9);
        PBDataWriterWriteSubmessage();
        ++v9;
      }

      while (v7 != v9);
      v7 = [(NSMutableArray *)v5 countByEnumeratingWithState:&v44 objects:v51 count:16];
    }

    while (v7);
  }

  v42 = 0u;
  v43 = 0u;
  v40 = 0u;
  v41 = 0u;
  v11 = self->_detectedMentions;
  v12 = [(NSMutableArray *)v11 countByEnumeratingWithState:&v40 objects:v50 count:16];
  if (v12)
  {
    v13 = v12;
    v14 = *v41;
    do
    {
      v15 = 0;
      do
      {
        if (*v41 != v14)
        {
          objc_enumerationMutation(v11);
        }

        v16 = *(*(&v40 + 1) + 8 * v15);
        PBDataWriterWriteSubmessage();
        ++v15;
      }

      while (v13 != v15);
      v13 = [(NSMutableArray *)v11 countByEnumeratingWithState:&v40 objects:v50 count:16];
    }

    while (v13);
  }

  if (*&self->_has)
  {
    maxCandidates = self->_maxCandidates;
    PBDataWriterWriteUint64Field();
  }

  v38 = 0u;
  v39 = 0u;
  v36 = 0u;
  v37 = 0u;
  v18 = self->_matchingSpans;
  v19 = [(NSMutableArray *)v18 countByEnumeratingWithState:&v36 objects:v49 count:16];
  if (v19)
  {
    v20 = v19;
    v21 = *v37;
    do
    {
      v22 = 0;
      do
      {
        if (*v37 != v21)
        {
          objc_enumerationMutation(v18);
        }

        v23 = *(*(&v36 + 1) + 8 * v22);
        PBDataWriterWriteSubmessage();
        ++v22;
      }

      while (v20 != v22);
      v20 = [(NSMutableArray *)v18 countByEnumeratingWithState:&v36 objects:v49 count:16];
    }

    while (v20);
  }

  if ((*&self->_has & 2) != 0)
  {
    turnIndex = self->_turnIndex;
    PBDataWriterWriteUint64Field();
  }

  if (self->_cdmRequestId)
  {
    PBDataWriterWriteSubmessage();
  }

  v34 = 0u;
  v35 = 0u;
  v32 = 0u;
  v33 = 0u;
  v25 = self->_contextualSpans;
  v26 = [(NSMutableArray *)v25 countByEnumeratingWithState:&v32 objects:v48 count:16];
  if (v26)
  {
    v27 = v26;
    v28 = *v33;
    do
    {
      v29 = 0;
      do
      {
        if (*v33 != v28)
        {
          objc_enumerationMutation(v25);
        }

        v30 = *(*(&v32 + 1) + 8 * v29);
        PBDataWriterWriteSubmessage();
        ++v29;
      }

      while (v27 != v29);
      v27 = [(NSMutableArray *)v25 countByEnumeratingWithState:&v32 objects:v48 count:16];
    }

    while (v27);
  }

  v31 = *MEMORY[0x1E69E9840];
}

- (id)dictionaryRepresentation
{
  v68 = *MEMORY[0x1E69E9840];
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

  if ([(NSMutableArray *)self->_entityCandidates count])
  {
    v14 = [objc_alloc(MEMORY[0x1E695DF70]) initWithCapacity:{-[NSMutableArray count](self->_entityCandidates, "count")}];
    v60 = 0u;
    v61 = 0u;
    v62 = 0u;
    v63 = 0u;
    v15 = self->_entityCandidates;
    v16 = [(NSMutableArray *)v15 countByEnumeratingWithState:&v60 objects:v67 count:16];
    if (v16)
    {
      v17 = v16;
      v18 = *v61;
      do
      {
        for (i = 0; i != v17; ++i)
        {
          if (*v61 != v18)
          {
            objc_enumerationMutation(v15);
          }

          v20 = [*(*(&v60 + 1) + 8 * i) dictionaryRepresentation];
          [v14 addObject:v20];
        }

        v17 = [(NSMutableArray *)v15 countByEnumeratingWithState:&v60 objects:v67 count:16];
      }

      while (v17);
    }

    [v3 setObject:v14 forKey:@"entity_candidates"];
  }

  if ([(NSMutableArray *)self->_detectedMentions count])
  {
    v21 = [objc_alloc(MEMORY[0x1E695DF70]) initWithCapacity:{-[NSMutableArray count](self->_detectedMentions, "count")}];
    v56 = 0u;
    v57 = 0u;
    v58 = 0u;
    v59 = 0u;
    v22 = self->_detectedMentions;
    v23 = [(NSMutableArray *)v22 countByEnumeratingWithState:&v56 objects:v66 count:16];
    if (v23)
    {
      v24 = v23;
      v25 = *v57;
      do
      {
        for (j = 0; j != v24; ++j)
        {
          if (*v57 != v25)
          {
            objc_enumerationMutation(v22);
          }

          v27 = [*(*(&v56 + 1) + 8 * j) dictionaryRepresentation];
          [v21 addObject:v27];
        }

        v24 = [(NSMutableArray *)v22 countByEnumeratingWithState:&v56 objects:v66 count:16];
      }

      while (v24);
    }

    [v3 setObject:v21 forKey:@"detected_mentions"];
  }

  if (*&self->_has)
  {
    v28 = [MEMORY[0x1E696AD98] numberWithUnsignedLongLong:self->_maxCandidates];
    [v3 setObject:v28 forKey:@"max_candidates"];
  }

  if ([(NSMutableArray *)self->_matchingSpans count])
  {
    v29 = [objc_alloc(MEMORY[0x1E695DF70]) initWithCapacity:{-[NSMutableArray count](self->_matchingSpans, "count")}];
    v52 = 0u;
    v53 = 0u;
    v54 = 0u;
    v55 = 0u;
    v30 = self->_matchingSpans;
    v31 = [(NSMutableArray *)v30 countByEnumeratingWithState:&v52 objects:v65 count:16];
    if (v31)
    {
      v32 = v31;
      v33 = *v53;
      do
      {
        for (k = 0; k != v32; ++k)
        {
          if (*v53 != v33)
          {
            objc_enumerationMutation(v30);
          }

          v35 = [*(*(&v52 + 1) + 8 * k) dictionaryRepresentation];
          [v29 addObject:v35];
        }

        v32 = [(NSMutableArray *)v30 countByEnumeratingWithState:&v52 objects:v65 count:16];
      }

      while (v32);
    }

    [v3 setObject:v29 forKey:@"matching_spans"];
  }

  if ((*&self->_has & 2) != 0)
  {
    v36 = [MEMORY[0x1E696AD98] numberWithUnsignedLongLong:self->_turnIndex];
    [v3 setObject:v36 forKey:@"turn_index"];
  }

  cdmRequestId = self->_cdmRequestId;
  if (cdmRequestId)
  {
    v38 = [(SIRINLUEXTERNALRequestID *)cdmRequestId dictionaryRepresentation];
    [v3 setObject:v38 forKey:@"cdm_request_id"];
  }

  if ([(NSMutableArray *)self->_contextualSpans count])
  {
    v39 = [objc_alloc(MEMORY[0x1E695DF70]) initWithCapacity:{-[NSMutableArray count](self->_contextualSpans, "count")}];
    v48 = 0u;
    v49 = 0u;
    v50 = 0u;
    v51 = 0u;
    v40 = self->_contextualSpans;
    v41 = [(NSMutableArray *)v40 countByEnumeratingWithState:&v48 objects:v64 count:16];
    if (v41)
    {
      v42 = v41;
      v43 = *v49;
      do
      {
        for (m = 0; m != v42; ++m)
        {
          if (*v49 != v43)
          {
            objc_enumerationMutation(v40);
          }

          v45 = [*(*(&v48 + 1) + 8 * m) dictionaryRepresentation];
          [v39 addObject:v45];
        }

        v42 = [(NSMutableArray *)v40 countByEnumeratingWithState:&v48 objects:v64 count:16];
      }

      while (v42);
    }

    [v3 setObject:v39 forKey:@"contextual_spans"];
  }

  v46 = *MEMORY[0x1E69E9840];

  return v3;
}

- (id)description
{
  v3 = MEMORY[0x1E696AEC0];
  v8.receiver = self;
  v8.super_class = SIRINLUINTERNALMENTION_RESOLVERMentionResolverRequest;
  v4 = [(SIRINLUINTERNALMENTION_RESOLVERMentionResolverRequest *)&v8 description];
  v5 = [(SIRINLUINTERNALMENTION_RESOLVERMentionResolverRequest *)self dictionaryRepresentation];
  v6 = [v3 stringWithFormat:@"%@ %@", v4, v5];

  return v6;
}

- (void)addContextualSpans:(id)a3
{
  v4 = a3;
  contextualSpans = self->_contextualSpans;
  v8 = v4;
  if (!contextualSpans)
  {
    v6 = objc_alloc_init(MEMORY[0x1E695DF70]);
    v7 = self->_contextualSpans;
    self->_contextualSpans = v6;

    v4 = v8;
    contextualSpans = self->_contextualSpans;
  }

  [(NSMutableArray *)contextualSpans addObject:v4];
}

- (void)setHasTurnIndex:(BOOL)a3
{
  if (a3)
  {
    v3 = 2;
  }

  else
  {
    v3 = 0;
  }

  *&self->_has = *&self->_has & 0xFD | v3;
}

- (void)addMatchingSpans:(id)a3
{
  v4 = a3;
  matchingSpans = self->_matchingSpans;
  v8 = v4;
  if (!matchingSpans)
  {
    v6 = objc_alloc_init(MEMORY[0x1E695DF70]);
    v7 = self->_matchingSpans;
    self->_matchingSpans = v6;

    v4 = v8;
    matchingSpans = self->_matchingSpans;
  }

  [(NSMutableArray *)matchingSpans addObject:v4];
}

- (void)addDetectedMentions:(id)a3
{
  v4 = a3;
  detectedMentions = self->_detectedMentions;
  v8 = v4;
  if (!detectedMentions)
  {
    v6 = objc_alloc_init(MEMORY[0x1E695DF70]);
    v7 = self->_detectedMentions;
    self->_detectedMentions = v6;

    v4 = v8;
    detectedMentions = self->_detectedMentions;
  }

  [(NSMutableArray *)detectedMentions addObject:v4];
}

- (void)addEntityCandidates:(id)a3
{
  v4 = a3;
  entityCandidates = self->_entityCandidates;
  v8 = v4;
  if (!entityCandidates)
  {
    v6 = objc_alloc_init(MEMORY[0x1E695DF70]);
    v7 = self->_entityCandidates;
    self->_entityCandidates = v6;

    v4 = v8;
    entityCandidates = self->_entityCandidates;
  }

  [(NSMutableArray *)entityCandidates addObject:v4];
}

@end