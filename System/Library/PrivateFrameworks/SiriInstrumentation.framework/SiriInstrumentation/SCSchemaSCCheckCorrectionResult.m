@interface SCSchemaSCCheckCorrectionResult
- (BOOL)isEqual:(id)a3;
- (NSData)jsonData;
- (SCSchemaSCCheckCorrectionResult)initWithDictionary:(id)a3;
- (SCSchemaSCCheckCorrectionResult)initWithJSON:(id)a3;
- (id)dictionaryRepresentation;
- (id)suppressMessageUnderConditions;
- (unint64_t)hash;
- (void)addIncomingEntities:(id)a3;
- (void)addReferredEntities:(id)a3;
- (void)writeTo:(id)a3;
@end

@implementation SCSchemaSCCheckCorrectionResult

- (SCSchemaSCCheckCorrectionResult)initWithDictionary:(id)a3
{
  v41 = *MEMORY[0x1E69E9840];
  v4 = a3;
  v38.receiver = self;
  v38.super_class = SCSchemaSCCheckCorrectionResult;
  v5 = [(SCSchemaSCCheckCorrectionResult *)&v38 init];
  if (v5)
  {
    v6 = [v4 objectForKeyedSubscript:@"correctedAttribute"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v7 = [v6 copy];
      [(SCSchemaSCCheckCorrectionResult *)v5 setCorrectedAttribute:v7];
    }

    v8 = [v4 objectForKeyedSubscript:@"correctionType"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      -[SCSchemaSCCheckCorrectionResult setCorrectionType:](v5, "setCorrectionType:", [v8 intValue]);
    }

    v9 = [v4 objectForKeyedSubscript:@"referredEntities"];
    objc_opt_class();
    v29 = v8;
    if (objc_opt_isKindOfClass())
    {
      v10 = v6;
      v36 = 0u;
      v37 = 0u;
      v34 = 0u;
      v35 = 0u;
      v11 = v9;
      v12 = [v11 countByEnumeratingWithState:&v34 objects:v40 count:16];
      if (v12)
      {
        v13 = v12;
        v14 = *v35;
        do
        {
          v15 = 0;
          do
          {
            if (*v35 != v14)
            {
              objc_enumerationMutation(v11);
            }

            v16 = *(*(&v34 + 1) + 8 * v15);
            objc_opt_class();
            if (objc_opt_isKindOfClass())
            {
              v17 = [v16 copy];
              [(SCSchemaSCCheckCorrectionResult *)v5 addReferredEntities:v17];
            }

            ++v15;
          }

          while (v13 != v15);
          v13 = [v11 countByEnumeratingWithState:&v34 objects:v40 count:16];
        }

        while (v13);
      }

      v6 = v10;
      v8 = v29;
    }

    v18 = [v4 objectForKeyedSubscript:@"incomingEntities"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v28 = v6;
      v32 = 0u;
      v33 = 0u;
      v30 = 0u;
      v31 = 0u;
      v19 = v18;
      v20 = [v19 countByEnumeratingWithState:&v30 objects:v39 count:16];
      if (v20)
      {
        v21 = v20;
        v22 = *v31;
        do
        {
          v23 = 0;
          do
          {
            if (*v31 != v22)
            {
              objc_enumerationMutation(v19);
            }

            v24 = *(*(&v30 + 1) + 8 * v23);
            objc_opt_class();
            if (objc_opt_isKindOfClass())
            {
              v25 = [v24 copy];
              [(SCSchemaSCCheckCorrectionResult *)v5 addIncomingEntities:v25];
            }

            ++v23;
          }

          while (v21 != v23);
          v21 = [v19 countByEnumeratingWithState:&v30 objects:v39 count:16];
        }

        while (v21);
      }

      v6 = v28;
      v8 = v29;
    }

    v26 = v5;
  }

  return v5;
}

- (SCSchemaSCCheckCorrectionResult)initWithJSON:(id)a3
{
  v7 = 0;
  v4 = [MEMORY[0x1E696ACB0] JSONObjectWithData:a3 options:0 error:&v7];
  if (v7 || (objc_opt_class(), (objc_opt_isKindOfClass() & 1) == 0))
  {
    v5 = 0;
  }

  else
  {
    self = [(SCSchemaSCCheckCorrectionResult *)self initWithDictionary:v4];
    v5 = self;
  }

  return v5;
}

- (NSData)jsonData
{
  v2 = [(SCSchemaSCCheckCorrectionResult *)self dictionaryRepresentation];
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
  if (self->_correctedAttribute)
  {
    v4 = [(SCSchemaSCCheckCorrectionResult *)self correctedAttribute];
    v5 = [v4 copy];
    [v3 setObject:v5 forKeyedSubscript:@"correctedAttribute"];
  }

  if (*&self->_has)
  {
    v6 = [(SCSchemaSCCheckCorrectionResult *)self correctionType]- 1;
    if (v6 > 5)
    {
      v7 = @"SCCORRECTIONTYPE_UNKNOWN";
    }

    else
    {
      v7 = off_1E78E2AE0[v6];
    }

    [v3 setObject:v7 forKeyedSubscript:@"correctionType"];
  }

  if (self->_incomingEntities)
  {
    v8 = [(SCSchemaSCCheckCorrectionResult *)self incomingEntities];
    v9 = [v8 copy];
    [v3 setObject:v9 forKeyedSubscript:@"incomingEntities"];
  }

  if (self->_referredEntities)
  {
    v10 = [(SCSchemaSCCheckCorrectionResult *)self referredEntities];
    v11 = [v10 copy];
    [v3 setObject:v11 forKeyedSubscript:@"referredEntities"];
  }

  [(SISchemaInstrumentationMessage *)self willProduceDictionaryRepresentation:v3];

  return v3;
}

- (unint64_t)hash
{
  v3 = [(NSString *)self->_correctedAttribute hash];
  if (*&self->_has)
  {
    v4 = 2654435761 * self->_correctionType;
  }

  else
  {
    v4 = 0;
  }

  v5 = v4 ^ v3;
  v6 = [(NSArray *)self->_referredEntities hash];
  return v5 ^ v6 ^ [(NSArray *)self->_incomingEntities hash];
}

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  if (![v4 isMemberOfClass:objc_opt_class()])
  {
    goto LABEL_20;
  }

  v5 = [(SCSchemaSCCheckCorrectionResult *)self correctedAttribute];
  v6 = [v4 correctedAttribute];
  if ((v5 != 0) == (v6 == 0))
  {
    goto LABEL_19;
  }

  v7 = [(SCSchemaSCCheckCorrectionResult *)self correctedAttribute];
  if (v7)
  {
    v8 = v7;
    v9 = [(SCSchemaSCCheckCorrectionResult *)self correctedAttribute];
    v10 = [v4 correctedAttribute];
    v11 = [v9 isEqual:v10];

    if (!v11)
    {
      goto LABEL_20;
    }
  }

  else
  {
  }

  if ((*&self->_has & 1) != (v4[40] & 1))
  {
    goto LABEL_20;
  }

  if (*&self->_has)
  {
    correctionType = self->_correctionType;
    if (correctionType != [v4 correctionType])
    {
      goto LABEL_20;
    }
  }

  v5 = [(SCSchemaSCCheckCorrectionResult *)self referredEntities];
  v6 = [v4 referredEntities];
  if ((v5 != 0) == (v6 == 0))
  {
    goto LABEL_19;
  }

  v13 = [(SCSchemaSCCheckCorrectionResult *)self referredEntities];
  if (v13)
  {
    v14 = v13;
    v15 = [(SCSchemaSCCheckCorrectionResult *)self referredEntities];
    v16 = [v4 referredEntities];
    v17 = [v15 isEqual:v16];

    if (!v17)
    {
      goto LABEL_20;
    }
  }

  else
  {
  }

  v5 = [(SCSchemaSCCheckCorrectionResult *)self incomingEntities];
  v6 = [v4 incomingEntities];
  if ((v5 != 0) != (v6 == 0))
  {
    v18 = [(SCSchemaSCCheckCorrectionResult *)self incomingEntities];
    if (!v18)
    {

LABEL_23:
      v23 = 1;
      goto LABEL_21;
    }

    v19 = v18;
    v20 = [(SCSchemaSCCheckCorrectionResult *)self incomingEntities];
    v21 = [v4 incomingEntities];
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
  v26 = *MEMORY[0x1E69E9840];
  v4 = a3;
  v5 = [(SCSchemaSCCheckCorrectionResult *)self correctedAttribute];

  if (v5)
  {
    PBDataWriterWriteStringField();
  }

  if (*&self->_has)
  {
    PBDataWriterWriteInt32Field();
  }

  v22 = 0u;
  v23 = 0u;
  v20 = 0u;
  v21 = 0u;
  v6 = self->_referredEntities;
  v7 = [(NSArray *)v6 countByEnumeratingWithState:&v20 objects:v25 count:16];
  if (v7)
  {
    v8 = v7;
    v9 = *v21;
    do
    {
      v10 = 0;
      do
      {
        if (*v21 != v9)
        {
          objc_enumerationMutation(v6);
        }

        PBDataWriterWriteStringField();
        ++v10;
      }

      while (v8 != v10);
      v8 = [(NSArray *)v6 countByEnumeratingWithState:&v20 objects:v25 count:16];
    }

    while (v8);
  }

  v18 = 0u;
  v19 = 0u;
  v16 = 0u;
  v17 = 0u;
  v11 = self->_incomingEntities;
  v12 = [(NSArray *)v11 countByEnumeratingWithState:&v16 objects:v24 count:16];
  if (v12)
  {
    v13 = v12;
    v14 = *v17;
    do
    {
      v15 = 0;
      do
      {
        if (*v17 != v14)
        {
          objc_enumerationMutation(v11);
        }

        PBDataWriterWriteStringField();
        ++v15;
      }

      while (v13 != v15);
      v13 = [(NSArray *)v11 countByEnumeratingWithState:&v16 objects:v24 count:16];
    }

    while (v13);
  }
}

- (void)addIncomingEntities:(id)a3
{
  v4 = a3;
  incomingEntities = self->_incomingEntities;
  v8 = v4;
  if (!incomingEntities)
  {
    v6 = [MEMORY[0x1E695DF70] array];
    v7 = self->_incomingEntities;
    self->_incomingEntities = v6;

    v4 = v8;
    incomingEntities = self->_incomingEntities;
  }

  [(NSArray *)incomingEntities addObject:v4];
}

- (void)addReferredEntities:(id)a3
{
  v4 = a3;
  referredEntities = self->_referredEntities;
  v8 = v4;
  if (!referredEntities)
  {
    v6 = [MEMORY[0x1E695DF70] array];
    v7 = self->_referredEntities;
    self->_referredEntities = v6;

    v4 = v8;
    referredEntities = self->_referredEntities;
  }

  [(NSArray *)referredEntities addObject:v4];
}

- (id)suppressMessageUnderConditions
{
  v2 = objc_alloc_init(SISensitiveConditionsSet);
  [(SISensitiveConditionsSet *)v2 addCondition:1];

  return v2;
}

@end