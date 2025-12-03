@interface FLOWSchemaFLOWHomeAutomationContext
- (BOOL)isEqual:(id)equal;
- (FLOWSchemaFLOWHomeAutomationContext)initWithDictionary:(id)dictionary;
- (FLOWSchemaFLOWHomeAutomationContext)initWithJSON:(id)n;
- (NSData)jsonData;
- (id)applySensitiveConditionsPolicy:(id)policy;
- (id)dictionaryRepresentation;
- (id)suppressMessageUnderConditions;
- (unint64_t)hash;
- (void)addHomeKitServiceResponse:(id)response;
- (void)writeTo:(id)to;
@end

@implementation FLOWSchemaFLOWHomeAutomationContext

- (FLOWSchemaFLOWHomeAutomationContext)initWithDictionary:(id)dictionary
{
  v27 = *MEMORY[0x1E69E9840];
  dictionaryCopy = dictionary;
  v25.receiver = self;
  v25.super_class = FLOWSchemaFLOWHomeAutomationContext;
  v5 = [(FLOWSchemaFLOWHomeAutomationContext *)&v25 init];
  if (v5)
  {
    v6 = [dictionaryCopy objectForKeyedSubscript:@"homeKitServiceResponse"];
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

    v15 = [dictionaryCopy objectForKeyedSubscript:{@"homeContext", v21}];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v16 = [[FLOWSchemaFLOWHomeContext alloc] initWithDictionary:v15];
      [(FLOWSchemaFLOWHomeAutomationContext *)v5 setHomeContext:v16];
    }

    v17 = [dictionaryCopy objectForKeyedSubscript:@"homeAutomationCommand"];
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

- (FLOWSchemaFLOWHomeAutomationContext)initWithJSON:(id)n
{
  v7 = 0;
  v4 = [MEMORY[0x1E696ACB0] JSONObjectWithData:n options:0 error:&v7];
  if (v7 || (objc_opt_class(), (objc_opt_isKindOfClass() & 1) == 0))
  {
    selfCopy = 0;
  }

  else
  {
    self = [(FLOWSchemaFLOWHomeAutomationContext *)self initWithDictionary:v4];
    selfCopy = self;
  }

  return selfCopy;
}

- (NSData)jsonData
{
  dictionaryRepresentation = [(FLOWSchemaFLOWHomeAutomationContext *)self dictionaryRepresentation];
  if ([MEMORY[0x1E696ACB0] isValidJSONObject:dictionaryRepresentation])
  {
    v3 = [MEMORY[0x1E696ACB0] dataWithJSONObject:dictionaryRepresentation options:0 error:0];
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
  dictionary = [MEMORY[0x1E695DF90] dictionary];
  if (self->_homeAutomationCommand)
  {
    homeAutomationCommand = [(FLOWSchemaFLOWHomeAutomationContext *)self homeAutomationCommand];
    dictionaryRepresentation = [homeAutomationCommand dictionaryRepresentation];
    if (dictionaryRepresentation)
    {
      [dictionary setObject:dictionaryRepresentation forKeyedSubscript:@"homeAutomationCommand"];
    }

    else
    {
      null = [MEMORY[0x1E695DFB0] null];
      [dictionary setObject:null forKeyedSubscript:@"homeAutomationCommand"];
    }
  }

  if (self->_homeContext)
  {
    homeContext = [(FLOWSchemaFLOWHomeAutomationContext *)self homeContext];
    dictionaryRepresentation2 = [homeContext dictionaryRepresentation];
    if (dictionaryRepresentation2)
    {
      [dictionary setObject:dictionaryRepresentation2 forKeyedSubscript:@"homeContext"];
    }

    else
    {
      null2 = [MEMORY[0x1E695DFB0] null];
      [dictionary setObject:null2 forKeyedSubscript:@"homeContext"];
    }
  }

  if ([(NSArray *)self->_homeKitServiceResponses count])
  {
    array = [MEMORY[0x1E695DF70] array];
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

          dictionaryRepresentation3 = [*(*(&v19 + 1) + 8 * i) dictionaryRepresentation];
          if (dictionaryRepresentation3)
          {
            [array addObject:dictionaryRepresentation3];
          }

          else
          {
            null3 = [MEMORY[0x1E695DFB0] null];
            [array addObject:null3];
          }
        }

        v13 = [(NSArray *)v11 countByEnumeratingWithState:&v19 objects:v23 count:16];
      }

      while (v13);
    }

    [dictionary setObject:array forKeyedSubscript:@"homeKitServiceResponse"];
  }

  [(SISchemaInstrumentationMessage *)self willProduceDictionaryRepresentation:dictionary, v19];

  return dictionary;
}

- (unint64_t)hash
{
  v3 = [(NSArray *)self->_homeKitServiceResponses hash];
  v4 = [(FLOWSchemaFLOWHomeContext *)self->_homeContext hash]^ v3;
  return v4 ^ [(FLOWSchemaFLOWHomeAutomationCommand *)self->_homeAutomationCommand hash];
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  if (![equalCopy isMemberOfClass:objc_opt_class()])
  {
    goto LABEL_17;
  }

  homeKitServiceResponses = [(FLOWSchemaFLOWHomeAutomationContext *)self homeKitServiceResponses];
  homeKitServiceResponses2 = [equalCopy homeKitServiceResponses];
  if ((homeKitServiceResponses != 0) == (homeKitServiceResponses2 == 0))
  {
    goto LABEL_16;
  }

  homeKitServiceResponses3 = [(FLOWSchemaFLOWHomeAutomationContext *)self homeKitServiceResponses];
  if (homeKitServiceResponses3)
  {
    v8 = homeKitServiceResponses3;
    homeKitServiceResponses4 = [(FLOWSchemaFLOWHomeAutomationContext *)self homeKitServiceResponses];
    homeKitServiceResponses5 = [equalCopy homeKitServiceResponses];
    v11 = [homeKitServiceResponses4 isEqual:homeKitServiceResponses5];

    if (!v11)
    {
      goto LABEL_17;
    }
  }

  else
  {
  }

  homeKitServiceResponses = [(FLOWSchemaFLOWHomeAutomationContext *)self homeContext];
  homeKitServiceResponses2 = [equalCopy homeContext];
  if ((homeKitServiceResponses != 0) == (homeKitServiceResponses2 == 0))
  {
    goto LABEL_16;
  }

  homeContext = [(FLOWSchemaFLOWHomeAutomationContext *)self homeContext];
  if (homeContext)
  {
    v13 = homeContext;
    homeContext2 = [(FLOWSchemaFLOWHomeAutomationContext *)self homeContext];
    homeContext3 = [equalCopy homeContext];
    v16 = [homeContext2 isEqual:homeContext3];

    if (!v16)
    {
      goto LABEL_17;
    }
  }

  else
  {
  }

  homeKitServiceResponses = [(FLOWSchemaFLOWHomeAutomationContext *)self homeAutomationCommand];
  homeKitServiceResponses2 = [equalCopy homeAutomationCommand];
  if ((homeKitServiceResponses != 0) != (homeKitServiceResponses2 == 0))
  {
    homeAutomationCommand = [(FLOWSchemaFLOWHomeAutomationContext *)self homeAutomationCommand];
    if (!homeAutomationCommand)
    {

LABEL_20:
      v22 = 1;
      goto LABEL_18;
    }

    v18 = homeAutomationCommand;
    homeAutomationCommand2 = [(FLOWSchemaFLOWHomeAutomationContext *)self homeAutomationCommand];
    homeAutomationCommand3 = [equalCopy homeAutomationCommand];
    v21 = [homeAutomationCommand2 isEqual:homeAutomationCommand3];

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

- (void)writeTo:(id)to
{
  v19 = *MEMORY[0x1E69E9840];
  toCopy = to;
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

  homeContext = [(FLOWSchemaFLOWHomeAutomationContext *)self homeContext];

  if (homeContext)
  {
    homeContext2 = [(FLOWSchemaFLOWHomeAutomationContext *)self homeContext];
    PBDataWriterWriteSubmessage();
  }

  homeAutomationCommand = [(FLOWSchemaFLOWHomeAutomationContext *)self homeAutomationCommand];

  if (homeAutomationCommand)
  {
    homeAutomationCommand2 = [(FLOWSchemaFLOWHomeAutomationContext *)self homeAutomationCommand];
    PBDataWriterWriteSubmessage();
  }
}

- (void)addHomeKitServiceResponse:(id)response
{
  responseCopy = response;
  homeKitServiceResponses = self->_homeKitServiceResponses;
  v8 = responseCopy;
  if (!homeKitServiceResponses)
  {
    array = [MEMORY[0x1E695DF70] array];
    v7 = self->_homeKitServiceResponses;
    self->_homeKitServiceResponses = array;

    responseCopy = v8;
    homeKitServiceResponses = self->_homeKitServiceResponses;
  }

  [(NSArray *)homeKitServiceResponses addObject:responseCopy];
}

- (id)applySensitiveConditionsPolicy:(id)policy
{
  policyCopy = policy;
  v15.receiver = self;
  v15.super_class = FLOWSchemaFLOWHomeAutomationContext;
  v5 = [(SISchemaInstrumentationMessage *)&v15 applySensitiveConditionsPolicy:policyCopy];
  homeKitServiceResponses = [(FLOWSchemaFLOWHomeAutomationContext *)self homeKitServiceResponses];
  v7 = [(SISchemaInstrumentationMessage *)self _pruneSuppressedMessagesFromArray:homeKitServiceResponses underConditions:policyCopy];
  [(FLOWSchemaFLOWHomeAutomationContext *)self setHomeKitServiceResponses:v7];

  homeContext = [(FLOWSchemaFLOWHomeAutomationContext *)self homeContext];
  v9 = [homeContext applySensitiveConditionsPolicy:policyCopy];
  suppressMessage = [v9 suppressMessage];

  if (suppressMessage)
  {
    [(FLOWSchemaFLOWHomeAutomationContext *)self deleteHomeContext];
  }

  homeAutomationCommand = [(FLOWSchemaFLOWHomeAutomationContext *)self homeAutomationCommand];
  v12 = [homeAutomationCommand applySensitiveConditionsPolicy:policyCopy];
  suppressMessage2 = [v12 suppressMessage];

  if (suppressMessage2)
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