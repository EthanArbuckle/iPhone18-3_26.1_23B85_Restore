@interface FLOWSchemaFLOWStep
- (BOOL)isEqual:(id)a3;
- (FLOWSchemaFLOWStep)initWithDictionary:(id)a3;
- (FLOWSchemaFLOWStep)initWithJSON:(id)a3;
- (NSData)jsonData;
- (id)applySensitiveConditionsPolicy:(id)a3;
- (id)dictionaryRepresentation;
- (id)suppressMessageUnderConditions;
- (unint64_t)hash;
- (void)addDomainContext:(id)a3;
- (void)addPlatformContext:(id)a3;
- (void)setHasTimestampMs:(BOOL)a3;
- (void)writeTo:(id)a3;
@end

@implementation FLOWSchemaFLOWStep

- (FLOWSchemaFLOWStep)initWithDictionary:(id)a3
{
  v48 = *MEMORY[0x1E69E9840];
  v4 = a3;
  v45.receiver = self;
  v45.super_class = FLOWSchemaFLOWStep;
  v5 = [(FLOWSchemaFLOWStep *)&v45 init];
  if (v5)
  {
    v6 = [v4 objectForKeyedSubscript:@"sequenceNum"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      -[FLOWSchemaFLOWStep setSequenceNum:](v5, "setSequenceNum:", [v6 unsignedIntValue]);
    }

    v7 = [v4 objectForKeyedSubscript:@"timestampMs"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      -[FLOWSchemaFLOWStep setTimestampMs:](v5, "setTimestampMs:", [v7 longLongValue]);
    }

    v8 = [v4 objectForKeyedSubscript:@"flowState"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v9 = [[FLOWSchemaFLOWState alloc] initWithDictionary:v8];
      [(FLOWSchemaFLOWStep *)v5 setFlowState:v9];
    }

    v10 = [v4 objectForKeyedSubscript:@"appContext"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v11 = [[FLOWSchemaFLOWAppContext alloc] initWithDictionary:v10];
      [(FLOWSchemaFLOWStep *)v5 setAppContext:v11];
    }

    v12 = [v4 objectForKeyedSubscript:@"domainContext"];
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

    v20 = [v4 objectForKeyedSubscript:@"platformContext"];
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

    v28 = [v4 objectForKeyedSubscript:@"platformRelatedContext"];
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

- (FLOWSchemaFLOWStep)initWithJSON:(id)a3
{
  v7 = 0;
  v4 = [MEMORY[0x1E696ACB0] JSONObjectWithData:a3 options:0 error:&v7];
  if (v7 || (objc_opt_class(), (objc_opt_isKindOfClass() & 1) == 0))
  {
    v5 = 0;
  }

  else
  {
    self = [(FLOWSchemaFLOWStep *)self initWithDictionary:v4];
    v5 = self;
  }

  return v5;
}

- (NSData)jsonData
{
  v2 = [(FLOWSchemaFLOWStep *)self dictionaryRepresentation];
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
  v43 = *MEMORY[0x1E69E9840];
  v3 = [MEMORY[0x1E695DF90] dictionary];
  if (self->_appContext)
  {
    v4 = [(FLOWSchemaFLOWStep *)self appContext];
    v5 = [v4 dictionaryRepresentation];
    if (v5)
    {
      [v3 setObject:v5 forKeyedSubscript:@"appContext"];
    }

    else
    {
      v6 = [MEMORY[0x1E695DFB0] null];
      [v3 setObject:v6 forKeyedSubscript:@"appContext"];
    }
  }

  if ([(NSArray *)self->_domainContexts count])
  {
    v7 = [MEMORY[0x1E695DF70] array];
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

          v13 = [*(*(&v37 + 1) + 8 * i) dictionaryRepresentation];
          if (v13)
          {
            [v7 addObject:v13];
          }

          else
          {
            v14 = [MEMORY[0x1E695DFB0] null];
            [v7 addObject:v14];
          }
        }

        v10 = [(NSArray *)v8 countByEnumeratingWithState:&v37 objects:v42 count:16];
      }

      while (v10);
    }

    [v3 setObject:v7 forKeyedSubscript:@"domainContext"];
  }

  if (self->_flowState)
  {
    v15 = [(FLOWSchemaFLOWStep *)self flowState];
    v16 = [v15 dictionaryRepresentation];
    if (v16)
    {
      [v3 setObject:v16 forKeyedSubscript:@"flowState"];
    }

    else
    {
      v17 = [MEMORY[0x1E695DFB0] null];
      [v3 setObject:v17 forKeyedSubscript:@"flowState"];
    }
  }

  if ([(NSArray *)self->_platformContexts count])
  {
    v18 = [MEMORY[0x1E695DF70] array];
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

          v24 = [*(*(&v33 + 1) + 8 * j) dictionaryRepresentation];
          if (v24)
          {
            [v18 addObject:v24];
          }

          else
          {
            v25 = [MEMORY[0x1E695DFB0] null];
            [v18 addObject:v25];
          }
        }

        v21 = [(NSArray *)v19 countByEnumeratingWithState:&v33 objects:v41 count:16];
      }

      while (v21);
    }

    [v3 setObject:v18 forKeyedSubscript:@"platformContext"];
  }

  if (self->_platformRelatedContext)
  {
    v26 = [(FLOWSchemaFLOWStep *)self platformRelatedContext];
    v27 = [v26 dictionaryRepresentation];
    if (v27)
    {
      [v3 setObject:v27 forKeyedSubscript:@"platformRelatedContext"];
    }

    else
    {
      v28 = [MEMORY[0x1E695DFB0] null];
      [v3 setObject:v28 forKeyedSubscript:@"platformRelatedContext"];
    }
  }

  has = self->_has;
  if (has)
  {
    v30 = [MEMORY[0x1E696AD98] numberWithUnsignedInt:{-[FLOWSchemaFLOWStep sequenceNum](self, "sequenceNum")}];
    [v3 setObject:v30 forKeyedSubscript:@"sequenceNum"];

    has = self->_has;
  }

  if ((has & 2) != 0)
  {
    v31 = [MEMORY[0x1E696AD98] numberWithLongLong:{-[FLOWSchemaFLOWStep timestampMs](self, "timestampMs")}];
    [v3 setObject:v31 forKeyedSubscript:@"timestampMs"];
  }

  [(SISchemaInstrumentationMessage *)self willProduceDictionaryRepresentation:v3, v33];

  return v3;
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

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  if (![v4 isMemberOfClass:objc_opt_class()])
  {
    goto LABEL_34;
  }

  has = self->_has;
  v6 = v4[64];
  if ((*&has & 1) != (v6 & 1))
  {
    goto LABEL_34;
  }

  if (*&has)
  {
    sequenceNum = self->_sequenceNum;
    if (sequenceNum != [v4 sequenceNum])
    {
      goto LABEL_34;
    }

    has = self->_has;
    v6 = v4[64];
  }

  v8 = (*&has >> 1) & 1;
  if (v8 != ((v6 >> 1) & 1))
  {
    goto LABEL_34;
  }

  if (v8)
  {
    timestampMs = self->_timestampMs;
    if (timestampMs != [v4 timestampMs])
    {
      goto LABEL_34;
    }
  }

  v10 = [(FLOWSchemaFLOWStep *)self flowState];
  v11 = [v4 flowState];
  if ((v10 != 0) == (v11 == 0))
  {
    goto LABEL_33;
  }

  v12 = [(FLOWSchemaFLOWStep *)self flowState];
  if (v12)
  {
    v13 = v12;
    v14 = [(FLOWSchemaFLOWStep *)self flowState];
    v15 = [v4 flowState];
    v16 = [v14 isEqual:v15];

    if (!v16)
    {
      goto LABEL_34;
    }
  }

  else
  {
  }

  v10 = [(FLOWSchemaFLOWStep *)self appContext];
  v11 = [v4 appContext];
  if ((v10 != 0) == (v11 == 0))
  {
    goto LABEL_33;
  }

  v17 = [(FLOWSchemaFLOWStep *)self appContext];
  if (v17)
  {
    v18 = v17;
    v19 = [(FLOWSchemaFLOWStep *)self appContext];
    v20 = [v4 appContext];
    v21 = [v19 isEqual:v20];

    if (!v21)
    {
      goto LABEL_34;
    }
  }

  else
  {
  }

  v10 = [(FLOWSchemaFLOWStep *)self domainContexts];
  v11 = [v4 domainContexts];
  if ((v10 != 0) == (v11 == 0))
  {
    goto LABEL_33;
  }

  v22 = [(FLOWSchemaFLOWStep *)self domainContexts];
  if (v22)
  {
    v23 = v22;
    v24 = [(FLOWSchemaFLOWStep *)self domainContexts];
    v25 = [v4 domainContexts];
    v26 = [v24 isEqual:v25];

    if (!v26)
    {
      goto LABEL_34;
    }
  }

  else
  {
  }

  v10 = [(FLOWSchemaFLOWStep *)self platformContexts];
  v11 = [v4 platformContexts];
  if ((v10 != 0) == (v11 == 0))
  {
    goto LABEL_33;
  }

  v27 = [(FLOWSchemaFLOWStep *)self platformContexts];
  if (v27)
  {
    v28 = v27;
    v29 = [(FLOWSchemaFLOWStep *)self platformContexts];
    v30 = [v4 platformContexts];
    v31 = [v29 isEqual:v30];

    if (!v31)
    {
      goto LABEL_34;
    }
  }

  else
  {
  }

  v10 = [(FLOWSchemaFLOWStep *)self platformRelatedContext];
  v11 = [v4 platformRelatedContext];
  if ((v10 != 0) != (v11 == 0))
  {
    v32 = [(FLOWSchemaFLOWStep *)self platformRelatedContext];
    if (!v32)
    {

LABEL_37:
      v37 = 1;
      goto LABEL_35;
    }

    v33 = v32;
    v34 = [(FLOWSchemaFLOWStep *)self platformRelatedContext];
    v35 = [v4 platformRelatedContext];
    v36 = [v34 isEqual:v35];

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

- (void)writeTo:(id)a3
{
  v32 = *MEMORY[0x1E69E9840];
  v4 = a3;
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

  v6 = [(FLOWSchemaFLOWStep *)self flowState];

  if (v6)
  {
    v7 = [(FLOWSchemaFLOWStep *)self flowState];
    PBDataWriterWriteSubmessage();
  }

  v8 = [(FLOWSchemaFLOWStep *)self appContext];

  if (v8)
  {
    v9 = [(FLOWSchemaFLOWStep *)self appContext];
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

  v20 = [(FLOWSchemaFLOWStep *)self platformRelatedContext];

  if (v20)
  {
    v21 = [(FLOWSchemaFLOWStep *)self platformRelatedContext];
    PBDataWriterWriteSubmessage();
  }
}

- (void)addPlatformContext:(id)a3
{
  v4 = a3;
  platformContexts = self->_platformContexts;
  v8 = v4;
  if (!platformContexts)
  {
    v6 = [MEMORY[0x1E695DF70] array];
    v7 = self->_platformContexts;
    self->_platformContexts = v6;

    v4 = v8;
    platformContexts = self->_platformContexts;
  }

  [(NSArray *)platformContexts addObject:v4];
}

- (void)addDomainContext:(id)a3
{
  v4 = a3;
  domainContexts = self->_domainContexts;
  v8 = v4;
  if (!domainContexts)
  {
    v6 = [MEMORY[0x1E695DF70] array];
    v7 = self->_domainContexts;
    self->_domainContexts = v6;

    v4 = v8;
    domainContexts = self->_domainContexts;
  }

  [(NSArray *)domainContexts addObject:v4];
}

- (void)setHasTimestampMs:(BOOL)a3
{
  if (a3)
  {
    v3 = 2;
  }

  else
  {
    v3 = 0;
  }

  *&self->_has = *&self->_has & 0xFD | v3;
}

- (id)applySensitiveConditionsPolicy:(id)a3
{
  v4 = a3;
  v20.receiver = self;
  v20.super_class = FLOWSchemaFLOWStep;
  v5 = [(SISchemaInstrumentationMessage *)&v20 applySensitiveConditionsPolicy:v4];
  v6 = [(FLOWSchemaFLOWStep *)self flowState];
  v7 = [v6 applySensitiveConditionsPolicy:v4];
  v8 = [v7 suppressMessage];

  if (v8)
  {
    [(FLOWSchemaFLOWStep *)self deleteFlowState];
  }

  v9 = [(FLOWSchemaFLOWStep *)self appContext];
  v10 = [v9 applySensitiveConditionsPolicy:v4];
  v11 = [v10 suppressMessage];

  if (v11)
  {
    [(FLOWSchemaFLOWStep *)self deleteAppContext];
  }

  v12 = [(FLOWSchemaFLOWStep *)self domainContexts];
  v13 = [(SISchemaInstrumentationMessage *)self _pruneSuppressedMessagesFromArray:v12 underConditions:v4];
  [(FLOWSchemaFLOWStep *)self setDomainContexts:v13];

  v14 = [(FLOWSchemaFLOWStep *)self platformContexts];
  v15 = [(SISchemaInstrumentationMessage *)self _pruneSuppressedMessagesFromArray:v14 underConditions:v4];
  [(FLOWSchemaFLOWStep *)self setPlatformContexts:v15];

  v16 = [(FLOWSchemaFLOWStep *)self platformRelatedContext];
  v17 = [v16 applySensitiveConditionsPolicy:v4];
  v18 = [v17 suppressMessage];

  if (v18)
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