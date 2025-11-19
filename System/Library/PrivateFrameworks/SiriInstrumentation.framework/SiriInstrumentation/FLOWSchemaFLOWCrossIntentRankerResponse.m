@interface FLOWSchemaFLOWCrossIntentRankerResponse
- (BOOL)isEqual:(id)a3;
- (FLOWSchemaFLOWCrossIntentRankerResponse)initWithDictionary:(id)a3;
- (FLOWSchemaFLOWCrossIntentRankerResponse)initWithJSON:(id)a3;
- (NSData)jsonData;
- (id)dictionaryRepresentation;
- (id)suppressMessageUnderConditions;
- (void)addCrossDomainRankerScoreKeeper:(id)a3;
- (void)addCrossIntentRankerScoreKeeper:(id)a3;
- (void)writeTo:(id)a3;
@end

@implementation FLOWSchemaFLOWCrossIntentRankerResponse

- (FLOWSchemaFLOWCrossIntentRankerResponse)initWithDictionary:(id)a3
{
  v35 = *MEMORY[0x1E69E9840];
  v4 = a3;
  v32.receiver = self;
  v32.super_class = FLOWSchemaFLOWCrossIntentRankerResponse;
  v5 = [(FLOWSchemaFLOWCrossIntentRankerResponse *)&v32 init];
  if (v5)
  {
    v6 = [v4 objectForKeyedSubscript:@"crossDomainRankerScoreKeeper"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v30 = 0u;
      v31 = 0u;
      v28 = 0u;
      v29 = 0u;
      v7 = v6;
      v8 = [v7 countByEnumeratingWithState:&v28 objects:v34 count:16];
      if (v8)
      {
        v9 = v8;
        v10 = *v29;
        do
        {
          v11 = 0;
          do
          {
            if (*v29 != v10)
            {
              objc_enumerationMutation(v7);
            }

            v12 = *(*(&v28 + 1) + 8 * v11);
            objc_opt_class();
            if (objc_opt_isKindOfClass())
            {
              v13 = [v12 copy];
              [(FLOWSchemaFLOWCrossIntentRankerResponse *)v5 addCrossDomainRankerScoreKeeper:v13];
            }

            ++v11;
          }

          while (v9 != v11);
          v9 = [v7 countByEnumeratingWithState:&v28 objects:v34 count:16];
        }

        while (v9);
      }
    }

    v14 = [v4 objectForKeyedSubscript:@"crossIntentRankerScoreKeeper"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v26 = 0u;
      v27 = 0u;
      v24 = 0u;
      v25 = 0u;
      v15 = v14;
      v16 = [v15 countByEnumeratingWithState:&v24 objects:v33 count:16];
      if (v16)
      {
        v17 = v16;
        v18 = *v25;
        do
        {
          v19 = 0;
          do
          {
            if (*v25 != v18)
            {
              objc_enumerationMutation(v15);
            }

            v20 = *(*(&v24 + 1) + 8 * v19);
            objc_opt_class();
            if (objc_opt_isKindOfClass())
            {
              v21 = [v20 copy];
              [(FLOWSchemaFLOWCrossIntentRankerResponse *)v5 addCrossIntentRankerScoreKeeper:v21];
            }

            ++v19;
          }

          while (v17 != v19);
          v17 = [v15 countByEnumeratingWithState:&v24 objects:v33 count:16];
        }

        while (v17);
      }
    }

    v22 = v5;
  }

  return v5;
}

- (FLOWSchemaFLOWCrossIntentRankerResponse)initWithJSON:(id)a3
{
  v7 = 0;
  v4 = [MEMORY[0x1E696ACB0] JSONObjectWithData:a3 options:0 error:&v7];
  if (v7 || (objc_opt_class(), (objc_opt_isKindOfClass() & 1) == 0))
  {
    v5 = 0;
  }

  else
  {
    self = [(FLOWSchemaFLOWCrossIntentRankerResponse *)self initWithDictionary:v4];
    v5 = self;
  }

  return v5;
}

- (NSData)jsonData
{
  v2 = [(FLOWSchemaFLOWCrossIntentRankerResponse *)self dictionaryRepresentation];
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
  v3 = [MEMORY[0x1E695DF90] dictionary];
  if (self->_crossDomainRankerScoreKeepers)
  {
    v4 = [(FLOWSchemaFLOWCrossIntentRankerResponse *)self crossDomainRankerScoreKeepers];
    v5 = [v4 copy];
    [v3 setObject:v5 forKeyedSubscript:@"crossDomainRankerScoreKeeper"];
  }

  if (self->_crossIntentRankerScoreKeepers)
  {
    v6 = [(FLOWSchemaFLOWCrossIntentRankerResponse *)self crossIntentRankerScoreKeepers];
    v7 = [v6 copy];
    [v3 setObject:v7 forKeyedSubscript:@"crossIntentRankerScoreKeeper"];
  }

  [(SISchemaInstrumentationMessage *)self willProduceDictionaryRepresentation:v3];

  return v3;
}

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  if (![v4 isMemberOfClass:objc_opt_class()])
  {
    goto LABEL_12;
  }

  v5 = [(FLOWSchemaFLOWCrossIntentRankerResponse *)self crossDomainRankerScoreKeepers];
  v6 = [v4 crossDomainRankerScoreKeepers];
  if ((v5 != 0) == (v6 == 0))
  {
    goto LABEL_11;
  }

  v7 = [(FLOWSchemaFLOWCrossIntentRankerResponse *)self crossDomainRankerScoreKeepers];
  if (v7)
  {
    v8 = v7;
    v9 = [(FLOWSchemaFLOWCrossIntentRankerResponse *)self crossDomainRankerScoreKeepers];
    v10 = [v4 crossDomainRankerScoreKeepers];
    v11 = [v9 isEqual:v10];

    if (!v11)
    {
      goto LABEL_12;
    }
  }

  else
  {
  }

  v5 = [(FLOWSchemaFLOWCrossIntentRankerResponse *)self crossIntentRankerScoreKeepers];
  v6 = [v4 crossIntentRankerScoreKeepers];
  if ((v5 != 0) != (v6 == 0))
  {
    v12 = [(FLOWSchemaFLOWCrossIntentRankerResponse *)self crossIntentRankerScoreKeepers];
    if (!v12)
    {

LABEL_15:
      v17 = 1;
      goto LABEL_13;
    }

    v13 = v12;
    v14 = [(FLOWSchemaFLOWCrossIntentRankerResponse *)self crossIntentRankerScoreKeepers];
    v15 = [v4 crossIntentRankerScoreKeepers];
    v16 = [v14 isEqual:v15];

    if (v16)
    {
      goto LABEL_15;
    }
  }

  else
  {
LABEL_11:
  }

LABEL_12:
  v17 = 0;
LABEL_13:

  return v17;
}

- (void)writeTo:(id)a3
{
  v25 = *MEMORY[0x1E69E9840];
  v4 = a3;
  v19 = 0u;
  v20 = 0u;
  v21 = 0u;
  v22 = 0u;
  v5 = self->_crossDomainRankerScoreKeepers;
  v6 = [(NSArray *)v5 countByEnumeratingWithState:&v19 objects:v24 count:16];
  if (v6)
  {
    v7 = v6;
    v8 = *v20;
    do
    {
      v9 = 0;
      do
      {
        if (*v20 != v8)
        {
          objc_enumerationMutation(v5);
        }

        PBDataWriterWriteStringField();
        ++v9;
      }

      while (v7 != v9);
      v7 = [(NSArray *)v5 countByEnumeratingWithState:&v19 objects:v24 count:16];
    }

    while (v7);
  }

  v17 = 0u;
  v18 = 0u;
  v15 = 0u;
  v16 = 0u;
  v10 = self->_crossIntentRankerScoreKeepers;
  v11 = [(NSArray *)v10 countByEnumeratingWithState:&v15 objects:v23 count:16];
  if (v11)
  {
    v12 = v11;
    v13 = *v16;
    do
    {
      v14 = 0;
      do
      {
        if (*v16 != v13)
        {
          objc_enumerationMutation(v10);
        }

        PBDataWriterWriteStringField();
        ++v14;
      }

      while (v12 != v14);
      v12 = [(NSArray *)v10 countByEnumeratingWithState:&v15 objects:v23 count:16];
    }

    while (v12);
  }
}

- (void)addCrossIntentRankerScoreKeeper:(id)a3
{
  v4 = a3;
  crossIntentRankerScoreKeepers = self->_crossIntentRankerScoreKeepers;
  v8 = v4;
  if (!crossIntentRankerScoreKeepers)
  {
    v6 = [MEMORY[0x1E695DF70] array];
    v7 = self->_crossIntentRankerScoreKeepers;
    self->_crossIntentRankerScoreKeepers = v6;

    v4 = v8;
    crossIntentRankerScoreKeepers = self->_crossIntentRankerScoreKeepers;
  }

  [(NSArray *)crossIntentRankerScoreKeepers addObject:v4];
}

- (void)addCrossDomainRankerScoreKeeper:(id)a3
{
  v4 = a3;
  crossDomainRankerScoreKeepers = self->_crossDomainRankerScoreKeepers;
  v8 = v4;
  if (!crossDomainRankerScoreKeepers)
  {
    v6 = [MEMORY[0x1E695DF70] array];
    v7 = self->_crossDomainRankerScoreKeepers;
    self->_crossDomainRankerScoreKeepers = v6;

    v4 = v8;
    crossDomainRankerScoreKeepers = self->_crossDomainRankerScoreKeepers;
  }

  [(NSArray *)crossDomainRankerScoreKeepers addObject:v4];
}

- (id)suppressMessageUnderConditions
{
  v2 = objc_alloc_init(SISensitiveConditionsSet);
  [(SISensitiveConditionsSet *)v2 addCondition:1];

  return v2;
}

@end