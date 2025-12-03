@interface SIRINLUINTERNALNLV4_PARSERNLv4ParserRequest
- (BOOL)isEqual:(id)equal;
- (id)copyWithZone:(_NSZone *)zone;
- (id)description;
- (id)dictionaryRepresentation;
- (unint64_t)hash;
- (void)addMatchingSpans:(id)spans;
- (void)copyTo:(id)to;
- (void)mergeFrom:(id)from;
- (void)writeTo:(id)to;
@end

@implementation SIRINLUINTERNALNLV4_PARSERNLv4ParserRequest

- (void)mergeFrom:(id)from
{
  v26 = *MEMORY[0x1E69E9840];
  fromCopy = from;
  requestId = self->_requestId;
  v6 = *(fromCopy + 5);
  if (requestId)
  {
    if (v6)
    {
      [(SIRINLUEXTERNALUUID *)requestId mergeFrom:?];
    }
  }

  else if (v6)
  {
    [(SIRINLUINTERNALNLV4_PARSERNLv4ParserRequest *)self setRequestId:?];
  }

  tokenisedUtterance = self->_tokenisedUtterance;
  v8 = *(fromCopy + 6);
  if (tokenisedUtterance)
  {
    if (v8)
    {
      [(SIRINLUINTERNALNLV4_PARSERTokenisation *)tokenisedUtterance mergeFrom:?];
    }
  }

  else if (v8)
  {
    [(SIRINLUINTERNALNLV4_PARSERNLv4ParserRequest *)self setTokenisedUtterance:?];
  }

  embeddings = self->_embeddings;
  v10 = *(fromCopy + 2);
  if (embeddings)
  {
    if (v10)
    {
      [(SIRINLUINTERNALNLv4EmbeddingTensor *)embeddings mergeFrom:?];
    }
  }

  else if (v10)
  {
    [(SIRINLUINTERNALNLV4_PARSERNLv4ParserRequest *)self setEmbeddings:?];
  }

  v23 = 0u;
  v24 = 0u;
  v21 = 0u;
  v22 = 0u;
  v11 = *(fromCopy + 3);
  v12 = [v11 countByEnumeratingWithState:&v21 objects:v25 count:16];
  if (v12)
  {
    v13 = v12;
    v14 = *v22;
    do
    {
      for (i = 0; i != v13; ++i)
      {
        if (*v22 != v14)
        {
          objc_enumerationMutation(v11);
        }

        [(SIRINLUINTERNALNLV4_PARSERNLv4ParserRequest *)self addMatchingSpans:*(*(&v21 + 1) + 8 * i), v21];
      }

      v13 = [v11 countByEnumeratingWithState:&v21 objects:v25 count:16];
    }

    while (v13);
  }

  turnInput = self->_turnInput;
  v17 = *(fromCopy + 7);
  if (turnInput)
  {
    if (v17)
    {
      [(SIRINLUEXTERNALTurnInput *)turnInput mergeFrom:?];
    }
  }

  else if (v17)
  {
    [(SIRINLUINTERNALNLV4_PARSERNLv4ParserRequest *)self setTurnInput:?];
  }

  if (*(fromCopy + 64))
  {
    self->_maxNumParses = *(fromCopy + 1);
    *&self->_has |= 1u;
  }

  nluRequestId = self->_nluRequestId;
  v19 = *(fromCopy + 4);
  if (nluRequestId)
  {
    if (v19)
    {
      [(SIRINLUEXTERNALRequestID *)nluRequestId mergeFrom:?];
    }
  }

  else if (v19)
  {
    [(SIRINLUINTERNALNLV4_PARSERNLv4ParserRequest *)self setNluRequestId:?];
  }

  v20 = *MEMORY[0x1E69E9840];
}

- (unint64_t)hash
{
  v3 = [(SIRINLUEXTERNALUUID *)self->_requestId hash];
  v4 = [(SIRINLUINTERNALNLV4_PARSERTokenisation *)self->_tokenisedUtterance hash];
  v5 = [(SIRINLUINTERNALNLv4EmbeddingTensor *)self->_embeddings hash];
  v6 = [(NSMutableArray *)self->_matchingSpans hash];
  v7 = [(SIRINLUEXTERNALTurnInput *)self->_turnInput hash];
  if (*&self->_has)
  {
    v8 = 2654435761u * self->_maxNumParses;
  }

  else
  {
    v8 = 0;
  }

  return v4 ^ v3 ^ v5 ^ v6 ^ v7 ^ v8 ^ [(SIRINLUEXTERNALRequestID *)self->_nluRequestId hash];
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  if (![equalCopy isMemberOfClass:objc_opt_class()])
  {
    goto LABEL_19;
  }

  requestId = self->_requestId;
  if (requestId | *(equalCopy + 5))
  {
    if (![(SIRINLUEXTERNALUUID *)requestId isEqual:?])
    {
      goto LABEL_19;
    }
  }

  tokenisedUtterance = self->_tokenisedUtterance;
  if (tokenisedUtterance | *(equalCopy + 6))
  {
    if (![(SIRINLUINTERNALNLV4_PARSERTokenisation *)tokenisedUtterance isEqual:?])
    {
      goto LABEL_19;
    }
  }

  embeddings = self->_embeddings;
  if (embeddings | *(equalCopy + 2))
  {
    if (![(SIRINLUINTERNALNLv4EmbeddingTensor *)embeddings isEqual:?])
    {
      goto LABEL_19;
    }
  }

  matchingSpans = self->_matchingSpans;
  if (matchingSpans | *(equalCopy + 3))
  {
    if (![(NSMutableArray *)matchingSpans isEqual:?])
    {
      goto LABEL_19;
    }
  }

  turnInput = self->_turnInput;
  if (turnInput | *(equalCopy + 7))
  {
    if (![(SIRINLUEXTERNALTurnInput *)turnInput isEqual:?])
    {
      goto LABEL_19;
    }
  }

  v10 = *(equalCopy + 64);
  if (*&self->_has)
  {
    if ((*(equalCopy + 64) & 1) == 0 || self->_maxNumParses != *(equalCopy + 1))
    {
      goto LABEL_19;
    }
  }

  else if (*(equalCopy + 64))
  {
LABEL_19:
    v12 = 0;
    goto LABEL_20;
  }

  nluRequestId = self->_nluRequestId;
  if (nluRequestId | *(equalCopy + 4))
  {
    v12 = [(SIRINLUEXTERNALRequestID *)nluRequestId isEqual:?];
  }

  else
  {
    v12 = 1;
  }

LABEL_20:

  return v12;
}

- (id)copyWithZone:(_NSZone *)zone
{
  v29 = *MEMORY[0x1E69E9840];
  v5 = [objc_msgSend(objc_opt_class() allocWithZone:{zone), "init"}];
  v6 = [(SIRINLUEXTERNALUUID *)self->_requestId copyWithZone:zone];
  v7 = *(v5 + 40);
  *(v5 + 40) = v6;

  v8 = [(SIRINLUINTERNALNLV4_PARSERTokenisation *)self->_tokenisedUtterance copyWithZone:zone];
  v9 = *(v5 + 48);
  *(v5 + 48) = v8;

  v10 = [(SIRINLUINTERNALNLv4EmbeddingTensor *)self->_embeddings copyWithZone:zone];
  v11 = *(v5 + 16);
  *(v5 + 16) = v10;

  v26 = 0u;
  v27 = 0u;
  v24 = 0u;
  v25 = 0u;
  v12 = self->_matchingSpans;
  v13 = [(NSMutableArray *)v12 countByEnumeratingWithState:&v24 objects:v28 count:16];
  if (v13)
  {
    v14 = v13;
    v15 = *v25;
    do
    {
      v16 = 0;
      do
      {
        if (*v25 != v15)
        {
          objc_enumerationMutation(v12);
        }

        v17 = [*(*(&v24 + 1) + 8 * v16) copyWithZone:{zone, v24}];
        [v5 addMatchingSpans:v17];

        ++v16;
      }

      while (v14 != v16);
      v14 = [(NSMutableArray *)v12 countByEnumeratingWithState:&v24 objects:v28 count:16];
    }

    while (v14);
  }

  v18 = [(SIRINLUEXTERNALTurnInput *)self->_turnInput copyWithZone:zone];
  v19 = *(v5 + 56);
  *(v5 + 56) = v18;

  if (*&self->_has)
  {
    *(v5 + 8) = self->_maxNumParses;
    *(v5 + 64) |= 1u;
  }

  v20 = [(SIRINLUEXTERNALRequestID *)self->_nluRequestId copyWithZone:zone, v24];
  v21 = *(v5 + 32);
  *(v5 + 32) = v20;

  v22 = *MEMORY[0x1E69E9840];
  return v5;
}

- (void)copyTo:(id)to
{
  toCopy = to;
  if (self->_requestId)
  {
    [toCopy setRequestId:?];
  }

  if (self->_tokenisedUtterance)
  {
    [toCopy setTokenisedUtterance:?];
  }

  if (self->_embeddings)
  {
    [toCopy setEmbeddings:?];
  }

  if ([(SIRINLUINTERNALNLV4_PARSERNLv4ParserRequest *)self matchingSpansCount])
  {
    [toCopy clearMatchingSpans];
    matchingSpansCount = [(SIRINLUINTERNALNLV4_PARSERNLv4ParserRequest *)self matchingSpansCount];
    if (matchingSpansCount)
    {
      v5 = matchingSpansCount;
      for (i = 0; i != v5; ++i)
      {
        v7 = [(SIRINLUINTERNALNLV4_PARSERNLv4ParserRequest *)self matchingSpansAtIndex:i];
        [toCopy addMatchingSpans:v7];
      }
    }
  }

  if (self->_turnInput)
  {
    [toCopy setTurnInput:?];
  }

  v8 = toCopy;
  if (*&self->_has)
  {
    *(toCopy + 1) = self->_maxNumParses;
    *(toCopy + 64) |= 1u;
  }

  if (self->_nluRequestId)
  {
    [toCopy setNluRequestId:?];
    v8 = toCopy;
  }
}

- (void)writeTo:(id)to
{
  v18 = *MEMORY[0x1E69E9840];
  toCopy = to;
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

  v15 = 0u;
  v16 = 0u;
  v13 = 0u;
  v14 = 0u;
  v5 = self->_matchingSpans;
  v6 = [(NSMutableArray *)v5 countByEnumeratingWithState:&v13 objects:v17 count:16];
  if (v6)
  {
    v7 = v6;
    v8 = *v14;
    do
    {
      v9 = 0;
      do
      {
        if (*v14 != v8)
        {
          objc_enumerationMutation(v5);
        }

        v10 = *(*(&v13 + 1) + 8 * v9);
        PBDataWriterWriteSubmessage();
        ++v9;
      }

      while (v7 != v9);
      v7 = [(NSMutableArray *)v5 countByEnumeratingWithState:&v13 objects:v17 count:16];
    }

    while (v7);
  }

  if (self->_turnInput)
  {
    PBDataWriterWriteSubmessage();
  }

  if (*&self->_has)
  {
    maxNumParses = self->_maxNumParses;
    PBDataWriterWriteUint64Field();
  }

  if (self->_nluRequestId)
  {
    PBDataWriterWriteSubmessage();
  }

  v12 = *MEMORY[0x1E69E9840];
}

- (id)dictionaryRepresentation
{
  v29 = *MEMORY[0x1E69E9840];
  dictionary = [MEMORY[0x1E695DF90] dictionary];
  requestId = self->_requestId;
  if (requestId)
  {
    dictionaryRepresentation = [(SIRINLUEXTERNALUUID *)requestId dictionaryRepresentation];
    [dictionary setObject:dictionaryRepresentation forKey:@"request_id"];
  }

  tokenisedUtterance = self->_tokenisedUtterance;
  if (tokenisedUtterance)
  {
    dictionaryRepresentation2 = [(SIRINLUINTERNALNLV4_PARSERTokenisation *)tokenisedUtterance dictionaryRepresentation];
    [dictionary setObject:dictionaryRepresentation2 forKey:@"tokenised_utterance"];
  }

  embeddings = self->_embeddings;
  if (embeddings)
  {
    dictionaryRepresentation3 = [(SIRINLUINTERNALNLv4EmbeddingTensor *)embeddings dictionaryRepresentation];
    [dictionary setObject:dictionaryRepresentation3 forKey:@"embeddings"];
  }

  if ([(NSMutableArray *)self->_matchingSpans count])
  {
    v10 = [objc_alloc(MEMORY[0x1E695DF70]) initWithCapacity:{-[NSMutableArray count](self->_matchingSpans, "count")}];
    v24 = 0u;
    v25 = 0u;
    v26 = 0u;
    v27 = 0u;
    v11 = self->_matchingSpans;
    v12 = [(NSMutableArray *)v11 countByEnumeratingWithState:&v24 objects:v28 count:16];
    if (v12)
    {
      v13 = v12;
      v14 = *v25;
      do
      {
        for (i = 0; i != v13; ++i)
        {
          if (*v25 != v14)
          {
            objc_enumerationMutation(v11);
          }

          dictionaryRepresentation4 = [*(*(&v24 + 1) + 8 * i) dictionaryRepresentation];
          [v10 addObject:dictionaryRepresentation4];
        }

        v13 = [(NSMutableArray *)v11 countByEnumeratingWithState:&v24 objects:v28 count:16];
      }

      while (v13);
    }

    [dictionary setObject:v10 forKey:@"matching_spans"];
  }

  turnInput = self->_turnInput;
  if (turnInput)
  {
    dictionaryRepresentation5 = [(SIRINLUEXTERNALTurnInput *)turnInput dictionaryRepresentation];
    [dictionary setObject:dictionaryRepresentation5 forKey:@"turn_input"];
  }

  if (*&self->_has)
  {
    v19 = [MEMORY[0x1E696AD98] numberWithUnsignedLongLong:self->_maxNumParses];
    [dictionary setObject:v19 forKey:@"max_num_parses"];
  }

  nluRequestId = self->_nluRequestId;
  if (nluRequestId)
  {
    dictionaryRepresentation6 = [(SIRINLUEXTERNALRequestID *)nluRequestId dictionaryRepresentation];
    [dictionary setObject:dictionaryRepresentation6 forKey:@"nlu_request_id"];
  }

  v22 = *MEMORY[0x1E69E9840];

  return dictionary;
}

- (id)description
{
  v3 = MEMORY[0x1E696AEC0];
  v8.receiver = self;
  v8.super_class = SIRINLUINTERNALNLV4_PARSERNLv4ParserRequest;
  v4 = [(SIRINLUINTERNALNLV4_PARSERNLv4ParserRequest *)&v8 description];
  dictionaryRepresentation = [(SIRINLUINTERNALNLV4_PARSERNLv4ParserRequest *)self dictionaryRepresentation];
  v6 = [v3 stringWithFormat:@"%@ %@", v4, dictionaryRepresentation];

  return v6;
}

- (void)addMatchingSpans:(id)spans
{
  spansCopy = spans;
  matchingSpans = self->_matchingSpans;
  v8 = spansCopy;
  if (!matchingSpans)
  {
    v6 = objc_alloc_init(MEMORY[0x1E695DF70]);
    v7 = self->_matchingSpans;
    self->_matchingSpans = v6;

    spansCopy = v8;
    matchingSpans = self->_matchingSpans;
  }

  [(NSMutableArray *)matchingSpans addObject:spansCopy];
}

@end