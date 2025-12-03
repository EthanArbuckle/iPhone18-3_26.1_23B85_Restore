@interface SIRINLUINTERNALOVERRIDESTurnInputAndPreprocessing
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

@implementation SIRINLUINTERNALOVERRIDESTurnInputAndPreprocessing

- (void)mergeFrom:(id)from
{
  v20 = *MEMORY[0x1E69E9840];
  fromCopy = from;
  if (*(fromCopy + 4))
  {
    [(SIRINLUINTERNALOVERRIDESTurnInputAndPreprocessing *)self setUtterance:?];
  }

  tokenChain = self->_tokenChain;
  v6 = *(fromCopy + 2);
  if (tokenChain)
  {
    if (v6)
    {
      [(SIRINLUINTERNALTokenChain *)tokenChain mergeFrom:?];
    }
  }

  else if (v6)
  {
    [(SIRINLUINTERNALOVERRIDESTurnInputAndPreprocessing *)self setTokenChain:?];
  }

  v17 = 0u;
  v18 = 0u;
  v15 = 0u;
  v16 = 0u;
  v7 = *(fromCopy + 1);
  v8 = [v7 countByEnumeratingWithState:&v15 objects:v19 count:16];
  if (v8)
  {
    v9 = v8;
    v10 = *v16;
    do
    {
      for (i = 0; i != v9; ++i)
      {
        if (*v16 != v10)
        {
          objc_enumerationMutation(v7);
        }

        [(SIRINLUINTERNALOVERRIDESTurnInputAndPreprocessing *)self addMatchingSpans:*(*(&v15 + 1) + 8 * i), v15];
      }

      v9 = [v7 countByEnumeratingWithState:&v15 objects:v19 count:16];
    }

    while (v9);
  }

  turnInput = self->_turnInput;
  v13 = *(fromCopy + 3);
  if (turnInput)
  {
    if (v13)
    {
      [(SIRINLUEXTERNALTurnInput *)turnInput mergeFrom:?];
    }
  }

  else if (v13)
  {
    [(SIRINLUINTERNALOVERRIDESTurnInputAndPreprocessing *)self setTurnInput:?];
  }

  v14 = *MEMORY[0x1E69E9840];
}

- (unint64_t)hash
{
  v3 = [(NSString *)self->_utterance hash];
  v4 = [(SIRINLUINTERNALTokenChain *)self->_tokenChain hash]^ v3;
  v5 = [(NSMutableArray *)self->_matchingSpans hash];
  return v4 ^ v5 ^ [(SIRINLUEXTERNALTurnInput *)self->_turnInput hash];
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  if ([equalCopy isMemberOfClass:objc_opt_class()] && ((utterance = self->_utterance, !(utterance | equalCopy[4])) || -[NSString isEqual:](utterance, "isEqual:")) && ((tokenChain = self->_tokenChain, !(tokenChain | equalCopy[2])) || -[SIRINLUINTERNALTokenChain isEqual:](tokenChain, "isEqual:")) && ((matchingSpans = self->_matchingSpans, !(matchingSpans | equalCopy[1])) || -[NSMutableArray isEqual:](matchingSpans, "isEqual:")))
  {
    turnInput = self->_turnInput;
    if (turnInput | equalCopy[3])
    {
      v9 = [(SIRINLUEXTERNALTurnInput *)turnInput isEqual:?];
    }

    else
    {
      v9 = 1;
    }
  }

  else
  {
    v9 = 0;
  }

  return v9;
}

- (id)copyWithZone:(_NSZone *)zone
{
  v25 = *MEMORY[0x1E69E9840];
  v5 = [objc_msgSend(objc_opt_class() allocWithZone:{zone), "init"}];
  v6 = [(NSString *)self->_utterance copyWithZone:zone];
  v7 = v5[4];
  v5[4] = v6;

  v8 = [(SIRINLUINTERNALTokenChain *)self->_tokenChain copyWithZone:zone];
  v9 = v5[2];
  v5[2] = v8;

  v22 = 0u;
  v23 = 0u;
  v20 = 0u;
  v21 = 0u;
  v10 = self->_matchingSpans;
  v11 = [(NSMutableArray *)v10 countByEnumeratingWithState:&v20 objects:v24 count:16];
  if (v11)
  {
    v12 = v11;
    v13 = *v21;
    do
    {
      v14 = 0;
      do
      {
        if (*v21 != v13)
        {
          objc_enumerationMutation(v10);
        }

        v15 = [*(*(&v20 + 1) + 8 * v14) copyWithZone:{zone, v20}];
        [v5 addMatchingSpans:v15];

        ++v14;
      }

      while (v12 != v14);
      v12 = [(NSMutableArray *)v10 countByEnumeratingWithState:&v20 objects:v24 count:16];
    }

    while (v12);
  }

  v16 = [(SIRINLUEXTERNALTurnInput *)self->_turnInput copyWithZone:zone];
  v17 = v5[3];
  v5[3] = v16;

  v18 = *MEMORY[0x1E69E9840];
  return v5;
}

- (void)copyTo:(id)to
{
  toCopy = to;
  if (self->_utterance)
  {
    [toCopy setUtterance:?];
  }

  if (self->_tokenChain)
  {
    [toCopy setTokenChain:?];
  }

  if ([(SIRINLUINTERNALOVERRIDESTurnInputAndPreprocessing *)self matchingSpansCount])
  {
    [toCopy clearMatchingSpans];
    matchingSpansCount = [(SIRINLUINTERNALOVERRIDESTurnInputAndPreprocessing *)self matchingSpansCount];
    if (matchingSpansCount)
    {
      v5 = matchingSpansCount;
      for (i = 0; i != v5; ++i)
      {
        v7 = [(SIRINLUINTERNALOVERRIDESTurnInputAndPreprocessing *)self matchingSpansAtIndex:i];
        [toCopy addMatchingSpans:v7];
      }
    }
  }

  if (self->_turnInput)
  {
    [toCopy setTurnInput:?];
  }
}

- (void)writeTo:(id)to
{
  v17 = *MEMORY[0x1E69E9840];
  toCopy = to;
  if (self->_utterance)
  {
    PBDataWriterWriteStringField();
  }

  if (self->_tokenChain)
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

  v11 = *MEMORY[0x1E69E9840];
}

- (id)dictionaryRepresentation
{
  v24 = *MEMORY[0x1E69E9840];
  dictionary = [MEMORY[0x1E695DF90] dictionary];
  v4 = dictionary;
  utterance = self->_utterance;
  if (utterance)
  {
    [dictionary setObject:utterance forKey:@"utterance"];
  }

  tokenChain = self->_tokenChain;
  if (tokenChain)
  {
    dictionaryRepresentation = [(SIRINLUINTERNALTokenChain *)tokenChain dictionaryRepresentation];
    [v4 setObject:dictionaryRepresentation forKey:@"token_chain"];
  }

  if ([(NSMutableArray *)self->_matchingSpans count])
  {
    v8 = [objc_alloc(MEMORY[0x1E695DF70]) initWithCapacity:{-[NSMutableArray count](self->_matchingSpans, "count")}];
    v19 = 0u;
    v20 = 0u;
    v21 = 0u;
    v22 = 0u;
    v9 = self->_matchingSpans;
    v10 = [(NSMutableArray *)v9 countByEnumeratingWithState:&v19 objects:v23 count:16];
    if (v10)
    {
      v11 = v10;
      v12 = *v20;
      do
      {
        for (i = 0; i != v11; ++i)
        {
          if (*v20 != v12)
          {
            objc_enumerationMutation(v9);
          }

          dictionaryRepresentation2 = [*(*(&v19 + 1) + 8 * i) dictionaryRepresentation];
          [v8 addObject:dictionaryRepresentation2];
        }

        v11 = [(NSMutableArray *)v9 countByEnumeratingWithState:&v19 objects:v23 count:16];
      }

      while (v11);
    }

    [v4 setObject:v8 forKey:@"matching_spans"];
  }

  turnInput = self->_turnInput;
  if (turnInput)
  {
    dictionaryRepresentation3 = [(SIRINLUEXTERNALTurnInput *)turnInput dictionaryRepresentation];
    [v4 setObject:dictionaryRepresentation3 forKey:@"turn_input"];
  }

  v17 = *MEMORY[0x1E69E9840];

  return v4;
}

- (id)description
{
  v3 = MEMORY[0x1E696AEC0];
  v8.receiver = self;
  v8.super_class = SIRINLUINTERNALOVERRIDESTurnInputAndPreprocessing;
  v4 = [(SIRINLUINTERNALOVERRIDESTurnInputAndPreprocessing *)&v8 description];
  dictionaryRepresentation = [(SIRINLUINTERNALOVERRIDESTurnInputAndPreprocessing *)self dictionaryRepresentation];
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