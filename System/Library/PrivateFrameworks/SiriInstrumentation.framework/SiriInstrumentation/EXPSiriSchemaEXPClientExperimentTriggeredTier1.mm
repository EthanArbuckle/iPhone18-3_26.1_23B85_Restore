@interface EXPSiriSchemaEXPClientExperimentTriggeredTier1
- (BOOL)isEqual:(id)equal;
- (EXPSiriSchemaEXPClientExperimentTriggeredTier1)initWithDictionary:(id)dictionary;
- (EXPSiriSchemaEXPClientExperimentTriggeredTier1)initWithJSON:(id)n;
- (NSData)jsonData;
- (id)applySensitiveConditionsPolicy:(id)policy;
- (id)dictionaryRepresentation;
- (id)suppressMessageUnderConditions;
- (void)addAllocation:(id)allocation;
- (void)writeTo:(id)to;
@end

@implementation EXPSiriSchemaEXPClientExperimentTriggeredTier1

- (EXPSiriSchemaEXPClientExperimentTriggeredTier1)initWithDictionary:(id)dictionary
{
  v25 = *MEMORY[0x1E69E9840];
  dictionaryCopy = dictionary;
  v23.receiver = self;
  v23.super_class = EXPSiriSchemaEXPClientExperimentTriggeredTier1;
  v5 = [(EXPSiriSchemaEXPClientExperimentTriggeredTier1 *)&v23 init];
  if (v5)
  {
    v6 = [dictionaryCopy objectForKeyedSubscript:@"allocation"];
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
              v13 = [EXPSchemaEXPTrialExperiment alloc];
              v14 = [(EXPSchemaEXPTrialExperiment *)v13 initWithDictionary:v12, v19];
              [(EXPSiriSchemaEXPClientExperimentTriggeredTier1 *)v5 addAllocation:v14];
            }

            ++v11;
          }

          while (v9 != v11);
          v9 = [v7 countByEnumeratingWithState:&v19 objects:v24 count:16];
        }

        while (v9);
      }
    }

    v15 = [dictionaryCopy objectForKeyedSubscript:{@"codepathId", v19}];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v16 = [[SISchemaUUID alloc] initWithDictionary:v15];
      [(EXPSiriSchemaEXPClientExperimentTriggeredTier1 *)v5 setCodepathId:v16];
    }

    v17 = v5;
  }

  return v5;
}

- (EXPSiriSchemaEXPClientExperimentTriggeredTier1)initWithJSON:(id)n
{
  v7 = 0;
  v4 = [MEMORY[0x1E696ACB0] JSONObjectWithData:n options:0 error:&v7];
  if (v7 || (objc_opt_class(), (objc_opt_isKindOfClass() & 1) == 0))
  {
    selfCopy = 0;
  }

  else
  {
    self = [(EXPSiriSchemaEXPClientExperimentTriggeredTier1 *)self initWithDictionary:v4];
    selfCopy = self;
  }

  return selfCopy;
}

- (NSData)jsonData
{
  dictionaryRepresentation = [(EXPSiriSchemaEXPClientExperimentTriggeredTier1 *)self dictionaryRepresentation];
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
  v21 = *MEMORY[0x1E69E9840];
  dictionary = [MEMORY[0x1E695DF90] dictionary];
  if ([(NSArray *)self->_allocations count])
  {
    array = [MEMORY[0x1E695DF70] array];
    v16 = 0u;
    v17 = 0u;
    v18 = 0u;
    v19 = 0u;
    v5 = self->_allocations;
    v6 = [(NSArray *)v5 countByEnumeratingWithState:&v16 objects:v20 count:16];
    if (v6)
    {
      v7 = v6;
      v8 = *v17;
      do
      {
        for (i = 0; i != v7; ++i)
        {
          if (*v17 != v8)
          {
            objc_enumerationMutation(v5);
          }

          dictionaryRepresentation = [*(*(&v16 + 1) + 8 * i) dictionaryRepresentation];
          if (dictionaryRepresentation)
          {
            [array addObject:dictionaryRepresentation];
          }

          else
          {
            null = [MEMORY[0x1E695DFB0] null];
            [array addObject:null];
          }
        }

        v7 = [(NSArray *)v5 countByEnumeratingWithState:&v16 objects:v20 count:16];
      }

      while (v7);
    }

    [dictionary setObject:array forKeyedSubscript:@"allocation"];
  }

  if (self->_codepathId)
  {
    codepathId = [(EXPSiriSchemaEXPClientExperimentTriggeredTier1 *)self codepathId];
    dictionaryRepresentation2 = [codepathId dictionaryRepresentation];
    if (dictionaryRepresentation2)
    {
      [dictionary setObject:dictionaryRepresentation2 forKeyedSubscript:@"codepathId"];
    }

    else
    {
      null2 = [MEMORY[0x1E695DFB0] null];
      [dictionary setObject:null2 forKeyedSubscript:@"codepathId"];
    }
  }

  [(SISchemaInstrumentationMessage *)self willProduceDictionaryRepresentation:dictionary, v16];

  return dictionary;
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  if (![equalCopy isMemberOfClass:objc_opt_class()])
  {
    goto LABEL_12;
  }

  allocations = [(EXPSiriSchemaEXPClientExperimentTriggeredTier1 *)self allocations];
  allocations2 = [equalCopy allocations];
  if ((allocations != 0) == (allocations2 == 0))
  {
    goto LABEL_11;
  }

  allocations3 = [(EXPSiriSchemaEXPClientExperimentTriggeredTier1 *)self allocations];
  if (allocations3)
  {
    v8 = allocations3;
    allocations4 = [(EXPSiriSchemaEXPClientExperimentTriggeredTier1 *)self allocations];
    allocations5 = [equalCopy allocations];
    v11 = [allocations4 isEqual:allocations5];

    if (!v11)
    {
      goto LABEL_12;
    }
  }

  else
  {
  }

  allocations = [(EXPSiriSchemaEXPClientExperimentTriggeredTier1 *)self codepathId];
  allocations2 = [equalCopy codepathId];
  if ((allocations != 0) != (allocations2 == 0))
  {
    codepathId = [(EXPSiriSchemaEXPClientExperimentTriggeredTier1 *)self codepathId];
    if (!codepathId)
    {

LABEL_15:
      v17 = 1;
      goto LABEL_13;
    }

    v13 = codepathId;
    codepathId2 = [(EXPSiriSchemaEXPClientExperimentTriggeredTier1 *)self codepathId];
    codepathId3 = [equalCopy codepathId];
    v16 = [codepathId2 isEqual:codepathId3];

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

- (void)writeTo:(id)to
{
  v17 = *MEMORY[0x1E69E9840];
  toCopy = to;
  v12 = 0u;
  v13 = 0u;
  v14 = 0u;
  v15 = 0u;
  v5 = self->_allocations;
  v6 = [(NSArray *)v5 countByEnumeratingWithState:&v12 objects:v16 count:16];
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

        PBDataWriterWriteSubmessage();
        ++v9;
      }

      while (v7 != v9);
      v7 = [(NSArray *)v5 countByEnumeratingWithState:&v12 objects:v16 count:16];
    }

    while (v7);
  }

  codepathId = [(EXPSiriSchemaEXPClientExperimentTriggeredTier1 *)self codepathId];

  if (codepathId)
  {
    codepathId2 = [(EXPSiriSchemaEXPClientExperimentTriggeredTier1 *)self codepathId];
    PBDataWriterWriteSubmessage();
  }
}

- (void)addAllocation:(id)allocation
{
  allocationCopy = allocation;
  allocations = self->_allocations;
  v8 = allocationCopy;
  if (!allocations)
  {
    array = [MEMORY[0x1E695DF70] array];
    v7 = self->_allocations;
    self->_allocations = array;

    allocationCopy = v8;
    allocations = self->_allocations;
  }

  [(NSArray *)allocations addObject:allocationCopy];
}

- (id)applySensitiveConditionsPolicy:(id)policy
{
  v11.receiver = self;
  v11.super_class = EXPSiriSchemaEXPClientExperimentTriggeredTier1;
  policyCopy = policy;
  v5 = [(SISchemaInstrumentationMessage *)&v11 applySensitiveConditionsPolicy:policyCopy];
  v6 = [(EXPSiriSchemaEXPClientExperimentTriggeredTier1 *)self allocations:v11.receiver];
  v7 = [(SISchemaInstrumentationMessage *)self _pruneSuppressedMessagesFromArray:v6 underConditions:policyCopy];
  [(EXPSiriSchemaEXPClientExperimentTriggeredTier1 *)self setAllocations:v7];

  codepathId = [(EXPSiriSchemaEXPClientExperimentTriggeredTier1 *)self codepathId];
  v9 = [codepathId applySensitiveConditionsPolicy:policyCopy];

  LODWORD(policyCopy) = [v9 suppressMessage];
  if (policyCopy)
  {
    [(EXPSiriSchemaEXPClientExperimentTriggeredTier1 *)self deleteCodepathId];
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