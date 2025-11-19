@interface FLOWSchemaFLOWHomeAutomationContext
- (BOOL)isEqual:(id)a3;
- (FLOWSchemaFLOWHomeAutomationContext)initWithDictionary:(id)a3;
- (FLOWSchemaFLOWHomeAutomationContext)initWithJSON:(id)a3;
- (NSData)jsonData;
- (id)applySensitiveConditionsPolicy:(id)a3;
- (id)dictionaryRepresentation;
- (id)suppressMessageUnderConditions;
- (unint64_t)hash;
- (void)addHomeKitServiceResponse:(id)a3;
- (void)writeTo:(id)a3;
@end

@implementation FLOWSchemaFLOWHomeAutomationContext

- (FLOWSchemaFLOWHomeAutomationContext)initWithDictionary:(id)a3
{
  v27 = *MEMORY[0x1E69E9840];
  v4 = a3;
  v25.receiver = self;
  v25.super_class = FLOWSchemaFLOWHomeAutomationContext;
  v5 = [(FLOWSchemaFLOWHomeAutomationContext *)&v25 init];
  if (v5)
  {
    v6 = [v4 objectForKeyedSubscript:@"homeKitServiceResponse"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v23 = 0u;
      v24 = 0u;
      v21 = 0u;
      v22 = 0u;
      v7 = v6;
      v8 = [v7 countByEnumeratingWithState:&v21 objects:v26 count:16];
      if (v8)
      {
        v9 = v8;
        v10 = *v22;
        do
        {
          v11 = 0;
          do
          {
            if (*v22 != v10)
            {
              objc_enumerationMutation(v7);
            }

            v12 = *(*(&v21 + 1) + 8 * v11);
            objc_opt_class();
            if (objc_opt_isKindOfClass())
            {
              v13 = [FLOWSchemaFLOWHomeKitServiceResponse alloc];
              v14 = [(FLOWSchemaFLOWHomeKitServiceResponse *)v13 initWithDictionary:v12, v21];
              [(FLOWSchemaFLOWHomeAutomationContext *)v5 addHomeKitServiceResponse:v14];
            }

            ++v11;
          }

          while (v9 != v11);
          v9 = [v7 countByEnumeratingWithState:&v21 objects:v26 count:16];
        }

        while (v9);
      }
    }

    v15 = [v4 objectForKeyedSubscript:{@"homeContext", v21}];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v16 = [[FLOWSchemaFLOWHomeContext alloc] initWithDictionary:v15];
      [(FLOWSchemaFLOWHomeAutomationContext *)v5 setHomeContext:v16];
    }

    v17 = [v4 objectForKeyedSubscript:@"homeAutomationCommand"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v18 = [[FLOWSchemaFLOWHomeAutomationCommand alloc] initWithDictionary:v17];
      [(FLOWSchemaFLOWHomeAutomationContext *)v5 setHomeAutomationCommand:v18];
    }

    v19 = v5;
  }

  return v5;
}

- (FLOWSchemaFLOWHomeAutomationContext)initWithJSON:(id)a3
{
  v7 = 0;
  v4 = [MEMORY[0x1E696ACB0] JSONObjectWithData:a3 options:0 error:&v7];
  if (v7 || (objc_opt_class(), (objc_opt_isKindOfClass() & 1) == 0))
  {
    v5 = 0;
  }

  else
  {
    self = [(FLOWSchemaFLOWHomeAutomationContext *)self initWithDictionary:v4];
    v5 = self;
  }

  return v5;
}

- (NSData)jsonData
{
  v2 = [(FLOWSchemaFLOWHomeAutomationContext *)self dictionaryRepresentation];
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
  v24 = *MEMORY[0x1E69E9840];
  v3 = [MEMORY[0x1E695DF90] dictionary];
  if (self->_homeAutomationCommand)
  {
    v4 = [(FLOWSchemaFLOWHomeAutomationContext *)self homeAutomationCommand];
    v5 = [v4 dictionaryRepresentation];
    if (v5)
    {
      [v3 setObject:v5 forKeyedSubscript:@"homeAutomationCommand"];
    }

    else
    {
      v6 = [MEMORY[0x1E695DFB0] null];
      [v3 setObject:v6 forKeyedSubscript:@"homeAutomationCommand"];
    }
  }

  if (self->_homeContext)
  {
    v7 = [(FLOWSchemaFLOWHomeAutomationContext *)self homeContext];
    v8 = [v7 dictionaryRepresentation];
    if (v8)
    {
      [v3 setObject:v8 forKeyedSubscript:@"homeContext"];
    }

    else
    {
      v9 = [MEMORY[0x1E695DFB0] null];
      [v3 setObject:v9 forKeyedSubscript:@"homeContext"];
    }
  }

  if ([(NSArray *)self->_homeKitServiceResponses count])
  {
    v10 = [MEMORY[0x1E695DF70] array];
    v19 = 0u;
    v20 = 0u;
    v21 = 0u;
    v22 = 0u;
    v11 = self->_homeKitServiceResponses;
    v12 = [(NSArray *)v11 countByEnumeratingWithState:&v19 objects:v23 count:16];
    if (v12)
    {
      v13 = v12;
      v14 = *v20;
      do
      {
        for (i = 0; i != v13; ++i)
        {
          if (*v20 != v14)
          {
            objc_enumerationMutation(v11);
          }

          v16 = [*(*(&v19 + 1) + 8 * i) dictionaryRepresentation];
          if (v16)
          {
            [v10 addObject:v16];
          }

          else
          {
            v17 = [MEMORY[0x1E695DFB0] null];
            [v10 addObject:v17];
          }
        }

        v13 = [(NSArray *)v11 countByEnumeratingWithState:&v19 objects:v23 count:16];
      }

      while (v13);
    }

    [v3 setObject:v10 forKeyedSubscript:@"homeKitServiceResponse"];
  }

  [(SISchemaInstrumentationMessage *)self willProduceDictionaryRepresentation:v3, v19];

  return v3;
}

- (unint64_t)hash
{
  v3 = [(NSArray *)self->_homeKitServiceResponses hash];
  v4 = [(FLOWSchemaFLOWHomeContext *)self->_homeContext hash]^ v3;
  return v4 ^ [(FLOWSchemaFLOWHomeAutomationCommand *)self->_homeAutomationCommand hash];
}

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  if (![v4 isMemberOfClass:objc_opt_class()])
  {
    goto LABEL_17;
  }

  v5 = [(FLOWSchemaFLOWHomeAutomationContext *)self homeKitServiceResponses];
  v6 = [v4 homeKitServiceResponses];
  if ((v5 != 0) == (v6 == 0))
  {
    goto LABEL_16;
  }

  v7 = [(FLOWSchemaFLOWHomeAutomationContext *)self homeKitServiceResponses];
  if (v7)
  {
    v8 = v7;
    v9 = [(FLOWSchemaFLOWHomeAutomationContext *)self homeKitServiceResponses];
    v10 = [v4 homeKitServiceResponses];
    v11 = [v9 isEqual:v10];

    if (!v11)
    {
      goto LABEL_17;
    }
  }

  else
  {
  }

  v5 = [(FLOWSchemaFLOWHomeAutomationContext *)self homeContext];
  v6 = [v4 homeContext];
  if ((v5 != 0) == (v6 == 0))
  {
    goto LABEL_16;
  }

  v12 = [(FLOWSchemaFLOWHomeAutomationContext *)self homeContext];
  if (v12)
  {
    v13 = v12;
    v14 = [(FLOWSchemaFLOWHomeAutomationContext *)self homeContext];
    v15 = [v4 homeContext];
    v16 = [v14 isEqual:v15];

    if (!v16)
    {
      goto LABEL_17;
    }
  }

  else
  {
  }

  v5 = [(FLOWSchemaFLOWHomeAutomationContext *)self homeAutomationCommand];
  v6 = [v4 homeAutomationCommand];
  if ((v5 != 0) != (v6 == 0))
  {
    v17 = [(FLOWSchemaFLOWHomeAutomationContext *)self homeAutomationCommand];
    if (!v17)
    {

LABEL_20:
      v22 = 1;
      goto LABEL_18;
    }

    v18 = v17;
    v19 = [(FLOWSchemaFLOWHomeAutomationContext *)self homeAutomationCommand];
    v20 = [v4 homeAutomationCommand];
    v21 = [v19 isEqual:v20];

    if (v21)
    {
      goto LABEL_20;
    }
  }

  else
  {
LABEL_16:
  }

LABEL_17:
  v22 = 0;
LABEL_18:

  return v22;
}

- (void)writeTo:(id)a3
{
  v19 = *MEMORY[0x1E69E9840];
  v4 = a3;
  v14 = 0u;
  v15 = 0u;
  v16 = 0u;
  v17 = 0u;
  v5 = self->_homeKitServiceResponses;
  v6 = [(NSArray *)v5 countByEnumeratingWithState:&v14 objects:v18 count:16];
  if (v6)
  {
    v7 = v6;
    v8 = *v15;
    do
    {
      v9 = 0;
      do
      {
        if (*v15 != v8)
        {
          objc_enumerationMutation(v5);
        }

        PBDataWriterWriteSubmessage();
        ++v9;
      }

      while (v7 != v9);
      v7 = [(NSArray *)v5 countByEnumeratingWithState:&v14 objects:v18 count:16];
    }

    while (v7);
  }

  v10 = [(FLOWSchemaFLOWHomeAutomationContext *)self homeContext];

  if (v10)
  {
    v11 = [(FLOWSchemaFLOWHomeAutomationContext *)self homeContext];
    PBDataWriterWriteSubmessage();
  }

  v12 = [(FLOWSchemaFLOWHomeAutomationContext *)self homeAutomationCommand];

  if (v12)
  {
    v13 = [(FLOWSchemaFLOWHomeAutomationContext *)self homeAutomationCommand];
    PBDataWriterWriteSubmessage();
  }
}

- (void)addHomeKitServiceResponse:(id)a3
{
  v4 = a3;
  homeKitServiceResponses = self->_homeKitServiceResponses;
  v8 = v4;
  if (!homeKitServiceResponses)
  {
    v6 = [MEMORY[0x1E695DF70] array];
    v7 = self->_homeKitServiceResponses;
    self->_homeKitServiceResponses = v6;

    v4 = v8;
    homeKitServiceResponses = self->_homeKitServiceResponses;
  }

  [(NSArray *)homeKitServiceResponses addObject:v4];
}

- (id)applySensitiveConditionsPolicy:(id)a3
{
  v4 = a3;
  v15.receiver = self;
  v15.super_class = FLOWSchemaFLOWHomeAutomationContext;
  v5 = [(SISchemaInstrumentationMessage *)&v15 applySensitiveConditionsPolicy:v4];
  v6 = [(FLOWSchemaFLOWHomeAutomationContext *)self homeKitServiceResponses];
  v7 = [(SISchemaInstrumentationMessage *)self _pruneSuppressedMessagesFromArray:v6 underConditions:v4];
  [(FLOWSchemaFLOWHomeAutomationContext *)self setHomeKitServiceResponses:v7];

  v8 = [(FLOWSchemaFLOWHomeAutomationContext *)self homeContext];
  v9 = [v8 applySensitiveConditionsPolicy:v4];
  v10 = [v9 suppressMessage];

  if (v10)
  {
    [(FLOWSchemaFLOWHomeAutomationContext *)self deleteHomeContext];
  }

  v11 = [(FLOWSchemaFLOWHomeAutomationContext *)self homeAutomationCommand];
  v12 = [v11 applySensitiveConditionsPolicy:v4];
  v13 = [v12 suppressMessage];

  if (v13)
  {
    [(FLOWSchemaFLOWHomeAutomationContext *)self deleteHomeAutomationCommand];
  }

  return v5;
}

- (id)suppressMessageUnderConditions
{
  v2 = objc_alloc_init(SISensitiveConditionsSet);
  [(SISensitiveConditionsSet *)v2 addCondition:1];

  return v2;
}

@end