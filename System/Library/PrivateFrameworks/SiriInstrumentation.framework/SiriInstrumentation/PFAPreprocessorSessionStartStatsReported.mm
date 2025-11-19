@interface PFAPreprocessorSessionStartStatsReported
- (BOOL)isEqual:(id)a3;
- (NSData)jsonData;
- (PFAPreprocessorSessionStartStatsReported)initWithDictionary:(id)a3;
- (PFAPreprocessorSessionStartStatsReported)initWithJSON:(id)a3;
- (id)applySensitiveConditionsPolicy:(id)a3;
- (id)dictionaryRepresentation;
- (id)suppressMessageUnderConditions;
- (unint64_t)hash;
- (void)addAnyEventTypeStatistics:(id)a3;
- (void)writeTo:(id)a3;
@end

@implementation PFAPreprocessorSessionStartStatsReported

- (PFAPreprocessorSessionStartStatsReported)initWithDictionary:(id)a3
{
  v26 = *MEMORY[0x1E69E9840];
  v4 = a3;
  v24.receiver = self;
  v24.super_class = PFAPreprocessorSessionStartStatsReported;
  v5 = [(PFAPreprocessorSessionStartStatsReported *)&v24 init];
  if (v5)
  {
    v6 = [v4 objectForKeyedSubscript:@"clockIdentifier"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v7 = [[SISchemaUUID alloc] initWithDictionary:v6];
      [(PFAPreprocessorSessionStartStatsReported *)v5 setClockIdentifier:v7];
    }

    v8 = [v4 objectForKeyedSubscript:@"messageCount"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      -[PFAPreprocessorSessionStartStatsReported setMessageCount:](v5, "setMessageCount:", [v8 unsignedIntValue]);
    }

    v9 = [v4 objectForKeyedSubscript:@"anyEventTypeStatistics"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v19 = v8;
      v22 = 0u;
      v23 = 0u;
      v20 = 0u;
      v21 = 0u;
      v10 = v9;
      v11 = [v10 countByEnumeratingWithState:&v20 objects:v25 count:16];
      if (v11)
      {
        v12 = v11;
        v13 = *v21;
        do
        {
          for (i = 0; i != v12; ++i)
          {
            if (*v21 != v13)
            {
              objc_enumerationMutation(v10);
            }

            v15 = *(*(&v20 + 1) + 8 * i);
            objc_opt_class();
            if (objc_opt_isKindOfClass())
            {
              v16 = [[PFAAnyEventTypeStatistics alloc] initWithDictionary:v15];
              [(PFAPreprocessorSessionStartStatsReported *)v5 addAnyEventTypeStatistics:v16];
            }
          }

          v12 = [v10 countByEnumeratingWithState:&v20 objects:v25 count:16];
        }

        while (v12);
      }

      v8 = v19;
    }

    v17 = v5;
  }

  return v5;
}

- (PFAPreprocessorSessionStartStatsReported)initWithJSON:(id)a3
{
  v7 = 0;
  v4 = [MEMORY[0x1E696ACB0] JSONObjectWithData:a3 options:0 error:&v7];
  if (v7 || (objc_opt_class(), (objc_opt_isKindOfClass() & 1) == 0))
  {
    v5 = 0;
  }

  else
  {
    self = [(PFAPreprocessorSessionStartStatsReported *)self initWithDictionary:v4];
    v5 = self;
  }

  return v5;
}

- (NSData)jsonData
{
  v2 = [(PFAPreprocessorSessionStartStatsReported *)self dictionaryRepresentation];
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
  v22 = *MEMORY[0x1E69E9840];
  v3 = [MEMORY[0x1E695DF90] dictionary];
  if ([(NSArray *)self->_anyEventTypeStatistics count])
  {
    v4 = [MEMORY[0x1E695DF70] array];
    v17 = 0u;
    v18 = 0u;
    v19 = 0u;
    v20 = 0u;
    v5 = self->_anyEventTypeStatistics;
    v6 = [(NSArray *)v5 countByEnumeratingWithState:&v17 objects:v21 count:16];
    if (v6)
    {
      v7 = v6;
      v8 = *v18;
      do
      {
        for (i = 0; i != v7; ++i)
        {
          if (*v18 != v8)
          {
            objc_enumerationMutation(v5);
          }

          v10 = [*(*(&v17 + 1) + 8 * i) dictionaryRepresentation];
          if (v10)
          {
            [v4 addObject:v10];
          }

          else
          {
            v11 = [MEMORY[0x1E695DFB0] null];
            [v4 addObject:v11];
          }
        }

        v7 = [(NSArray *)v5 countByEnumeratingWithState:&v17 objects:v21 count:16];
      }

      while (v7);
    }

    [v3 setObject:v4 forKeyedSubscript:@"anyEventTypeStatistics"];
  }

  if (self->_clockIdentifier)
  {
    v12 = [(PFAPreprocessorSessionStartStatsReported *)self clockIdentifier];
    v13 = [v12 dictionaryRepresentation];
    if (v13)
    {
      [v3 setObject:v13 forKeyedSubscript:@"clockIdentifier"];
    }

    else
    {
      v14 = [MEMORY[0x1E695DFB0] null];
      [v3 setObject:v14 forKeyedSubscript:@"clockIdentifier"];
    }
  }

  if (*&self->_has)
  {
    v15 = [MEMORY[0x1E696AD98] numberWithUnsignedInt:{-[PFAPreprocessorSessionStartStatsReported messageCount](self, "messageCount")}];
    [v3 setObject:v15 forKeyedSubscript:@"messageCount"];
  }

  [(SISchemaInstrumentationMessage *)self willProduceDictionaryRepresentation:v3, v17];

  return v3;
}

- (unint64_t)hash
{
  v3 = [(SISchemaUUID *)self->_clockIdentifier hash];
  if (*&self->_has)
  {
    v4 = 2654435761 * self->_messageCount;
  }

  else
  {
    v4 = 0;
  }

  return v4 ^ v3 ^ [(NSArray *)self->_anyEventTypeStatistics hash];
}

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  if (![v4 isMemberOfClass:objc_opt_class()])
  {
    goto LABEL_15;
  }

  v5 = [(PFAPreprocessorSessionStartStatsReported *)self clockIdentifier];
  v6 = [v4 clockIdentifier];
  if ((v5 != 0) == (v6 == 0))
  {
    goto LABEL_14;
  }

  v7 = [(PFAPreprocessorSessionStartStatsReported *)self clockIdentifier];
  if (v7)
  {
    v8 = v7;
    v9 = [(PFAPreprocessorSessionStartStatsReported *)self clockIdentifier];
    v10 = [v4 clockIdentifier];
    v11 = [v9 isEqual:v10];

    if (!v11)
    {
      goto LABEL_15;
    }
  }

  else
  {
  }

  if ((*&self->_has & 1) != (v4[32] & 1))
  {
    goto LABEL_15;
  }

  if (*&self->_has)
  {
    messageCount = self->_messageCount;
    if (messageCount != [v4 messageCount])
    {
      goto LABEL_15;
    }
  }

  v5 = [(PFAPreprocessorSessionStartStatsReported *)self anyEventTypeStatistics];
  v6 = [v4 anyEventTypeStatistics];
  if ((v5 != 0) != (v6 == 0))
  {
    v13 = [(PFAPreprocessorSessionStartStatsReported *)self anyEventTypeStatistics];
    if (!v13)
    {

LABEL_18:
      v18 = 1;
      goto LABEL_16;
    }

    v14 = v13;
    v15 = [(PFAPreprocessorSessionStartStatsReported *)self anyEventTypeStatistics];
    v16 = [v4 anyEventTypeStatistics];
    v17 = [v15 isEqual:v16];

    if (v17)
    {
      goto LABEL_18;
    }
  }

  else
  {
LABEL_14:
  }

LABEL_15:
  v18 = 0;
LABEL_16:

  return v18;
}

- (void)writeTo:(id)a3
{
  v17 = *MEMORY[0x1E69E9840];
  v4 = a3;
  v5 = [(PFAPreprocessorSessionStartStatsReported *)self clockIdentifier];

  if (v5)
  {
    v6 = [(PFAPreprocessorSessionStartStatsReported *)self clockIdentifier];
    PBDataWriterWriteSubmessage();
  }

  if (*&self->_has)
  {
    PBDataWriterWriteUint32Field();
  }

  v14 = 0u;
  v15 = 0u;
  v12 = 0u;
  v13 = 0u;
  v7 = self->_anyEventTypeStatistics;
  v8 = [(NSArray *)v7 countByEnumeratingWithState:&v12 objects:v16 count:16];
  if (v8)
  {
    v9 = v8;
    v10 = *v13;
    do
    {
      v11 = 0;
      do
      {
        if (*v13 != v10)
        {
          objc_enumerationMutation(v7);
        }

        PBDataWriterWriteSubmessage();
        ++v11;
      }

      while (v9 != v11);
      v9 = [(NSArray *)v7 countByEnumeratingWithState:&v12 objects:v16 count:16];
    }

    while (v9);
  }
}

- (void)addAnyEventTypeStatistics:(id)a3
{
  v4 = a3;
  anyEventTypeStatistics = self->_anyEventTypeStatistics;
  v8 = v4;
  if (!anyEventTypeStatistics)
  {
    v6 = [MEMORY[0x1E695DF70] array];
    v7 = self->_anyEventTypeStatistics;
    self->_anyEventTypeStatistics = v6;

    v4 = v8;
    anyEventTypeStatistics = self->_anyEventTypeStatistics;
  }

  [(NSArray *)anyEventTypeStatistics addObject:v4];
}

- (id)applySensitiveConditionsPolicy:(id)a3
{
  v4 = a3;
  v12.receiver = self;
  v12.super_class = PFAPreprocessorSessionStartStatsReported;
  v5 = [(SISchemaInstrumentationMessage *)&v12 applySensitiveConditionsPolicy:v4];
  v6 = [(PFAPreprocessorSessionStartStatsReported *)self clockIdentifier];
  v7 = [v6 applySensitiveConditionsPolicy:v4];
  v8 = [v7 suppressMessage];

  if (v8)
  {
    [(PFAPreprocessorSessionStartStatsReported *)self deleteClockIdentifier];
  }

  v9 = [(PFAPreprocessorSessionStartStatsReported *)self anyEventTypeStatistics];
  v10 = [(SISchemaInstrumentationMessage *)self _pruneSuppressedMessagesFromArray:v9 underConditions:v4];
  [(PFAPreprocessorSessionStartStatsReported *)self setAnyEventTypeStatistics:v10];

  return v5;
}

- (id)suppressMessageUnderConditions
{
  v2 = objc_alloc_init(SISensitiveConditionsSet);
  [(SISensitiveConditionsSet *)v2 addCondition:1];

  return v2;
}

@end