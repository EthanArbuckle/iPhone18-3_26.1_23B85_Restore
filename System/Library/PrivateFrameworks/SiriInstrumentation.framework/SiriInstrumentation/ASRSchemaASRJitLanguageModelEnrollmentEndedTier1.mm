@interface ASRSchemaASRJitLanguageModelEnrollmentEndedTier1
- (ASRSchemaASRJitLanguageModelEnrollmentEndedTier1)initWithDictionary:(id)dictionary;
- (ASRSchemaASRJitLanguageModelEnrollmentEndedTier1)initWithJSON:(id)n;
- (BOOL)isEqual:(id)equal;
- (NSData)jsonData;
- (id)applySensitiveConditionsPolicy:(id)policy;
- (id)dictionaryRepresentation;
- (id)suppressMessageUnderConditions;
- (void)addDialogContext:(id)context;
- (void)writeTo:(id)to;
@end

@implementation ASRSchemaASRJitLanguageModelEnrollmentEndedTier1

- (ASRSchemaASRJitLanguageModelEnrollmentEndedTier1)initWithDictionary:(id)dictionary
{
  v24 = *MEMORY[0x1E69E9840];
  dictionaryCopy = dictionary;
  v22.receiver = self;
  v22.super_class = ASRSchemaASRJitLanguageModelEnrollmentEndedTier1;
  v5 = [(ASRSchemaASRJitLanguageModelEnrollmentEndedTier1 *)&v22 init];
  if (v5)
  {
    v6 = [dictionaryCopy objectForKeyedSubscript:@"dialogContext"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v20 = 0u;
      v21 = 0u;
      v18 = 0u;
      v19 = 0u;
      v7 = v6;
      v8 = [v7 countByEnumeratingWithState:&v18 objects:v23 count:16];
      if (v8)
      {
        v9 = v8;
        v10 = *v19;
        do
        {
          v11 = 0;
          do
          {
            if (*v19 != v10)
            {
              objc_enumerationMutation(v7);
            }

            v12 = *(*(&v18 + 1) + 8 * v11);
            objc_opt_class();
            if (objc_opt_isKindOfClass())
            {
              v13 = [v12 copy];
              [(ASRSchemaASRJitLanguageModelEnrollmentEndedTier1 *)v5 addDialogContext:v13];
            }

            ++v11;
          }

          while (v9 != v11);
          v9 = [v7 countByEnumeratingWithState:&v18 objects:v23 count:16];
        }

        while (v9);
      }
    }

    v14 = [dictionaryCopy objectForKeyedSubscript:{@"linkId", v18}];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v15 = [[SISchemaUUID alloc] initWithDictionary:v14];
      [(ASRSchemaASRJitLanguageModelEnrollmentEndedTier1 *)v5 setLinkId:v15];
    }

    v16 = v5;
  }

  return v5;
}

- (ASRSchemaASRJitLanguageModelEnrollmentEndedTier1)initWithJSON:(id)n
{
  v7 = 0;
  v4 = [MEMORY[0x1E696ACB0] JSONObjectWithData:n options:0 error:&v7];
  if (v7 || (objc_opt_class(), (objc_opt_isKindOfClass() & 1) == 0))
  {
    selfCopy = 0;
  }

  else
  {
    self = [(ASRSchemaASRJitLanguageModelEnrollmentEndedTier1 *)self initWithDictionary:v4];
    selfCopy = self;
  }

  return selfCopy;
}

- (NSData)jsonData
{
  dictionaryRepresentation = [(ASRSchemaASRJitLanguageModelEnrollmentEndedTier1 *)self dictionaryRepresentation];
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
  dictionary = [MEMORY[0x1E695DF90] dictionary];
  if (self->_dialogContexts)
  {
    dialogContexts = [(ASRSchemaASRJitLanguageModelEnrollmentEndedTier1 *)self dialogContexts];
    v5 = [dialogContexts copy];
    [dictionary setObject:v5 forKeyedSubscript:@"dialogContext"];
  }

  if (self->_linkId)
  {
    linkId = [(ASRSchemaASRJitLanguageModelEnrollmentEndedTier1 *)self linkId];
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

  [(SISchemaInstrumentationMessage *)self willProduceDictionaryRepresentation:dictionary];

  return dictionary;
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  if (![equalCopy isMemberOfClass:objc_opt_class()])
  {
    goto LABEL_12;
  }

  dialogContexts = [(ASRSchemaASRJitLanguageModelEnrollmentEndedTier1 *)self dialogContexts];
  dialogContexts2 = [equalCopy dialogContexts];
  if ((dialogContexts != 0) == (dialogContexts2 == 0))
  {
    goto LABEL_11;
  }

  dialogContexts3 = [(ASRSchemaASRJitLanguageModelEnrollmentEndedTier1 *)self dialogContexts];
  if (dialogContexts3)
  {
    v8 = dialogContexts3;
    dialogContexts4 = [(ASRSchemaASRJitLanguageModelEnrollmentEndedTier1 *)self dialogContexts];
    dialogContexts5 = [equalCopy dialogContexts];
    v11 = [dialogContexts4 isEqual:dialogContexts5];

    if (!v11)
    {
      goto LABEL_12;
    }
  }

  else
  {
  }

  dialogContexts = [(ASRSchemaASRJitLanguageModelEnrollmentEndedTier1 *)self linkId];
  dialogContexts2 = [equalCopy linkId];
  if ((dialogContexts != 0) != (dialogContexts2 == 0))
  {
    linkId = [(ASRSchemaASRJitLanguageModelEnrollmentEndedTier1 *)self linkId];
    if (!linkId)
    {

LABEL_15:
      v17 = 1;
      goto LABEL_13;
    }

    v13 = linkId;
    linkId2 = [(ASRSchemaASRJitLanguageModelEnrollmentEndedTier1 *)self linkId];
    linkId3 = [equalCopy linkId];
    v16 = [linkId2 isEqual:linkId3];

    if (v16)
    {
      goto LABEL_15;
    }
  }

  else
  {
LABEL_11:
  }

LABEL_12:
  v17 = 0;
LABEL_13:

  return v17;
}

- (void)writeTo:(id)to
{
  v17 = *MEMORY[0x1E69E9840];
  toCopy = to;
  v12 = 0u;
  v13 = 0u;
  v14 = 0u;
  v15 = 0u;
  v5 = self->_dialogContexts;
  v6 = [(NSArray *)v5 countByEnumeratingWithState:&v12 objects:v16 count:16];
  if (v6)
  {
    v7 = v6;
    v8 = *v13;
    do
    {
      v9 = 0;
      do
      {
        if (*v13 != v8)
        {
          objc_enumerationMutation(v5);
        }

        PBDataWriterWriteStringField();
        ++v9;
      }

      while (v7 != v9);
      v7 = [(NSArray *)v5 countByEnumeratingWithState:&v12 objects:v16 count:16];
    }

    while (v7);
  }

  linkId = [(ASRSchemaASRJitLanguageModelEnrollmentEndedTier1 *)self linkId];

  if (linkId)
  {
    linkId2 = [(ASRSchemaASRJitLanguageModelEnrollmentEndedTier1 *)self linkId];
    PBDataWriterWriteSubmessage();
  }
}

- (void)addDialogContext:(id)context
{
  contextCopy = context;
  dialogContexts = self->_dialogContexts;
  v8 = contextCopy;
  if (!dialogContexts)
  {
    array = [MEMORY[0x1E695DF70] array];
    v7 = self->_dialogContexts;
    self->_dialogContexts = array;

    contextCopy = v8;
    dialogContexts = self->_dialogContexts;
  }

  [(NSArray *)dialogContexts addObject:contextCopy];
}

- (id)applySensitiveConditionsPolicy:(id)policy
{
  policyCopy = policy;
  v10.receiver = self;
  v10.super_class = ASRSchemaASRJitLanguageModelEnrollmentEndedTier1;
  v5 = [(SISchemaInstrumentationMessage *)&v10 applySensitiveConditionsPolicy:policyCopy];
  if ([policyCopy isConditionSet:2])
  {
    [(ASRSchemaASRJitLanguageModelEnrollmentEndedTier1 *)self deleteDialogContext];
  }

  if ([policyCopy isConditionSet:4])
  {
    [(ASRSchemaASRJitLanguageModelEnrollmentEndedTier1 *)self deleteDialogContext];
  }

  if ([policyCopy isConditionSet:5])
  {
    [(ASRSchemaASRJitLanguageModelEnrollmentEndedTier1 *)self deleteDialogContext];
  }

  if ([policyCopy isConditionSet:6])
  {
    [(ASRSchemaASRJitLanguageModelEnrollmentEndedTier1 *)self deleteDialogContext];
  }

  if ([policyCopy isConditionSet:7])
  {
    [(ASRSchemaASRJitLanguageModelEnrollmentEndedTier1 *)self deleteDialogContext];
  }

  linkId = [(ASRSchemaASRJitLanguageModelEnrollmentEndedTier1 *)self linkId];
  v7 = [linkId applySensitiveConditionsPolicy:policyCopy];
  suppressMessage = [v7 suppressMessage];

  if (suppressMessage)
  {
    [(ASRSchemaASRJitLanguageModelEnrollmentEndedTier1 *)self deleteLinkId];
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