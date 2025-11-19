@interface PEGASUSSchemaPEGASUSUtteranceUnderstandingReportedTier1
- (BOOL)isEqual:(id)a3;
- (NSData)jsonData;
- (PEGASUSSchemaPEGASUSUtteranceUnderstandingReportedTier1)initWithDictionary:(id)a3;
- (PEGASUSSchemaPEGASUSUtteranceUnderstandingReportedTier1)initWithJSON:(id)a3;
- (id)applySensitiveConditionsPolicy:(id)a3;
- (id)dictionaryRepresentation;
- (id)suppressMessageUnderConditions;
- (unint64_t)hash;
- (void)addTopKGSAIntents:(id)a3;
- (void)addTopU2Intents:(id)a3;
- (void)writeTo:(id)a3;
@end

@implementation PEGASUSSchemaPEGASUSUtteranceUnderstandingReportedTier1

- (PEGASUSSchemaPEGASUSUtteranceUnderstandingReportedTier1)initWithDictionary:(id)a3
{
  v41 = *MEMORY[0x1E69E9840];
  v4 = a3;
  v38.receiver = self;
  v38.super_class = PEGASUSSchemaPEGASUSUtteranceUnderstandingReportedTier1;
  v5 = [(PEGASUSSchemaPEGASUSUtteranceUnderstandingReportedTier1 *)&v38 init];
  if (v5)
  {
    v6 = [v4 objectForKeyedSubscript:@"linkId"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v7 = [[SISchemaUUID alloc] initWithDictionary:v6];
      [(PEGASUSSchemaPEGASUSUtteranceUnderstandingReportedTier1 *)v5 setLinkId:v7];
    }

    v8 = [v4 objectForKeyedSubscript:@"topU2Intents"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v36 = 0u;
      v37 = 0u;
      v34 = 0u;
      v35 = 0u;
      v9 = v8;
      v10 = v8;
      v11 = [v10 countByEnumeratingWithState:&v34 objects:v40 count:16];
      if (v11)
      {
        v12 = v11;
        v13 = *v35;
        do
        {
          for (i = 0; i != v12; ++i)
          {
            if (*v35 != v13)
            {
              objc_enumerationMutation(v10);
            }

            v15 = *(*(&v34 + 1) + 8 * i);
            objc_opt_class();
            if (objc_opt_isKindOfClass())
            {
              v16 = [[PEGASUSSchemaPEGASUSIntentTier1 alloc] initWithDictionary:v15];
              [(PEGASUSSchemaPEGASUSUtteranceUnderstandingReportedTier1 *)v5 addTopU2Intents:v16];
            }
          }

          v12 = [v10 countByEnumeratingWithState:&v34 objects:v40 count:16];
        }

        while (v12);
      }

      v8 = v9;
    }

    v17 = [v4 objectForKeyedSubscript:@"topKGSAIntents"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v29 = v8;
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
          for (j = 0; j != v20; ++j)
          {
            if (*v31 != v21)
            {
              objc_enumerationMutation(v18);
            }

            v23 = *(*(&v30 + 1) + 8 * j);
            objc_opt_class();
            if (objc_opt_isKindOfClass())
            {
              v24 = [[PEGASUSSchemaPEGASUSIntentTier1 alloc] initWithDictionary:v23];
              [(PEGASUSSchemaPEGASUSUtteranceUnderstandingReportedTier1 *)v5 addTopKGSAIntents:v24];
            }
          }

          v20 = [v18 countByEnumeratingWithState:&v30 objects:v39 count:16];
        }

        while (v20);
      }

      v8 = v29;
    }

    v25 = [v4 objectForKeyedSubscript:{@"multiTurnListSelectionUnderstanding", v29}];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v26 = [[PEGASUSSchemaPEGASUSMultiTurnListSelectionUnderstandingTier1 alloc] initWithDictionary:v25];
      [(PEGASUSSchemaPEGASUSUtteranceUnderstandingReportedTier1 *)v5 setMultiTurnListSelectionUnderstanding:v26];
    }

    v27 = v5;
  }

  return v5;
}

- (PEGASUSSchemaPEGASUSUtteranceUnderstandingReportedTier1)initWithJSON:(id)a3
{
  v7 = 0;
  v4 = [MEMORY[0x1E696ACB0] JSONObjectWithData:a3 options:0 error:&v7];
  if (v7 || (objc_opt_class(), (objc_opt_isKindOfClass() & 1) == 0))
  {
    v5 = 0;
  }

  else
  {
    self = [(PEGASUSSchemaPEGASUSUtteranceUnderstandingReportedTier1 *)self initWithDictionary:v4];
    v5 = self;
  }

  return v5;
}

- (NSData)jsonData
{
  v2 = [(PEGASUSSchemaPEGASUSUtteranceUnderstandingReportedTier1 *)self dictionaryRepresentation];
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
  v37 = *MEMORY[0x1E69E9840];
  v3 = [MEMORY[0x1E695DF90] dictionary];
  if (self->_linkId)
  {
    v4 = [(PEGASUSSchemaPEGASUSUtteranceUnderstandingReportedTier1 *)self linkId];
    v5 = [v4 dictionaryRepresentation];
    if (v5)
    {
      [v3 setObject:v5 forKeyedSubscript:@"linkId"];
    }

    else
    {
      v6 = [MEMORY[0x1E695DFB0] null];
      [v3 setObject:v6 forKeyedSubscript:@"linkId"];
    }
  }

  if (self->_multiTurnListSelectionUnderstanding)
  {
    v7 = [(PEGASUSSchemaPEGASUSUtteranceUnderstandingReportedTier1 *)self multiTurnListSelectionUnderstanding];
    v8 = [v7 dictionaryRepresentation];
    if (v8)
    {
      [v3 setObject:v8 forKeyedSubscript:@"multiTurnListSelectionUnderstanding"];
    }

    else
    {
      v9 = [MEMORY[0x1E695DFB0] null];
      [v3 setObject:v9 forKeyedSubscript:@"multiTurnListSelectionUnderstanding"];
    }
  }

  if ([(NSArray *)self->_topKGSAIntents count])
  {
    v10 = [MEMORY[0x1E695DF70] array];
    v31 = 0u;
    v32 = 0u;
    v33 = 0u;
    v34 = 0u;
    v11 = self->_topKGSAIntents;
    v12 = [(NSArray *)v11 countByEnumeratingWithState:&v31 objects:v36 count:16];
    if (v12)
    {
      v13 = v12;
      v14 = *v32;
      do
      {
        for (i = 0; i != v13; ++i)
        {
          if (*v32 != v14)
          {
            objc_enumerationMutation(v11);
          }

          v16 = [*(*(&v31 + 1) + 8 * i) dictionaryRepresentation];
          if (v16)
          {
            [v10 addObject:v16];
          }

          else
          {
            v17 = [MEMORY[0x1E695DFB0] null];
            [v10 addObject:v17];
          }
        }

        v13 = [(NSArray *)v11 countByEnumeratingWithState:&v31 objects:v36 count:16];
      }

      while (v13);
    }

    [v3 setObject:v10 forKeyedSubscript:@"topKGSAIntents"];
  }

  if ([(NSArray *)self->_topU2Intents count])
  {
    v18 = [MEMORY[0x1E695DF70] array];
    v27 = 0u;
    v28 = 0u;
    v29 = 0u;
    v30 = 0u;
    v19 = self->_topU2Intents;
    v20 = [(NSArray *)v19 countByEnumeratingWithState:&v27 objects:v35 count:16];
    if (v20)
    {
      v21 = v20;
      v22 = *v28;
      do
      {
        for (j = 0; j != v21; ++j)
        {
          if (*v28 != v22)
          {
            objc_enumerationMutation(v19);
          }

          v24 = [*(*(&v27 + 1) + 8 * j) dictionaryRepresentation];
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

        v21 = [(NSArray *)v19 countByEnumeratingWithState:&v27 objects:v35 count:16];
      }

      while (v21);
    }

    [v3 setObject:v18 forKeyedSubscript:@"topU2Intents"];
  }

  [(SISchemaInstrumentationMessage *)self willProduceDictionaryRepresentation:v3, v27];

  return v3;
}

- (unint64_t)hash
{
  v3 = [(SISchemaUUID *)self->_linkId hash];
  v4 = [(NSArray *)self->_topU2Intents hash]^ v3;
  v5 = [(NSArray *)self->_topKGSAIntents hash];
  return v4 ^ v5 ^ [(PEGASUSSchemaPEGASUSMultiTurnListSelectionUnderstandingTier1 *)self->_multiTurnListSelectionUnderstanding hash];
}

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  if (![v4 isMemberOfClass:objc_opt_class()])
  {
    goto LABEL_22;
  }

  v5 = [(PEGASUSSchemaPEGASUSUtteranceUnderstandingReportedTier1 *)self linkId];
  v6 = [v4 linkId];
  if ((v5 != 0) == (v6 == 0))
  {
    goto LABEL_21;
  }

  v7 = [(PEGASUSSchemaPEGASUSUtteranceUnderstandingReportedTier1 *)self linkId];
  if (v7)
  {
    v8 = v7;
    v9 = [(PEGASUSSchemaPEGASUSUtteranceUnderstandingReportedTier1 *)self linkId];
    v10 = [v4 linkId];
    v11 = [v9 isEqual:v10];

    if (!v11)
    {
      goto LABEL_22;
    }
  }

  else
  {
  }

  v5 = [(PEGASUSSchemaPEGASUSUtteranceUnderstandingReportedTier1 *)self topU2Intents];
  v6 = [v4 topU2Intents];
  if ((v5 != 0) == (v6 == 0))
  {
    goto LABEL_21;
  }

  v12 = [(PEGASUSSchemaPEGASUSUtteranceUnderstandingReportedTier1 *)self topU2Intents];
  if (v12)
  {
    v13 = v12;
    v14 = [(PEGASUSSchemaPEGASUSUtteranceUnderstandingReportedTier1 *)self topU2Intents];
    v15 = [v4 topU2Intents];
    v16 = [v14 isEqual:v15];

    if (!v16)
    {
      goto LABEL_22;
    }
  }

  else
  {
  }

  v5 = [(PEGASUSSchemaPEGASUSUtteranceUnderstandingReportedTier1 *)self topKGSAIntents];
  v6 = [v4 topKGSAIntents];
  if ((v5 != 0) == (v6 == 0))
  {
    goto LABEL_21;
  }

  v17 = [(PEGASUSSchemaPEGASUSUtteranceUnderstandingReportedTier1 *)self topKGSAIntents];
  if (v17)
  {
    v18 = v17;
    v19 = [(PEGASUSSchemaPEGASUSUtteranceUnderstandingReportedTier1 *)self topKGSAIntents];
    v20 = [v4 topKGSAIntents];
    v21 = [v19 isEqual:v20];

    if (!v21)
    {
      goto LABEL_22;
    }
  }

  else
  {
  }

  v5 = [(PEGASUSSchemaPEGASUSUtteranceUnderstandingReportedTier1 *)self multiTurnListSelectionUnderstanding];
  v6 = [v4 multiTurnListSelectionUnderstanding];
  if ((v5 != 0) != (v6 == 0))
  {
    v22 = [(PEGASUSSchemaPEGASUSUtteranceUnderstandingReportedTier1 *)self multiTurnListSelectionUnderstanding];
    if (!v22)
    {

LABEL_25:
      v27 = 1;
      goto LABEL_23;
    }

    v23 = v22;
    v24 = [(PEGASUSSchemaPEGASUSUtteranceUnderstandingReportedTier1 *)self multiTurnListSelectionUnderstanding];
    v25 = [v4 multiTurnListSelectionUnderstanding];
    v26 = [v24 isEqual:v25];

    if (v26)
    {
      goto LABEL_25;
    }
  }

  else
  {
LABEL_21:
  }

LABEL_22:
  v27 = 0;
LABEL_23:

  return v27;
}

- (void)writeTo:(id)a3
{
  v29 = *MEMORY[0x1E69E9840];
  v4 = a3;
  v5 = [(PEGASUSSchemaPEGASUSUtteranceUnderstandingReportedTier1 *)self linkId];

  if (v5)
  {
    v6 = [(PEGASUSSchemaPEGASUSUtteranceUnderstandingReportedTier1 *)self linkId];
    PBDataWriterWriteSubmessage();
  }

  v25 = 0u;
  v26 = 0u;
  v23 = 0u;
  v24 = 0u;
  v7 = self->_topU2Intents;
  v8 = [(NSArray *)v7 countByEnumeratingWithState:&v23 objects:v28 count:16];
  if (v8)
  {
    v9 = v8;
    v10 = *v24;
    do
    {
      v11 = 0;
      do
      {
        if (*v24 != v10)
        {
          objc_enumerationMutation(v7);
        }

        PBDataWriterWriteSubmessage();
        ++v11;
      }

      while (v9 != v11);
      v9 = [(NSArray *)v7 countByEnumeratingWithState:&v23 objects:v28 count:16];
    }

    while (v9);
  }

  v21 = 0u;
  v22 = 0u;
  v19 = 0u;
  v20 = 0u;
  v12 = self->_topKGSAIntents;
  v13 = [(NSArray *)v12 countByEnumeratingWithState:&v19 objects:v27 count:16];
  if (v13)
  {
    v14 = v13;
    v15 = *v20;
    do
    {
      v16 = 0;
      do
      {
        if (*v20 != v15)
        {
          objc_enumerationMutation(v12);
        }

        PBDataWriterWriteSubmessage();
        ++v16;
      }

      while (v14 != v16);
      v14 = [(NSArray *)v12 countByEnumeratingWithState:&v19 objects:v27 count:16];
    }

    while (v14);
  }

  v17 = [(PEGASUSSchemaPEGASUSUtteranceUnderstandingReportedTier1 *)self multiTurnListSelectionUnderstanding];

  if (v17)
  {
    v18 = [(PEGASUSSchemaPEGASUSUtteranceUnderstandingReportedTier1 *)self multiTurnListSelectionUnderstanding];
    PBDataWriterWriteSubmessage();
  }
}

- (void)addTopKGSAIntents:(id)a3
{
  v4 = a3;
  topKGSAIntents = self->_topKGSAIntents;
  v8 = v4;
  if (!topKGSAIntents)
  {
    v6 = [MEMORY[0x1E695DF70] array];
    v7 = self->_topKGSAIntents;
    self->_topKGSAIntents = v6;

    v4 = v8;
    topKGSAIntents = self->_topKGSAIntents;
  }

  [(NSArray *)topKGSAIntents addObject:v4];
}

- (void)addTopU2Intents:(id)a3
{
  v4 = a3;
  topU2Intents = self->_topU2Intents;
  v8 = v4;
  if (!topU2Intents)
  {
    v6 = [MEMORY[0x1E695DF70] array];
    v7 = self->_topU2Intents;
    self->_topU2Intents = v6;

    v4 = v8;
    topU2Intents = self->_topU2Intents;
  }

  [(NSArray *)topU2Intents addObject:v4];
}

- (id)applySensitiveConditionsPolicy:(id)a3
{
  v4 = a3;
  v17.receiver = self;
  v17.super_class = PEGASUSSchemaPEGASUSUtteranceUnderstandingReportedTier1;
  v5 = [(SISchemaInstrumentationMessage *)&v17 applySensitiveConditionsPolicy:v4];
  v6 = [(PEGASUSSchemaPEGASUSUtteranceUnderstandingReportedTier1 *)self linkId];
  v7 = [v6 applySensitiveConditionsPolicy:v4];
  v8 = [v7 suppressMessage];

  if (v8)
  {
    [(PEGASUSSchemaPEGASUSUtteranceUnderstandingReportedTier1 *)self deleteLinkId];
  }

  v9 = [(PEGASUSSchemaPEGASUSUtteranceUnderstandingReportedTier1 *)self topU2Intents];
  v10 = [(SISchemaInstrumentationMessage *)self _pruneSuppressedMessagesFromArray:v9 underConditions:v4];
  [(PEGASUSSchemaPEGASUSUtteranceUnderstandingReportedTier1 *)self setTopU2Intents:v10];

  v11 = [(PEGASUSSchemaPEGASUSUtteranceUnderstandingReportedTier1 *)self topKGSAIntents];
  v12 = [(SISchemaInstrumentationMessage *)self _pruneSuppressedMessagesFromArray:v11 underConditions:v4];
  [(PEGASUSSchemaPEGASUSUtteranceUnderstandingReportedTier1 *)self setTopKGSAIntents:v12];

  v13 = [(PEGASUSSchemaPEGASUSUtteranceUnderstandingReportedTier1 *)self multiTurnListSelectionUnderstanding];
  v14 = [v13 applySensitiveConditionsPolicy:v4];
  v15 = [v14 suppressMessage];

  if (v15)
  {
    [(PEGASUSSchemaPEGASUSUtteranceUnderstandingReportedTier1 *)self deleteMultiTurnListSelectionUnderstanding];
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