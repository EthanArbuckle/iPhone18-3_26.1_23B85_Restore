@interface SIRISETUPSchemaSIRISETUPPHSEnrollmentSessionSummary
- (BOOL)isEqual:(id)a3;
- (NSData)jsonData;
- (SIRISETUPSchemaSIRISETUPPHSEnrollmentSessionSummary)initWithDictionary:(id)a3;
- (SIRISETUPSchemaSIRISETUPPHSEnrollmentSessionSummary)initWithJSON:(id)a3;
- (id)applySensitiveConditionsPolicy:(id)a3;
- (id)dictionaryRepresentation;
- (id)suppressMessageUnderConditions;
- (unint64_t)hash;
- (void)addPageAttempts:(id)a3;
- (void)setHasLastCompletedPage:(BOOL)a3;
- (void)writeTo:(id)a3;
@end

@implementation SIRISETUPSchemaSIRISETUPPHSEnrollmentSessionSummary

- (SIRISETUPSchemaSIRISETUPPHSEnrollmentSessionSummary)initWithDictionary:(id)a3
{
  v26 = *MEMORY[0x1E69E9840];
  v4 = a3;
  v24.receiver = self;
  v24.super_class = SIRISETUPSchemaSIRISETUPPHSEnrollmentSessionSummary;
  v5 = [(SIRISETUPSchemaSIRISETUPPHSEnrollmentSessionSummary *)&v24 init];
  if (v5)
  {
    v6 = [v4 objectForKeyedSubscript:@"lastOpenedPageNumber"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      -[SIRISETUPSchemaSIRISETUPPHSEnrollmentSessionSummary setLastOpenedPageNumber:](v5, "setLastOpenedPageNumber:", [v6 unsignedIntValue]);
    }

    v7 = [v4 objectForKeyedSubscript:@"lastCompletedPage"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      -[SIRISETUPSchemaSIRISETUPPHSEnrollmentSessionSummary setLastCompletedPage:](v5, "setLastCompletedPage:", [v7 unsignedIntValue]);
    }

    v8 = [v4 objectForKeyedSubscript:@"pageAttempts"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v18 = v7;
      v19 = v6;
      v22 = 0u;
      v23 = 0u;
      v20 = 0u;
      v21 = 0u;
      v9 = v8;
      v10 = [v9 countByEnumeratingWithState:&v20 objects:v25 count:16];
      if (v10)
      {
        v11 = v10;
        v12 = *v21;
        do
        {
          v13 = 0;
          do
          {
            if (*v21 != v12)
            {
              objc_enumerationMutation(v9);
            }

            v14 = *(*(&v20 + 1) + 8 * v13);
            objc_opt_class();
            if (objc_opt_isKindOfClass())
            {
              v15 = [[SIRISETUPSchemaSIRISETUPPHSEnrollmentPageAttempts alloc] initWithDictionary:v14];
              [(SIRISETUPSchemaSIRISETUPPHSEnrollmentSessionSummary *)v5 addPageAttempts:v15];
            }

            ++v13;
          }

          while (v11 != v13);
          v11 = [v9 countByEnumeratingWithState:&v20 objects:v25 count:16];
        }

        while (v11);
      }

      v7 = v18;
      v6 = v19;
    }

    v16 = v5;
  }

  return v5;
}

- (SIRISETUPSchemaSIRISETUPPHSEnrollmentSessionSummary)initWithJSON:(id)a3
{
  v7 = 0;
  v4 = [MEMORY[0x1E696ACB0] JSONObjectWithData:a3 options:0 error:&v7];
  if (v7 || (objc_opt_class(), (objc_opt_isKindOfClass() & 1) == 0))
  {
    v5 = 0;
  }

  else
  {
    self = [(SIRISETUPSchemaSIRISETUPPHSEnrollmentSessionSummary *)self initWithDictionary:v4];
    v5 = self;
  }

  return v5;
}

- (NSData)jsonData
{
  v2 = [(SIRISETUPSchemaSIRISETUPPHSEnrollmentSessionSummary *)self dictionaryRepresentation];
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
  has = self->_has;
  if ((has & 2) != 0)
  {
    v5 = [MEMORY[0x1E696AD98] numberWithUnsignedInt:{-[SIRISETUPSchemaSIRISETUPPHSEnrollmentSessionSummary lastCompletedPage](self, "lastCompletedPage")}];
    [v3 setObject:v5 forKeyedSubscript:@"lastCompletedPage"];

    has = self->_has;
  }

  if (has)
  {
    v6 = [MEMORY[0x1E696AD98] numberWithUnsignedInt:{-[SIRISETUPSchemaSIRISETUPPHSEnrollmentSessionSummary lastOpenedPageNumber](self, "lastOpenedPageNumber")}];
    [v3 setObject:v6 forKeyedSubscript:@"lastOpenedPageNumber"];
  }

  if ([(NSArray *)self->_pageAttempts count])
  {
    v7 = [MEMORY[0x1E695DF70] array];
    v16 = 0u;
    v17 = 0u;
    v18 = 0u;
    v19 = 0u;
    v8 = self->_pageAttempts;
    v9 = [(NSArray *)v8 countByEnumeratingWithState:&v16 objects:v20 count:16];
    if (v9)
    {
      v10 = v9;
      v11 = *v17;
      do
      {
        for (i = 0; i != v10; ++i)
        {
          if (*v17 != v11)
          {
            objc_enumerationMutation(v8);
          }

          v13 = [*(*(&v16 + 1) + 8 * i) dictionaryRepresentation];
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

        v10 = [(NSArray *)v8 countByEnumeratingWithState:&v16 objects:v20 count:16];
      }

      while (v10);
    }

    [v3 setObject:v7 forKeyedSubscript:@"pageAttempts"];
  }

  [(SISchemaInstrumentationMessage *)self willProduceDictionaryRepresentation:v3, v16];

  return v3;
}

- (unint64_t)hash
{
  if (*&self->_has)
  {
    v6 = 2654435761 * self->_lastOpenedPageNumber;
    if ((*&self->_has & 2) != 0)
    {
      goto LABEL_3;
    }

LABEL_5:
    v7 = 0;
    return v7 ^ v6 ^ [(NSArray *)self->_pageAttempts hash:v3];
  }

  v6 = 0;
  if ((*&self->_has & 2) == 0)
  {
    goto LABEL_5;
  }

LABEL_3:
  v7 = 2654435761 * self->_lastCompletedPage;
  return v7 ^ v6 ^ [(NSArray *)self->_pageAttempts hash:v3];
}

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  if (![v4 isMemberOfClass:objc_opt_class()])
  {
    goto LABEL_14;
  }

  has = self->_has;
  v6 = v4[24];
  if ((*&has & 1) != (v6 & 1))
  {
    goto LABEL_14;
  }

  if (*&has)
  {
    lastOpenedPageNumber = self->_lastOpenedPageNumber;
    if (lastOpenedPageNumber != [v4 lastOpenedPageNumber])
    {
      goto LABEL_14;
    }

    has = self->_has;
    v6 = v4[24];
  }

  v8 = (*&has >> 1) & 1;
  if (v8 == ((v6 >> 1) & 1))
  {
    if (!v8 || (lastCompletedPage = self->_lastCompletedPage, lastCompletedPage == [v4 lastCompletedPage]))
    {
      v10 = [(SIRISETUPSchemaSIRISETUPPHSEnrollmentSessionSummary *)self pageAttempts];
      v11 = [v4 pageAttempts];
      v12 = v11;
      if ((v10 != 0) != (v11 == 0))
      {
        v13 = [(SIRISETUPSchemaSIRISETUPPHSEnrollmentSessionSummary *)self pageAttempts];
        if (!v13)
        {

LABEL_17:
          v18 = 1;
          goto LABEL_15;
        }

        v14 = v13;
        v15 = [(SIRISETUPSchemaSIRISETUPPHSEnrollmentSessionSummary *)self pageAttempts];
        v16 = [v4 pageAttempts];
        v17 = [v15 isEqual:v16];

        if (v17)
        {
          goto LABEL_17;
        }
      }

      else
      {
      }
    }
  }

LABEL_14:
  v18 = 0;
LABEL_15:

  return v18;
}

- (void)writeTo:(id)a3
{
  v16 = *MEMORY[0x1E69E9840];
  v4 = a3;
  has = self->_has;
  if (has)
  {
    PBDataWriterWriteUint32Field();
    has = self->_has;
  }

  if ((has & 2) != 0)
  {
    PBDataWriterWriteUint32Field();
  }

  v13 = 0u;
  v14 = 0u;
  v11 = 0u;
  v12 = 0u;
  v6 = self->_pageAttempts;
  v7 = [(NSArray *)v6 countByEnumeratingWithState:&v11 objects:v15 count:16];
  if (v7)
  {
    v8 = v7;
    v9 = *v12;
    do
    {
      for (i = 0; i != v8; ++i)
      {
        if (*v12 != v9)
        {
          objc_enumerationMutation(v6);
        }

        PBDataWriterWriteSubmessage();
      }

      v8 = [(NSArray *)v6 countByEnumeratingWithState:&v11 objects:v15 count:16];
    }

    while (v8);
  }
}

- (void)addPageAttempts:(id)a3
{
  v4 = a3;
  pageAttempts = self->_pageAttempts;
  v8 = v4;
  if (!pageAttempts)
  {
    v6 = [MEMORY[0x1E695DF70] array];
    v7 = self->_pageAttempts;
    self->_pageAttempts = v6;

    v4 = v8;
    pageAttempts = self->_pageAttempts;
  }

  [(NSArray *)pageAttempts addObject:v4];
}

- (void)setHasLastCompletedPage:(BOOL)a3
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
  v9.receiver = self;
  v9.super_class = SIRISETUPSchemaSIRISETUPPHSEnrollmentSessionSummary;
  v4 = a3;
  v5 = [(SISchemaInstrumentationMessage *)&v9 applySensitiveConditionsPolicy:v4];
  v6 = [(SIRISETUPSchemaSIRISETUPPHSEnrollmentSessionSummary *)self pageAttempts:v9.receiver];
  v7 = [(SISchemaInstrumentationMessage *)self _pruneSuppressedMessagesFromArray:v6 underConditions:v4];

  [(SIRISETUPSchemaSIRISETUPPHSEnrollmentSessionSummary *)self setPageAttempts:v7];

  return v5;
}

- (id)suppressMessageUnderConditions
{
  v2 = objc_alloc_init(SISensitiveConditionsSet);
  [(SISensitiveConditionsSet *)v2 addCondition:1];

  return v2;
}

@end