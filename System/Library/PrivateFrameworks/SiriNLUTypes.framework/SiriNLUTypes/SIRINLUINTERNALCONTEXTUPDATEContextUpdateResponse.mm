@interface SIRINLUINTERNALCONTEXTUPDATEContextUpdateResponse
- (BOOL)isEqual:(id)equal;
- (id)copyWithZone:(_NSZone *)zone;
- (id)description;
- (id)dictionaryRepresentation;
- (void)addReformedTurnInputBundles:(id)bundles;
- (void)copyTo:(id)to;
- (void)mergeFrom:(id)from;
- (void)writeTo:(id)to;
@end

@implementation SIRINLUINTERNALCONTEXTUPDATEContextUpdateResponse

- (void)mergeFrom:(id)from
{
  v18 = *MEMORY[0x1E69E9840];
  fromCopy = from;
  v13 = 0u;
  v14 = 0u;
  v15 = 0u;
  v16 = 0u;
  v5 = fromCopy[1];
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

        [(SIRINLUINTERNALCONTEXTUPDATEContextUpdateResponse *)self addReformedTurnInputBundles:*(*(&v13 + 1) + 8 * i), v13];
      }

      v7 = [v5 countByEnumeratingWithState:&v13 objects:v17 count:16];
    }

    while (v7);
  }

  requestId = self->_requestId;
  v11 = fromCopy[2];
  if (requestId)
  {
    if (v11)
    {
      [(SIRINLUEXTERNALUUID *)requestId mergeFrom:?];
    }
  }

  else if (v11)
  {
    [(SIRINLUINTERNALCONTEXTUPDATEContextUpdateResponse *)self setRequestId:?];
  }

  v12 = *MEMORY[0x1E69E9840];
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  if ([equalCopy isMemberOfClass:objc_opt_class()] && ((reformedTurnInputBundles = self->_reformedTurnInputBundles, !(reformedTurnInputBundles | equalCopy[1])) || -[NSMutableArray isEqual:](reformedTurnInputBundles, "isEqual:")))
  {
    requestId = self->_requestId;
    if (requestId | equalCopy[2])
    {
      v7 = [(SIRINLUEXTERNALUUID *)requestId isEqual:?];
    }

    else
    {
      v7 = 1;
    }
  }

  else
  {
    v7 = 0;
  }

  return v7;
}

- (id)copyWithZone:(_NSZone *)zone
{
  v21 = *MEMORY[0x1E69E9840];
  v5 = [objc_msgSend(objc_opt_class() allocWithZone:{zone), "init"}];
  v16 = 0u;
  v17 = 0u;
  v18 = 0u;
  v19 = 0u;
  v6 = self->_reformedTurnInputBundles;
  v7 = [(NSMutableArray *)v6 countByEnumeratingWithState:&v16 objects:v20 count:16];
  if (v7)
  {
    v8 = v7;
    v9 = *v17;
    do
    {
      v10 = 0;
      do
      {
        if (*v17 != v9)
        {
          objc_enumerationMutation(v6);
        }

        v11 = [*(*(&v16 + 1) + 8 * v10) copyWithZone:{zone, v16}];
        [v5 addReformedTurnInputBundles:v11];

        ++v10;
      }

      while (v8 != v10);
      v8 = [(NSMutableArray *)v6 countByEnumeratingWithState:&v16 objects:v20 count:16];
    }

    while (v8);
  }

  v12 = [(SIRINLUEXTERNALUUID *)self->_requestId copyWithZone:zone];
  v13 = v5[2];
  v5[2] = v12;

  v14 = *MEMORY[0x1E69E9840];
  return v5;
}

- (void)copyTo:(id)to
{
  toCopy = to;
  if ([(SIRINLUINTERNALCONTEXTUPDATEContextUpdateResponse *)self reformedTurnInputBundlesCount])
  {
    [toCopy clearReformedTurnInputBundles];
    reformedTurnInputBundlesCount = [(SIRINLUINTERNALCONTEXTUPDATEContextUpdateResponse *)self reformedTurnInputBundlesCount];
    if (reformedTurnInputBundlesCount)
    {
      v5 = reformedTurnInputBundlesCount;
      for (i = 0; i != v5; ++i)
      {
        v7 = [(SIRINLUINTERNALCONTEXTUPDATEContextUpdateResponse *)self reformedTurnInputBundlesAtIndex:i];
        [toCopy addReformedTurnInputBundles:v7];
      }
    }
  }

  if (self->_requestId)
  {
    [toCopy setRequestId:?];
  }
}

- (void)writeTo:(id)to
{
  v17 = *MEMORY[0x1E69E9840];
  toCopy = to;
  v12 = 0u;
  v13 = 0u;
  v14 = 0u;
  v15 = 0u;
  v5 = self->_reformedTurnInputBundles;
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

  if (self->_requestId)
  {
    PBDataWriterWriteSubmessage();
  }

  v11 = *MEMORY[0x1E69E9840];
}

- (id)dictionaryRepresentation
{
  v20 = *MEMORY[0x1E69E9840];
  dictionary = [MEMORY[0x1E695DF90] dictionary];
  if ([(NSMutableArray *)self->_reformedTurnInputBundles count])
  {
    v4 = [objc_alloc(MEMORY[0x1E695DF70]) initWithCapacity:{-[NSMutableArray count](self->_reformedTurnInputBundles, "count")}];
    v15 = 0u;
    v16 = 0u;
    v17 = 0u;
    v18 = 0u;
    v5 = self->_reformedTurnInputBundles;
    v6 = [(NSMutableArray *)v5 countByEnumeratingWithState:&v15 objects:v19 count:16];
    if (v6)
    {
      v7 = v6;
      v8 = *v16;
      do
      {
        for (i = 0; i != v7; ++i)
        {
          if (*v16 != v8)
          {
            objc_enumerationMutation(v5);
          }

          dictionaryRepresentation = [*(*(&v15 + 1) + 8 * i) dictionaryRepresentation];
          [v4 addObject:dictionaryRepresentation];
        }

        v7 = [(NSMutableArray *)v5 countByEnumeratingWithState:&v15 objects:v19 count:16];
      }

      while (v7);
    }

    [dictionary setObject:v4 forKey:@"reformed_turn_input_bundles"];
  }

  requestId = self->_requestId;
  if (requestId)
  {
    dictionaryRepresentation2 = [(SIRINLUEXTERNALUUID *)requestId dictionaryRepresentation];
    [dictionary setObject:dictionaryRepresentation2 forKey:@"request_id"];
  }

  v13 = *MEMORY[0x1E69E9840];

  return dictionary;
}

- (id)description
{
  v3 = MEMORY[0x1E696AEC0];
  v8.receiver = self;
  v8.super_class = SIRINLUINTERNALCONTEXTUPDATEContextUpdateResponse;
  v4 = [(SIRINLUINTERNALCONTEXTUPDATEContextUpdateResponse *)&v8 description];
  dictionaryRepresentation = [(SIRINLUINTERNALCONTEXTUPDATEContextUpdateResponse *)self dictionaryRepresentation];
  v6 = [v3 stringWithFormat:@"%@ %@", v4, dictionaryRepresentation];

  return v6;
}

- (void)addReformedTurnInputBundles:(id)bundles
{
  bundlesCopy = bundles;
  reformedTurnInputBundles = self->_reformedTurnInputBundles;
  v8 = bundlesCopy;
  if (!reformedTurnInputBundles)
  {
    v6 = objc_alloc_init(MEMORY[0x1E695DF70]);
    v7 = self->_reformedTurnInputBundles;
    self->_reformedTurnInputBundles = v6;

    bundlesCopy = v8;
    reformedTurnInputBundles = self->_reformedTurnInputBundles;
  }

  [(NSMutableArray *)reformedTurnInputBundles addObject:bundlesCopy];
}

@end