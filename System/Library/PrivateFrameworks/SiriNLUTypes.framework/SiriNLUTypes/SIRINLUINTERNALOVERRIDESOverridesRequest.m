@interface SIRINLUINTERNALOVERRIDESOverridesRequest
- (BOOL)isEqual:(id)a3;
- (id)copyWithZone:(_NSZone *)a3;
- (id)description;
- (id)dictionaryRepresentation;
- (unint64_t)hash;
- (void)addInputs:(id)a3;
- (void)addMatchingSpans:(id)a3;
- (void)addSystemDialogActs:(id)a3;
- (void)copyTo:(id)a3;
- (void)mergeFrom:(id)a3;
- (void)writeTo:(id)a3;
@end

@implementation SIRINLUINTERNALOVERRIDESOverridesRequest

- (void)mergeFrom:(id)a3
{
  v40 = *MEMORY[0x1E69E9840];
  v4 = a3;
  if (*(v4 + 6))
  {
    [(SIRINLUINTERNALOVERRIDESOverridesRequest *)self setUtterance:?];
  }

  tokenChain = self->_tokenChain;
  v6 = *(v4 + 4);
  if (tokenChain)
  {
    if (v6)
    {
      [(SIRINLUINTERNALTokenChain *)tokenChain mergeFrom:?];
    }
  }

  else if (v6)
  {
    [(SIRINLUINTERNALOVERRIDESOverridesRequest *)self setTokenChain:?];
  }

  v35 = 0u;
  v36 = 0u;
  v33 = 0u;
  v34 = 0u;
  v7 = *(v4 + 2);
  v8 = [v7 countByEnumeratingWithState:&v33 objects:v39 count:16];
  if (v8)
  {
    v9 = v8;
    v10 = *v34;
    do
    {
      for (i = 0; i != v9; ++i)
      {
        if (*v34 != v10)
        {
          objc_enumerationMutation(v7);
        }

        [(SIRINLUINTERNALOVERRIDESOverridesRequest *)self addMatchingSpans:*(*(&v33 + 1) + 8 * i)];
      }

      v9 = [v7 countByEnumeratingWithState:&v33 objects:v39 count:16];
    }

    while (v9);
  }

  v31 = 0u;
  v32 = 0u;
  v29 = 0u;
  v30 = 0u;
  v12 = *(v4 + 3);
  v13 = [v12 countByEnumeratingWithState:&v29 objects:v38 count:16];
  if (v13)
  {
    v14 = v13;
    v15 = *v30;
    do
    {
      for (j = 0; j != v14; ++j)
      {
        if (*v30 != v15)
        {
          objc_enumerationMutation(v12);
        }

        [(SIRINLUINTERNALOVERRIDESOverridesRequest *)self addSystemDialogActs:*(*(&v29 + 1) + 8 * j)];
      }

      v14 = [v12 countByEnumeratingWithState:&v29 objects:v38 count:16];
    }

    while (v14);
  }

  turnContext = self->_turnContext;
  v18 = *(v4 + 5);
  if (turnContext)
  {
    if (v18)
    {
      [(SIRINLUEXTERNALTurnContext *)turnContext mergeFrom:?];
    }
  }

  else if (v18)
  {
    [(SIRINLUINTERNALOVERRIDESOverridesRequest *)self setTurnContext:?];
  }

  v27 = 0u;
  v28 = 0u;
  v25 = 0u;
  v26 = 0u;
  v19 = *(v4 + 1);
  v20 = [v19 countByEnumeratingWithState:&v25 objects:v37 count:16];
  if (v20)
  {
    v21 = v20;
    v22 = *v26;
    do
    {
      for (k = 0; k != v21; ++k)
      {
        if (*v26 != v22)
        {
          objc_enumerationMutation(v19);
        }

        [(SIRINLUINTERNALOVERRIDESOverridesRequest *)self addInputs:*(*(&v25 + 1) + 8 * k), v25];
      }

      v21 = [v19 countByEnumeratingWithState:&v25 objects:v37 count:16];
    }

    while (v21);
  }

  v24 = *MEMORY[0x1E69E9840];
}

- (unint64_t)hash
{
  v3 = [(NSString *)self->_utterance hash];
  v4 = [(SIRINLUINTERNALTokenChain *)self->_tokenChain hash]^ v3;
  v5 = [(NSMutableArray *)self->_matchingSpans hash];
  v6 = v4 ^ v5 ^ [(NSMutableArray *)self->_systemDialogActs hash];
  v7 = [(SIRINLUEXTERNALTurnContext *)self->_turnContext hash];
  return v6 ^ v7 ^ [(NSMutableArray *)self->_inputs hash];
}

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  if ([v4 isMemberOfClass:objc_opt_class()] && ((utterance = self->_utterance, !(utterance | v4[6])) || -[NSString isEqual:](utterance, "isEqual:")) && ((tokenChain = self->_tokenChain, !(tokenChain | v4[4])) || -[SIRINLUINTERNALTokenChain isEqual:](tokenChain, "isEqual:")) && ((matchingSpans = self->_matchingSpans, !(matchingSpans | v4[2])) || -[NSMutableArray isEqual:](matchingSpans, "isEqual:")) && ((systemDialogActs = self->_systemDialogActs, !(systemDialogActs | v4[3])) || -[NSMutableArray isEqual:](systemDialogActs, "isEqual:")) && ((turnContext = self->_turnContext, !(turnContext | v4[5])) || -[SIRINLUEXTERNALTurnContext isEqual:](turnContext, "isEqual:")))
  {
    inputs = self->_inputs;
    if (inputs | v4[1])
    {
      v11 = [(NSMutableArray *)inputs isEqual:?];
    }

    else
    {
      v11 = 1;
    }
  }

  else
  {
    v11 = 0;
  }

  return v11;
}

- (id)copyWithZone:(_NSZone *)a3
{
  v47 = *MEMORY[0x1E69E9840];
  v5 = [objc_msgSend(objc_opt_class() allocWithZone:{a3), "init"}];
  v6 = [(NSString *)self->_utterance copyWithZone:a3];
  v7 = v5[6];
  v5[6] = v6;

  v8 = [(SIRINLUINTERNALTokenChain *)self->_tokenChain copyWithZone:a3];
  v9 = v5[4];
  v5[4] = v8;

  v42 = 0u;
  v43 = 0u;
  v40 = 0u;
  v41 = 0u;
  v10 = self->_matchingSpans;
  v11 = [(NSMutableArray *)v10 countByEnumeratingWithState:&v40 objects:v46 count:16];
  if (v11)
  {
    v12 = v11;
    v13 = *v41;
    do
    {
      v14 = 0;
      do
      {
        if (*v41 != v13)
        {
          objc_enumerationMutation(v10);
        }

        v15 = [*(*(&v40 + 1) + 8 * v14) copyWithZone:a3];
        [v5 addMatchingSpans:v15];

        ++v14;
      }

      while (v12 != v14);
      v12 = [(NSMutableArray *)v10 countByEnumeratingWithState:&v40 objects:v46 count:16];
    }

    while (v12);
  }

  v38 = 0u;
  v39 = 0u;
  v36 = 0u;
  v37 = 0u;
  v16 = self->_systemDialogActs;
  v17 = [(NSMutableArray *)v16 countByEnumeratingWithState:&v36 objects:v45 count:16];
  if (v17)
  {
    v18 = v17;
    v19 = *v37;
    do
    {
      v20 = 0;
      do
      {
        if (*v37 != v19)
        {
          objc_enumerationMutation(v16);
        }

        v21 = [*(*(&v36 + 1) + 8 * v20) copyWithZone:a3];
        [v5 addSystemDialogActs:v21];

        ++v20;
      }

      while (v18 != v20);
      v18 = [(NSMutableArray *)v16 countByEnumeratingWithState:&v36 objects:v45 count:16];
    }

    while (v18);
  }

  v22 = [(SIRINLUEXTERNALTurnContext *)self->_turnContext copyWithZone:a3];
  v23 = v5[5];
  v5[5] = v22;

  v34 = 0u;
  v35 = 0u;
  v32 = 0u;
  v33 = 0u;
  v24 = self->_inputs;
  v25 = [(NSMutableArray *)v24 countByEnumeratingWithState:&v32 objects:v44 count:16];
  if (v25)
  {
    v26 = v25;
    v27 = *v33;
    do
    {
      v28 = 0;
      do
      {
        if (*v33 != v27)
        {
          objc_enumerationMutation(v24);
        }

        v29 = [*(*(&v32 + 1) + 8 * v28) copyWithZone:{a3, v32}];
        [v5 addInputs:v29];

        ++v28;
      }

      while (v26 != v28);
      v26 = [(NSMutableArray *)v24 countByEnumeratingWithState:&v32 objects:v44 count:16];
    }

    while (v26);
  }

  v30 = *MEMORY[0x1E69E9840];
  return v5;
}

- (void)copyTo:(id)a3
{
  v16 = a3;
  if (self->_utterance)
  {
    [v16 setUtterance:?];
  }

  if (self->_tokenChain)
  {
    [v16 setTokenChain:?];
  }

  if ([(SIRINLUINTERNALOVERRIDESOverridesRequest *)self matchingSpansCount])
  {
    [v16 clearMatchingSpans];
    v4 = [(SIRINLUINTERNALOVERRIDESOverridesRequest *)self matchingSpansCount];
    if (v4)
    {
      v5 = v4;
      for (i = 0; i != v5; ++i)
      {
        v7 = [(SIRINLUINTERNALOVERRIDESOverridesRequest *)self matchingSpansAtIndex:i];
        [v16 addMatchingSpans:v7];
      }
    }
  }

  if ([(SIRINLUINTERNALOVERRIDESOverridesRequest *)self systemDialogActsCount])
  {
    [v16 clearSystemDialogActs];
    v8 = [(SIRINLUINTERNALOVERRIDESOverridesRequest *)self systemDialogActsCount];
    if (v8)
    {
      v9 = v8;
      for (j = 0; j != v9; ++j)
      {
        v11 = [(SIRINLUINTERNALOVERRIDESOverridesRequest *)self systemDialogActsAtIndex:j];
        [v16 addSystemDialogActs:v11];
      }
    }
  }

  if (self->_turnContext)
  {
    [v16 setTurnContext:?];
  }

  if ([(SIRINLUINTERNALOVERRIDESOverridesRequest *)self inputsCount])
  {
    [v16 clearInputs];
    v12 = [(SIRINLUINTERNALOVERRIDESOverridesRequest *)self inputsCount];
    if (v12)
    {
      v13 = v12;
      for (k = 0; k != v13; ++k)
      {
        v15 = [(SIRINLUINTERNALOVERRIDESOverridesRequest *)self inputsAtIndex:k];
        [v16 addInputs:v15];
      }
    }
  }
}

- (void)writeTo:(id)a3
{
  v39 = *MEMORY[0x1E69E9840];
  v4 = a3;
  if (self->_utterance)
  {
    PBDataWriterWriteStringField();
  }

  if (self->_tokenChain)
  {
    PBDataWriterWriteSubmessage();
  }

  v34 = 0u;
  v35 = 0u;
  v32 = 0u;
  v33 = 0u;
  v5 = self->_matchingSpans;
  v6 = [(NSMutableArray *)v5 countByEnumeratingWithState:&v32 objects:v38 count:16];
  if (v6)
  {
    v7 = v6;
    v8 = *v33;
    do
    {
      v9 = 0;
      do
      {
        if (*v33 != v8)
        {
          objc_enumerationMutation(v5);
        }

        v10 = *(*(&v32 + 1) + 8 * v9);
        PBDataWriterWriteSubmessage();
        ++v9;
      }

      while (v7 != v9);
      v7 = [(NSMutableArray *)v5 countByEnumeratingWithState:&v32 objects:v38 count:16];
    }

    while (v7);
  }

  v30 = 0u;
  v31 = 0u;
  v28 = 0u;
  v29 = 0u;
  v11 = self->_systemDialogActs;
  v12 = [(NSMutableArray *)v11 countByEnumeratingWithState:&v28 objects:v37 count:16];
  if (v12)
  {
    v13 = v12;
    v14 = *v29;
    do
    {
      v15 = 0;
      do
      {
        if (*v29 != v14)
        {
          objc_enumerationMutation(v11);
        }

        v16 = *(*(&v28 + 1) + 8 * v15);
        PBDataWriterWriteSubmessage();
        ++v15;
      }

      while (v13 != v15);
      v13 = [(NSMutableArray *)v11 countByEnumeratingWithState:&v28 objects:v37 count:16];
    }

    while (v13);
  }

  if (self->_turnContext)
  {
    PBDataWriterWriteSubmessage();
  }

  v26 = 0u;
  v27 = 0u;
  v24 = 0u;
  v25 = 0u;
  v17 = self->_inputs;
  v18 = [(NSMutableArray *)v17 countByEnumeratingWithState:&v24 objects:v36 count:16];
  if (v18)
  {
    v19 = v18;
    v20 = *v25;
    do
    {
      v21 = 0;
      do
      {
        if (*v25 != v20)
        {
          objc_enumerationMutation(v17);
        }

        v22 = *(*(&v24 + 1) + 8 * v21);
        PBDataWriterWriteSubmessage();
        ++v21;
      }

      while (v19 != v21);
      v19 = [(NSMutableArray *)v17 countByEnumeratingWithState:&v24 objects:v36 count:16];
    }

    while (v19);
  }

  v23 = *MEMORY[0x1E69E9840];
}

- (id)dictionaryRepresentation
{
  v48 = *MEMORY[0x1E69E9840];
  v3 = [MEMORY[0x1E695DF90] dictionary];
  v4 = v3;
  utterance = self->_utterance;
  if (utterance)
  {
    [v3 setObject:utterance forKey:@"utterance"];
  }

  tokenChain = self->_tokenChain;
  if (tokenChain)
  {
    v7 = [(SIRINLUINTERNALTokenChain *)tokenChain dictionaryRepresentation];
    [v4 setObject:v7 forKey:@"token_chain"];
  }

  if ([(NSMutableArray *)self->_matchingSpans count])
  {
    v8 = [objc_alloc(MEMORY[0x1E695DF70]) initWithCapacity:{-[NSMutableArray count](self->_matchingSpans, "count")}];
    v41 = 0u;
    v42 = 0u;
    v43 = 0u;
    v44 = 0u;
    v9 = self->_matchingSpans;
    v10 = [(NSMutableArray *)v9 countByEnumeratingWithState:&v41 objects:v47 count:16];
    if (v10)
    {
      v11 = v10;
      v12 = *v42;
      do
      {
        for (i = 0; i != v11; ++i)
        {
          if (*v42 != v12)
          {
            objc_enumerationMutation(v9);
          }

          v14 = [*(*(&v41 + 1) + 8 * i) dictionaryRepresentation];
          [v8 addObject:v14];
        }

        v11 = [(NSMutableArray *)v9 countByEnumeratingWithState:&v41 objects:v47 count:16];
      }

      while (v11);
    }

    [v4 setObject:v8 forKey:@"matching_spans"];
  }

  if ([(NSMutableArray *)self->_systemDialogActs count])
  {
    v15 = [objc_alloc(MEMORY[0x1E695DF70]) initWithCapacity:{-[NSMutableArray count](self->_systemDialogActs, "count")}];
    v37 = 0u;
    v38 = 0u;
    v39 = 0u;
    v40 = 0u;
    v16 = self->_systemDialogActs;
    v17 = [(NSMutableArray *)v16 countByEnumeratingWithState:&v37 objects:v46 count:16];
    if (v17)
    {
      v18 = v17;
      v19 = *v38;
      do
      {
        for (j = 0; j != v18; ++j)
        {
          if (*v38 != v19)
          {
            objc_enumerationMutation(v16);
          }

          v21 = [*(*(&v37 + 1) + 8 * j) dictionaryRepresentation];
          [v15 addObject:v21];
        }

        v18 = [(NSMutableArray *)v16 countByEnumeratingWithState:&v37 objects:v46 count:16];
      }

      while (v18);
    }

    [v4 setObject:v15 forKey:@"system_dialog_acts"];
  }

  turnContext = self->_turnContext;
  if (turnContext)
  {
    v23 = [(SIRINLUEXTERNALTurnContext *)turnContext dictionaryRepresentation];
    [v4 setObject:v23 forKey:@"turn_context"];
  }

  if ([(NSMutableArray *)self->_inputs count])
  {
    v24 = [objc_alloc(MEMORY[0x1E695DF70]) initWithCapacity:{-[NSMutableArray count](self->_inputs, "count")}];
    v33 = 0u;
    v34 = 0u;
    v35 = 0u;
    v36 = 0u;
    v25 = self->_inputs;
    v26 = [(NSMutableArray *)v25 countByEnumeratingWithState:&v33 objects:v45 count:16];
    if (v26)
    {
      v27 = v26;
      v28 = *v34;
      do
      {
        for (k = 0; k != v27; ++k)
        {
          if (*v34 != v28)
          {
            objc_enumerationMutation(v25);
          }

          v30 = [*(*(&v33 + 1) + 8 * k) dictionaryRepresentation];
          [v24 addObject:v30];
        }

        v27 = [(NSMutableArray *)v25 countByEnumeratingWithState:&v33 objects:v45 count:16];
      }

      while (v27);
    }

    [v4 setObject:v24 forKey:@"inputs"];
  }

  v31 = *MEMORY[0x1E69E9840];

  return v4;
}

- (id)description
{
  v3 = MEMORY[0x1E696AEC0];
  v8.receiver = self;
  v8.super_class = SIRINLUINTERNALOVERRIDESOverridesRequest;
  v4 = [(SIRINLUINTERNALOVERRIDESOverridesRequest *)&v8 description];
  v5 = [(SIRINLUINTERNALOVERRIDESOverridesRequest *)self dictionaryRepresentation];
  v6 = [v3 stringWithFormat:@"%@ %@", v4, v5];

  return v6;
}

- (void)addInputs:(id)a3
{
  v4 = a3;
  inputs = self->_inputs;
  v8 = v4;
  if (!inputs)
  {
    v6 = objc_alloc_init(MEMORY[0x1E695DF70]);
    v7 = self->_inputs;
    self->_inputs = v6;

    v4 = v8;
    inputs = self->_inputs;
  }

  [(NSMutableArray *)inputs addObject:v4];
}

- (void)addSystemDialogActs:(id)a3
{
  v4 = a3;
  systemDialogActs = self->_systemDialogActs;
  v8 = v4;
  if (!systemDialogActs)
  {
    v6 = objc_alloc_init(MEMORY[0x1E695DF70]);
    v7 = self->_systemDialogActs;
    self->_systemDialogActs = v6;

    v4 = v8;
    systemDialogActs = self->_systemDialogActs;
  }

  [(NSMutableArray *)systemDialogActs addObject:v4];
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