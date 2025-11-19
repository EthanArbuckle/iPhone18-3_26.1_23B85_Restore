@interface SIRINLUINTERNALSNLCSNLCParserRequest
- (BOOL)isEqual:(id)a3;
- (id)copyWithZone:(_NSZone *)a3;
- (id)description;
- (id)dictionaryRepresentation;
- (unint64_t)hash;
- (void)addMatchingSpans:(id)a3;
- (void)copyTo:(id)a3;
- (void)mergeFrom:(id)a3;
- (void)writeTo:(id)a3;
@end

@implementation SIRINLUINTERNALSNLCSNLCParserRequest

- (void)mergeFrom:(id)a3
{
  v28 = *MEMORY[0x1E69E9840];
  v4 = a3;
  requestId = self->_requestId;
  v6 = *(v4 + 5);
  if (requestId)
  {
    if (v6)
    {
      [(SIRINLUEXTERNALUUID *)requestId mergeFrom:?];
    }
  }

  else if (v6)
  {
    [(SIRINLUINTERNALSNLCSNLCParserRequest *)self setRequestId:?];
  }

  tokenisedUtterance = self->_tokenisedUtterance;
  v8 = *(v4 + 6);
  if (tokenisedUtterance)
  {
    if (v8)
    {
      [(SIRINLUINTERNALNLV4_PARSERTokenisation *)tokenisedUtterance mergeFrom:?];
    }
  }

  else if (v8)
  {
    [(SIRINLUINTERNALSNLCSNLCParserRequest *)self setTokenisedUtterance:?];
  }

  embeddings = self->_embeddings;
  v10 = *(v4 + 1);
  if (embeddings)
  {
    if (v10)
    {
      [(SIRINLUINTERNALNLv4EmbeddingTensor *)embeddings mergeFrom:?];
    }
  }

  else if (v10)
  {
    [(SIRINLUINTERNALSNLCSNLCParserRequest *)self setEmbeddings:?];
  }

  v25 = 0u;
  v26 = 0u;
  v23 = 0u;
  v24 = 0u;
  v11 = *(v4 + 3);
  v12 = [v11 countByEnumeratingWithState:&v23 objects:v27 count:16];
  if (v12)
  {
    v13 = v12;
    v14 = *v24;
    do
    {
      for (i = 0; i != v13; ++i)
      {
        if (*v24 != v14)
        {
          objc_enumerationMutation(v11);
        }

        [(SIRINLUINTERNALSNLCSNLCParserRequest *)self addMatchingSpans:*(*(&v23 + 1) + 8 * i), v23];
      }

      v13 = [v11 countByEnumeratingWithState:&v23 objects:v27 count:16];
    }

    while (v13);
  }

  turnInput = self->_turnInput;
  v17 = *(v4 + 7);
  if (turnInput)
  {
    if (v17)
    {
      [(SIRINLUEXTERNALTurnInput *)turnInput mergeFrom:?];
    }
  }

  else if (v17)
  {
    [(SIRINLUINTERNALSNLCSNLCParserRequest *)self setTurnInput:?];
  }

  legacyContext = self->_legacyContext;
  v19 = *(v4 + 2);
  if (legacyContext)
  {
    if (v19)
    {
      [(SIRINLUEXTERNALLegacyNLContext *)legacyContext mergeFrom:?];
    }
  }

  else if (v19)
  {
    [(SIRINLUINTERNALSNLCSNLCParserRequest *)self setLegacyContext:?];
  }

  nluRequestId = self->_nluRequestId;
  v21 = *(v4 + 4);
  if (nluRequestId)
  {
    if (v21)
    {
      [(SIRINLUEXTERNALRequestID *)nluRequestId mergeFrom:?];
    }
  }

  else if (v21)
  {
    [(SIRINLUINTERNALSNLCSNLCParserRequest *)self setNluRequestId:?];
  }

  v22 = *MEMORY[0x1E69E9840];
}

- (unint64_t)hash
{
  v3 = [(SIRINLUEXTERNALUUID *)self->_requestId hash];
  v4 = [(SIRINLUINTERNALNLV4_PARSERTokenisation *)self->_tokenisedUtterance hash]^ v3;
  v5 = [(SIRINLUINTERNALNLv4EmbeddingTensor *)self->_embeddings hash];
  v6 = v4 ^ v5 ^ [(NSMutableArray *)self->_matchingSpans hash];
  v7 = [(SIRINLUEXTERNALTurnInput *)self->_turnInput hash];
  v8 = v7 ^ [(SIRINLUEXTERNALLegacyNLContext *)self->_legacyContext hash];
  return v6 ^ v8 ^ [(SIRINLUEXTERNALRequestID *)self->_nluRequestId hash];
}

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  if ([v4 isMemberOfClass:objc_opt_class()] && ((requestId = self->_requestId, !(requestId | v4[5])) || -[SIRINLUEXTERNALUUID isEqual:](requestId, "isEqual:")) && ((tokenisedUtterance = self->_tokenisedUtterance, !(tokenisedUtterance | v4[6])) || -[SIRINLUINTERNALNLV4_PARSERTokenisation isEqual:](tokenisedUtterance, "isEqual:")) && ((embeddings = self->_embeddings, !(embeddings | v4[1])) || -[SIRINLUINTERNALNLv4EmbeddingTensor isEqual:](embeddings, "isEqual:")) && ((matchingSpans = self->_matchingSpans, !(matchingSpans | v4[3])) || -[NSMutableArray isEqual:](matchingSpans, "isEqual:")) && ((turnInput = self->_turnInput, !(turnInput | v4[7])) || -[SIRINLUEXTERNALTurnInput isEqual:](turnInput, "isEqual:")) && ((legacyContext = self->_legacyContext, !(legacyContext | v4[2])) || -[SIRINLUEXTERNALLegacyNLContext isEqual:](legacyContext, "isEqual:")))
  {
    nluRequestId = self->_nluRequestId;
    if (nluRequestId | v4[4])
    {
      v12 = [(SIRINLUEXTERNALRequestID *)nluRequestId isEqual:?];
    }

    else
    {
      v12 = 1;
    }
  }

  else
  {
    v12 = 0;
  }

  return v12;
}

- (id)copyWithZone:(_NSZone *)a3
{
  v31 = *MEMORY[0x1E69E9840];
  v5 = [objc_msgSend(objc_opt_class() allocWithZone:{a3), "init"}];
  v6 = [(SIRINLUEXTERNALUUID *)self->_requestId copyWithZone:a3];
  v7 = v5[5];
  v5[5] = v6;

  v8 = [(SIRINLUINTERNALNLV4_PARSERTokenisation *)self->_tokenisedUtterance copyWithZone:a3];
  v9 = v5[6];
  v5[6] = v8;

  v10 = [(SIRINLUINTERNALNLv4EmbeddingTensor *)self->_embeddings copyWithZone:a3];
  v11 = v5[1];
  v5[1] = v10;

  v28 = 0u;
  v29 = 0u;
  v26 = 0u;
  v27 = 0u;
  v12 = self->_matchingSpans;
  v13 = [(NSMutableArray *)v12 countByEnumeratingWithState:&v26 objects:v30 count:16];
  if (v13)
  {
    v14 = v13;
    v15 = *v27;
    do
    {
      v16 = 0;
      do
      {
        if (*v27 != v15)
        {
          objc_enumerationMutation(v12);
        }

        v17 = [*(*(&v26 + 1) + 8 * v16) copyWithZone:{a3, v26}];
        [v5 addMatchingSpans:v17];

        ++v16;
      }

      while (v14 != v16);
      v14 = [(NSMutableArray *)v12 countByEnumeratingWithState:&v26 objects:v30 count:16];
    }

    while (v14);
  }

  v18 = [(SIRINLUEXTERNALTurnInput *)self->_turnInput copyWithZone:a3];
  v19 = v5[7];
  v5[7] = v18;

  v20 = [(SIRINLUEXTERNALLegacyNLContext *)self->_legacyContext copyWithZone:a3];
  v21 = v5[2];
  v5[2] = v20;

  v22 = [(SIRINLUEXTERNALRequestID *)self->_nluRequestId copyWithZone:a3];
  v23 = v5[4];
  v5[4] = v22;

  v24 = *MEMORY[0x1E69E9840];
  return v5;
}

- (void)copyTo:(id)a3
{
  v9 = a3;
  if (self->_requestId)
  {
    [v9 setRequestId:?];
  }

  if (self->_tokenisedUtterance)
  {
    [v9 setTokenisedUtterance:?];
  }

  if (self->_embeddings)
  {
    [v9 setEmbeddings:?];
  }

  if ([(SIRINLUINTERNALSNLCSNLCParserRequest *)self matchingSpansCount])
  {
    [v9 clearMatchingSpans];
    v4 = [(SIRINLUINTERNALSNLCSNLCParserRequest *)self matchingSpansCount];
    if (v4)
    {
      v5 = v4;
      for (i = 0; i != v5; ++i)
      {
        v7 = [(SIRINLUINTERNALSNLCSNLCParserRequest *)self matchingSpansAtIndex:i];
        [v9 addMatchingSpans:v7];
      }
    }
  }

  if (self->_turnInput)
  {
    [v9 setTurnInput:?];
  }

  v8 = v9;
  if (self->_legacyContext)
  {
    [v9 setLegacyContext:?];
    v8 = v9;
  }

  if (self->_nluRequestId)
  {
    [v9 setNluRequestId:?];
    v8 = v9;
  }
}

- (void)writeTo:(id)a3
{
  v17 = *MEMORY[0x1E69E9840];
  v4 = a3;
  if (self->_requestId)
  {
    PBDataWriterWriteSubmessage();
  }

  if (self->_tokenisedUtterance)
  {
    PBDataWriterWriteSubmessage();
  }

  if (self->_embeddings)
  {
    PBDataWriterWriteSubmessage();
  }

  v14 = 0u;
  v15 = 0u;
  v12 = 0u;
  v13 = 0u;
  v5 = self->_matchingSpans;
  v6 = [(NSMutableArray *)v5 countByEnumeratingWithState:&v12 objects:v16 count:16];
  if (v6)
  {
    v7 = v6;
    v8 = *v13;
    do
    {
      v9 = 0;
      do
      {
        if (*v13 != v8)
        {
          objc_enumerationMutation(v5);
        }

        v10 = *(*(&v12 + 1) + 8 * v9);
        PBDataWriterWriteSubmessage();
        ++v9;
      }

      while (v7 != v9);
      v7 = [(NSMutableArray *)v5 countByEnumeratingWithState:&v12 objects:v16 count:16];
    }

    while (v7);
  }

  if (self->_turnInput)
  {
    PBDataWriterWriteSubmessage();
  }

  if (self->_legacyContext)
  {
    PBDataWriterWriteSubmessage();
  }

  if (self->_nluRequestId)
  {
    PBDataWriterWriteSubmessage();
  }

  v11 = *MEMORY[0x1E69E9840];
}

- (id)dictionaryRepresentation
{
  v30 = *MEMORY[0x1E69E9840];
  v3 = [MEMORY[0x1E695DF90] dictionary];
  requestId = self->_requestId;
  if (requestId)
  {
    v5 = [(SIRINLUEXTERNALUUID *)requestId dictionaryRepresentation];
    [v3 setObject:v5 forKey:@"request_id"];
  }

  tokenisedUtterance = self->_tokenisedUtterance;
  if (tokenisedUtterance)
  {
    v7 = [(SIRINLUINTERNALNLV4_PARSERTokenisation *)tokenisedUtterance dictionaryRepresentation];
    [v3 setObject:v7 forKey:@"tokenised_utterance"];
  }

  embeddings = self->_embeddings;
  if (embeddings)
  {
    v9 = [(SIRINLUINTERNALNLv4EmbeddingTensor *)embeddings dictionaryRepresentation];
    [v3 setObject:v9 forKey:@"embeddings"];
  }

  if ([(NSMutableArray *)self->_matchingSpans count])
  {
    v10 = [objc_alloc(MEMORY[0x1E695DF70]) initWithCapacity:{-[NSMutableArray count](self->_matchingSpans, "count")}];
    v25 = 0u;
    v26 = 0u;
    v27 = 0u;
    v28 = 0u;
    v11 = self->_matchingSpans;
    v12 = [(NSMutableArray *)v11 countByEnumeratingWithState:&v25 objects:v29 count:16];
    if (v12)
    {
      v13 = v12;
      v14 = *v26;
      do
      {
        for (i = 0; i != v13; ++i)
        {
          if (*v26 != v14)
          {
            objc_enumerationMutation(v11);
          }

          v16 = [*(*(&v25 + 1) + 8 * i) dictionaryRepresentation];
          [v10 addObject:v16];
        }

        v13 = [(NSMutableArray *)v11 countByEnumeratingWithState:&v25 objects:v29 count:16];
      }

      while (v13);
    }

    [v3 setObject:v10 forKey:@"matching_spans"];
  }

  turnInput = self->_turnInput;
  if (turnInput)
  {
    v18 = [(SIRINLUEXTERNALTurnInput *)turnInput dictionaryRepresentation];
    [v3 setObject:v18 forKey:@"turn_input"];
  }

  legacyContext = self->_legacyContext;
  if (legacyContext)
  {
    v20 = [(SIRINLUEXTERNALLegacyNLContext *)legacyContext dictionaryRepresentation];
    [v3 setObject:v20 forKey:@"legacy_context"];
  }

  nluRequestId = self->_nluRequestId;
  if (nluRequestId)
  {
    v22 = [(SIRINLUEXTERNALRequestID *)nluRequestId dictionaryRepresentation];
    [v3 setObject:v22 forKey:@"nlu_request_id"];
  }

  v23 = *MEMORY[0x1E69E9840];

  return v3;
}

- (id)description
{
  v3 = MEMORY[0x1E696AEC0];
  v8.receiver = self;
  v8.super_class = SIRINLUINTERNALSNLCSNLCParserRequest;
  v4 = [(SIRINLUINTERNALSNLCSNLCParserRequest *)&v8 description];
  v5 = [(SIRINLUINTERNALSNLCSNLCParserRequest *)self dictionaryRepresentation];
  v6 = [v3 stringWithFormat:@"%@ %@", v4, v5];

  return v6;
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

@end