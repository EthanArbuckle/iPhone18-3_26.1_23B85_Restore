@interface SIRINLUINTERNALITFMITFMParserRequest
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

@implementation SIRINLUINTERNALITFMITFMParserRequest

- (void)mergeFrom:(id)from
{
  v28 = *MEMORY[0x1E69E9840];
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
    [(SIRINLUINTERNALITFMITFMParserRequest *)self setRequestId:?];
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
    [(SIRINLUINTERNALITFMITFMParserRequest *)self setTokenisedUtterance:?];
  }

  embeddings = self->_embeddings;
  v10 = *(fromCopy + 1);
  if (embeddings)
  {
    if (v10)
    {
      [(SIRINLUINTERNALNLv4EmbeddingTensor *)embeddings mergeFrom:?];
    }
  }

  else if (v10)
  {
    [(SIRINLUINTERNALITFMITFMParserRequest *)self setEmbeddings:?];
  }

  v25 = 0u;
  v26 = 0u;
  v23 = 0u;
  v24 = 0u;
  v11 = *(fromCopy + 2);
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

        [(SIRINLUINTERNALITFMITFMParserRequest *)self addMatchingSpans:*(*(&v23 + 1) + 8 * i), v23];
      }

      v13 = [v11 countByEnumeratingWithState:&v23 objects:v27 count:16];
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
    [(SIRINLUINTERNALITFMITFMParserRequest *)self setTurnInput:?];
  }

  parser = self->_parser;
  v19 = *(fromCopy + 4);
  if (parser)
  {
    if (v19)
    {
      [(SIRINLUEXTERNALParser *)parser mergeFrom:?];
    }
  }

  else if (v19)
  {
    [(SIRINLUINTERNALITFMITFMParserRequest *)self setParser:?];
  }

  nluRequestId = self->_nluRequestId;
  v21 = *(fromCopy + 3);
  if (nluRequestId)
  {
    if (v21)
    {
      [(SIRINLUEXTERNALRequestID *)nluRequestId mergeFrom:?];
    }
  }

  else if (v21)
  {
    [(SIRINLUINTERNALITFMITFMParserRequest *)self setNluRequestId:?];
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
  v8 = v7 ^ [(SIRINLUEXTERNALParser *)self->_parser hash];
  return v6 ^ v8 ^ [(SIRINLUEXTERNALRequestID *)self->_nluRequestId hash];
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  if ([equalCopy isMemberOfClass:objc_opt_class()] && ((requestId = self->_requestId, !(requestId | equalCopy[5])) || -[SIRINLUEXTERNALUUID isEqual:](requestId, "isEqual:")) && ((tokenisedUtterance = self->_tokenisedUtterance, !(tokenisedUtterance | equalCopy[6])) || -[SIRINLUINTERNALNLV4_PARSERTokenisation isEqual:](tokenisedUtterance, "isEqual:")) && ((embeddings = self->_embeddings, !(embeddings | equalCopy[1])) || -[SIRINLUINTERNALNLv4EmbeddingTensor isEqual:](embeddings, "isEqual:")) && ((matchingSpans = self->_matchingSpans, !(matchingSpans | equalCopy[2])) || -[NSMutableArray isEqual:](matchingSpans, "isEqual:")) && ((turnInput = self->_turnInput, !(turnInput | equalCopy[7])) || -[SIRINLUEXTERNALTurnInput isEqual:](turnInput, "isEqual:")) && ((parser = self->_parser, !(parser | equalCopy[4])) || -[SIRINLUEXTERNALParser isEqual:](parser, "isEqual:")))
  {
    nluRequestId = self->_nluRequestId;
    if (nluRequestId | equalCopy[3])
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

- (id)copyWithZone:(_NSZone *)zone
{
  v31 = *MEMORY[0x1E69E9840];
  v5 = [objc_msgSend(objc_opt_class() allocWithZone:{zone), "init"}];
  v6 = [(SIRINLUEXTERNALUUID *)self->_requestId copyWithZone:zone];
  v7 = v5[5];
  v5[5] = v6;

  v8 = [(SIRINLUINTERNALNLV4_PARSERTokenisation *)self->_tokenisedUtterance copyWithZone:zone];
  v9 = v5[6];
  v5[6] = v8;

  v10 = [(SIRINLUINTERNALNLv4EmbeddingTensor *)self->_embeddings copyWithZone:zone];
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

        v17 = [*(*(&v26 + 1) + 8 * v16) copyWithZone:{zone, v26}];
        [v5 addMatchingSpans:v17];

        ++v16;
      }

      while (v14 != v16);
      v14 = [(NSMutableArray *)v12 countByEnumeratingWithState:&v26 objects:v30 count:16];
    }

    while (v14);
  }

  v18 = [(SIRINLUEXTERNALTurnInput *)self->_turnInput copyWithZone:zone];
  v19 = v5[7];
  v5[7] = v18;

  v20 = [(SIRINLUEXTERNALParser *)self->_parser copyWithZone:zone];
  v21 = v5[4];
  v5[4] = v20;

  v22 = [(SIRINLUEXTERNALRequestID *)self->_nluRequestId copyWithZone:zone];
  v23 = v5[3];
  v5[3] = v22;

  v24 = *MEMORY[0x1E69E9840];
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

  if ([(SIRINLUINTERNALITFMITFMParserRequest *)self matchingSpansCount])
  {
    [toCopy clearMatchingSpans];
    matchingSpansCount = [(SIRINLUINTERNALITFMITFMParserRequest *)self matchingSpansCount];
    if (matchingSpansCount)
    {
      v5 = matchingSpansCount;
      for (i = 0; i != v5; ++i)
      {
        v7 = [(SIRINLUINTERNALITFMITFMParserRequest *)self matchingSpansAtIndex:i];
        [toCopy addMatchingSpans:v7];
      }
    }
  }

  if (self->_turnInput)
  {
    [toCopy setTurnInput:?];
  }

  v8 = toCopy;
  if (self->_parser)
  {
    [toCopy setParser:?];
    v8 = toCopy;
  }

  if (self->_nluRequestId)
  {
    [toCopy setNluRequestId:?];
    v8 = toCopy;
  }
}

- (void)writeTo:(id)to
{
  v17 = *MEMORY[0x1E69E9840];
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

  if (self->_parser)
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

          dictionaryRepresentation4 = [*(*(&v25 + 1) + 8 * i) dictionaryRepresentation];
          [v10 addObject:dictionaryRepresentation4];
        }

        v13 = [(NSMutableArray *)v11 countByEnumeratingWithState:&v25 objects:v29 count:16];
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

  parser = self->_parser;
  if (parser)
  {
    dictionaryRepresentation6 = [(SIRINLUEXTERNALParser *)parser dictionaryRepresentation];
    [dictionary setObject:dictionaryRepresentation6 forKey:@"parser"];
  }

  nluRequestId = self->_nluRequestId;
  if (nluRequestId)
  {
    dictionaryRepresentation7 = [(SIRINLUEXTERNALRequestID *)nluRequestId dictionaryRepresentation];
    [dictionary setObject:dictionaryRepresentation7 forKey:@"nlu_request_id"];
  }

  v23 = *MEMORY[0x1E69E9840];

  return dictionary;
}

- (id)description
{
  v3 = MEMORY[0x1E696AEC0];
  v8.receiver = self;
  v8.super_class = SIRINLUINTERNALITFMITFMParserRequest;
  v4 = [(SIRINLUINTERNALITFMITFMParserRequest *)&v8 description];
  dictionaryRepresentation = [(SIRINLUINTERNALITFMITFMParserRequest *)self dictionaryRepresentation];
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