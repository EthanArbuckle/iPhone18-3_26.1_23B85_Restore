@interface ODDSiriSchemaODDDictationExperimentDigestsReported
- (BOOL)isEqual:(id)a3;
- (NSData)jsonData;
- (ODDSiriSchemaODDDictationExperimentDigestsReported)initWithDictionary:(id)a3;
- (ODDSiriSchemaODDDictationExperimentDigestsReported)initWithJSON:(id)a3;
- (id)applySensitiveConditionsPolicy:(id)a3;
- (id)dictionaryRepresentation;
- (id)suppressMessageUnderConditions;
- (unint64_t)hash;
- (void)addDigests:(id)a3;
- (void)writeTo:(id)a3;
@end

@implementation ODDSiriSchemaODDDictationExperimentDigestsReported

- (ODDSiriSchemaODDDictationExperimentDigestsReported)initWithDictionary:(id)a3
{
  v29 = *MEMORY[0x1E69E9840];
  v4 = a3;
  v27.receiver = self;
  v27.super_class = ODDSiriSchemaODDDictationExperimentDigestsReported;
  v5 = [(ODDSiriSchemaODDDictationExperimentDigestsReported *)&v27 init];
  if (v5)
  {
    v6 = [v4 objectForKeyedSubscript:@"digestType"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      -[ODDSiriSchemaODDDictationExperimentDigestsReported setDigestType:](v5, "setDigestType:", [v6 intValue]);
    }

    v7 = [v4 objectForKeyedSubscript:@"experimentFixedDimensions"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v8 = [[ODDSiriSchemaODDExperimentFixedDimensions alloc] initWithDictionary:v7];
      [(ODDSiriSchemaODDDictationExperimentDigestsReported *)v5 setExperimentFixedDimensions:v8];
    }

    v9 = [v4 objectForKeyedSubscript:@"fixedDimensions"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v10 = [[ODDSiriSchemaODDFixedDimensions alloc] initWithDictionary:v9];
      [(ODDSiriSchemaODDDictationExperimentDigestsReported *)v5 setFixedDimensions:v10];
    }

    v11 = [v4 objectForKeyedSubscript:@"digests"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v21 = v9;
      v22 = v6;
      v25 = 0u;
      v26 = 0u;
      v23 = 0u;
      v24 = 0u;
      v12 = v11;
      v13 = [v12 countByEnumeratingWithState:&v23 objects:v28 count:16];
      if (v13)
      {
        v14 = v13;
        v15 = *v24;
        do
        {
          for (i = 0; i != v14; ++i)
          {
            if (*v24 != v15)
            {
              objc_enumerationMutation(v12);
            }

            v17 = *(*(&v23 + 1) + 8 * i);
            objc_opt_class();
            if (objc_opt_isKindOfClass())
            {
              v18 = [[ODDSiriSchemaODDDictationExperimentDigest alloc] initWithDictionary:v17];
              [(ODDSiriSchemaODDDictationExperimentDigestsReported *)v5 addDigests:v18];
            }
          }

          v14 = [v12 countByEnumeratingWithState:&v23 objects:v28 count:16];
        }

        while (v14);
      }

      v6 = v22;
      v9 = v21;
    }

    v19 = v5;
  }

  return v5;
}

- (ODDSiriSchemaODDDictationExperimentDigestsReported)initWithJSON:(id)a3
{
  v7 = 0;
  v4 = [MEMORY[0x1E696ACB0] JSONObjectWithData:a3 options:0 error:&v7];
  if (v7 || (objc_opt_class(), (objc_opt_isKindOfClass() & 1) == 0))
  {
    v5 = 0;
  }

  else
  {
    self = [(ODDSiriSchemaODDDictationExperimentDigestsReported *)self initWithDictionary:v4];
    v5 = self;
  }

  return v5;
}

- (NSData)jsonData
{
  v2 = [(ODDSiriSchemaODDDictationExperimentDigestsReported *)self dictionaryRepresentation];
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
  v26 = *MEMORY[0x1E69E9840];
  v3 = [MEMORY[0x1E695DF90] dictionary];
  if (*&self->_has)
  {
    v4 = [(ODDSiriSchemaODDDictationExperimentDigestsReported *)self digestType]- 1;
    if (v4 > 3)
    {
      v5 = @"ODDEXPERIMENTDIGESTTYPE_UNKNOWN";
    }

    else
    {
      v5 = off_1E78DD678[v4];
    }

    [v3 setObject:v5 forKeyedSubscript:@"digestType"];
  }

  if ([(NSArray *)self->_digests count])
  {
    v6 = [MEMORY[0x1E695DF70] array];
    v21 = 0u;
    v22 = 0u;
    v23 = 0u;
    v24 = 0u;
    v7 = self->_digests;
    v8 = [(NSArray *)v7 countByEnumeratingWithState:&v21 objects:v25 count:16];
    if (v8)
    {
      v9 = v8;
      v10 = *v22;
      do
      {
        for (i = 0; i != v9; ++i)
        {
          if (*v22 != v10)
          {
            objc_enumerationMutation(v7);
          }

          v12 = [*(*(&v21 + 1) + 8 * i) dictionaryRepresentation];
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

        v9 = [(NSArray *)v7 countByEnumeratingWithState:&v21 objects:v25 count:16];
      }

      while (v9);
    }

    [v3 setObject:v6 forKeyedSubscript:@"digests"];
  }

  if (self->_experimentFixedDimensions)
  {
    v14 = [(ODDSiriSchemaODDDictationExperimentDigestsReported *)self experimentFixedDimensions];
    v15 = [v14 dictionaryRepresentation];
    if (v15)
    {
      [v3 setObject:v15 forKeyedSubscript:@"experimentFixedDimensions"];
    }

    else
    {
      v16 = [MEMORY[0x1E695DFB0] null];
      [v3 setObject:v16 forKeyedSubscript:@"experimentFixedDimensions"];
    }
  }

  if (self->_fixedDimensions)
  {
    v17 = [(ODDSiriSchemaODDDictationExperimentDigestsReported *)self fixedDimensions];
    v18 = [v17 dictionaryRepresentation];
    if (v18)
    {
      [v3 setObject:v18 forKeyedSubscript:@"fixedDimensions"];
    }

    else
    {
      v19 = [MEMORY[0x1E695DFB0] null];
      [v3 setObject:v19 forKeyedSubscript:@"fixedDimensions"];
    }
  }

  [(SISchemaInstrumentationMessage *)self willProduceDictionaryRepresentation:v3, v21];

  return v3;
}

- (unint64_t)hash
{
  if (*&self->_has)
  {
    v3 = 2654435761 * self->_digestType;
  }

  else
  {
    v3 = 0;
  }

  v4 = [(ODDSiriSchemaODDExperimentFixedDimensions *)self->_experimentFixedDimensions hash]^ v3;
  v5 = [(ODDSiriSchemaODDFixedDimensions *)self->_fixedDimensions hash];
  return v4 ^ v5 ^ [(NSArray *)self->_digests hash];
}

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  if (![v4 isMemberOfClass:objc_opt_class()])
  {
    goto LABEL_20;
  }

  if ((*&self->_has & 1) != (v4[40] & 1))
  {
    goto LABEL_20;
  }

  if (*&self->_has)
  {
    digestType = self->_digestType;
    if (digestType != [v4 digestType])
    {
      goto LABEL_20;
    }
  }

  v6 = [(ODDSiriSchemaODDDictationExperimentDigestsReported *)self experimentFixedDimensions];
  v7 = [v4 experimentFixedDimensions];
  if ((v6 != 0) == (v7 == 0))
  {
    goto LABEL_19;
  }

  v8 = [(ODDSiriSchemaODDDictationExperimentDigestsReported *)self experimentFixedDimensions];
  if (v8)
  {
    v9 = v8;
    v10 = [(ODDSiriSchemaODDDictationExperimentDigestsReported *)self experimentFixedDimensions];
    v11 = [v4 experimentFixedDimensions];
    v12 = [v10 isEqual:v11];

    if (!v12)
    {
      goto LABEL_20;
    }
  }

  else
  {
  }

  v6 = [(ODDSiriSchemaODDDictationExperimentDigestsReported *)self fixedDimensions];
  v7 = [v4 fixedDimensions];
  if ((v6 != 0) == (v7 == 0))
  {
    goto LABEL_19;
  }

  v13 = [(ODDSiriSchemaODDDictationExperimentDigestsReported *)self fixedDimensions];
  if (v13)
  {
    v14 = v13;
    v15 = [(ODDSiriSchemaODDDictationExperimentDigestsReported *)self fixedDimensions];
    v16 = [v4 fixedDimensions];
    v17 = [v15 isEqual:v16];

    if (!v17)
    {
      goto LABEL_20;
    }
  }

  else
  {
  }

  v6 = [(ODDSiriSchemaODDDictationExperimentDigestsReported *)self digests];
  v7 = [v4 digests];
  if ((v6 != 0) != (v7 == 0))
  {
    v18 = [(ODDSiriSchemaODDDictationExperimentDigestsReported *)self digests];
    if (!v18)
    {

LABEL_23:
      v23 = 1;
      goto LABEL_21;
    }

    v19 = v18;
    v20 = [(ODDSiriSchemaODDDictationExperimentDigestsReported *)self digests];
    v21 = [v4 digests];
    v22 = [v20 isEqual:v21];

    if (v22)
    {
      goto LABEL_23;
    }
  }

  else
  {
LABEL_19:
  }

LABEL_20:
  v23 = 0;
LABEL_21:

  return v23;
}

- (void)writeTo:(id)a3
{
  v19 = *MEMORY[0x1E69E9840];
  v4 = a3;
  if (*&self->_has)
  {
    PBDataWriterWriteInt32Field();
  }

  v5 = [(ODDSiriSchemaODDDictationExperimentDigestsReported *)self experimentFixedDimensions];

  if (v5)
  {
    v6 = [(ODDSiriSchemaODDDictationExperimentDigestsReported *)self experimentFixedDimensions];
    PBDataWriterWriteSubmessage();
  }

  v7 = [(ODDSiriSchemaODDDictationExperimentDigestsReported *)self fixedDimensions];

  if (v7)
  {
    v8 = [(ODDSiriSchemaODDDictationExperimentDigestsReported *)self fixedDimensions];
    PBDataWriterWriteSubmessage();
  }

  v16 = 0u;
  v17 = 0u;
  v14 = 0u;
  v15 = 0u;
  v9 = self->_digests;
  v10 = [(NSArray *)v9 countByEnumeratingWithState:&v14 objects:v18 count:16];
  if (v10)
  {
    v11 = v10;
    v12 = *v15;
    do
    {
      v13 = 0;
      do
      {
        if (*v15 != v12)
        {
          objc_enumerationMutation(v9);
        }

        PBDataWriterWriteSubmessage();
        ++v13;
      }

      while (v11 != v13);
      v11 = [(NSArray *)v9 countByEnumeratingWithState:&v14 objects:v18 count:16];
    }

    while (v11);
  }
}

- (void)addDigests:(id)a3
{
  v4 = a3;
  digests = self->_digests;
  v8 = v4;
  if (!digests)
  {
    v6 = [MEMORY[0x1E695DF70] array];
    v7 = self->_digests;
    self->_digests = v6;

    v4 = v8;
    digests = self->_digests;
  }

  [(NSArray *)digests addObject:v4];
}

- (id)applySensitiveConditionsPolicy:(id)a3
{
  v4 = a3;
  v15.receiver = self;
  v15.super_class = ODDSiriSchemaODDDictationExperimentDigestsReported;
  v5 = [(SISchemaInstrumentationMessage *)&v15 applySensitiveConditionsPolicy:v4];
  v6 = [(ODDSiriSchemaODDDictationExperimentDigestsReported *)self experimentFixedDimensions];
  v7 = [v6 applySensitiveConditionsPolicy:v4];
  v8 = [v7 suppressMessage];

  if (v8)
  {
    [(ODDSiriSchemaODDDictationExperimentDigestsReported *)self deleteExperimentFixedDimensions];
  }

  v9 = [(ODDSiriSchemaODDDictationExperimentDigestsReported *)self fixedDimensions];
  v10 = [v9 applySensitiveConditionsPolicy:v4];
  v11 = [v10 suppressMessage];

  if (v11)
  {
    [(ODDSiriSchemaODDDictationExperimentDigestsReported *)self deleteFixedDimensions];
  }

  v12 = [(ODDSiriSchemaODDDictationExperimentDigestsReported *)self digests];
  v13 = [(SISchemaInstrumentationMessage *)self _pruneSuppressedMessagesFromArray:v12 underConditions:v4];
  [(ODDSiriSchemaODDDictationExperimentDigestsReported *)self setDigests:v13];

  return v5;
}

- (id)suppressMessageUnderConditions
{
  v2 = objc_alloc_init(SISensitiveConditionsSet);
  [(SISensitiveConditionsSet *)v2 addCondition:1];

  return v2;
}

@end