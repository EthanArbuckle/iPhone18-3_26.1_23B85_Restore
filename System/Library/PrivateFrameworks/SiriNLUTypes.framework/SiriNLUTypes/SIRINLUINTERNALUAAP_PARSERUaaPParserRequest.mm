@interface SIRINLUINTERNALUAAP_PARSERUaaPParserRequest
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

@implementation SIRINLUINTERNALUAAP_PARSERUaaPParserRequest

- (void)mergeFrom:(id)from
{
  v24 = *MEMORY[0x1E69E9840];
  fromCopy = from;
  requestId = self->_requestId;
  v6 = *(fromCopy + 4);
  if (requestId)
  {
    if (v6)
    {
      [(SIRINLUEXTERNALUUID *)requestId mergeFrom:?];
    }
  }

  else if (v6)
  {
    [(SIRINLUINTERNALUAAP_PARSERUaaPParserRequest *)self setRequestId:?];
  }

  tokenChain = self->_tokenChain;
  v8 = *(fromCopy + 5);
  if (tokenChain)
  {
    if (v8)
    {
      [(SIRINLUINTERNALTokenChain *)tokenChain mergeFrom:?];
    }
  }

  else if (v8)
  {
    [(SIRINLUINTERNALUAAP_PARSERUaaPParserRequest *)self setTokenChain:?];
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
    [(SIRINLUINTERNALUAAP_PARSERUaaPParserRequest *)self setEmbeddings:?];
  }

  v21 = 0u;
  v22 = 0u;
  v19 = 0u;
  v20 = 0u;
  v11 = *(fromCopy + 3);
  v12 = [v11 countByEnumeratingWithState:&v19 objects:v23 count:16];
  if (v12)
  {
    v13 = v12;
    v14 = *v20;
    do
    {
      for (i = 0; i != v13; ++i)
      {
        if (*v20 != v14)
        {
          objc_enumerationMutation(v11);
        }

        [(SIRINLUINTERNALUAAP_PARSERUaaPParserRequest *)self addMatchingSpans:*(*(&v19 + 1) + 8 * i), v19];
      }

      v13 = [v11 countByEnumeratingWithState:&v19 objects:v23 count:16];
    }

    while (v13);
  }

  turnInput = self->_turnInput;
  v17 = *(fromCopy + 6);
  if (turnInput)
  {
    if (v17)
    {
      [(SIRINLUEXTERNALTurnInput *)turnInput mergeFrom:?];
    }
  }

  else if (v17)
  {
    [(SIRINLUINTERNALUAAP_PARSERUaaPParserRequest *)self setTurnInput:?];
  }

  if (*(fromCopy + 56))
  {
    self->_maxNumParses = *(fromCopy + 1);
    *&self->_has |= 1u;
  }

  v18 = *MEMORY[0x1E69E9840];
}

- (unint64_t)hash
{
  v3 = [(SIRINLUEXTERNALUUID *)self->_requestId hash];
  v4 = [(SIRINLUINTERNALTokenChain *)self->_tokenChain hash];
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

  return v4 ^ v3 ^ v5 ^ v6 ^ v7 ^ v8;
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  if (![equalCopy isMemberOfClass:objc_opt_class()])
  {
    goto LABEL_16;
  }

  requestId = self->_requestId;
  if (requestId | *(equalCopy + 4))
  {
    if (![(SIRINLUEXTERNALUUID *)requestId isEqual:?])
    {
      goto LABEL_16;
    }
  }

  tokenChain = self->_tokenChain;
  if (tokenChain | *(equalCopy + 5))
  {
    if (![(SIRINLUINTERNALTokenChain *)tokenChain isEqual:?])
    {
      goto LABEL_16;
    }
  }

  embeddings = self->_embeddings;
  if (embeddings | *(equalCopy + 2))
  {
    if (![(SIRINLUINTERNALNLv4EmbeddingTensor *)embeddings isEqual:?])
    {
      goto LABEL_16;
    }
  }

  matchingSpans = self->_matchingSpans;
  if (matchingSpans | *(equalCopy + 3))
  {
    if (![(NSMutableArray *)matchingSpans isEqual:?])
    {
      goto LABEL_16;
    }
  }

  turnInput = self->_turnInput;
  if (turnInput | *(equalCopy + 6))
  {
    if (![(SIRINLUEXTERNALTurnInput *)turnInput isEqual:?])
    {
      goto LABEL_16;
    }
  }

  v10 = (*(equalCopy + 56) & 1) == 0;
  if (*&self->_has)
  {
    if ((*(equalCopy + 56) & 1) != 0 && self->_maxNumParses == *(equalCopy + 1))
    {
      v10 = 1;
      goto LABEL_17;
    }

LABEL_16:
    v10 = 0;
  }

LABEL_17:

  return v10;
}

- (id)copyWithZone:(_NSZone *)zone
{
  v27 = *MEMORY[0x1E69E9840];
  v5 = [objc_msgSend(objc_opt_class() allocWithZone:{zone), "init"}];
  v6 = [(SIRINLUEXTERNALUUID *)self->_requestId copyWithZone:zone];
  v7 = *(v5 + 32);
  *(v5 + 32) = v6;

  v8 = [(SIRINLUINTERNALTokenChain *)self->_tokenChain copyWithZone:zone];
  v9 = *(v5 + 40);
  *(v5 + 40) = v8;

  v10 = [(SIRINLUINTERNALNLv4EmbeddingTensor *)self->_embeddings copyWithZone:zone];
  v11 = *(v5 + 16);
  *(v5 + 16) = v10;

  v24 = 0u;
  v25 = 0u;
  v22 = 0u;
  v23 = 0u;
  v12 = self->_matchingSpans;
  v13 = [(NSMutableArray *)v12 countByEnumeratingWithState:&v22 objects:v26 count:16];
  if (v13)
  {
    v14 = v13;
    v15 = *v23;
    do
    {
      v16 = 0;
      do
      {
        if (*v23 != v15)
        {
          objc_enumerationMutation(v12);
        }

        v17 = [*(*(&v22 + 1) + 8 * v16) copyWithZone:{zone, v22}];
        [v5 addMatchingSpans:v17];

        ++v16;
      }

      while (v14 != v16);
      v14 = [(NSMutableArray *)v12 countByEnumeratingWithState:&v22 objects:v26 count:16];
    }

    while (v14);
  }

  v18 = [(SIRINLUEXTERNALTurnInput *)self->_turnInput copyWithZone:zone];
  v19 = *(v5 + 48);
  *(v5 + 48) = v18;

  if (*&self->_has)
  {
    *(v5 + 8) = self->_maxNumParses;
    *(v5 + 56) |= 1u;
  }

  v20 = *MEMORY[0x1E69E9840];
  return v5;
}

- (void)copyTo:(id)to
{
  toCopy = to;
  if (self->_requestId)
  {
    [toCopy setRequestId:?];
  }

  if (self->_tokenChain)
  {
    [toCopy setTokenChain:?];
  }

  if (self->_embeddings)
  {
    [toCopy setEmbeddings:?];
  }

  if ([(SIRINLUINTERNALUAAP_PARSERUaaPParserRequest *)self matchingSpansCount])
  {
    [toCopy clearMatchingSpans];
    matchingSpansCount = [(SIRINLUINTERNALUAAP_PARSERUaaPParserRequest *)self matchingSpansCount];
    if (matchingSpansCount)
    {
      v5 = matchingSpansCount;
      for (i = 0; i != v5; ++i)
      {
        v7 = [(SIRINLUINTERNALUAAP_PARSERUaaPParserRequest *)self matchingSpansAtIndex:i];
        [toCopy addMatchingSpans:v7];
      }
    }
  }

  if (self->_turnInput)
  {
    [toCopy setTurnInput:?];
  }

  if (*&self->_has)
  {
    *(toCopy + 1) = self->_maxNumParses;
    *(toCopy + 56) |= 1u;
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

  if (self->_tokenChain)
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

  v12 = *MEMORY[0x1E69E9840];
}

- (id)dictionaryRepresentation
{
  v27 = *MEMORY[0x1E69E9840];
  dictionary = [MEMORY[0x1E695DF90] dictionary];
  requestId = self->_requestId;
  if (requestId)
  {
    dictionaryRepresentation = [(SIRINLUEXTERNALUUID *)requestId dictionaryRepresentation];
    [dictionary setObject:dictionaryRepresentation forKey:@"request_id"];
  }

  tokenChain = self->_tokenChain;
  if (tokenChain)
  {
    dictionaryRepresentation2 = [(SIRINLUINTERNALTokenChain *)tokenChain dictionaryRepresentation];
    [dictionary setObject:dictionaryRepresentation2 forKey:@"token_chain"];
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
    v22 = 0u;
    v23 = 0u;
    v24 = 0u;
    v25 = 0u;
    v11 = self->_matchingSpans;
    v12 = [(NSMutableArray *)v11 countByEnumeratingWithState:&v22 objects:v26 count:16];
    if (v12)
    {
      v13 = v12;
      v14 = *v23;
      do
      {
        for (i = 0; i != v13; ++i)
        {
          if (*v23 != v14)
          {
            objc_enumerationMutation(v11);
          }

          dictionaryRepresentation4 = [*(*(&v22 + 1) + 8 * i) dictionaryRepresentation];
          [v10 addObject:dictionaryRepresentation4];
        }

        v13 = [(NSMutableArray *)v11 countByEnumeratingWithState:&v22 objects:v26 count:16];
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

  v20 = *MEMORY[0x1E69E9840];

  return dictionary;
}

- (id)description
{
  v3 = MEMORY[0x1E696AEC0];
  v8.receiver = self;
  v8.super_class = SIRINLUINTERNALUAAP_PARSERUaaPParserRequest;
  v4 = [(SIRINLUINTERNALUAAP_PARSERUaaPParserRequest *)&v8 description];
  dictionaryRepresentation = [(SIRINLUINTERNALUAAP_PARSERUaaPParserRequest *)self dictionaryRepresentation];
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