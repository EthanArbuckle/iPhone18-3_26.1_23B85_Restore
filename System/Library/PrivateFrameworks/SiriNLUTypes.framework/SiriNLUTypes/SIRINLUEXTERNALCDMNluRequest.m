@interface SIRINLUEXTERNALCDMNluRequest
- (BOOL)isEqual:(id)a3;
- (id)copyWithZone:(_NSZone *)a3;
- (id)description;
- (id)dictionaryRepresentation;
- (unint64_t)hash;
- (void)addPreviousTurnInputs:(id)a3;
- (void)copyTo:(id)a3;
- (void)mergeFrom:(id)a3;
- (void)writeTo:(id)a3;
@end

@implementation SIRINLUEXTERNALCDMNluRequest

- (void)mergeFrom:(id)a3
{
  v20 = *MEMORY[0x1E69E9840];
  v4 = a3;
  requestId = self->_requestId;
  v6 = *(v4 + 3);
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
  v8 = *(v4 + 1);
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
  v9 = *(v4 + 2);
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

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  if ([v4 isMemberOfClass:objc_opt_class()] && ((requestId = self->_requestId, !(requestId | v4[3])) || -[SIRINLUEXTERNALRequestID isEqual:](requestId, "isEqual:")) && ((currentTurnInput = self->_currentTurnInput, !(currentTurnInput | v4[1])) || -[SIRINLUEXTERNALTurnInput isEqual:](currentTurnInput, "isEqual:")))
  {
    previousTurnInputs = self->_previousTurnInputs;
    if (previousTurnInputs | v4[2])
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

- (id)copyWithZone:(_NSZone *)a3
{
  v23 = *MEMORY[0x1E69E9840];
  v5 = [objc_msgSend(objc_opt_class() allocWithZone:{a3), "init"}];
  v6 = [(SIRINLUEXTERNALRequestID *)self->_requestId copyWithZone:a3];
  v7 = v5[3];
  v5[3] = v6;

  v8 = [(SIRINLUEXTERNALTurnInput *)self->_currentTurnInput copyWithZone:a3];
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

        v15 = [*(*(&v18 + 1) + 8 * v14) copyWithZone:{a3, v18}];
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

- (void)copyTo:(id)a3
{
  v8 = a3;
  if (self->_requestId)
  {
    [v8 setRequestId:?];
  }

  if (self->_currentTurnInput)
  {
    [v8 setCurrentTurnInput:?];
  }

  if ([(SIRINLUEXTERNALCDMNluRequest *)self previousTurnInputsCount])
  {
    [v8 clearPreviousTurnInputs];
    v4 = [(SIRINLUEXTERNALCDMNluRequest *)self previousTurnInputsCount];
    if (v4)
    {
      v5 = v4;
      for (i = 0; i != v5; ++i)
      {
        v7 = [(SIRINLUEXTERNALCDMNluRequest *)self previousTurnInputsAtIndex:i];
        [v8 addPreviousTurnInputs:v7];
      }
    }
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
  v3 = [MEMORY[0x1E695DF90] dictionary];
  requestId = self->_requestId;
  if (requestId)
  {
    v5 = [(SIRINLUEXTERNALRequestID *)requestId dictionaryRepresentation];
    [v3 setObject:v5 forKey:@"request_id"];
  }

  currentTurnInput = self->_currentTurnInput;
  if (currentTurnInput)
  {
    v7 = [(SIRINLUEXTERNALTurnInput *)currentTurnInput dictionaryRepresentation];
    [v3 setObject:v7 forKey:@"current_turn_input"];
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

          v14 = [*(*(&v17 + 1) + 8 * i) dictionaryRepresentation];
          [v8 addObject:v14];
        }

        v11 = [(NSMutableArray *)v9 countByEnumeratingWithState:&v17 objects:v21 count:16];
      }

      while (v11);
    }

    [v3 setObject:v8 forKey:@"previous_turn_inputs"];
  }

  v15 = *MEMORY[0x1E69E9840];

  return v3;
}

- (id)description
{
  v3 = MEMORY[0x1E696AEC0];
  v8.receiver = self;
  v8.super_class = SIRINLUEXTERNALCDMNluRequest;
  v4 = [(SIRINLUEXTERNALCDMNluRequest *)&v8 description];
  v5 = [(SIRINLUEXTERNALCDMNluRequest *)self dictionaryRepresentation];
  v6 = [v3 stringWithFormat:@"%@ %@", v4, v5];

  return v6;
}

- (void)addPreviousTurnInputs:(id)a3
{
  v4 = a3;
  previousTurnInputs = self->_previousTurnInputs;
  v8 = v4;
  if (!previousTurnInputs)
  {
    v6 = objc_alloc_init(MEMORY[0x1E695DF70]);
    v7 = self->_previousTurnInputs;
    self->_previousTurnInputs = v6;

    v4 = v8;
    previousTurnInputs = self->_previousTurnInputs;
  }

  [(NSMutableArray *)previousTurnInputs addObject:v4];
}

@end