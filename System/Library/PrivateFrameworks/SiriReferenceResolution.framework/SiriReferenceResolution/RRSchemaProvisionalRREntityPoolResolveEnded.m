@interface RRSchemaProvisionalRREntityPoolResolveEnded
- (BOOL)isEqual:(id)a3;
- (NSData)jsonData;
- (RRSchemaProvisionalRREntityPoolResolveEnded)initWithDictionary:(id)a3;
- (RRSchemaProvisionalRREntityPoolResolveEnded)initWithJSON:(id)a3;
- (id)dictionaryRepresentation;
- (unint64_t)hash;
- (void)addQueryResults:(id)a3;
- (void)writeTo:(id)a3;
@end

@implementation RRSchemaProvisionalRREntityPoolResolveEnded

- (RRSchemaProvisionalRREntityPoolResolveEnded)initWithDictionary:(id)a3
{
  v25 = *MEMORY[0x1E69E9840];
  v4 = a3;
  v23.receiver = self;
  v23.super_class = RRSchemaProvisionalRREntityPoolResolveEnded;
  v5 = [(RRSchemaProvisionalRREntityPoolResolveEnded *)&v23 init];
  if (v5)
  {
    v6 = [v4 objectForKeyedSubscript:@"queryResults"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v21 = 0u;
      v22 = 0u;
      v19 = 0u;
      v20 = 0u;
      v7 = v6;
      v8 = [v7 countByEnumeratingWithState:&v19 objects:v24 count:16];
      if (v8)
      {
        v9 = v8;
        v10 = *v20;
        do
        {
          v11 = 0;
          do
          {
            if (*v20 != v10)
            {
              objc_enumerationMutation(v7);
            }

            v12 = *(*(&v19 + 1) + 8 * v11);
            objc_opt_class();
            if (objc_opt_isKindOfClass())
            {
              v13 = [RRSchemaProvisionalRRAnnotatedEntity alloc];
              v14 = [(RRSchemaProvisionalRRAnnotatedEntity *)v13 initWithDictionary:v12, v19];
              [(RRSchemaProvisionalRREntityPoolResolveEnded *)v5 addQueryResults:v14];
            }

            ++v11;
          }

          while (v9 != v11);
          v9 = [v7 countByEnumeratingWithState:&v19 objects:v24 count:16];
        }

        while (v9);
      }
    }

    v15 = [v4 objectForKeyedSubscript:{@"outcome", v19}];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      -[RRSchemaProvisionalRREntityPoolResolveEnded setOutcome:](v5, "setOutcome:", [v15 intValue]);
    }

    v16 = v5;
  }

  v17 = *MEMORY[0x1E69E9840];
  return v5;
}

- (RRSchemaProvisionalRREntityPoolResolveEnded)initWithJSON:(id)a3
{
  v7 = 0;
  v4 = [MEMORY[0x1E696ACB0] JSONObjectWithData:a3 options:0 error:&v7];
  if (v7 || (objc_opt_class(), (objc_opt_isKindOfClass() & 1) == 0))
  {
    v5 = 0;
  }

  else
  {
    self = [(RRSchemaProvisionalRREntityPoolResolveEnded *)self initWithDictionary:v4];
    v5 = self;
  }

  return v5;
}

- (NSData)jsonData
{
  v2 = [(RRSchemaProvisionalRREntityPoolResolveEnded *)self dictionaryRepresentation];
  if ([MEMORY[0x1E696ACB0] isValidJSONObject:v2])
  {
    v3 = [MEMORY[0x1E696ACB0] dataWithJSONObject:v2 options:0 error:0];
  }

  else
  {
    v3 = 0;
  }

  return v3;
}

- (id)dictionaryRepresentation
{
  v21 = *MEMORY[0x1E69E9840];
  v3 = [MEMORY[0x1E695DF90] dictionary];
  if (*&self->_has)
  {
    v4 = [(RRSchemaProvisionalRREntityPoolResolveEnded *)self outcome]- 1;
    if (v4 > 3)
    {
      v5 = @"RRRESOLVEOUTCOME_UNKNOWN";
    }

    else
    {
      v5 = off_1E8651DA0[v4];
    }

    [v3 setObject:v5 forKeyedSubscript:@"outcome"];
  }

  if ([(NSArray *)self->_queryResults count])
  {
    v6 = [MEMORY[0x1E695DF70] array];
    v16 = 0u;
    v17 = 0u;
    v18 = 0u;
    v19 = 0u;
    v7 = self->_queryResults;
    v8 = [(NSArray *)v7 countByEnumeratingWithState:&v16 objects:v20 count:16];
    if (v8)
    {
      v9 = v8;
      v10 = *v17;
      do
      {
        for (i = 0; i != v9; ++i)
        {
          if (*v17 != v10)
          {
            objc_enumerationMutation(v7);
          }

          v12 = [*(*(&v16 + 1) + 8 * i) dictionaryRepresentation];
          if (v12)
          {
            [v6 addObject:v12];
          }

          else
          {
            v13 = [MEMORY[0x1E695DFB0] null];
            [v6 addObject:v13];
          }
        }

        v9 = [(NSArray *)v7 countByEnumeratingWithState:&v16 objects:v20 count:16];
      }

      while (v9);
    }

    [v3 setObject:v6 forKeyedSubscript:@"queryResults"];
  }

  [(RRSchemaProvisionalRREntityPoolResolveEnded *)self willProduceDictionaryRepresentation:v3, v16];
  v14 = *MEMORY[0x1E69E9840];

  return v3;
}

- (unint64_t)hash
{
  v3 = [(NSArray *)self->_queryResults hash];
  if (*&self->_has)
  {
    v4 = 2654435761 * self->_outcome;
  }

  else
  {
    v4 = 0;
  }

  return v4 ^ v3;
}

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  if (![v4 isMemberOfClass:objc_opt_class()])
  {
    goto LABEL_12;
  }

  v5 = [(RRSchemaProvisionalRREntityPoolResolveEnded *)self queryResults];
  v6 = [v4 queryResults];
  v7 = v6;
  if ((v5 != 0) == (v6 == 0))
  {

LABEL_12:
    v14 = 0;
    goto LABEL_13;
  }

  v8 = [(RRSchemaProvisionalRREntityPoolResolveEnded *)self queryResults];
  if (v8)
  {
    v9 = v8;
    v10 = [(RRSchemaProvisionalRREntityPoolResolveEnded *)self queryResults];
    v11 = [v4 queryResults];
    v12 = [v10 isEqual:v11];

    if (!v12)
    {
      goto LABEL_12;
    }
  }

  else
  {
  }

  if ((v4[20] & 1) != (*&self->_has & 1))
  {
    goto LABEL_12;
  }

  if (*&self->_has)
  {
    outcome = self->_outcome;
    if (outcome != [v4 outcome])
    {
      goto LABEL_12;
    }
  }

  v14 = 1;
LABEL_13:

  return v14;
}

- (void)writeTo:(id)a3
{
  v18 = *MEMORY[0x1E69E9840];
  v4 = a3;
  v13 = 0u;
  v14 = 0u;
  v15 = 0u;
  v16 = 0u;
  v5 = self->_queryResults;
  v6 = [(NSArray *)v5 countByEnumeratingWithState:&v13 objects:v17 count:16];
  if (v6)
  {
    v7 = v6;
    v8 = *v14;
    do
    {
      v9 = 0;
      do
      {
        if (*v14 != v8)
        {
          objc_enumerationMutation(v5);
        }

        v10 = *(*(&v13 + 1) + 8 * v9);
        PBDataWriterWriteSubmessage();
        ++v9;
      }

      while (v7 != v9);
      v7 = [(NSArray *)v5 countByEnumeratingWithState:&v13 objects:v17 count:16];
    }

    while (v7);
  }

  if (*&self->_has)
  {
    outcome = self->_outcome;
    PBDataWriterWriteInt32Field();
  }

  v12 = *MEMORY[0x1E69E9840];
}

- (void)addQueryResults:(id)a3
{
  v4 = a3;
  queryResults = self->_queryResults;
  v8 = v4;
  if (!queryResults)
  {
    v6 = [MEMORY[0x1E695DF70] array];
    v7 = self->_queryResults;
    self->_queryResults = v6;

    v4 = v8;
    queryResults = self->_queryResults;
  }

  [(NSArray *)queryResults addObject:v4];
}

@end