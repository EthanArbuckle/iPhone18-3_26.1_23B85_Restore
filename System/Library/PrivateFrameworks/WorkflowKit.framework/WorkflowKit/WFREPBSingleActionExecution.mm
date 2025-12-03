@interface WFREPBSingleActionExecution
- (BOOL)isEqual:(id)equal;
- (id)copyWithZone:(_NSZone *)zone;
- (id)description;
- (id)dictionaryRepresentation;
- (unint64_t)hash;
- (void)addInput:(id)input;
- (void)addProcessedParameters:(id)parameters;
- (void)addVariables:(id)variables;
- (void)copyTo:(id)to;
- (void)mergeFrom:(id)from;
- (void)writeTo:(id)to;
@end

@implementation WFREPBSingleActionExecution

- (void)mergeFrom:(id)from
{
  v36 = *MEMORY[0x1E69E9840];
  fromCopy = from;
  if (*(fromCopy + 1))
  {
    [(WFREPBSingleActionExecution *)self setActionIdentifier:?];
  }

  v31 = 0u;
  v32 = 0u;
  v29 = 0u;
  v30 = 0u;
  v5 = *(fromCopy + 5);
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

        [(WFREPBSingleActionExecution *)self addVariables:*(*(&v29 + 1) + 8 * i)];
      }

      v7 = [v5 countByEnumeratingWithState:&v29 objects:v35 count:16];
    }

    while (v7);
  }

  v27 = 0u;
  v28 = 0u;
  v25 = 0u;
  v26 = 0u;
  v10 = *(fromCopy + 3);
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

        [(WFREPBSingleActionExecution *)self addProcessedParameters:*(*(&v25 + 1) + 8 * j)];
      }

      v12 = [v10 countByEnumeratingWithState:&v25 objects:v34 count:16];
    }

    while (v12);
  }

  if (*(fromCopy + 4))
  {
    [(WFREPBSingleActionExecution *)self setSerializedParameters:?];
  }

  v23 = 0u;
  v24 = 0u;
  v21 = 0u;
  v22 = 0u;
  v15 = *(fromCopy + 2);
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

        [(WFREPBSingleActionExecution *)self addInput:*(*(&v21 + 1) + 8 * k), v21];
      }

      v17 = [v15 countByEnumeratingWithState:&v21 objects:v33 count:16];
    }

    while (v17);
  }

  v20 = *MEMORY[0x1E69E9840];
}

- (unint64_t)hash
{
  v3 = [(NSString *)self->_actionIdentifier hash];
  v4 = [(NSMutableArray *)self->_variables hash]^ v3;
  v5 = [(NSMutableArray *)self->_processedParameters hash];
  v6 = v4 ^ v5 ^ [(NSData *)self->_serializedParameters hash];
  return v6 ^ [(NSMutableArray *)self->_inputs hash];
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  if ([equalCopy isMemberOfClass:objc_opt_class()] && ((actionIdentifier = self->_actionIdentifier, !(actionIdentifier | equalCopy[1])) || -[NSString isEqual:](actionIdentifier, "isEqual:")) && ((variables = self->_variables, !(variables | equalCopy[5])) || -[NSMutableArray isEqual:](variables, "isEqual:")) && ((processedParameters = self->_processedParameters, !(processedParameters | equalCopy[3])) || -[NSMutableArray isEqual:](processedParameters, "isEqual:")) && ((serializedParameters = self->_serializedParameters, !(serializedParameters | equalCopy[4])) || -[NSData isEqual:](serializedParameters, "isEqual:")))
  {
    inputs = self->_inputs;
    if (inputs | equalCopy[2])
    {
      v10 = [(NSMutableArray *)inputs isEqual:?];
    }

    else
    {
      v10 = 1;
    }
  }

  else
  {
    v10 = 0;
  }

  return v10;
}

- (id)copyWithZone:(_NSZone *)zone
{
  v45 = *MEMORY[0x1E69E9840];
  v5 = [objc_msgSend(objc_opt_class() allocWithZone:{zone), "init"}];
  v6 = [(NSString *)self->_actionIdentifier copyWithZone:zone];
  v7 = v5[1];
  v5[1] = v6;

  v40 = 0u;
  v41 = 0u;
  v38 = 0u;
  v39 = 0u;
  v8 = self->_variables;
  v9 = [(NSMutableArray *)v8 countByEnumeratingWithState:&v38 objects:v44 count:16];
  if (v9)
  {
    v10 = v9;
    v11 = *v39;
    do
    {
      v12 = 0;
      do
      {
        if (*v39 != v11)
        {
          objc_enumerationMutation(v8);
        }

        v13 = [*(*(&v38 + 1) + 8 * v12) copyWithZone:zone];
        [v5 addVariables:v13];

        ++v12;
      }

      while (v10 != v12);
      v10 = [(NSMutableArray *)v8 countByEnumeratingWithState:&v38 objects:v44 count:16];
    }

    while (v10);
  }

  v36 = 0u;
  v37 = 0u;
  v34 = 0u;
  v35 = 0u;
  v14 = self->_processedParameters;
  v15 = [(NSMutableArray *)v14 countByEnumeratingWithState:&v34 objects:v43 count:16];
  if (v15)
  {
    v16 = v15;
    v17 = *v35;
    do
    {
      v18 = 0;
      do
      {
        if (*v35 != v17)
        {
          objc_enumerationMutation(v14);
        }

        v19 = [*(*(&v34 + 1) + 8 * v18) copyWithZone:zone];
        [v5 addProcessedParameters:v19];

        ++v18;
      }

      while (v16 != v18);
      v16 = [(NSMutableArray *)v14 countByEnumeratingWithState:&v34 objects:v43 count:16];
    }

    while (v16);
  }

  v20 = [(NSData *)self->_serializedParameters copyWithZone:zone];
  v21 = v5[4];
  v5[4] = v20;

  v32 = 0u;
  v33 = 0u;
  v30 = 0u;
  v31 = 0u;
  v22 = self->_inputs;
  v23 = [(NSMutableArray *)v22 countByEnumeratingWithState:&v30 objects:v42 count:16];
  if (v23)
  {
    v24 = v23;
    v25 = *v31;
    do
    {
      v26 = 0;
      do
      {
        if (*v31 != v25)
        {
          objc_enumerationMutation(v22);
        }

        v27 = [*(*(&v30 + 1) + 8 * v26) copyWithZone:{zone, v30}];
        [v5 addInput:v27];

        ++v26;
      }

      while (v24 != v26);
      v24 = [(NSMutableArray *)v22 countByEnumeratingWithState:&v30 objects:v42 count:16];
    }

    while (v24);
  }

  v28 = *MEMORY[0x1E69E9840];
  return v5;
}

- (void)copyTo:(id)to
{
  toCopy = to;
  [toCopy setActionIdentifier:self->_actionIdentifier];
  if ([(WFREPBSingleActionExecution *)self variablesCount])
  {
    [toCopy clearVariables];
    variablesCount = [(WFREPBSingleActionExecution *)self variablesCount];
    if (variablesCount)
    {
      v5 = variablesCount;
      for (i = 0; i != v5; ++i)
      {
        v7 = [(WFREPBSingleActionExecution *)self variablesAtIndex:i];
        [toCopy addVariables:v7];
      }
    }
  }

  if ([(WFREPBSingleActionExecution *)self processedParametersCount])
  {
    [toCopy clearProcessedParameters];
    processedParametersCount = [(WFREPBSingleActionExecution *)self processedParametersCount];
    if (processedParametersCount)
    {
      v9 = processedParametersCount;
      for (j = 0; j != v9; ++j)
      {
        v11 = [(WFREPBSingleActionExecution *)self processedParametersAtIndex:j];
        [toCopy addProcessedParameters:v11];
      }
    }
  }

  if (self->_serializedParameters)
  {
    [toCopy setSerializedParameters:?];
  }

  if ([(WFREPBSingleActionExecution *)self inputsCount])
  {
    [toCopy clearInputs];
    inputsCount = [(WFREPBSingleActionExecution *)self inputsCount];
    if (inputsCount)
    {
      v13 = inputsCount;
      for (k = 0; k != v13; ++k)
      {
        v15 = [(WFREPBSingleActionExecution *)self inputAtIndex:k];
        [toCopy addInput:v15];
      }
    }
  }
}

- (void)writeTo:(id)to
{
  v40 = *MEMORY[0x1E69E9840];
  toCopy = to;
  if (!self->_actionIdentifier)
  {
    __assert_rtn("[WFREPBSingleActionExecution writeTo:]", "WFREPBSingleActionExecution.m", 247, "nil != self->_actionIdentifier");
  }

  v5 = toCopy;
  PBDataWriterWriteStringField();
  v35 = 0u;
  v36 = 0u;
  v33 = 0u;
  v34 = 0u;
  v6 = self->_variables;
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
        PBDataWriterWriteSubmessage();
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
  v12 = self->_processedParameters;
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

  if (self->_serializedParameters)
  {
    PBDataWriterWriteDataField();
  }

  v27 = 0u;
  v28 = 0u;
  v25 = 0u;
  v26 = 0u;
  v18 = self->_inputs;
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
  v45 = *MEMORY[0x1E69E9840];
  dictionary = [MEMORY[0x1E695DF90] dictionary];
  v4 = dictionary;
  actionIdentifier = self->_actionIdentifier;
  if (actionIdentifier)
  {
    [dictionary setObject:actionIdentifier forKey:@"actionIdentifier"];
  }

  if ([(NSMutableArray *)self->_variables count])
  {
    v6 = [objc_alloc(MEMORY[0x1E695DF70]) initWithCapacity:{-[NSMutableArray count](self->_variables, "count")}];
    v38 = 0u;
    v39 = 0u;
    v40 = 0u;
    v41 = 0u;
    v7 = self->_variables;
    v8 = [(NSMutableArray *)v7 countByEnumeratingWithState:&v38 objects:v44 count:16];
    if (v8)
    {
      v9 = v8;
      v10 = *v39;
      do
      {
        for (i = 0; i != v9; ++i)
        {
          if (*v39 != v10)
          {
            objc_enumerationMutation(v7);
          }

          dictionaryRepresentation = [*(*(&v38 + 1) + 8 * i) dictionaryRepresentation];
          [v6 addObject:dictionaryRepresentation];
        }

        v9 = [(NSMutableArray *)v7 countByEnumeratingWithState:&v38 objects:v44 count:16];
      }

      while (v9);
    }

    [v4 setObject:v6 forKey:@"variables"];
  }

  if ([(NSMutableArray *)self->_processedParameters count])
  {
    v13 = [objc_alloc(MEMORY[0x1E695DF70]) initWithCapacity:{-[NSMutableArray count](self->_processedParameters, "count")}];
    v34 = 0u;
    v35 = 0u;
    v36 = 0u;
    v37 = 0u;
    v14 = self->_processedParameters;
    v15 = [(NSMutableArray *)v14 countByEnumeratingWithState:&v34 objects:v43 count:16];
    if (v15)
    {
      v16 = v15;
      v17 = *v35;
      do
      {
        for (j = 0; j != v16; ++j)
        {
          if (*v35 != v17)
          {
            objc_enumerationMutation(v14);
          }

          dictionaryRepresentation2 = [*(*(&v34 + 1) + 8 * j) dictionaryRepresentation];
          [v13 addObject:dictionaryRepresentation2];
        }

        v16 = [(NSMutableArray *)v14 countByEnumeratingWithState:&v34 objects:v43 count:16];
      }

      while (v16);
    }

    [v4 setObject:v13 forKey:@"processedParameters"];
  }

  serializedParameters = self->_serializedParameters;
  if (serializedParameters)
  {
    [v4 setObject:serializedParameters forKey:@"serializedParameters"];
  }

  if ([(NSMutableArray *)self->_inputs count])
  {
    v21 = [objc_alloc(MEMORY[0x1E695DF70]) initWithCapacity:{-[NSMutableArray count](self->_inputs, "count")}];
    v30 = 0u;
    v31 = 0u;
    v32 = 0u;
    v33 = 0u;
    v22 = self->_inputs;
    v23 = [(NSMutableArray *)v22 countByEnumeratingWithState:&v30 objects:v42 count:16];
    if (v23)
    {
      v24 = v23;
      v25 = *v31;
      do
      {
        for (k = 0; k != v24; ++k)
        {
          if (*v31 != v25)
          {
            objc_enumerationMutation(v22);
          }

          dictionaryRepresentation3 = [*(*(&v30 + 1) + 8 * k) dictionaryRepresentation];
          [v21 addObject:dictionaryRepresentation3];
        }

        v24 = [(NSMutableArray *)v22 countByEnumeratingWithState:&v30 objects:v42 count:16];
      }

      while (v24);
    }

    [v4 setObject:v21 forKey:@"input"];
  }

  v28 = *MEMORY[0x1E69E9840];

  return v4;
}

- (id)description
{
  v3 = MEMORY[0x1E696AEC0];
  v8.receiver = self;
  v8.super_class = WFREPBSingleActionExecution;
  v4 = [(WFREPBSingleActionExecution *)&v8 description];
  dictionaryRepresentation = [(WFREPBSingleActionExecution *)self dictionaryRepresentation];
  v6 = [v3 stringWithFormat:@"%@ %@", v4, dictionaryRepresentation];

  return v6;
}

- (void)addInput:(id)input
{
  inputCopy = input;
  inputs = self->_inputs;
  v8 = inputCopy;
  if (!inputs)
  {
    v6 = objc_alloc_init(MEMORY[0x1E695DF70]);
    v7 = self->_inputs;
    self->_inputs = v6;

    inputCopy = v8;
    inputs = self->_inputs;
  }

  [(NSMutableArray *)inputs addObject:inputCopy];
}

- (void)addProcessedParameters:(id)parameters
{
  parametersCopy = parameters;
  processedParameters = self->_processedParameters;
  v8 = parametersCopy;
  if (!processedParameters)
  {
    v6 = objc_alloc_init(MEMORY[0x1E695DF70]);
    v7 = self->_processedParameters;
    self->_processedParameters = v6;

    parametersCopy = v8;
    processedParameters = self->_processedParameters;
  }

  [(NSMutableArray *)processedParameters addObject:parametersCopy];
}

- (void)addVariables:(id)variables
{
  variablesCopy = variables;
  variables = self->_variables;
  v8 = variablesCopy;
  if (!variables)
  {
    v6 = objc_alloc_init(MEMORY[0x1E695DF70]);
    v7 = self->_variables;
    self->_variables = v6;

    variablesCopy = v8;
    variables = self->_variables;
  }

  [(NSMutableArray *)variables addObject:variablesCopy];
}

@end