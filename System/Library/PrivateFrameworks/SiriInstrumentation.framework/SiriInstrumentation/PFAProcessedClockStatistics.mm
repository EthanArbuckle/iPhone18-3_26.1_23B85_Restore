@interface PFAProcessedClockStatistics
- (BOOL)isEqual:(id)a3;
- (NSData)jsonData;
- (PFAProcessedClockStatistics)initWithDictionary:(id)a3;
- (PFAProcessedClockStatistics)initWithJSON:(id)a3;
- (id)applySensitiveConditionsPolicy:(id)a3;
- (id)dictionaryRepresentation;
- (id)suppressMessageUnderConditions;
- (unint64_t)hash;
- (void)addPublishedEventStatistics:(id)a3;
- (void)addRedactedEventStatistics:(id)a3;
- (void)writeTo:(id)a3;
@end

@implementation PFAProcessedClockStatistics

- (PFAProcessedClockStatistics)initWithDictionary:(id)a3
{
  v41 = *MEMORY[0x1E69E9840];
  v4 = a3;
  v38.receiver = self;
  v38.super_class = PFAProcessedClockStatistics;
  v5 = [(PFAProcessedClockStatistics *)&v38 init];
  if (v5)
  {
    v6 = [v4 objectForKeyedSubscript:@"clockIdentifier"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v7 = [[SISchemaUUID alloc] initWithDictionary:v6];
      [(PFAProcessedClockStatistics *)v5 setClockIdentifier:v7];
    }

    v8 = [v4 objectForKeyedSubscript:@"messageCount"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      -[PFAProcessedClockStatistics setMessageCount:](v5, "setMessageCount:", [v8 unsignedIntValue]);
    }

    v9 = [v4 objectForKeyedSubscript:@"publishedEventStatistics"];
    objc_opt_class();
    v28 = v9;
    v29 = v8;
    if (objc_opt_isKindOfClass())
    {
      v36 = 0u;
      v37 = 0u;
      v34 = 0u;
      v35 = 0u;
      v10 = v9;
      v11 = [v10 countByEnumeratingWithState:&v34 objects:v40 count:16];
      if (v11)
      {
        v12 = v11;
        v13 = *v35;
        do
        {
          v14 = 0;
          do
          {
            if (*v35 != v13)
            {
              objc_enumerationMutation(v10);
            }

            v15 = *(*(&v34 + 1) + 8 * v14);
            objc_opt_class();
            if (objc_opt_isKindOfClass())
            {
              v16 = [[PFAAnyEventTypeStatistics alloc] initWithDictionary:v15];
              [(PFAProcessedClockStatistics *)v5 addPublishedEventStatistics:v16];
            }

            ++v14;
          }

          while (v12 != v14);
          v12 = [v10 countByEnumeratingWithState:&v34 objects:v40 count:16];
        }

        while (v12);
      }

      v9 = v28;
      v8 = v29;
    }

    v17 = [v4 objectForKeyedSubscript:@"redactedEventStatistics"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v27 = v6;
      v32 = 0u;
      v33 = 0u;
      v30 = 0u;
      v31 = 0u;
      v18 = v17;
      v19 = [v18 countByEnumeratingWithState:&v30 objects:v39 count:16];
      if (v19)
      {
        v20 = v19;
        v21 = *v31;
        do
        {
          v22 = 0;
          do
          {
            if (*v31 != v21)
            {
              objc_enumerationMutation(v18);
            }

            v23 = *(*(&v30 + 1) + 8 * v22);
            objc_opt_class();
            if (objc_opt_isKindOfClass())
            {
              v24 = [[PFAAnyEventTypeStatistics alloc] initWithDictionary:v23];
              [(PFAProcessedClockStatistics *)v5 addRedactedEventStatistics:v24];
            }

            ++v22;
          }

          while (v20 != v22);
          v20 = [v18 countByEnumeratingWithState:&v30 objects:v39 count:16];
        }

        while (v20);
      }

      v6 = v27;
      v9 = v28;
      v8 = v29;
    }

    v25 = v5;
  }

  return v5;
}

- (PFAProcessedClockStatistics)initWithJSON:(id)a3
{
  v7 = 0;
  v4 = [MEMORY[0x1E696ACB0] JSONObjectWithData:a3 options:0 error:&v7];
  if (v7 || (objc_opt_class(), (objc_opt_isKindOfClass() & 1) == 0))
  {
    v5 = 0;
  }

  else
  {
    self = [(PFAProcessedClockStatistics *)self initWithDictionary:v4];
    v5 = self;
  }

  return v5;
}

- (NSData)jsonData
{
  v2 = [(PFAProcessedClockStatistics *)self dictionaryRepresentation];
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
  v35 = *MEMORY[0x1E69E9840];
  v3 = [MEMORY[0x1E695DF90] dictionary];
  if (self->_clockIdentifier)
  {
    v4 = [(PFAProcessedClockStatistics *)self clockIdentifier];
    v5 = [v4 dictionaryRepresentation];
    if (v5)
    {
      [v3 setObject:v5 forKeyedSubscript:@"clockIdentifier"];
    }

    else
    {
      v6 = [MEMORY[0x1E695DFB0] null];
      [v3 setObject:v6 forKeyedSubscript:@"clockIdentifier"];
    }
  }

  if (*&self->_has)
  {
    v7 = [MEMORY[0x1E696AD98] numberWithUnsignedInt:{-[PFAProcessedClockStatistics messageCount](self, "messageCount")}];
    [v3 setObject:v7 forKeyedSubscript:@"messageCount"];
  }

  if ([(NSArray *)self->_publishedEventStatistics count])
  {
    v8 = [MEMORY[0x1E695DF70] array];
    v29 = 0u;
    v30 = 0u;
    v31 = 0u;
    v32 = 0u;
    v9 = self->_publishedEventStatistics;
    v10 = [(NSArray *)v9 countByEnumeratingWithState:&v29 objects:v34 count:16];
    if (v10)
    {
      v11 = v10;
      v12 = *v30;
      do
      {
        for (i = 0; i != v11; ++i)
        {
          if (*v30 != v12)
          {
            objc_enumerationMutation(v9);
          }

          v14 = [*(*(&v29 + 1) + 8 * i) dictionaryRepresentation];
          if (v14)
          {
            [v8 addObject:v14];
          }

          else
          {
            v15 = [MEMORY[0x1E695DFB0] null];
            [v8 addObject:v15];
          }
        }

        v11 = [(NSArray *)v9 countByEnumeratingWithState:&v29 objects:v34 count:16];
      }

      while (v11);
    }

    [v3 setObject:v8 forKeyedSubscript:@"publishedEventStatistics"];
  }

  if ([(NSArray *)self->_redactedEventStatistics count])
  {
    v16 = [MEMORY[0x1E695DF70] array];
    v25 = 0u;
    v26 = 0u;
    v27 = 0u;
    v28 = 0u;
    v17 = self->_redactedEventStatistics;
    v18 = [(NSArray *)v17 countByEnumeratingWithState:&v25 objects:v33 count:16];
    if (v18)
    {
      v19 = v18;
      v20 = *v26;
      do
      {
        for (j = 0; j != v19; ++j)
        {
          if (*v26 != v20)
          {
            objc_enumerationMutation(v17);
          }

          v22 = [*(*(&v25 + 1) + 8 * j) dictionaryRepresentation];
          if (v22)
          {
            [v16 addObject:v22];
          }

          else
          {
            v23 = [MEMORY[0x1E695DFB0] null];
            [v16 addObject:v23];
          }
        }

        v19 = [(NSArray *)v17 countByEnumeratingWithState:&v25 objects:v33 count:16];
      }

      while (v19);
    }

    [v3 setObject:v16 forKeyedSubscript:@"redactedEventStatistics"];
  }

  [(SISchemaInstrumentationMessage *)self willProduceDictionaryRepresentation:v3, v25];

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

  v5 = v4 ^ v3;
  v6 = [(NSArray *)self->_publishedEventStatistics hash];
  return v5 ^ v6 ^ [(NSArray *)self->_redactedEventStatistics hash];
}

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  if (![v4 isMemberOfClass:objc_opt_class()])
  {
    goto LABEL_20;
  }

  v5 = [(PFAProcessedClockStatistics *)self clockIdentifier];
  v6 = [v4 clockIdentifier];
  if ((v5 != 0) == (v6 == 0))
  {
    goto LABEL_19;
  }

  v7 = [(PFAProcessedClockStatistics *)self clockIdentifier];
  if (v7)
  {
    v8 = v7;
    v9 = [(PFAProcessedClockStatistics *)self clockIdentifier];
    v10 = [v4 clockIdentifier];
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
    messageCount = self->_messageCount;
    if (messageCount != [v4 messageCount])
    {
      goto LABEL_20;
    }
  }

  v5 = [(PFAProcessedClockStatistics *)self publishedEventStatistics];
  v6 = [v4 publishedEventStatistics];
  if ((v5 != 0) == (v6 == 0))
  {
    goto LABEL_19;
  }

  v13 = [(PFAProcessedClockStatistics *)self publishedEventStatistics];
  if (v13)
  {
    v14 = v13;
    v15 = [(PFAProcessedClockStatistics *)self publishedEventStatistics];
    v16 = [v4 publishedEventStatistics];
    v17 = [v15 isEqual:v16];

    if (!v17)
    {
      goto LABEL_20;
    }
  }

  else
  {
  }

  v5 = [(PFAProcessedClockStatistics *)self redactedEventStatistics];
  v6 = [v4 redactedEventStatistics];
  if ((v5 != 0) != (v6 == 0))
  {
    v18 = [(PFAProcessedClockStatistics *)self redactedEventStatistics];
    if (!v18)
    {

LABEL_23:
      v23 = 1;
      goto LABEL_21;
    }

    v19 = v18;
    v20 = [(PFAProcessedClockStatistics *)self redactedEventStatistics];
    v21 = [v4 redactedEventStatistics];
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
  v27 = *MEMORY[0x1E69E9840];
  v4 = a3;
  v5 = [(PFAProcessedClockStatistics *)self clockIdentifier];

  if (v5)
  {
    v6 = [(PFAProcessedClockStatistics *)self clockIdentifier];
    PBDataWriterWriteSubmessage();
  }

  if (*&self->_has)
  {
    PBDataWriterWriteUint32Field();
  }

  v23 = 0u;
  v24 = 0u;
  v21 = 0u;
  v22 = 0u;
  v7 = self->_publishedEventStatistics;
  v8 = [(NSArray *)v7 countByEnumeratingWithState:&v21 objects:v26 count:16];
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

        PBDataWriterWriteSubmessage();
        ++v11;
      }

      while (v9 != v11);
      v9 = [(NSArray *)v7 countByEnumeratingWithState:&v21 objects:v26 count:16];
    }

    while (v9);
  }

  v19 = 0u;
  v20 = 0u;
  v17 = 0u;
  v18 = 0u;
  v12 = self->_redactedEventStatistics;
  v13 = [(NSArray *)v12 countByEnumeratingWithState:&v17 objects:v25 count:16];
  if (v13)
  {
    v14 = v13;
    v15 = *v18;
    do
    {
      v16 = 0;
      do
      {
        if (*v18 != v15)
        {
          objc_enumerationMutation(v12);
        }

        PBDataWriterWriteSubmessage();
        ++v16;
      }

      while (v14 != v16);
      v14 = [(NSArray *)v12 countByEnumeratingWithState:&v17 objects:v25 count:16];
    }

    while (v14);
  }
}

- (void)addRedactedEventStatistics:(id)a3
{
  v4 = a3;
  redactedEventStatistics = self->_redactedEventStatistics;
  v8 = v4;
  if (!redactedEventStatistics)
  {
    v6 = [MEMORY[0x1E695DF70] array];
    v7 = self->_redactedEventStatistics;
    self->_redactedEventStatistics = v6;

    v4 = v8;
    redactedEventStatistics = self->_redactedEventStatistics;
  }

  [(NSArray *)redactedEventStatistics addObject:v4];
}

- (void)addPublishedEventStatistics:(id)a3
{
  v4 = a3;
  publishedEventStatistics = self->_publishedEventStatistics;
  v8 = v4;
  if (!publishedEventStatistics)
  {
    v6 = [MEMORY[0x1E695DF70] array];
    v7 = self->_publishedEventStatistics;
    self->_publishedEventStatistics = v6;

    v4 = v8;
    publishedEventStatistics = self->_publishedEventStatistics;
  }

  [(NSArray *)publishedEventStatistics addObject:v4];
}

- (id)applySensitiveConditionsPolicy:(id)a3
{
  v4 = a3;
  v14.receiver = self;
  v14.super_class = PFAProcessedClockStatistics;
  v5 = [(SISchemaInstrumentationMessage *)&v14 applySensitiveConditionsPolicy:v4];
  v6 = [(PFAProcessedClockStatistics *)self clockIdentifier];
  v7 = [v6 applySensitiveConditionsPolicy:v4];
  v8 = [v7 suppressMessage];

  if (v8)
  {
    [(PFAProcessedClockStatistics *)self deleteClockIdentifier];
  }

  v9 = [(PFAProcessedClockStatistics *)self publishedEventStatistics];
  v10 = [(SISchemaInstrumentationMessage *)self _pruneSuppressedMessagesFromArray:v9 underConditions:v4];
  [(PFAProcessedClockStatistics *)self setPublishedEventStatistics:v10];

  v11 = [(PFAProcessedClockStatistics *)self redactedEventStatistics];
  v12 = [(SISchemaInstrumentationMessage *)self _pruneSuppressedMessagesFromArray:v11 underConditions:v4];
  [(PFAProcessedClockStatistics *)self setRedactedEventStatistics:v12];

  return v5;
}

- (id)suppressMessageUnderConditions
{
  v2 = objc_alloc_init(SISensitiveConditionsSet);
  [(SISensitiveConditionsSet *)v2 addCondition:1];

  return v2;
}

@end