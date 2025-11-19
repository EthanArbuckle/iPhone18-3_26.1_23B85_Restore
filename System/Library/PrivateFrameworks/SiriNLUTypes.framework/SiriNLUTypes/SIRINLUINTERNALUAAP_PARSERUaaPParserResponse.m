@interface SIRINLUINTERNALUAAP_PARSERUaaPParserResponse
- (BOOL)isEqual:(id)a3;
- (id)copyWithZone:(_NSZone *)a3;
- (id)description;
- (id)dictionaryRepresentation;
- (void)addHypotheses:(id)a3;
- (void)copyTo:(id)a3;
- (void)mergeFrom:(id)a3;
- (void)writeTo:(id)a3;
@end

@implementation SIRINLUINTERNALUAAP_PARSERUaaPParserResponse

- (void)mergeFrom:(id)a3
{
  v18 = *MEMORY[0x1E69E9840];
  v4 = a3;
  requestId = self->_requestId;
  v6 = *(v4 + 2);
  if (requestId)
  {
    if (v6)
    {
      [(SIRINLUEXTERNALUUID *)requestId mergeFrom:?];
    }
  }

  else if (v6)
  {
    [(SIRINLUINTERNALUAAP_PARSERUaaPParserResponse *)self setRequestId:?];
  }

  v15 = 0u;
  v16 = 0u;
  v13 = 0u;
  v14 = 0u;
  v7 = *(v4 + 1);
  v8 = [v7 countByEnumeratingWithState:&v13 objects:v17 count:16];
  if (v8)
  {
    v9 = v8;
    v10 = *v14;
    do
    {
      for (i = 0; i != v9; ++i)
      {
        if (*v14 != v10)
        {
          objc_enumerationMutation(v7);
        }

        [(SIRINLUINTERNALUAAP_PARSERUaaPParserResponse *)self addHypotheses:*(*(&v13 + 1) + 8 * i), v13];
      }

      v9 = [v7 countByEnumeratingWithState:&v13 objects:v17 count:16];
    }

    while (v9);
  }

  v12 = *MEMORY[0x1E69E9840];
}

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  if ([v4 isMemberOfClass:objc_opt_class()] && ((requestId = self->_requestId, !(requestId | v4[2])) || -[SIRINLUEXTERNALUUID isEqual:](requestId, "isEqual:")))
  {
    hypotheses = self->_hypotheses;
    if (hypotheses | v4[1])
    {
      v7 = [(NSMutableArray *)hypotheses isEqual:?];
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

- (id)copyWithZone:(_NSZone *)a3
{
  v21 = *MEMORY[0x1E69E9840];
  v5 = [objc_msgSend(objc_opt_class() allocWithZone:{a3), "init"}];
  v6 = [(SIRINLUEXTERNALUUID *)self->_requestId copyWithZone:a3];
  v7 = v5[2];
  v5[2] = v6;

  v18 = 0u;
  v19 = 0u;
  v16 = 0u;
  v17 = 0u;
  v8 = self->_hypotheses;
  v9 = [(NSMutableArray *)v8 countByEnumeratingWithState:&v16 objects:v20 count:16];
  if (v9)
  {
    v10 = v9;
    v11 = *v17;
    do
    {
      v12 = 0;
      do
      {
        if (*v17 != v11)
        {
          objc_enumerationMutation(v8);
        }

        v13 = [*(*(&v16 + 1) + 8 * v12) copyWithZone:{a3, v16}];
        [v5 addHypotheses:v13];

        ++v12;
      }

      while (v10 != v12);
      v10 = [(NSMutableArray *)v8 countByEnumeratingWithState:&v16 objects:v20 count:16];
    }

    while (v10);
  }

  v14 = *MEMORY[0x1E69E9840];
  return v5;
}

- (void)copyTo:(id)a3
{
  v8 = a3;
  if (self->_requestId)
  {
    [v8 setRequestId:?];
  }

  if ([(SIRINLUINTERNALUAAP_PARSERUaaPParserResponse *)self hypothesesCount])
  {
    [v8 clearHypotheses];
    v4 = [(SIRINLUINTERNALUAAP_PARSERUaaPParserResponse *)self hypothesesCount];
    if (v4)
    {
      v5 = v4;
      for (i = 0; i != v5; ++i)
      {
        v7 = [(SIRINLUINTERNALUAAP_PARSERUaaPParserResponse *)self hypothesesAtIndex:i];
        [v8 addHypotheses:v7];
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

  v14 = 0u;
  v15 = 0u;
  v12 = 0u;
  v13 = 0u;
  v5 = self->_hypotheses;
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
  v20 = *MEMORY[0x1E69E9840];
  v3 = [MEMORY[0x1E695DF90] dictionary];
  requestId = self->_requestId;
  if (requestId)
  {
    v5 = [(SIRINLUEXTERNALUUID *)requestId dictionaryRepresentation];
    [v3 setObject:v5 forKey:@"request_id"];
  }

  if ([(NSMutableArray *)self->_hypotheses count])
  {
    v6 = [objc_alloc(MEMORY[0x1E695DF70]) initWithCapacity:{-[NSMutableArray count](self->_hypotheses, "count")}];
    v15 = 0u;
    v16 = 0u;
    v17 = 0u;
    v18 = 0u;
    v7 = self->_hypotheses;
    v8 = [(NSMutableArray *)v7 countByEnumeratingWithState:&v15 objects:v19 count:16];
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

          v12 = [*(*(&v15 + 1) + 8 * i) dictionaryRepresentation];
          [v6 addObject:v12];
        }

        v9 = [(NSMutableArray *)v7 countByEnumeratingWithState:&v15 objects:v19 count:16];
      }

      while (v9);
    }

    [v3 setObject:v6 forKey:@"hypotheses"];
  }

  v13 = *MEMORY[0x1E69E9840];

  return v3;
}

- (id)description
{
  v3 = MEMORY[0x1E696AEC0];
  v8.receiver = self;
  v8.super_class = SIRINLUINTERNALUAAP_PARSERUaaPParserResponse;
  v4 = [(SIRINLUINTERNALUAAP_PARSERUaaPParserResponse *)&v8 description];
  v5 = [(SIRINLUINTERNALUAAP_PARSERUaaPParserResponse *)self dictionaryRepresentation];
  v6 = [v3 stringWithFormat:@"%@ %@", v4, v5];

  return v6;
}

- (void)addHypotheses:(id)a3
{
  v4 = a3;
  hypotheses = self->_hypotheses;
  v8 = v4;
  if (!hypotheses)
  {
    v6 = objc_alloc_init(MEMORY[0x1E695DF70]);
    v7 = self->_hypotheses;
    self->_hypotheses = v6;

    v4 = v8;
    hypotheses = self->_hypotheses;
  }

  [(NSMutableArray *)hypotheses addObject:v4];
}

@end