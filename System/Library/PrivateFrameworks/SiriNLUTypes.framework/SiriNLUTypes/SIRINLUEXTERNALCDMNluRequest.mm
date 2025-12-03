@interface SIRINLUEXTERNALCDMNluRequest
- (BOOL)isEqual:(id)equal;
- (id)copyWithZone:(_NSZone *)zone;
- (id)description;
- (id)dictionaryRepresentation;
- (unint64_t)hash;
- (void)addPreviousTurnInputs:(id)inputs;
- (void)copyTo:(id)to;
- (void)mergeFrom:(id)from;
- (void)writeTo:(id)to;
@end

@implementation SIRINLUEXTERNALCDMNluRequest

- (void)mergeFrom:(id)from
{
  v20 = *MEMORY[0x1E69E9840];
  fromCopy = from;
  requestId = self->_requestId;
  v6 = *(fromCopy + 3);
  if (requestId)
  {
    if (v6)
    {
      [(SIRINLUEXTERNALRequestID *)requestId mergeFrom:?];
    }
  }

  else if (v6)
  {
    [(SIRINLUEXTERNALCDMNluRequest *)self setRequestId:?];
  }

  currentTurnInput = self->_currentTurnInput;
  v8 = *(fromCopy + 1);
  if (currentTurnInput)
  {
    if (v8)
    {
      [(SIRINLUEXTERNALTurnInput *)currentTurnInput mergeFrom:?];
    }
  }

  else if (v8)
  {
    [(SIRINLUEXTERNALCDMNluRequest *)self setCurrentTurnInput:?];
  }

  v17 = 0u;
  v18 = 0u;
  v15 = 0u;
  v16 = 0u;
  v9 = *(fromCopy + 2);
  v10 = [v9 countByEnumeratingWithState:&v15 objects:v19 count:16];
  if (v10)
  {
    v11 = v10;
    v12 = *v16;
    do
    {
      for (i = 0; i != v11; ++i)
      {
        if (*v16 != v12)
        {
          objc_enumerationMutation(v9);
        }

        [(SIRINLUEXTERNALCDMNluRequest *)self addPreviousTurnInputs:*(*(&v15 + 1) + 8 * i), v15];
      }

      v11 = [v9 countByEnumeratingWithState:&v15 objects:v19 count:16];
    }

    while (v11);
  }

  v14 = *MEMORY[0x1E69E9840];
}

- (unint64_t)hash
{
  v3 = [(SIRINLUEXTERNALRequestID *)self->_requestId hash];
  v4 = [(SIRINLUEXTERNALTurnInput *)self->_currentTurnInput hash]^ v3;
  return v4 ^ [(NSMutableArray *)self->_previousTurnInputs hash];
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  if ([equalCopy isMemberOfClass:objc_opt_class()] && ((requestId = self->_requestId, !(requestId | equalCopy[3])) || -[SIRINLUEXTERNALRequestID isEqual:](requestId, "isEqual:")) && ((currentTurnInput = self->_currentTurnInput, !(currentTurnInput | equalCopy[1])) || -[SIRINLUEXTERNALTurnInput isEqual:](currentTurnInput, "isEqual:")))
  {
    previousTurnInputs = self->_previousTurnInputs;
    if (previousTurnInputs | equalCopy[2])
    {
      v8 = [(NSMutableArray *)previousTurnInputs isEqual:?];
    }

    else
    {
      v8 = 1;
    }
  }

  else
  {
    v8 = 0;
  }

  return v8;
}

- (id)copyWithZone:(_NSZone *)zone
{
  v23 = *MEMORY[0x1E69E9840];
  v5 = [objc_msgSend(objc_opt_class() allocWithZone:{zone), "init"}];
  v6 = [(SIRINLUEXTERNALRequestID *)self->_requestId copyWithZone:zone];
  v7 = v5[3];
  v5[3] = v6;

  v8 = [(SIRINLUEXTERNALTurnInput *)self->_currentTurnInput copyWithZone:zone];
  v9 = v5[1];
  v5[1] = v8;

  v20 = 0u;
  v21 = 0u;
  v18 = 0u;
  v19 = 0u;
  v10 = self->_previousTurnInputs;
  v11 = [(NSMutableArray *)v10 countByEnumeratingWithState:&v18 objects:v22 count:16];
  if (v11)
  {
    v12 = v11;
    v13 = *v19;
    do
    {
      v14 = 0;
      do
      {
        if (*v19 != v13)
        {
          objc_enumerationMutation(v10);
        }

        v15 = [*(*(&v18 + 1) + 8 * v14) copyWithZone:{zone, v18}];
        [v5 addPreviousTurnInputs:v15];

        ++v14;
      }

      while (v12 != v14);
      v12 = [(NSMutableArray *)v10 countByEnumeratingWithState:&v18 objects:v22 count:16];
    }

    while (v12);
  }

  v16 = *MEMORY[0x1E69E9840];
  return v5;
}

- (void)copyTo:(id)to
{
  toCopy = to;
  if (self->_requestId)
  {
    [toCopy setRequestId:?];
  }

  if (self->_currentTurnInput)
  {
    [toCopy setCurrentTurnInput:?];
  }

  if ([(SIRINLUEXTERNALCDMNluRequest *)self previousTurnInputsCount])
  {
    [toCopy clearPreviousTurnInputs];
    previousTurnInputsCount = [(SIRINLUEXTERNALCDMNluRequest *)self previousTurnInputsCount];
    if (previousTurnInputsCount)
    {
      v5 = previousTurnInputsCount;
      for (i = 0; i != v5; ++i)
      {
        v7 = [(SIRINLUEXTERNALCDMNluRequest *)self previousTurnInputsAtIndex:i];
        [toCopy addPreviousTurnInputs:v7];
      }
    }
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

  if (self->_currentTurnInput)
  {
    PBDataWriterWriteSubmessage();
  }

  v14 = 0u;
  v15 = 0u;
  v12 = 0u;
  v13 = 0u;
  v5 = self->_previousTurnInputs;
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

  v11 = *MEMORY[0x1E69E9840];
}

- (id)dictionaryRepresentation
{
  v22 = *MEMORY[0x1E69E9840];
  dictionary = [MEMORY[0x1E695DF90] dictionary];
  requestId = self->_requestId;
  if (requestId)
  {
    dictionaryRepresentation = [(SIRINLUEXTERNALRequestID *)requestId dictionaryRepresentation];
    [dictionary setObject:dictionaryRepresentation forKey:@"request_id"];
  }

  currentTurnInput = self->_currentTurnInput;
  if (currentTurnInput)
  {
    dictionaryRepresentation2 = [(SIRINLUEXTERNALTurnInput *)currentTurnInput dictionaryRepresentation];
    [dictionary setObject:dictionaryRepresentation2 forKey:@"current_turn_input"];
  }

  if ([(NSMutableArray *)self->_previousTurnInputs count])
  {
    v8 = [objc_alloc(MEMORY[0x1E695DF70]) initWithCapacity:{-[NSMutableArray count](self->_previousTurnInputs, "count")}];
    v17 = 0u;
    v18 = 0u;
    v19 = 0u;
    v20 = 0u;
    v9 = self->_previousTurnInputs;
    v10 = [(NSMutableArray *)v9 countByEnumeratingWithState:&v17 objects:v21 count:16];
    if (v10)
    {
      v11 = v10;
      v12 = *v18;
      do
      {
        for (i = 0; i != v11; ++i)
        {
          if (*v18 != v12)
          {
            objc_enumerationMutation(v9);
          }

          dictionaryRepresentation3 = [*(*(&v17 + 1) + 8 * i) dictionaryRepresentation];
          [v8 addObject:dictionaryRepresentation3];
        }

        v11 = [(NSMutableArray *)v9 countByEnumeratingWithState:&v17 objects:v21 count:16];
      }

      while (v11);
    }

    [dictionary setObject:v8 forKey:@"previous_turn_inputs"];
  }

  v15 = *MEMORY[0x1E69E9840];

  return dictionary;
}

- (id)description
{
  v3 = MEMORY[0x1E696AEC0];
  v8.receiver = self;
  v8.super_class = SIRINLUEXTERNALCDMNluRequest;
  v4 = [(SIRINLUEXTERNALCDMNluRequest *)&v8 description];
  dictionaryRepresentation = [(SIRINLUEXTERNALCDMNluRequest *)self dictionaryRepresentation];
  v6 = [v3 stringWithFormat:@"%@ %@", v4, dictionaryRepresentation];

  return v6;
}

- (void)addPreviousTurnInputs:(id)inputs
{
  inputsCopy = inputs;
  previousTurnInputs = self->_previousTurnInputs;
  v8 = inputsCopy;
  if (!previousTurnInputs)
  {
    v6 = objc_alloc_init(MEMORY[0x1E695DF70]);
    v7 = self->_previousTurnInputs;
    self->_previousTurnInputs = v6;

    inputsCopy = v8;
    previousTurnInputs = self->_previousTurnInputs;
  }

  [(NSMutableArray *)previousTurnInputs addObject:inputsCopy];
}

@end