@interface FLOWSchemaFLOWStep
- (BOOL)isEqual:(id)equal;
- (FLOWSchemaFLOWStep)initWithDictionary:(id)dictionary;
- (FLOWSchemaFLOWStep)initWithJSON:(id)n;
- (NSData)jsonData;
- (id)applySensitiveConditionsPolicy:(id)policy;
- (id)dictionaryRepresentation;
- (id)suppressMessageUnderConditions;
- (unint64_t)hash;
- (void)addDomainContext:(id)context;
- (void)addPlatformContext:(id)context;
- (void)setHasTimestampMs:(BOOL)ms;
- (void)writeTo:(id)to;
@end

@implementation FLOWSchemaFLOWStep

- (FLOWSchemaFLOWStep)initWithDictionary:(id)dictionary
{
  v48 = *MEMORY[0x1E69E9840];
  dictionaryCopy = dictionary;
  v45.receiver = self;
  v45.super_class = FLOWSchemaFLOWStep;
  v5 = [(FLOWSchemaFLOWStep *)&v45 init];
  if (v5)
  {
    v6 = [dictionaryCopy objectForKeyedSubscript:@"sequenceNum"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      -[FLOWSchemaFLOWStep setSequenceNum:](v5, "setSequenceNum:", [v6 unsignedIntValue]);
    }

    v7 = [dictionaryCopy objectForKeyedSubscript:@"timestampMs"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      -[FLOWSchemaFLOWStep setTimestampMs:](v5, "setTimestampMs:", [v7 longLongValue]);
    }

    v8 = [dictionaryCopy objectForKeyedSubscript:@"flowState"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v9 = [[FLOWSchemaFLOWState alloc] initWithDictionary:v8];
      [(FLOWSchemaFLOWStep *)v5 setFlowState:v9];
    }

    v10 = [dictionaryCopy objectForKeyedSubscript:@"appContext"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v11 = [[FLOWSchemaFLOWAppContext alloc] initWithDictionary:v10];
      [(FLOWSchemaFLOWStep *)v5 setAppContext:v11];
    }

    v12 = [dictionaryCopy objectForKeyedSubscript:@"domainContext"];
    objc_opt_class();
    v36 = v12;
    v34 = v7;
    v35 = v6;
    v32 = v10;
    v33 = v8;
    if (objc_opt_isKindOfClass())
    {
      v43 = 0u;
      v44 = 0u;
      v41 = 0u;
      v42 = 0u;
      v13 = v12;
      v14 = [v13 countByEnumeratingWithState:&v41 objects:v47 count:16];
      if (v14)
      {
        v15 = v14;
        v16 = *v42;
        do
        {
          for (i = 0; i != v15; ++i)
          {
            if (*v42 != v16)
            {
              objc_enumerationMutation(v13);
            }

            v18 = *(*(&v41 + 1) + 8 * i);
            objc_opt_class();
            if (objc_opt_isKindOfClass())
            {
              v19 = [[FLOWSchemaFLOWDomainContext alloc] initWithDictionary:v18];
              [(FLOWSchemaFLOWStep *)v5 addDomainContext:v19];
            }
          }

          v15 = [v13 countByEnumeratingWithState:&v41 objects:v47 count:16];
        }

        while (v15);
      }

      v7 = v34;
      v10 = v32;
      v8 = v33;
    }

    v20 = [dictionaryCopy objectForKeyedSubscript:@"platformContext"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v39 = 0u;
      v40 = 0u;
      v37 = 0u;
      v38 = 0u;
      v21 = v20;
      v22 = [v21 countByEnumeratingWithState:&v37 objects:v46 count:16];
      if (v22)
      {
        v23 = v22;
        v24 = *v38;
        do
        {
          for (j = 0; j != v23; ++j)
          {
            if (*v38 != v24)
            {
              objc_enumerationMutation(v21);
            }

            v26 = *(*(&v37 + 1) + 8 * j);
            objc_opt_class();
            if (objc_opt_isKindOfClass())
            {
              v27 = [[FLOWSchemaFLOWPlatformContext alloc] initWithDictionary:v26];
              [(FLOWSchemaFLOWStep *)v5 addPlatformContext:v27];
            }
          }

          v23 = [v21 countByEnumeratingWithState:&v37 objects:v46 count:16];
        }

        while (v23);
      }

      v7 = v34;
      v6 = v35;
      v10 = v32;
      v8 = v33;
    }

    v28 = [dictionaryCopy objectForKeyedSubscript:@"platformRelatedContext"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v29 = [[FLOWSchemaFLOWPlatformContext alloc] initWithDictionary:v28];
      [(FLOWSchemaFLOWStep *)v5 setPlatformRelatedContext:v29];
    }

    v30 = v5;
  }

  return v5;
}

- (FLOWSchemaFLOWStep)initWithJSON:(id)n
{
  v7 = 0;
  v4 = [MEMORY[0x1E696ACB0] JSONObjectWithData:n options:0 error:&v7];
  if (v7 || (objc_opt_class(), (objc_opt_isKindOfClass() & 1) == 0))
  {
    selfCopy = 0;
  }

  else
  {
    self = [(FLOWSchemaFLOWStep *)self initWithDictionary:v4];
    selfCopy = self;
  }

  return selfCopy;
}

- (NSData)jsonData
{
  dictionaryRepresentation = [(FLOWSchemaFLOWStep *)self dictionaryRepresentation];
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
  v43 = *MEMORY[0x1E69E9840];
  dictionary = [MEMORY[0x1E695DF90] dictionary];
  if (self->_appContext)
  {
    appContext = [(FLOWSchemaFLOWStep *)self appContext];
    dictionaryRepresentation = [appContext dictionaryRepresentation];
    if (dictionaryRepresentation)
    {
      [dictionary setObject:dictionaryRepresentation forKeyedSubscript:@"appContext"];
    }

    else
    {
      null = [MEMORY[0x1E695DFB0] null];
      [dictionary setObject:null forKeyedSubscript:@"appContext"];
    }
  }

  if ([(NSArray *)self->_domainContexts count])
  {
    array = [MEMORY[0x1E695DF70] array];
    v37 = 0u;
    v38 = 0u;
    v39 = 0u;
    v40 = 0u;
    v8 = self->_domainContexts;
    v9 = [(NSArray *)v8 countByEnumeratingWithState:&v37 objects:v42 count:16];
    if (v9)
    {
      v10 = v9;
      v11 = *v38;
      do
      {
        for (i = 0; i != v10; ++i)
        {
          if (*v38 != v11)
          {
            objc_enumerationMutation(v8);
          }

          dictionaryRepresentation2 = [*(*(&v37 + 1) + 8 * i) dictionaryRepresentation];
          if (dictionaryRepresentation2)
          {
            [array addObject:dictionaryRepresentation2];
          }

          else
          {
            null2 = [MEMORY[0x1E695DFB0] null];
            [array addObject:null2];
          }
        }

        v10 = [(NSArray *)v8 countByEnumeratingWithState:&v37 objects:v42 count:16];
      }

      while (v10);
    }

    [dictionary setObject:array forKeyedSubscript:@"domainContext"];
  }

  if (self->_flowState)
  {
    flowState = [(FLOWSchemaFLOWStep *)self flowState];
    dictionaryRepresentation3 = [flowState dictionaryRepresentation];
    if (dictionaryRepresentation3)
    {
      [dictionary setObject:dictionaryRepresentation3 forKeyedSubscript:@"flowState"];
    }

    else
    {
      null3 = [MEMORY[0x1E695DFB0] null];
      [dictionary setObject:null3 forKeyedSubscript:@"flowState"];
    }
  }

  if ([(NSArray *)self->_platformContexts count])
  {
    array2 = [MEMORY[0x1E695DF70] array];
    v33 = 0u;
    v34 = 0u;
    v35 = 0u;
    v36 = 0u;
    v19 = self->_platformContexts;
    v20 = [(NSArray *)v19 countByEnumeratingWithState:&v33 objects:v41 count:16];
    if (v20)
    {
      v21 = v20;
      v22 = *v34;
      do
      {
        for (j = 0; j != v21; ++j)
        {
          if (*v34 != v22)
          {
            objc_enumerationMutation(v19);
          }

          dictionaryRepresentation4 = [*(*(&v33 + 1) + 8 * j) dictionaryRepresentation];
          if (dictionaryRepresentation4)
          {
            [array2 addObject:dictionaryRepresentation4];
          }

          else
          {
            null4 = [MEMORY[0x1E695DFB0] null];
            [array2 addObject:null4];
          }
        }

        v21 = [(NSArray *)v19 countByEnumeratingWithState:&v33 objects:v41 count:16];
      }

      while (v21);
    }

    [dictionary setObject:array2 forKeyedSubscript:@"platformContext"];
  }

  if (self->_platformRelatedContext)
  {
    platformRelatedContext = [(FLOWSchemaFLOWStep *)self platformRelatedContext];
    dictionaryRepresentation5 = [platformRelatedContext dictionaryRepresentation];
    if (dictionaryRepresentation5)
    {
      [dictionary setObject:dictionaryRepresentation5 forKeyedSubscript:@"platformRelatedContext"];
    }

    else
    {
      null5 = [MEMORY[0x1E695DFB0] null];
      [dictionary setObject:null5 forKeyedSubscript:@"platformRelatedContext"];
    }
  }

  has = self->_has;
  if (has)
  {
    v30 = [MEMORY[0x1E696AD98] numberWithUnsignedInt:{-[FLOWSchemaFLOWStep sequenceNum](self, "sequenceNum")}];
    [dictionary setObject:v30 forKeyedSubscript:@"sequenceNum"];

    has = self->_has;
  }

  if ((has & 2) != 0)
  {
    v31 = [MEMORY[0x1E696AD98] numberWithLongLong:{-[FLOWSchemaFLOWStep timestampMs](self, "timestampMs")}];
    [dictionary setObject:v31 forKeyedSubscript:@"timestampMs"];
  }

  [(SISchemaInstrumentationMessage *)self willProduceDictionaryRepresentation:dictionary, v33];

  return dictionary;
}

- (unint64_t)hash
{
  if (*&self->_has)
  {
    v3 = 2654435761 * self->_sequenceNum;
    if ((*&self->_has & 2) != 0)
    {
      goto LABEL_3;
    }

LABEL_5:
    v4 = 0;
    goto LABEL_6;
  }

  v3 = 0;
  if ((*&self->_has & 2) == 0)
  {
    goto LABEL_5;
  }

LABEL_3:
  v4 = 2654435761 * self->_timestampMs;
LABEL_6:
  v5 = v4 ^ v3 ^ [(FLOWSchemaFLOWState *)self->_flowState hash];
  v6 = [(FLOWSchemaFLOWAppContext *)self->_appContext hash];
  v7 = v5 ^ v6 ^ [(NSArray *)self->_domainContexts hash];
  v8 = [(NSArray *)self->_platformContexts hash];
  return v7 ^ v8 ^ [(FLOWSchemaFLOWPlatformContext *)self->_platformRelatedContext hash];
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  if (![equalCopy isMemberOfClass:objc_opt_class()])
  {
    goto LABEL_34;
  }

  has = self->_has;
  v6 = equalCopy[64];
  if ((*&has & 1) != (v6 & 1))
  {
    goto LABEL_34;
  }

  if (*&has)
  {
    sequenceNum = self->_sequenceNum;
    if (sequenceNum != [equalCopy sequenceNum])
    {
      goto LABEL_34;
    }

    has = self->_has;
    v6 = equalCopy[64];
  }

  v8 = (*&has >> 1) & 1;
  if (v8 != ((v6 >> 1) & 1))
  {
    goto LABEL_34;
  }

  if (v8)
  {
    timestampMs = self->_timestampMs;
    if (timestampMs != [equalCopy timestampMs])
    {
      goto LABEL_34;
    }
  }

  flowState = [(FLOWSchemaFLOWStep *)self flowState];
  flowState2 = [equalCopy flowState];
  if ((flowState != 0) == (flowState2 == 0))
  {
    goto LABEL_33;
  }

  flowState3 = [(FLOWSchemaFLOWStep *)self flowState];
  if (flowState3)
  {
    v13 = flowState3;
    flowState4 = [(FLOWSchemaFLOWStep *)self flowState];
    flowState5 = [equalCopy flowState];
    v16 = [flowState4 isEqual:flowState5];

    if (!v16)
    {
      goto LABEL_34;
    }
  }

  else
  {
  }

  flowState = [(FLOWSchemaFLOWStep *)self appContext];
  flowState2 = [equalCopy appContext];
  if ((flowState != 0) == (flowState2 == 0))
  {
    goto LABEL_33;
  }

  appContext = [(FLOWSchemaFLOWStep *)self appContext];
  if (appContext)
  {
    v18 = appContext;
    appContext2 = [(FLOWSchemaFLOWStep *)self appContext];
    appContext3 = [equalCopy appContext];
    v21 = [appContext2 isEqual:appContext3];

    if (!v21)
    {
      goto LABEL_34;
    }
  }

  else
  {
  }

  flowState = [(FLOWSchemaFLOWStep *)self domainContexts];
  flowState2 = [equalCopy domainContexts];
  if ((flowState != 0) == (flowState2 == 0))
  {
    goto LABEL_33;
  }

  domainContexts = [(FLOWSchemaFLOWStep *)self domainContexts];
  if (domainContexts)
  {
    v23 = domainContexts;
    domainContexts2 = [(FLOWSchemaFLOWStep *)self domainContexts];
    domainContexts3 = [equalCopy domainContexts];
    v26 = [domainContexts2 isEqual:domainContexts3];

    if (!v26)
    {
      goto LABEL_34;
    }
  }

  else
  {
  }

  flowState = [(FLOWSchemaFLOWStep *)self platformContexts];
  flowState2 = [equalCopy platformContexts];
  if ((flowState != 0) == (flowState2 == 0))
  {
    goto LABEL_33;
  }

  platformContexts = [(FLOWSchemaFLOWStep *)self platformContexts];
  if (platformContexts)
  {
    v28 = platformContexts;
    platformContexts2 = [(FLOWSchemaFLOWStep *)self platformContexts];
    platformContexts3 = [equalCopy platformContexts];
    v31 = [platformContexts2 isEqual:platformContexts3];

    if (!v31)
    {
      goto LABEL_34;
    }
  }

  else
  {
  }

  flowState = [(FLOWSchemaFLOWStep *)self platformRelatedContext];
  flowState2 = [equalCopy platformRelatedContext];
  if ((flowState != 0) != (flowState2 == 0))
  {
    platformRelatedContext = [(FLOWSchemaFLOWStep *)self platformRelatedContext];
    if (!platformRelatedContext)
    {

LABEL_37:
      v37 = 1;
      goto LABEL_35;
    }

    v33 = platformRelatedContext;
    platformRelatedContext2 = [(FLOWSchemaFLOWStep *)self platformRelatedContext];
    platformRelatedContext3 = [equalCopy platformRelatedContext];
    v36 = [platformRelatedContext2 isEqual:platformRelatedContext3];

    if (v36)
    {
      goto LABEL_37;
    }
  }

  else
  {
LABEL_33:
  }

LABEL_34:
  v37 = 0;
LABEL_35:

  return v37;
}

- (void)writeTo:(id)to
{
  v32 = *MEMORY[0x1E69E9840];
  toCopy = to;
  has = self->_has;
  if (has)
  {
    PBDataWriterWriteUint32Field();
    has = self->_has;
  }

  if ((has & 2) != 0)
  {
    PBDataWriterWriteInt64Field();
  }

  flowState = [(FLOWSchemaFLOWStep *)self flowState];

  if (flowState)
  {
    flowState2 = [(FLOWSchemaFLOWStep *)self flowState];
    PBDataWriterWriteSubmessage();
  }

  appContext = [(FLOWSchemaFLOWStep *)self appContext];

  if (appContext)
  {
    appContext2 = [(FLOWSchemaFLOWStep *)self appContext];
    PBDataWriterWriteSubmessage();
  }

  v28 = 0u;
  v29 = 0u;
  v26 = 0u;
  v27 = 0u;
  v10 = self->_domainContexts;
  v11 = [(NSArray *)v10 countByEnumeratingWithState:&v26 objects:v31 count:16];
  if (v11)
  {
    v12 = v11;
    v13 = *v27;
    do
    {
      for (i = 0; i != v12; ++i)
      {
        if (*v27 != v13)
        {
          objc_enumerationMutation(v10);
        }

        PBDataWriterWriteSubmessage();
      }

      v12 = [(NSArray *)v10 countByEnumeratingWithState:&v26 objects:v31 count:16];
    }

    while (v12);
  }

  v24 = 0u;
  v25 = 0u;
  v22 = 0u;
  v23 = 0u;
  v15 = self->_platformContexts;
  v16 = [(NSArray *)v15 countByEnumeratingWithState:&v22 objects:v30 count:16];
  if (v16)
  {
    v17 = v16;
    v18 = *v23;
    do
    {
      for (j = 0; j != v17; ++j)
      {
        if (*v23 != v18)
        {
          objc_enumerationMutation(v15);
        }

        PBDataWriterWriteSubmessage();
      }

      v17 = [(NSArray *)v15 countByEnumeratingWithState:&v22 objects:v30 count:16];
    }

    while (v17);
  }

  platformRelatedContext = [(FLOWSchemaFLOWStep *)self platformRelatedContext];

  if (platformRelatedContext)
  {
    platformRelatedContext2 = [(FLOWSchemaFLOWStep *)self platformRelatedContext];
    PBDataWriterWriteSubmessage();
  }
}

- (void)addPlatformContext:(id)context
{
  contextCopy = context;
  platformContexts = self->_platformContexts;
  v8 = contextCopy;
  if (!platformContexts)
  {
    array = [MEMORY[0x1E695DF70] array];
    v7 = self->_platformContexts;
    self->_platformContexts = array;

    contextCopy = v8;
    platformContexts = self->_platformContexts;
  }

  [(NSArray *)platformContexts addObject:contextCopy];
}

- (void)addDomainContext:(id)context
{
  contextCopy = context;
  domainContexts = self->_domainContexts;
  v8 = contextCopy;
  if (!domainContexts)
  {
    array = [MEMORY[0x1E695DF70] array];
    v7 = self->_domainContexts;
    self->_domainContexts = array;

    contextCopy = v8;
    domainContexts = self->_domainContexts;
  }

  [(NSArray *)domainContexts addObject:contextCopy];
}

- (void)setHasTimestampMs:(BOOL)ms
{
  if (ms)
  {
    v3 = 2;
  }

  else
  {
    v3 = 0;
  }

  *&self->_has = *&self->_has & 0xFD | v3;
}

- (id)applySensitiveConditionsPolicy:(id)policy
{
  policyCopy = policy;
  v20.receiver = self;
  v20.super_class = FLOWSchemaFLOWStep;
  v5 = [(SISchemaInstrumentationMessage *)&v20 applySensitiveConditionsPolicy:policyCopy];
  flowState = [(FLOWSchemaFLOWStep *)self flowState];
  v7 = [flowState applySensitiveConditionsPolicy:policyCopy];
  suppressMessage = [v7 suppressMessage];

  if (suppressMessage)
  {
    [(FLOWSchemaFLOWStep *)self deleteFlowState];
  }

  appContext = [(FLOWSchemaFLOWStep *)self appContext];
  v10 = [appContext applySensitiveConditionsPolicy:policyCopy];
  suppressMessage2 = [v10 suppressMessage];

  if (suppressMessage2)
  {
    [(FLOWSchemaFLOWStep *)self deleteAppContext];
  }

  domainContexts = [(FLOWSchemaFLOWStep *)self domainContexts];
  v13 = [(SISchemaInstrumentationMessage *)self _pruneSuppressedMessagesFromArray:domainContexts underConditions:policyCopy];
  [(FLOWSchemaFLOWStep *)self setDomainContexts:v13];

  platformContexts = [(FLOWSchemaFLOWStep *)self platformContexts];
  v15 = [(SISchemaInstrumentationMessage *)self _pruneSuppressedMessagesFromArray:platformContexts underConditions:policyCopy];
  [(FLOWSchemaFLOWStep *)self setPlatformContexts:v15];

  platformRelatedContext = [(FLOWSchemaFLOWStep *)self platformRelatedContext];
  v17 = [platformRelatedContext applySensitiveConditionsPolicy:policyCopy];
  suppressMessage3 = [v17 suppressMessage];

  if (suppressMessage3)
  {
    [(FLOWSchemaFLOWStep *)self deletePlatformRelatedContext];
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