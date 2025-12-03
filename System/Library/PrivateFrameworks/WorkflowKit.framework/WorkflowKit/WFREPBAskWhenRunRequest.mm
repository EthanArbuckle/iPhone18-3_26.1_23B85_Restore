@interface WFREPBAskWhenRunRequest
- (BOOL)isEqual:(id)equal;
- (id)copyWithZone:(_NSZone *)zone;
- (id)description;
- (id)dictionaryRepresentation;
- (unint64_t)hash;
- (void)addParameterKeys:(id)keys;
- (void)addParameterKeysAndStates:(id)states;
- (void)addPossibleStates:(id)states;
- (void)copyTo:(id)to;
- (void)mergeFrom:(id)from;
- (void)writeTo:(id)to;
@end

@implementation WFREPBAskWhenRunRequest

- (void)mergeFrom:(id)from
{
  v36 = *MEMORY[0x1E69E9840];
  fromCopy = from;
  if (*(fromCopy + 3))
  {
    [(WFREPBAskWhenRunRequest *)self setAssociatedRunRequestIdentifier:?];
  }

  v31 = 0u;
  v32 = 0u;
  v29 = 0u;
  v30 = 0u;
  v5 = *(fromCopy + 4);
  v6 = [v5 countByEnumeratingWithState:&v29 objects:v35 count:16];
  if (v6)
  {
    v7 = v6;
    v8 = *v30;
    do
    {
      for (i = 0; i != v7; ++i)
      {
        if (*v30 != v8)
        {
          objc_enumerationMutation(v5);
        }

        [(WFREPBAskWhenRunRequest *)self addParameterKeys:*(*(&v29 + 1) + 8 * i)];
      }

      v7 = [v5 countByEnumeratingWithState:&v29 objects:v35 count:16];
    }

    while (v7);
  }

  v27 = 0u;
  v28 = 0u;
  v25 = 0u;
  v26 = 0u;
  v10 = *(fromCopy + 5);
  v11 = [v10 countByEnumeratingWithState:&v25 objects:v34 count:16];
  if (v11)
  {
    v12 = v11;
    v13 = *v26;
    do
    {
      for (j = 0; j != v12; ++j)
      {
        if (*v26 != v13)
        {
          objc_enumerationMutation(v10);
        }

        [(WFREPBAskWhenRunRequest *)self addParameterKeysAndStates:*(*(&v25 + 1) + 8 * j)];
      }

      v12 = [v10 countByEnumeratingWithState:&v25 objects:v34 count:16];
    }

    while (v12);
  }

  if (*(fromCopy + 1))
  {
    [(WFREPBAskWhenRunRequest *)self setActionIdentifier:?];
  }

  if (*(fromCopy + 2))
  {
    [(WFREPBAskWhenRunRequest *)self setActionSerializedParameters:?];
  }

  v23 = 0u;
  v24 = 0u;
  v21 = 0u;
  v22 = 0u;
  v15 = *(fromCopy + 6);
  v16 = [v15 countByEnumeratingWithState:&v21 objects:v33 count:16];
  if (v16)
  {
    v17 = v16;
    v18 = *v22;
    do
    {
      for (k = 0; k != v17; ++k)
      {
        if (*v22 != v18)
        {
          objc_enumerationMutation(v15);
        }

        [(WFREPBAskWhenRunRequest *)self addPossibleStates:*(*(&v21 + 1) + 8 * k), v21];
      }

      v17 = [v15 countByEnumeratingWithState:&v21 objects:v33 count:16];
    }

    while (v17);
  }

  v20 = *MEMORY[0x1E69E9840];
}

- (unint64_t)hash
{
  v3 = [(NSString *)self->_associatedRunRequestIdentifier hash];
  v4 = [(NSMutableArray *)self->_parameterKeys hash]^ v3;
  v5 = [(NSMutableArray *)self->_parameterKeysAndStates hash];
  v6 = v4 ^ v5 ^ [(NSString *)self->_actionIdentifier hash];
  v7 = [(NSData *)self->_actionSerializedParameters hash];
  return v6 ^ v7 ^ [(NSMutableArray *)self->_possibleStates hash];
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  if ([equalCopy isMemberOfClass:objc_opt_class()] && ((associatedRunRequestIdentifier = self->_associatedRunRequestIdentifier, !(associatedRunRequestIdentifier | equalCopy[3])) || -[NSString isEqual:](associatedRunRequestIdentifier, "isEqual:")) && ((parameterKeys = self->_parameterKeys, !(parameterKeys | equalCopy[4])) || -[NSMutableArray isEqual:](parameterKeys, "isEqual:")) && ((parameterKeysAndStates = self->_parameterKeysAndStates, !(parameterKeysAndStates | equalCopy[5])) || -[NSMutableArray isEqual:](parameterKeysAndStates, "isEqual:")) && ((actionIdentifier = self->_actionIdentifier, !(actionIdentifier | equalCopy[1])) || -[NSString isEqual:](actionIdentifier, "isEqual:")) && ((actionSerializedParameters = self->_actionSerializedParameters, !(actionSerializedParameters | equalCopy[2])) || -[NSData isEqual:](actionSerializedParameters, "isEqual:")))
  {
    possibleStates = self->_possibleStates;
    if (possibleStates | equalCopy[6])
    {
      v11 = [(NSMutableArray *)possibleStates isEqual:?];
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

- (id)copyWithZone:(_NSZone *)zone
{
  v47 = *MEMORY[0x1E69E9840];
  v5 = [objc_msgSend(objc_opt_class() allocWithZone:{zone), "init"}];
  v6 = [(NSString *)self->_associatedRunRequestIdentifier copyWithZone:zone];
  v7 = v5[3];
  v5[3] = v6;

  v42 = 0u;
  v43 = 0u;
  v40 = 0u;
  v41 = 0u;
  v8 = self->_parameterKeys;
  v9 = [(NSMutableArray *)v8 countByEnumeratingWithState:&v40 objects:v46 count:16];
  if (v9)
  {
    v10 = v9;
    v11 = *v41;
    do
    {
      v12 = 0;
      do
      {
        if (*v41 != v11)
        {
          objc_enumerationMutation(v8);
        }

        v13 = [*(*(&v40 + 1) + 8 * v12) copyWithZone:zone];
        [v5 addParameterKeys:v13];

        ++v12;
      }

      while (v10 != v12);
      v10 = [(NSMutableArray *)v8 countByEnumeratingWithState:&v40 objects:v46 count:16];
    }

    while (v10);
  }

  v38 = 0u;
  v39 = 0u;
  v36 = 0u;
  v37 = 0u;
  v14 = self->_parameterKeysAndStates;
  v15 = [(NSMutableArray *)v14 countByEnumeratingWithState:&v36 objects:v45 count:16];
  if (v15)
  {
    v16 = v15;
    v17 = *v37;
    do
    {
      v18 = 0;
      do
      {
        if (*v37 != v17)
        {
          objc_enumerationMutation(v14);
        }

        v19 = [*(*(&v36 + 1) + 8 * v18) copyWithZone:zone];
        [v5 addParameterKeysAndStates:v19];

        ++v18;
      }

      while (v16 != v18);
      v16 = [(NSMutableArray *)v14 countByEnumeratingWithState:&v36 objects:v45 count:16];
    }

    while (v16);
  }

  v20 = [(NSString *)self->_actionIdentifier copyWithZone:zone];
  v21 = v5[1];
  v5[1] = v20;

  v22 = [(NSData *)self->_actionSerializedParameters copyWithZone:zone];
  v23 = v5[2];
  v5[2] = v22;

  v34 = 0u;
  v35 = 0u;
  v32 = 0u;
  v33 = 0u;
  v24 = self->_possibleStates;
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

        v29 = [*(*(&v32 + 1) + 8 * v28) copyWithZone:{zone, v32}];
        [v5 addPossibleStates:v29];

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

- (void)copyTo:(id)to
{
  toCopy = to;
  [toCopy setAssociatedRunRequestIdentifier:self->_associatedRunRequestIdentifier];
  if ([(WFREPBAskWhenRunRequest *)self parameterKeysCount])
  {
    [toCopy clearParameterKeys];
    parameterKeysCount = [(WFREPBAskWhenRunRequest *)self parameterKeysCount];
    if (parameterKeysCount)
    {
      v5 = parameterKeysCount;
      for (i = 0; i != v5; ++i)
      {
        v7 = [(WFREPBAskWhenRunRequest *)self parameterKeysAtIndex:i];
        [toCopy addParameterKeys:v7];
      }
    }
  }

  if ([(WFREPBAskWhenRunRequest *)self parameterKeysAndStatesCount])
  {
    [toCopy clearParameterKeysAndStates];
    parameterKeysAndStatesCount = [(WFREPBAskWhenRunRequest *)self parameterKeysAndStatesCount];
    if (parameterKeysAndStatesCount)
    {
      v9 = parameterKeysAndStatesCount;
      for (j = 0; j != v9; ++j)
      {
        v11 = [(WFREPBAskWhenRunRequest *)self parameterKeysAndStatesAtIndex:j];
        [toCopy addParameterKeysAndStates:v11];
      }
    }
  }

  [toCopy setActionIdentifier:self->_actionIdentifier];
  if (self->_actionSerializedParameters)
  {
    [toCopy setActionSerializedParameters:?];
  }

  if ([(WFREPBAskWhenRunRequest *)self possibleStatesCount])
  {
    [toCopy clearPossibleStates];
    possibleStatesCount = [(WFREPBAskWhenRunRequest *)self possibleStatesCount];
    if (possibleStatesCount)
    {
      v13 = possibleStatesCount;
      for (k = 0; k != v13; ++k)
      {
        v15 = [(WFREPBAskWhenRunRequest *)self possibleStatesAtIndex:k];
        [toCopy addPossibleStates:v15];
      }
    }
  }
}

- (void)writeTo:(id)to
{
  v40 = *MEMORY[0x1E69E9840];
  toCopy = to;
  if (!self->_associatedRunRequestIdentifier)
  {
    __assert_rtn("[WFREPBAskWhenRunRequest writeTo:]", "WFREPBAskWhenRunRequest.m", 243, "nil != self->_associatedRunRequestIdentifier");
  }

  v5 = toCopy;
  PBDataWriterWriteStringField();
  v35 = 0u;
  v36 = 0u;
  v33 = 0u;
  v34 = 0u;
  v6 = self->_parameterKeys;
  v7 = [(NSMutableArray *)v6 countByEnumeratingWithState:&v33 objects:v39 count:16];
  if (v7)
  {
    v8 = v7;
    v9 = *v34;
    do
    {
      v10 = 0;
      do
      {
        if (*v34 != v9)
        {
          objc_enumerationMutation(v6);
        }

        v11 = *(*(&v33 + 1) + 8 * v10);
        PBDataWriterWriteStringField();
        ++v10;
      }

      while (v8 != v10);
      v8 = [(NSMutableArray *)v6 countByEnumeratingWithState:&v33 objects:v39 count:16];
    }

    while (v8);
  }

  v31 = 0u;
  v32 = 0u;
  v29 = 0u;
  v30 = 0u;
  v12 = self->_parameterKeysAndStates;
  v13 = [(NSMutableArray *)v12 countByEnumeratingWithState:&v29 objects:v38 count:16];
  if (v13)
  {
    v14 = v13;
    v15 = *v30;
    do
    {
      v16 = 0;
      do
      {
        if (*v30 != v15)
        {
          objc_enumerationMutation(v12);
        }

        v17 = *(*(&v29 + 1) + 8 * v16);
        PBDataWriterWriteSubmessage();
        ++v16;
      }

      while (v14 != v16);
      v14 = [(NSMutableArray *)v12 countByEnumeratingWithState:&v29 objects:v38 count:16];
    }

    while (v14);
  }

  if (!self->_actionIdentifier)
  {
    __assert_rtn("[WFREPBAskWhenRunRequest writeTo:]", "WFREPBAskWhenRunRequest.m", 262, "nil != self->_actionIdentifier");
  }

  PBDataWriterWriteStringField();
  if (self->_actionSerializedParameters)
  {
    PBDataWriterWriteDataField();
  }

  v27 = 0u;
  v28 = 0u;
  v25 = 0u;
  v26 = 0u;
  v18 = self->_possibleStates;
  v19 = [(NSMutableArray *)v18 countByEnumeratingWithState:&v25 objects:v37 count:16];
  if (v19)
  {
    v20 = v19;
    v21 = *v26;
    do
    {
      v22 = 0;
      do
      {
        if (*v26 != v21)
        {
          objc_enumerationMutation(v18);
        }

        v23 = *(*(&v25 + 1) + 8 * v22);
        PBDataWriterWriteSubmessage();
        ++v22;
      }

      while (v20 != v22);
      v20 = [(NSMutableArray *)v18 countByEnumeratingWithState:&v25 objects:v37 count:16];
    }

    while (v20);
  }

  v24 = *MEMORY[0x1E69E9840];
}

- (id)dictionaryRepresentation
{
  v35 = *MEMORY[0x1E69E9840];
  dictionary = [MEMORY[0x1E695DF90] dictionary];
  v4 = dictionary;
  associatedRunRequestIdentifier = self->_associatedRunRequestIdentifier;
  if (associatedRunRequestIdentifier)
  {
    [dictionary setObject:associatedRunRequestIdentifier forKey:@"associatedRunRequestIdentifier"];
  }

  parameterKeys = self->_parameterKeys;
  if (parameterKeys)
  {
    [v4 setObject:parameterKeys forKey:@"parameterKeys"];
  }

  if ([(NSMutableArray *)self->_parameterKeysAndStates count])
  {
    v7 = [objc_alloc(MEMORY[0x1E695DF70]) initWithCapacity:{-[NSMutableArray count](self->_parameterKeysAndStates, "count")}];
    v29 = 0u;
    v30 = 0u;
    v31 = 0u;
    v32 = 0u;
    v8 = self->_parameterKeysAndStates;
    v9 = [(NSMutableArray *)v8 countByEnumeratingWithState:&v29 objects:v34 count:16];
    if (v9)
    {
      v10 = v9;
      v11 = *v30;
      do
      {
        for (i = 0; i != v10; ++i)
        {
          if (*v30 != v11)
          {
            objc_enumerationMutation(v8);
          }

          dictionaryRepresentation = [*(*(&v29 + 1) + 8 * i) dictionaryRepresentation];
          [v7 addObject:dictionaryRepresentation];
        }

        v10 = [(NSMutableArray *)v8 countByEnumeratingWithState:&v29 objects:v34 count:16];
      }

      while (v10);
    }

    [v4 setObject:v7 forKey:@"parameterKeysAndStates"];
  }

  actionIdentifier = self->_actionIdentifier;
  if (actionIdentifier)
  {
    [v4 setObject:actionIdentifier forKey:@"actionIdentifier"];
  }

  actionSerializedParameters = self->_actionSerializedParameters;
  if (actionSerializedParameters)
  {
    [v4 setObject:actionSerializedParameters forKey:@"actionSerializedParameters"];
  }

  if ([(NSMutableArray *)self->_possibleStates count])
  {
    v16 = [objc_alloc(MEMORY[0x1E695DF70]) initWithCapacity:{-[NSMutableArray count](self->_possibleStates, "count")}];
    v25 = 0u;
    v26 = 0u;
    v27 = 0u;
    v28 = 0u;
    v17 = self->_possibleStates;
    v18 = [(NSMutableArray *)v17 countByEnumeratingWithState:&v25 objects:v33 count:16];
    if (v18)
    {
      v19 = v18;
      v20 = *v26;
      do
      {
        for (j = 0; j != v19; ++j)
        {
          if (*v26 != v20)
          {
            objc_enumerationMutation(v17);
          }

          dictionaryRepresentation2 = [*(*(&v25 + 1) + 8 * j) dictionaryRepresentation];
          [v16 addObject:dictionaryRepresentation2];
        }

        v19 = [(NSMutableArray *)v17 countByEnumeratingWithState:&v25 objects:v33 count:16];
      }

      while (v19);
    }

    [v4 setObject:v16 forKey:@"possibleStates"];
  }

  v23 = *MEMORY[0x1E69E9840];

  return v4;
}

- (id)description
{
  v3 = MEMORY[0x1E696AEC0];
  v8.receiver = self;
  v8.super_class = WFREPBAskWhenRunRequest;
  v4 = [(WFREPBAskWhenRunRequest *)&v8 description];
  dictionaryRepresentation = [(WFREPBAskWhenRunRequest *)self dictionaryRepresentation];
  v6 = [v3 stringWithFormat:@"%@ %@", v4, dictionaryRepresentation];

  return v6;
}

- (void)addPossibleStates:(id)states
{
  statesCopy = states;
  possibleStates = self->_possibleStates;
  v8 = statesCopy;
  if (!possibleStates)
  {
    v6 = objc_alloc_init(MEMORY[0x1E695DF70]);
    v7 = self->_possibleStates;
    self->_possibleStates = v6;

    statesCopy = v8;
    possibleStates = self->_possibleStates;
  }

  [(NSMutableArray *)possibleStates addObject:statesCopy];
}

- (void)addParameterKeysAndStates:(id)states
{
  statesCopy = states;
  parameterKeysAndStates = self->_parameterKeysAndStates;
  v8 = statesCopy;
  if (!parameterKeysAndStates)
  {
    v6 = objc_alloc_init(MEMORY[0x1E695DF70]);
    v7 = self->_parameterKeysAndStates;
    self->_parameterKeysAndStates = v6;

    statesCopy = v8;
    parameterKeysAndStates = self->_parameterKeysAndStates;
  }

  [(NSMutableArray *)parameterKeysAndStates addObject:statesCopy];
}

- (void)addParameterKeys:(id)keys
{
  keysCopy = keys;
  parameterKeys = self->_parameterKeys;
  v8 = keysCopy;
  if (!parameterKeys)
  {
    v6 = objc_alloc_init(MEMORY[0x1E695DF70]);
    v7 = self->_parameterKeys;
    self->_parameterKeys = v6;

    keysCopy = v8;
    parameterKeys = self->_parameterKeys;
  }

  [(NSMutableArray *)parameterKeys addObject:keysCopy];
}

@end