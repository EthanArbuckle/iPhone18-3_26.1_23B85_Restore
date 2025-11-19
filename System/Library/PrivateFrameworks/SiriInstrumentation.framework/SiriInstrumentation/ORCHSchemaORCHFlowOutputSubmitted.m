@interface ORCHSchemaORCHFlowOutputSubmitted
- (BOOL)isEqual:(id)a3;
- (NSData)jsonData;
- (ORCHSchemaORCHFlowOutputSubmitted)initWithDictionary:(id)a3;
- (ORCHSchemaORCHFlowOutputSubmitted)initWithJSON:(id)a3;
- (id)applySensitiveConditionsPolicy:(id)a3;
- (id)dictionaryRepresentation;
- (id)suppressMessageUnderConditions;
- (unint64_t)hash;
- (void)addAceViewIds:(id)a3;
- (void)setHasFlowCommandReceived:(BOOL)a3;
- (void)setHasFlowCommandResponseError:(BOOL)a3;
- (void)writeTo:(id)a3;
@end

@implementation ORCHSchemaORCHFlowOutputSubmitted

- (ORCHSchemaORCHFlowOutputSubmitted)initWithDictionary:(id)a3
{
  v33 = *MEMORY[0x1E69E9840];
  v4 = a3;
  v31.receiver = self;
  v31.super_class = ORCHSchemaORCHFlowOutputSubmitted;
  v5 = [(ORCHSchemaORCHFlowOutputSubmitted *)&v31 init];
  if (v5)
  {
    v6 = [v4 objectForKeyedSubscript:@"flowOutputSubmissionId"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      -[ORCHSchemaORCHFlowOutputSubmitted setFlowOutputSubmissionId:](v5, "setFlowOutputSubmissionId:", [v6 intValue]);
    }

    v7 = [v4 objectForKeyedSubscript:@"flowCommandReceived"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      -[ORCHSchemaORCHFlowOutputSubmitted setFlowCommandReceived:](v5, "setFlowCommandReceived:", [v7 BOOLValue]);
    }

    v8 = [v4 objectForKeyedSubscript:@"flowCommandResponseError"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      -[ORCHSchemaORCHFlowOutputSubmitted setFlowCommandResponseError:](v5, "setFlowCommandResponseError:", [v8 BOOLValue]);
    }

    v9 = [v4 objectForKeyedSubscript:@"aceCommandId"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v10 = [[SISchemaUUID alloc] initWithDictionary:v9];
      [(ORCHSchemaORCHFlowOutputSubmitted *)v5 setAceCommandId:v10];
    }

    v11 = [v4 objectForKeyedSubscript:@"aceViewIds"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v23 = v9;
      v24 = v8;
      v25 = v7;
      v26 = v6;
      v29 = 0u;
      v30 = 0u;
      v27 = 0u;
      v28 = 0u;
      v12 = v11;
      v13 = [v12 countByEnumeratingWithState:&v27 objects:v32 count:16];
      if (v13)
      {
        v14 = v13;
        v15 = *v28;
        do
        {
          for (i = 0; i != v14; ++i)
          {
            if (*v28 != v15)
            {
              objc_enumerationMutation(v12);
            }

            v17 = *(*(&v27 + 1) + 8 * i);
            objc_opt_class();
            if (objc_opt_isKindOfClass())
            {
              v18 = [[SISchemaUUID alloc] initWithDictionary:v17];
              [(ORCHSchemaORCHFlowOutputSubmitted *)v5 addAceViewIds:v18];
            }
          }

          v14 = [v12 countByEnumeratingWithState:&v27 objects:v32 count:16];
        }

        while (v14);
      }

      v6 = v26;
      v9 = v23;
      v8 = v24;
    }

    v19 = [v4 objectForKeyedSubscript:{@"subRequestId", v23, v24, v25, v26, v27}];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v20 = [[SISchemaUUID alloc] initWithDictionary:v19];
      [(ORCHSchemaORCHFlowOutputSubmitted *)v5 setSubRequestId:v20];
    }

    v21 = v5;
  }

  return v5;
}

- (ORCHSchemaORCHFlowOutputSubmitted)initWithJSON:(id)a3
{
  v7 = 0;
  v4 = [MEMORY[0x1E696ACB0] JSONObjectWithData:a3 options:0 error:&v7];
  if (v7 || (objc_opt_class(), (objc_opt_isKindOfClass() & 1) == 0))
  {
    v5 = 0;
  }

  else
  {
    self = [(ORCHSchemaORCHFlowOutputSubmitted *)self initWithDictionary:v4];
    v5 = self;
  }

  return v5;
}

- (NSData)jsonData
{
  v2 = [(ORCHSchemaORCHFlowOutputSubmitted *)self dictionaryRepresentation];
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
  v28 = *MEMORY[0x1E69E9840];
  v3 = [MEMORY[0x1E695DF90] dictionary];
  if (self->_aceCommandId)
  {
    v4 = [(ORCHSchemaORCHFlowOutputSubmitted *)self aceCommandId];
    v5 = [v4 dictionaryRepresentation];
    if (v5)
    {
      [v3 setObject:v5 forKeyedSubscript:@"aceCommandId"];
    }

    else
    {
      v6 = [MEMORY[0x1E695DFB0] null];
      [v3 setObject:v6 forKeyedSubscript:@"aceCommandId"];
    }
  }

  if ([(NSArray *)self->_aceViewIds count])
  {
    v7 = [MEMORY[0x1E695DF70] array];
    v23 = 0u;
    v24 = 0u;
    v25 = 0u;
    v26 = 0u;
    v8 = self->_aceViewIds;
    v9 = [(NSArray *)v8 countByEnumeratingWithState:&v23 objects:v27 count:16];
    if (v9)
    {
      v10 = v9;
      v11 = *v24;
      do
      {
        for (i = 0; i != v10; ++i)
        {
          if (*v24 != v11)
          {
            objc_enumerationMutation(v8);
          }

          v13 = [*(*(&v23 + 1) + 8 * i) dictionaryRepresentation];
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

        v10 = [(NSArray *)v8 countByEnumeratingWithState:&v23 objects:v27 count:16];
      }

      while (v10);
    }

    [v3 setObject:v7 forKeyedSubscript:@"aceViewIds"];
  }

  has = self->_has;
  if ((has & 2) != 0)
  {
    v19 = [MEMORY[0x1E696AD98] numberWithBool:{-[ORCHSchemaORCHFlowOutputSubmitted flowCommandReceived](self, "flowCommandReceived")}];
    [v3 setObject:v19 forKeyedSubscript:@"flowCommandReceived"];

    has = self->_has;
    if ((has & 4) == 0)
    {
LABEL_20:
      if ((has & 1) == 0)
      {
        goto LABEL_22;
      }

      goto LABEL_21;
    }
  }

  else if ((*&self->_has & 4) == 0)
  {
    goto LABEL_20;
  }

  v20 = [MEMORY[0x1E696AD98] numberWithBool:{-[ORCHSchemaORCHFlowOutputSubmitted flowCommandResponseError](self, "flowCommandResponseError", v23)}];
  [v3 setObject:v20 forKeyedSubscript:@"flowCommandResponseError"];

  if (*&self->_has)
  {
LABEL_21:
    v16 = [MEMORY[0x1E696AD98] numberWithInt:{-[ORCHSchemaORCHFlowOutputSubmitted flowOutputSubmissionId](self, "flowOutputSubmissionId", v23)}];
    [v3 setObject:v16 forKeyedSubscript:@"flowOutputSubmissionId"];
  }

LABEL_22:
  if (self->_subRequestId)
  {
    v17 = [(ORCHSchemaORCHFlowOutputSubmitted *)self subRequestId];
    v18 = [v17 dictionaryRepresentation];
    if (v18)
    {
      [v3 setObject:v18 forKeyedSubscript:@"subRequestId"];
    }

    else
    {
      v21 = [MEMORY[0x1E695DFB0] null];
      [v3 setObject:v21 forKeyedSubscript:@"subRequestId"];
    }
  }

  [(SISchemaInstrumentationMessage *)self willProduceDictionaryRepresentation:v3, v23];

  return v3;
}

- (unint64_t)hash
{
  if ((*&self->_has & 1) == 0)
  {
    v3 = 0;
    if ((*&self->_has & 2) != 0)
    {
      goto LABEL_3;
    }

LABEL_6:
    v4 = 0;
    if ((*&self->_has & 4) != 0)
    {
      goto LABEL_4;
    }

LABEL_7:
    v5 = 0;
    goto LABEL_8;
  }

  v3 = 2654435761 * self->_flowOutputSubmissionId;
  if ((*&self->_has & 2) == 0)
  {
    goto LABEL_6;
  }

LABEL_3:
  v4 = 2654435761 * self->_flowCommandReceived;
  if ((*&self->_has & 4) == 0)
  {
    goto LABEL_7;
  }

LABEL_4:
  v5 = 2654435761 * self->_flowCommandResponseError;
LABEL_8:
  v6 = v4 ^ v3 ^ v5 ^ [(SISchemaUUID *)self->_aceCommandId hash];
  v7 = [(NSArray *)self->_aceViewIds hash];
  return v6 ^ v7 ^ [(SISchemaUUID *)self->_subRequestId hash];
}

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  if (![v4 isMemberOfClass:objc_opt_class()])
  {
    goto LABEL_28;
  }

  has = self->_has;
  v6 = v4[40];
  if ((*&has & 1) != (v6 & 1))
  {
    goto LABEL_28;
  }

  if (*&has)
  {
    flowOutputSubmissionId = self->_flowOutputSubmissionId;
    if (flowOutputSubmissionId != [v4 flowOutputSubmissionId])
    {
      goto LABEL_28;
    }

    has = self->_has;
    v6 = v4[40];
  }

  v8 = (*&has >> 1) & 1;
  if (v8 == ((v6 >> 1) & 1))
  {
    if (v8)
    {
      flowCommandReceived = self->_flowCommandReceived;
      if (flowCommandReceived != [v4 flowCommandReceived])
      {
        goto LABEL_28;
      }

      has = self->_has;
      v6 = v4[40];
    }

    v10 = (*&has >> 2) & 1;
    if (v10 != ((v6 >> 2) & 1))
    {
      goto LABEL_28;
    }

    if (v10)
    {
      flowCommandResponseError = self->_flowCommandResponseError;
      if (flowCommandResponseError != [v4 flowCommandResponseError])
      {
        goto LABEL_28;
      }
    }

    v12 = [(ORCHSchemaORCHFlowOutputSubmitted *)self aceCommandId];
    v13 = [v4 aceCommandId];
    if ((v12 != 0) == (v13 == 0))
    {
      goto LABEL_27;
    }

    v14 = [(ORCHSchemaORCHFlowOutputSubmitted *)self aceCommandId];
    if (v14)
    {
      v15 = v14;
      v16 = [(ORCHSchemaORCHFlowOutputSubmitted *)self aceCommandId];
      v17 = [v4 aceCommandId];
      v18 = [v16 isEqual:v17];

      if (!v18)
      {
        goto LABEL_28;
      }
    }

    else
    {
    }

    v12 = [(ORCHSchemaORCHFlowOutputSubmitted *)self aceViewIds];
    v13 = [v4 aceViewIds];
    if ((v12 != 0) == (v13 == 0))
    {
      goto LABEL_27;
    }

    v19 = [(ORCHSchemaORCHFlowOutputSubmitted *)self aceViewIds];
    if (v19)
    {
      v20 = v19;
      v21 = [(ORCHSchemaORCHFlowOutputSubmitted *)self aceViewIds];
      v22 = [v4 aceViewIds];
      v23 = [v21 isEqual:v22];

      if (!v23)
      {
        goto LABEL_28;
      }
    }

    else
    {
    }

    v12 = [(ORCHSchemaORCHFlowOutputSubmitted *)self subRequestId];
    v13 = [v4 subRequestId];
    if ((v12 != 0) != (v13 == 0))
    {
      v24 = [(ORCHSchemaORCHFlowOutputSubmitted *)self subRequestId];
      if (!v24)
      {

LABEL_31:
        v29 = 1;
        goto LABEL_29;
      }

      v25 = v24;
      v26 = [(ORCHSchemaORCHFlowOutputSubmitted *)self subRequestId];
      v27 = [v4 subRequestId];
      v28 = [v26 isEqual:v27];

      if (v28)
      {
        goto LABEL_31;
      }
    }

    else
    {
LABEL_27:
    }
  }

LABEL_28:
  v29 = 0;
LABEL_29:

  return v29;
}

- (void)writeTo:(id)a3
{
  v20 = *MEMORY[0x1E69E9840];
  v4 = a3;
  has = self->_has;
  if (has)
  {
    PBDataWriterWriteInt32Field();
    has = self->_has;
    if ((has & 2) == 0)
    {
LABEL_3:
      if ((has & 4) == 0)
      {
        goto LABEL_5;
      }

      goto LABEL_4;
    }
  }

  else if ((*&self->_has & 2) == 0)
  {
    goto LABEL_3;
  }

  PBDataWriterWriteBOOLField();
  if ((*&self->_has & 4) != 0)
  {
LABEL_4:
    PBDataWriterWriteBOOLField();
  }

LABEL_5:
  v6 = [(ORCHSchemaORCHFlowOutputSubmitted *)self aceCommandId];

  if (v6)
  {
    v7 = [(ORCHSchemaORCHFlowOutputSubmitted *)self aceCommandId];
    PBDataWriterWriteSubmessage();
  }

  v17 = 0u;
  v18 = 0u;
  v15 = 0u;
  v16 = 0u;
  v8 = self->_aceViewIds;
  v9 = [(NSArray *)v8 countByEnumeratingWithState:&v15 objects:v19 count:16];
  if (v9)
  {
    v10 = v9;
    v11 = *v16;
    do
    {
      for (i = 0; i != v10; ++i)
      {
        if (*v16 != v11)
        {
          objc_enumerationMutation(v8);
        }

        PBDataWriterWriteSubmessage();
      }

      v10 = [(NSArray *)v8 countByEnumeratingWithState:&v15 objects:v19 count:16];
    }

    while (v10);
  }

  v13 = [(ORCHSchemaORCHFlowOutputSubmitted *)self subRequestId];

  if (v13)
  {
    v14 = [(ORCHSchemaORCHFlowOutputSubmitted *)self subRequestId];
    PBDataWriterWriteSubmessage();
  }
}

- (void)addAceViewIds:(id)a3
{
  v4 = a3;
  aceViewIds = self->_aceViewIds;
  v8 = v4;
  if (!aceViewIds)
  {
    v6 = [MEMORY[0x1E695DF70] array];
    v7 = self->_aceViewIds;
    self->_aceViewIds = v6;

    v4 = v8;
    aceViewIds = self->_aceViewIds;
  }

  [(NSArray *)aceViewIds addObject:v4];
}

- (void)setHasFlowCommandResponseError:(BOOL)a3
{
  if (a3)
  {
    v3 = 4;
  }

  else
  {
    v3 = 0;
  }

  *&self->_has = *&self->_has & 0xFB | v3;
}

- (void)setHasFlowCommandReceived:(BOOL)a3
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
  v15.receiver = self;
  v15.super_class = ORCHSchemaORCHFlowOutputSubmitted;
  v5 = [(SISchemaInstrumentationMessage *)&v15 applySensitiveConditionsPolicy:v4];
  v6 = [(ORCHSchemaORCHFlowOutputSubmitted *)self aceCommandId];
  v7 = [v6 applySensitiveConditionsPolicy:v4];
  v8 = [v7 suppressMessage];

  if (v8)
  {
    [(ORCHSchemaORCHFlowOutputSubmitted *)self deleteAceCommandId];
  }

  v9 = [(ORCHSchemaORCHFlowOutputSubmitted *)self aceViewIds];
  v10 = [(SISchemaInstrumentationMessage *)self _pruneSuppressedMessagesFromArray:v9 underConditions:v4];
  [(ORCHSchemaORCHFlowOutputSubmitted *)self setAceViewIds:v10];

  v11 = [(ORCHSchemaORCHFlowOutputSubmitted *)self subRequestId];
  v12 = [v11 applySensitiveConditionsPolicy:v4];
  v13 = [v12 suppressMessage];

  if (v13)
  {
    [(ORCHSchemaORCHFlowOutputSubmitted *)self deleteSubRequestId];
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