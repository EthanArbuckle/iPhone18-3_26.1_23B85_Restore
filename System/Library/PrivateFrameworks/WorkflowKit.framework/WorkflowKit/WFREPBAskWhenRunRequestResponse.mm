@interface WFREPBAskWhenRunRequestResponse
- (BOOL)isEqual:(id)equal;
- (id)copyWithZone:(_NSZone *)zone;
- (id)description;
- (id)dictionaryRepresentation;
- (unint64_t)hash;
- (void)addInputtedStates:(id)states;
- (void)copyTo:(id)to;
- (void)mergeFrom:(id)from;
- (void)writeTo:(id)to;
@end

@implementation WFREPBAskWhenRunRequestResponse

- (void)mergeFrom:(id)from
{
  v18 = *MEMORY[0x1E69E9840];
  fromCopy = from;
  if (*(fromCopy + 3))
  {
    [(WFREPBAskWhenRunRequestResponse *)self setOriginatingRequestIdentifier:?];
  }

  v15 = 0u;
  v16 = 0u;
  v13 = 0u;
  v14 = 0u;
  v5 = *(fromCopy + 2);
  v6 = [v5 countByEnumeratingWithState:&v13 objects:v17 count:16];
  if (v6)
  {
    v7 = v6;
    v8 = *v14;
    do
    {
      for (i = 0; i != v7; ++i)
      {
        if (*v14 != v8)
        {
          objc_enumerationMutation(v5);
        }

        [(WFREPBAskWhenRunRequestResponse *)self addInputtedStates:*(*(&v13 + 1) + 8 * i), v13];
      }

      v7 = [v5 countByEnumeratingWithState:&v13 objects:v17 count:16];
    }

    while (v7);
  }

  error = self->_error;
  v11 = *(fromCopy + 1);
  if (error)
  {
    if (v11)
    {
      [(WFREPBError *)error mergeFrom:?];
    }
  }

  else if (v11)
  {
    [(WFREPBAskWhenRunRequestResponse *)self setError:?];
  }

  v12 = *MEMORY[0x1E69E9840];
}

- (unint64_t)hash
{
  v3 = [(NSString *)self->_originatingRequestIdentifier hash];
  v4 = [(NSMutableArray *)self->_inputtedStates hash]^ v3;
  return v4 ^ [(WFREPBError *)self->_error hash];
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  if ([equalCopy isMemberOfClass:objc_opt_class()] && ((originatingRequestIdentifier = self->_originatingRequestIdentifier, !(originatingRequestIdentifier | equalCopy[3])) || -[NSString isEqual:](originatingRequestIdentifier, "isEqual:")) && ((inputtedStates = self->_inputtedStates, !(inputtedStates | equalCopy[2])) || -[NSMutableArray isEqual:](inputtedStates, "isEqual:")))
  {
    error = self->_error;
    if (error | equalCopy[1])
    {
      v8 = [(WFREPBError *)error isEqual:?];
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
  v6 = [(NSString *)self->_originatingRequestIdentifier copyWithZone:zone];
  v7 = v5[3];
  v5[3] = v6;

  v20 = 0u;
  v21 = 0u;
  v18 = 0u;
  v19 = 0u;
  v8 = self->_inputtedStates;
  v9 = [(NSMutableArray *)v8 countByEnumeratingWithState:&v18 objects:v22 count:16];
  if (v9)
  {
    v10 = v9;
    v11 = *v19;
    do
    {
      v12 = 0;
      do
      {
        if (*v19 != v11)
        {
          objc_enumerationMutation(v8);
        }

        v13 = [*(*(&v18 + 1) + 8 * v12) copyWithZone:{zone, v18}];
        [v5 addInputtedStates:v13];

        ++v12;
      }

      while (v10 != v12);
      v10 = [(NSMutableArray *)v8 countByEnumeratingWithState:&v18 objects:v22 count:16];
    }

    while (v10);
  }

  v14 = [(WFREPBError *)self->_error copyWithZone:zone];
  v15 = v5[1];
  v5[1] = v14;

  v16 = *MEMORY[0x1E69E9840];
  return v5;
}

- (void)copyTo:(id)to
{
  toCopy = to;
  [toCopy setOriginatingRequestIdentifier:self->_originatingRequestIdentifier];
  if ([(WFREPBAskWhenRunRequestResponse *)self inputtedStatesCount])
  {
    [toCopy clearInputtedStates];
    inputtedStatesCount = [(WFREPBAskWhenRunRequestResponse *)self inputtedStatesCount];
    if (inputtedStatesCount)
    {
      v5 = inputtedStatesCount;
      for (i = 0; i != v5; ++i)
      {
        v7 = [(WFREPBAskWhenRunRequestResponse *)self inputtedStatesAtIndex:i];
        [toCopy addInputtedStates:v7];
      }
    }
  }

  if (self->_error)
  {
    [toCopy setError:?];
  }
}

- (void)writeTo:(id)to
{
  v18 = *MEMORY[0x1E69E9840];
  toCopy = to;
  if (!self->_originatingRequestIdentifier)
  {
    __assert_rtn("[WFREPBAskWhenRunRequestResponse writeTo:]", "WFREPBAskWhenRunRequestResponse.m", 154, "nil != self->_originatingRequestIdentifier");
  }

  v5 = toCopy;
  PBDataWriterWriteStringField();
  v15 = 0u;
  v16 = 0u;
  v13 = 0u;
  v14 = 0u;
  v6 = self->_inputtedStates;
  v7 = [(NSMutableArray *)v6 countByEnumeratingWithState:&v13 objects:v17 count:16];
  if (v7)
  {
    v8 = v7;
    v9 = *v14;
    do
    {
      v10 = 0;
      do
      {
        if (*v14 != v9)
        {
          objc_enumerationMutation(v6);
        }

        v11 = *(*(&v13 + 1) + 8 * v10);
        PBDataWriterWriteSubmessage();
        ++v10;
      }

      while (v8 != v10);
      v8 = [(NSMutableArray *)v6 countByEnumeratingWithState:&v13 objects:v17 count:16];
    }

    while (v8);
  }

  if (self->_error)
  {
    PBDataWriterWriteSubmessage();
  }

  v12 = *MEMORY[0x1E69E9840];
}

- (id)dictionaryRepresentation
{
  v22 = *MEMORY[0x1E69E9840];
  dictionary = [MEMORY[0x1E695DF90] dictionary];
  v4 = dictionary;
  originatingRequestIdentifier = self->_originatingRequestIdentifier;
  if (originatingRequestIdentifier)
  {
    [dictionary setObject:originatingRequestIdentifier forKey:@"originatingRequestIdentifier"];
  }

  if ([(NSMutableArray *)self->_inputtedStates count])
  {
    v6 = [objc_alloc(MEMORY[0x1E695DF70]) initWithCapacity:{-[NSMutableArray count](self->_inputtedStates, "count")}];
    v17 = 0u;
    v18 = 0u;
    v19 = 0u;
    v20 = 0u;
    v7 = self->_inputtedStates;
    v8 = [(NSMutableArray *)v7 countByEnumeratingWithState:&v17 objects:v21 count:16];
    if (v8)
    {
      v9 = v8;
      v10 = *v18;
      do
      {
        for (i = 0; i != v9; ++i)
        {
          if (*v18 != v10)
          {
            objc_enumerationMutation(v7);
          }

          dictionaryRepresentation = [*(*(&v17 + 1) + 8 * i) dictionaryRepresentation];
          [v6 addObject:dictionaryRepresentation];
        }

        v9 = [(NSMutableArray *)v7 countByEnumeratingWithState:&v17 objects:v21 count:16];
      }

      while (v9);
    }

    [v4 setObject:v6 forKey:@"inputtedStates"];
  }

  error = self->_error;
  if (error)
  {
    dictionaryRepresentation2 = [(WFREPBError *)error dictionaryRepresentation];
    [v4 setObject:dictionaryRepresentation2 forKey:@"error"];
  }

  v15 = *MEMORY[0x1E69E9840];

  return v4;
}

- (id)description
{
  v3 = MEMORY[0x1E696AEC0];
  v8.receiver = self;
  v8.super_class = WFREPBAskWhenRunRequestResponse;
  v4 = [(WFREPBAskWhenRunRequestResponse *)&v8 description];
  dictionaryRepresentation = [(WFREPBAskWhenRunRequestResponse *)self dictionaryRepresentation];
  v6 = [v3 stringWithFormat:@"%@ %@", v4, dictionaryRepresentation];

  return v6;
}

- (void)addInputtedStates:(id)states
{
  statesCopy = states;
  inputtedStates = self->_inputtedStates;
  v8 = statesCopy;
  if (!inputtedStates)
  {
    v6 = objc_alloc_init(MEMORY[0x1E695DF70]);
    v7 = self->_inputtedStates;
    self->_inputtedStates = v6;

    statesCopy = v8;
    inputtedStates = self->_inputtedStates;
  }

  [(NSMutableArray *)inputtedStates addObject:statesCopy];
}

@end