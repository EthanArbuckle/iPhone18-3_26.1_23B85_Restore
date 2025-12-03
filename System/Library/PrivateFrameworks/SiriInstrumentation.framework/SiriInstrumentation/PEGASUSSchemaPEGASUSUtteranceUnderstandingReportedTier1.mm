@interface PEGASUSSchemaPEGASUSUtteranceUnderstandingReportedTier1
- (BOOL)isEqual:(id)equal;
- (NSData)jsonData;
- (PEGASUSSchemaPEGASUSUtteranceUnderstandingReportedTier1)initWithDictionary:(id)dictionary;
- (PEGASUSSchemaPEGASUSUtteranceUnderstandingReportedTier1)initWithJSON:(id)n;
- (id)applySensitiveConditionsPolicy:(id)policy;
- (id)dictionaryRepresentation;
- (id)suppressMessageUnderConditions;
- (unint64_t)hash;
- (void)addTopKGSAIntents:(id)intents;
- (void)addTopU2Intents:(id)intents;
- (void)writeTo:(id)to;
@end

@implementation PEGASUSSchemaPEGASUSUtteranceUnderstandingReportedTier1

- (PEGASUSSchemaPEGASUSUtteranceUnderstandingReportedTier1)initWithDictionary:(id)dictionary
{
  v41 = *MEMORY[0x1E69E9840];
  dictionaryCopy = dictionary;
  v38.receiver = self;
  v38.super_class = PEGASUSSchemaPEGASUSUtteranceUnderstandingReportedTier1;
  v5 = [(PEGASUSSchemaPEGASUSUtteranceUnderstandingReportedTier1 *)&v38 init];
  if (v5)
  {
    v6 = [dictionaryCopy objectForKeyedSubscript:@"linkId"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v7 = [[SISchemaUUID alloc] initWithDictionary:v6];
      [(PEGASUSSchemaPEGASUSUtteranceUnderstandingReportedTier1 *)v5 setLinkId:v7];
    }

    v8 = [dictionaryCopy objectForKeyedSubscript:@"topU2Intents"];
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

    v17 = [dictionaryCopy objectForKeyedSubscript:@"topKGSAIntents"];
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

    v25 = [dictionaryCopy objectForKeyedSubscript:{@"multiTurnListSelectionUnderstanding", v29}];
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

- (PEGASUSSchemaPEGASUSUtteranceUnderstandingReportedTier1)initWithJSON:(id)n
{
  v7 = 0;
  v4 = [MEMORY[0x1E696ACB0] JSONObjectWithData:n options:0 error:&v7];
  if (v7 || (objc_opt_class(), (objc_opt_isKindOfClass() & 1) == 0))
  {
    selfCopy = 0;
  }

  else
  {
    self = [(PEGASUSSchemaPEGASUSUtteranceUnderstandingReportedTier1 *)self initWithDictionary:v4];
    selfCopy = self;
  }

  return selfCopy;
}

- (NSData)jsonData
{
  dictionaryRepresentation = [(PEGASUSSchemaPEGASUSUtteranceUnderstandingReportedTier1 *)self dictionaryRepresentation];
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
  v37 = *MEMORY[0x1E69E9840];
  dictionary = [MEMORY[0x1E695DF90] dictionary];
  if (self->_linkId)
  {
    linkId = [(PEGASUSSchemaPEGASUSUtteranceUnderstandingReportedTier1 *)self linkId];
    dictionaryRepresentation = [linkId dictionaryRepresentation];
    if (dictionaryRepresentation)
    {
      [dictionary setObject:dictionaryRepresentation forKeyedSubscript:@"linkId"];
    }

    else
    {
      null = [MEMORY[0x1E695DFB0] null];
      [dictionary setObject:null forKeyedSubscript:@"linkId"];
    }
  }

  if (self->_multiTurnListSelectionUnderstanding)
  {
    multiTurnListSelectionUnderstanding = [(PEGASUSSchemaPEGASUSUtteranceUnderstandingReportedTier1 *)self multiTurnListSelectionUnderstanding];
    dictionaryRepresentation2 = [multiTurnListSelectionUnderstanding dictionaryRepresentation];
    if (dictionaryRepresentation2)
    {
      [dictionary setObject:dictionaryRepresentation2 forKeyedSubscript:@"multiTurnListSelectionUnderstanding"];
    }

    else
    {
      null2 = [MEMORY[0x1E695DFB0] null];
      [dictionary setObject:null2 forKeyedSubscript:@"multiTurnListSelectionUnderstanding"];
    }
  }

  if ([(NSArray *)self->_topKGSAIntents count])
  {
    array = [MEMORY[0x1E695DF70] array];
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

          dictionaryRepresentation3 = [*(*(&v31 + 1) + 8 * i) dictionaryRepresentation];
          if (dictionaryRepresentation3)
          {
            [array addObject:dictionaryRepresentation3];
          }

          else
          {
            null3 = [MEMORY[0x1E695DFB0] null];
            [array addObject:null3];
          }
        }

        v13 = [(NSArray *)v11 countByEnumeratingWithState:&v31 objects:v36 count:16];
      }

      while (v13);
    }

    [dictionary setObject:array forKeyedSubscript:@"topKGSAIntents"];
  }

  if ([(NSArray *)self->_topU2Intents count])
  {
    array2 = [MEMORY[0x1E695DF70] array];
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

          dictionaryRepresentation4 = [*(*(&v27 + 1) + 8 * j) dictionaryRepresentation];
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

        v21 = [(NSArray *)v19 countByEnumeratingWithState:&v27 objects:v35 count:16];
      }

      while (v21);
    }

    [dictionary setObject:array2 forKeyedSubscript:@"topU2Intents"];
  }

  [(SISchemaInstrumentationMessage *)self willProduceDictionaryRepresentation:dictionary, v27];

  return dictionary;
}

- (unint64_t)hash
{
  v3 = [(SISchemaUUID *)self->_linkId hash];
  v4 = [(NSArray *)self->_topU2Intents hash]^ v3;
  v5 = [(NSArray *)self->_topKGSAIntents hash];
  return v4 ^ v5 ^ [(PEGASUSSchemaPEGASUSMultiTurnListSelectionUnderstandingTier1 *)self->_multiTurnListSelectionUnderstanding hash];
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  if (![equalCopy isMemberOfClass:objc_opt_class()])
  {
    goto LABEL_22;
  }

  linkId = [(PEGASUSSchemaPEGASUSUtteranceUnderstandingReportedTier1 *)self linkId];
  linkId2 = [equalCopy linkId];
  if ((linkId != 0) == (linkId2 == 0))
  {
    goto LABEL_21;
  }

  linkId3 = [(PEGASUSSchemaPEGASUSUtteranceUnderstandingReportedTier1 *)self linkId];
  if (linkId3)
  {
    v8 = linkId3;
    linkId4 = [(PEGASUSSchemaPEGASUSUtteranceUnderstandingReportedTier1 *)self linkId];
    linkId5 = [equalCopy linkId];
    v11 = [linkId4 isEqual:linkId5];

    if (!v11)
    {
      goto LABEL_22;
    }
  }

  else
  {
  }

  linkId = [(PEGASUSSchemaPEGASUSUtteranceUnderstandingReportedTier1 *)self topU2Intents];
  linkId2 = [equalCopy topU2Intents];
  if ((linkId != 0) == (linkId2 == 0))
  {
    goto LABEL_21;
  }

  topU2Intents = [(PEGASUSSchemaPEGASUSUtteranceUnderstandingReportedTier1 *)self topU2Intents];
  if (topU2Intents)
  {
    v13 = topU2Intents;
    topU2Intents2 = [(PEGASUSSchemaPEGASUSUtteranceUnderstandingReportedTier1 *)self topU2Intents];
    topU2Intents3 = [equalCopy topU2Intents];
    v16 = [topU2Intents2 isEqual:topU2Intents3];

    if (!v16)
    {
      goto LABEL_22;
    }
  }

  else
  {
  }

  linkId = [(PEGASUSSchemaPEGASUSUtteranceUnderstandingReportedTier1 *)self topKGSAIntents];
  linkId2 = [equalCopy topKGSAIntents];
  if ((linkId != 0) == (linkId2 == 0))
  {
    goto LABEL_21;
  }

  topKGSAIntents = [(PEGASUSSchemaPEGASUSUtteranceUnderstandingReportedTier1 *)self topKGSAIntents];
  if (topKGSAIntents)
  {
    v18 = topKGSAIntents;
    topKGSAIntents2 = [(PEGASUSSchemaPEGASUSUtteranceUnderstandingReportedTier1 *)self topKGSAIntents];
    topKGSAIntents3 = [equalCopy topKGSAIntents];
    v21 = [topKGSAIntents2 isEqual:topKGSAIntents3];

    if (!v21)
    {
      goto LABEL_22;
    }
  }

  else
  {
  }

  linkId = [(PEGASUSSchemaPEGASUSUtteranceUnderstandingReportedTier1 *)self multiTurnListSelectionUnderstanding];
  linkId2 = [equalCopy multiTurnListSelectionUnderstanding];
  if ((linkId != 0) != (linkId2 == 0))
  {
    multiTurnListSelectionUnderstanding = [(PEGASUSSchemaPEGASUSUtteranceUnderstandingReportedTier1 *)self multiTurnListSelectionUnderstanding];
    if (!multiTurnListSelectionUnderstanding)
    {

LABEL_25:
      v27 = 1;
      goto LABEL_23;
    }

    v23 = multiTurnListSelectionUnderstanding;
    multiTurnListSelectionUnderstanding2 = [(PEGASUSSchemaPEGASUSUtteranceUnderstandingReportedTier1 *)self multiTurnListSelectionUnderstanding];
    multiTurnListSelectionUnderstanding3 = [equalCopy multiTurnListSelectionUnderstanding];
    v26 = [multiTurnListSelectionUnderstanding2 isEqual:multiTurnListSelectionUnderstanding3];

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

- (void)writeTo:(id)to
{
  v29 = *MEMORY[0x1E69E9840];
  toCopy = to;
  linkId = [(PEGASUSSchemaPEGASUSUtteranceUnderstandingReportedTier1 *)self linkId];

  if (linkId)
  {
    linkId2 = [(PEGASUSSchemaPEGASUSUtteranceUnderstandingReportedTier1 *)self linkId];
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

  multiTurnListSelectionUnderstanding = [(PEGASUSSchemaPEGASUSUtteranceUnderstandingReportedTier1 *)self multiTurnListSelectionUnderstanding];

  if (multiTurnListSelectionUnderstanding)
  {
    multiTurnListSelectionUnderstanding2 = [(PEGASUSSchemaPEGASUSUtteranceUnderstandingReportedTier1 *)self multiTurnListSelectionUnderstanding];
    PBDataWriterWriteSubmessage();
  }
}

- (void)addTopKGSAIntents:(id)intents
{
  intentsCopy = intents;
  topKGSAIntents = self->_topKGSAIntents;
  v8 = intentsCopy;
  if (!topKGSAIntents)
  {
    array = [MEMORY[0x1E695DF70] array];
    v7 = self->_topKGSAIntents;
    self->_topKGSAIntents = array;

    intentsCopy = v8;
    topKGSAIntents = self->_topKGSAIntents;
  }

  [(NSArray *)topKGSAIntents addObject:intentsCopy];
}

- (void)addTopU2Intents:(id)intents
{
  intentsCopy = intents;
  topU2Intents = self->_topU2Intents;
  v8 = intentsCopy;
  if (!topU2Intents)
  {
    array = [MEMORY[0x1E695DF70] array];
    v7 = self->_topU2Intents;
    self->_topU2Intents = array;

    intentsCopy = v8;
    topU2Intents = self->_topU2Intents;
  }

  [(NSArray *)topU2Intents addObject:intentsCopy];
}

- (id)applySensitiveConditionsPolicy:(id)policy
{
  policyCopy = policy;
  v17.receiver = self;
  v17.super_class = PEGASUSSchemaPEGASUSUtteranceUnderstandingReportedTier1;
  v5 = [(SISchemaInstrumentationMessage *)&v17 applySensitiveConditionsPolicy:policyCopy];
  linkId = [(PEGASUSSchemaPEGASUSUtteranceUnderstandingReportedTier1 *)self linkId];
  v7 = [linkId applySensitiveConditionsPolicy:policyCopy];
  suppressMessage = [v7 suppressMessage];

  if (suppressMessage)
  {
    [(PEGASUSSchemaPEGASUSUtteranceUnderstandingReportedTier1 *)self deleteLinkId];
  }

  topU2Intents = [(PEGASUSSchemaPEGASUSUtteranceUnderstandingReportedTier1 *)self topU2Intents];
  v10 = [(SISchemaInstrumentationMessage *)self _pruneSuppressedMessagesFromArray:topU2Intents underConditions:policyCopy];
  [(PEGASUSSchemaPEGASUSUtteranceUnderstandingReportedTier1 *)self setTopU2Intents:v10];

  topKGSAIntents = [(PEGASUSSchemaPEGASUSUtteranceUnderstandingReportedTier1 *)self topKGSAIntents];
  v12 = [(SISchemaInstrumentationMessage *)self _pruneSuppressedMessagesFromArray:topKGSAIntents underConditions:policyCopy];
  [(PEGASUSSchemaPEGASUSUtteranceUnderstandingReportedTier1 *)self setTopKGSAIntents:v12];

  multiTurnListSelectionUnderstanding = [(PEGASUSSchemaPEGASUSUtteranceUnderstandingReportedTier1 *)self multiTurnListSelectionUnderstanding];
  v14 = [multiTurnListSelectionUnderstanding applySensitiveConditionsPolicy:policyCopy];
  suppressMessage2 = [v14 suppressMessage];

  if (suppressMessage2)
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