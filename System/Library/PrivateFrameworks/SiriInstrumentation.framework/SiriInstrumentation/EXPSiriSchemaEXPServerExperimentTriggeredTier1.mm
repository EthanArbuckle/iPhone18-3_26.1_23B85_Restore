@interface EXPSiriSchemaEXPServerExperimentTriggeredTier1
- (BOOL)isEqual:(id)equal;
- (EXPSiriSchemaEXPServerExperimentTriggeredTier1)initWithDictionary:(id)dictionary;
- (EXPSiriSchemaEXPServerExperimentTriggeredTier1)initWithJSON:(id)n;
- (NSData)jsonData;
- (id)applySensitiveConditionsPolicy:(id)policy;
- (id)dictionaryRepresentation;
- (id)suppressMessageUnderConditions;
- (unint64_t)hash;
- (void)addAllocation:(id)allocation;
- (void)writeTo:(id)to;
@end

@implementation EXPSiriSchemaEXPServerExperimentTriggeredTier1

- (EXPSiriSchemaEXPServerExperimentTriggeredTier1)initWithDictionary:(id)dictionary
{
  v27 = *MEMORY[0x1E69E9840];
  dictionaryCopy = dictionary;
  v25.receiver = self;
  v25.super_class = EXPSiriSchemaEXPServerExperimentTriggeredTier1;
  v5 = [(EXPSiriSchemaEXPServerExperimentTriggeredTier1 *)&v25 init];
  if (v5)
  {
    v6 = [dictionaryCopy objectForKeyedSubscript:@"allocation"];
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
              v13 = [EXPSchemaEXPTrialExperiment alloc];
              v14 = [(EXPSchemaEXPTrialExperiment *)v13 initWithDictionary:v12, v21];
              [(EXPSiriSchemaEXPServerExperimentTriggeredTier1 *)v5 addAllocation:v14];
            }

            ++v11;
          }

          while (v9 != v11);
          v9 = [v7 countByEnumeratingWithState:&v21 objects:v26 count:16];
        }

        while (v9);
      }
    }

    v15 = [dictionaryCopy objectForKeyedSubscript:{@"codepathId", v21}];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v16 = [[SISchemaUUID alloc] initWithDictionary:v15];
      [(EXPSiriSchemaEXPServerExperimentTriggeredTier1 *)v5 setCodepathId:v16];
    }

    v17 = [dictionaryCopy objectForKeyedSubscript:@"pegasusId"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v18 = [[SISchemaUUID alloc] initWithDictionary:v17];
      [(EXPSiriSchemaEXPServerExperimentTriggeredTier1 *)v5 setPegasusId:v18];
    }

    v19 = v5;
  }

  return v5;
}

- (EXPSiriSchemaEXPServerExperimentTriggeredTier1)initWithJSON:(id)n
{
  v7 = 0;
  v4 = [MEMORY[0x1E696ACB0] JSONObjectWithData:n options:0 error:&v7];
  if (v7 || (objc_opt_class(), (objc_opt_isKindOfClass() & 1) == 0))
  {
    selfCopy = 0;
  }

  else
  {
    self = [(EXPSiriSchemaEXPServerExperimentTriggeredTier1 *)self initWithDictionary:v4];
    selfCopy = self;
  }

  return selfCopy;
}

- (NSData)jsonData
{
  dictionaryRepresentation = [(EXPSiriSchemaEXPServerExperimentTriggeredTier1 *)self dictionaryRepresentation];
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
  if ([(NSArray *)self->_allocations count])
  {
    array = [MEMORY[0x1E695DF70] array];
    v19 = 0u;
    v20 = 0u;
    v21 = 0u;
    v22 = 0u;
    v5 = self->_allocations;
    v6 = [(NSArray *)v5 countByEnumeratingWithState:&v19 objects:v23 count:16];
    if (v6)
    {
      v7 = v6;
      v8 = *v20;
      do
      {
        for (i = 0; i != v7; ++i)
        {
          if (*v20 != v8)
          {
            objc_enumerationMutation(v5);
          }

          dictionaryRepresentation = [*(*(&v19 + 1) + 8 * i) dictionaryRepresentation];
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

        v7 = [(NSArray *)v5 countByEnumeratingWithState:&v19 objects:v23 count:16];
      }

      while (v7);
    }

    [dictionary setObject:array forKeyedSubscript:@"allocation"];
  }

  if (self->_codepathId)
  {
    codepathId = [(EXPSiriSchemaEXPServerExperimentTriggeredTier1 *)self codepathId];
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

  if (self->_pegasusId)
  {
    pegasusId = [(EXPSiriSchemaEXPServerExperimentTriggeredTier1 *)self pegasusId];
    dictionaryRepresentation3 = [pegasusId dictionaryRepresentation];
    if (dictionaryRepresentation3)
    {
      [dictionary setObject:dictionaryRepresentation3 forKeyedSubscript:@"pegasusId"];
    }

    else
    {
      null3 = [MEMORY[0x1E695DFB0] null];
      [dictionary setObject:null3 forKeyedSubscript:@"pegasusId"];
    }
  }

  [(SISchemaInstrumentationMessage *)self willProduceDictionaryRepresentation:dictionary, v19];

  return dictionary;
}

- (unint64_t)hash
{
  v3 = [(NSArray *)self->_allocations hash];
  v4 = [(SISchemaUUID *)self->_codepathId hash]^ v3;
  return v4 ^ [(SISchemaUUID *)self->_pegasusId hash];
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  if (![equalCopy isMemberOfClass:objc_opt_class()])
  {
    goto LABEL_17;
  }

  allocations = [(EXPSiriSchemaEXPServerExperimentTriggeredTier1 *)self allocations];
  allocations2 = [equalCopy allocations];
  if ((allocations != 0) == (allocations2 == 0))
  {
    goto LABEL_16;
  }

  allocations3 = [(EXPSiriSchemaEXPServerExperimentTriggeredTier1 *)self allocations];
  if (allocations3)
  {
    v8 = allocations3;
    allocations4 = [(EXPSiriSchemaEXPServerExperimentTriggeredTier1 *)self allocations];
    allocations5 = [equalCopy allocations];
    v11 = [allocations4 isEqual:allocations5];

    if (!v11)
    {
      goto LABEL_17;
    }
  }

  else
  {
  }

  allocations = [(EXPSiriSchemaEXPServerExperimentTriggeredTier1 *)self codepathId];
  allocations2 = [equalCopy codepathId];
  if ((allocations != 0) == (allocations2 == 0))
  {
    goto LABEL_16;
  }

  codepathId = [(EXPSiriSchemaEXPServerExperimentTriggeredTier1 *)self codepathId];
  if (codepathId)
  {
    v13 = codepathId;
    codepathId2 = [(EXPSiriSchemaEXPServerExperimentTriggeredTier1 *)self codepathId];
    codepathId3 = [equalCopy codepathId];
    v16 = [codepathId2 isEqual:codepathId3];

    if (!v16)
    {
      goto LABEL_17;
    }
  }

  else
  {
  }

  allocations = [(EXPSiriSchemaEXPServerExperimentTriggeredTier1 *)self pegasusId];
  allocations2 = [equalCopy pegasusId];
  if ((allocations != 0) != (allocations2 == 0))
  {
    pegasusId = [(EXPSiriSchemaEXPServerExperimentTriggeredTier1 *)self pegasusId];
    if (!pegasusId)
    {

LABEL_20:
      v22 = 1;
      goto LABEL_18;
    }

    v18 = pegasusId;
    pegasusId2 = [(EXPSiriSchemaEXPServerExperimentTriggeredTier1 *)self pegasusId];
    pegasusId3 = [equalCopy pegasusId];
    v21 = [pegasusId2 isEqual:pegasusId3];

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
  v5 = self->_allocations;
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

  codepathId = [(EXPSiriSchemaEXPServerExperimentTriggeredTier1 *)self codepathId];

  if (codepathId)
  {
    codepathId2 = [(EXPSiriSchemaEXPServerExperimentTriggeredTier1 *)self codepathId];
    PBDataWriterWriteSubmessage();
  }

  pegasusId = [(EXPSiriSchemaEXPServerExperimentTriggeredTier1 *)self pegasusId];

  if (pegasusId)
  {
    pegasusId2 = [(EXPSiriSchemaEXPServerExperimentTriggeredTier1 *)self pegasusId];
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
  policyCopy = policy;
  v15.receiver = self;
  v15.super_class = EXPSiriSchemaEXPServerExperimentTriggeredTier1;
  v5 = [(SISchemaInstrumentationMessage *)&v15 applySensitiveConditionsPolicy:policyCopy];
  allocations = [(EXPSiriSchemaEXPServerExperimentTriggeredTier1 *)self allocations];
  v7 = [(SISchemaInstrumentationMessage *)self _pruneSuppressedMessagesFromArray:allocations underConditions:policyCopy];
  [(EXPSiriSchemaEXPServerExperimentTriggeredTier1 *)self setAllocations:v7];

  codepathId = [(EXPSiriSchemaEXPServerExperimentTriggeredTier1 *)self codepathId];
  v9 = [codepathId applySensitiveConditionsPolicy:policyCopy];
  suppressMessage = [v9 suppressMessage];

  if (suppressMessage)
  {
    [(EXPSiriSchemaEXPServerExperimentTriggeredTier1 *)self deleteCodepathId];
  }

  pegasusId = [(EXPSiriSchemaEXPServerExperimentTriggeredTier1 *)self pegasusId];
  v12 = [pegasusId applySensitiveConditionsPolicy:policyCopy];
  suppressMessage2 = [v12 suppressMessage];

  if (suppressMessage2)
  {
    [(EXPSiriSchemaEXPServerExperimentTriggeredTier1 *)self deletePegasusId];
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