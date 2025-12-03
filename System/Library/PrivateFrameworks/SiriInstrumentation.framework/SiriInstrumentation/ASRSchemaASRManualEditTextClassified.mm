@interface ASRSchemaASRManualEditTextClassified
- (ASRSchemaASRManualEditTextClassified)initWithDictionary:(id)dictionary;
- (ASRSchemaASRManualEditTextClassified)initWithJSON:(id)n;
- (BOOL)isEqual:(id)equal;
- (NSData)jsonData;
- (id)applySensitiveConditionsPolicy:(id)policy;
- (id)dictionaryRepresentation;
- (id)suppressMessageUnderConditions;
- (unint64_t)hash;
- (void)addManualEdits:(id)edits;
- (void)writeTo:(id)to;
@end

@implementation ASRSchemaASRManualEditTextClassified

- (ASRSchemaASRManualEditTextClassified)initWithDictionary:(id)dictionary
{
  v27 = *MEMORY[0x1E69E9840];
  dictionaryCopy = dictionary;
  v25.receiver = self;
  v25.super_class = ASRSchemaASRManualEditTextClassified;
  v5 = [(ASRSchemaASRManualEditTextClassified *)&v25 init];
  if (v5)
  {
    v6 = [dictionaryCopy objectForKeyedSubscript:@"originalAsrId"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v7 = [[SISchemaUUID alloc] initWithDictionary:v6];
      [(ASRSchemaASRManualEditTextClassified *)v5 setOriginalAsrId:v7];
    }

    v8 = [dictionaryCopy objectForKeyedSubscript:@"manualEdits"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v20 = v6;
      v23 = 0u;
      v24 = 0u;
      v21 = 0u;
      v22 = 0u;
      v9 = v8;
      v10 = [v9 countByEnumeratingWithState:&v21 objects:v26 count:16];
      if (v10)
      {
        v11 = v10;
        v12 = *v22;
        do
        {
          v13 = 0;
          do
          {
            if (*v22 != v12)
            {
              objc_enumerationMutation(v9);
            }

            v14 = *(*(&v21 + 1) + 8 * v13);
            objc_opt_class();
            if (objc_opt_isKindOfClass())
            {
              v15 = [[ASRSchemaASRConfusionPairToken alloc] initWithDictionary:v14];
              [(ASRSchemaASRManualEditTextClassified *)v5 addManualEdits:v15];
            }

            ++v13;
          }

          while (v11 != v13);
          v11 = [v9 countByEnumeratingWithState:&v21 objects:v26 count:16];
        }

        while (v11);
      }

      v6 = v20;
    }

    v16 = [dictionaryCopy objectForKeyedSubscript:@"fullCorrectedText"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v17 = [v16 copy];
      [(ASRSchemaASRManualEditTextClassified *)v5 setFullCorrectedText:v17];
    }

    v18 = v5;
  }

  return v5;
}

- (ASRSchemaASRManualEditTextClassified)initWithJSON:(id)n
{
  v7 = 0;
  v4 = [MEMORY[0x1E696ACB0] JSONObjectWithData:n options:0 error:&v7];
  if (v7 || (objc_opt_class(), (objc_opt_isKindOfClass() & 1) == 0))
  {
    selfCopy = 0;
  }

  else
  {
    self = [(ASRSchemaASRManualEditTextClassified *)self initWithDictionary:v4];
    selfCopy = self;
  }

  return selfCopy;
}

- (NSData)jsonData
{
  dictionaryRepresentation = [(ASRSchemaASRManualEditTextClassified *)self dictionaryRepresentation];
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
  v23 = *MEMORY[0x1E69E9840];
  dictionary = [MEMORY[0x1E695DF90] dictionary];
  if (self->_fullCorrectedText)
  {
    fullCorrectedText = [(ASRSchemaASRManualEditTextClassified *)self fullCorrectedText];
    v5 = [fullCorrectedText copy];
    [dictionary setObject:v5 forKeyedSubscript:@"fullCorrectedText"];
  }

  if ([(NSArray *)self->_manualEdits count])
  {
    array = [MEMORY[0x1E695DF70] array];
    v18 = 0u;
    v19 = 0u;
    v20 = 0u;
    v21 = 0u;
    v7 = self->_manualEdits;
    v8 = [(NSArray *)v7 countByEnumeratingWithState:&v18 objects:v22 count:16];
    if (v8)
    {
      v9 = v8;
      v10 = *v19;
      do
      {
        for (i = 0; i != v9; ++i)
        {
          if (*v19 != v10)
          {
            objc_enumerationMutation(v7);
          }

          dictionaryRepresentation = [*(*(&v18 + 1) + 8 * i) dictionaryRepresentation];
          if (dictionaryRepresentation)
          {
            [array addObject:dictionaryRepresentation];
          }

          else
          {
            null = [MEMORY[0x1E695DFB0] null];
            [array addObject:null];
          }
        }

        v9 = [(NSArray *)v7 countByEnumeratingWithState:&v18 objects:v22 count:16];
      }

      while (v9);
    }

    [dictionary setObject:array forKeyedSubscript:@"manualEdits"];
  }

  if (self->_originalAsrId)
  {
    originalAsrId = [(ASRSchemaASRManualEditTextClassified *)self originalAsrId];
    dictionaryRepresentation2 = [originalAsrId dictionaryRepresentation];
    if (dictionaryRepresentation2)
    {
      [dictionary setObject:dictionaryRepresentation2 forKeyedSubscript:@"originalAsrId"];
    }

    else
    {
      null2 = [MEMORY[0x1E695DFB0] null];
      [dictionary setObject:null2 forKeyedSubscript:@"originalAsrId"];
    }
  }

  [(SISchemaInstrumentationMessage *)self willProduceDictionaryRepresentation:dictionary, v18];

  return dictionary;
}

- (unint64_t)hash
{
  v3 = [(SISchemaUUID *)self->_originalAsrId hash];
  v4 = [(NSArray *)self->_manualEdits hash]^ v3;
  return v4 ^ [(NSString *)self->_fullCorrectedText hash];
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  if (![equalCopy isMemberOfClass:objc_opt_class()])
  {
    goto LABEL_17;
  }

  originalAsrId = [(ASRSchemaASRManualEditTextClassified *)self originalAsrId];
  originalAsrId2 = [equalCopy originalAsrId];
  if ((originalAsrId != 0) == (originalAsrId2 == 0))
  {
    goto LABEL_16;
  }

  originalAsrId3 = [(ASRSchemaASRManualEditTextClassified *)self originalAsrId];
  if (originalAsrId3)
  {
    v8 = originalAsrId3;
    originalAsrId4 = [(ASRSchemaASRManualEditTextClassified *)self originalAsrId];
    originalAsrId5 = [equalCopy originalAsrId];
    v11 = [originalAsrId4 isEqual:originalAsrId5];

    if (!v11)
    {
      goto LABEL_17;
    }
  }

  else
  {
  }

  originalAsrId = [(ASRSchemaASRManualEditTextClassified *)self manualEdits];
  originalAsrId2 = [equalCopy manualEdits];
  if ((originalAsrId != 0) == (originalAsrId2 == 0))
  {
    goto LABEL_16;
  }

  manualEdits = [(ASRSchemaASRManualEditTextClassified *)self manualEdits];
  if (manualEdits)
  {
    v13 = manualEdits;
    manualEdits2 = [(ASRSchemaASRManualEditTextClassified *)self manualEdits];
    manualEdits3 = [equalCopy manualEdits];
    v16 = [manualEdits2 isEqual:manualEdits3];

    if (!v16)
    {
      goto LABEL_17;
    }
  }

  else
  {
  }

  originalAsrId = [(ASRSchemaASRManualEditTextClassified *)self fullCorrectedText];
  originalAsrId2 = [equalCopy fullCorrectedText];
  if ((originalAsrId != 0) != (originalAsrId2 == 0))
  {
    fullCorrectedText = [(ASRSchemaASRManualEditTextClassified *)self fullCorrectedText];
    if (!fullCorrectedText)
    {

LABEL_20:
      v22 = 1;
      goto LABEL_18;
    }

    v18 = fullCorrectedText;
    fullCorrectedText2 = [(ASRSchemaASRManualEditTextClassified *)self fullCorrectedText];
    fullCorrectedText3 = [equalCopy fullCorrectedText];
    v21 = [fullCorrectedText2 isEqual:fullCorrectedText3];

    if (v21)
    {
      goto LABEL_20;
    }
  }

  else
  {
LABEL_16:
  }

LABEL_17:
  v22 = 0;
LABEL_18:

  return v22;
}

- (void)writeTo:(id)to
{
  v18 = *MEMORY[0x1E69E9840];
  toCopy = to;
  originalAsrId = [(ASRSchemaASRManualEditTextClassified *)self originalAsrId];

  if (originalAsrId)
  {
    originalAsrId2 = [(ASRSchemaASRManualEditTextClassified *)self originalAsrId];
    PBDataWriterWriteSubmessage();
  }

  v15 = 0u;
  v16 = 0u;
  v13 = 0u;
  v14 = 0u;
  v7 = self->_manualEdits;
  v8 = [(NSArray *)v7 countByEnumeratingWithState:&v13 objects:v17 count:16];
  if (v8)
  {
    v9 = v8;
    v10 = *v14;
    do
    {
      v11 = 0;
      do
      {
        if (*v14 != v10)
        {
          objc_enumerationMutation(v7);
        }

        PBDataWriterWriteSubmessage();
        ++v11;
      }

      while (v9 != v11);
      v9 = [(NSArray *)v7 countByEnumeratingWithState:&v13 objects:v17 count:16];
    }

    while (v9);
  }

  fullCorrectedText = [(ASRSchemaASRManualEditTextClassified *)self fullCorrectedText];

  if (fullCorrectedText)
  {
    PBDataWriterWriteStringField();
  }
}

- (void)addManualEdits:(id)edits
{
  editsCopy = edits;
  manualEdits = self->_manualEdits;
  v8 = editsCopy;
  if (!manualEdits)
  {
    array = [MEMORY[0x1E695DF70] array];
    v7 = self->_manualEdits;
    self->_manualEdits = array;

    editsCopy = v8;
    manualEdits = self->_manualEdits;
  }

  [(NSArray *)manualEdits addObject:editsCopy];
}

- (id)applySensitiveConditionsPolicy:(id)policy
{
  policyCopy = policy;
  v12.receiver = self;
  v12.super_class = ASRSchemaASRManualEditTextClassified;
  v5 = [(SISchemaInstrumentationMessage *)&v12 applySensitiveConditionsPolicy:policyCopy];
  if ([policyCopy isConditionSet:2])
  {
    [(ASRSchemaASRManualEditTextClassified *)self deleteManualEdits];
    [(ASRSchemaASRManualEditTextClassified *)self deleteFullCorrectedText];
  }

  if ([policyCopy isConditionSet:4])
  {
    [(ASRSchemaASRManualEditTextClassified *)self deleteManualEdits];
    [(ASRSchemaASRManualEditTextClassified *)self deleteFullCorrectedText];
  }

  if ([policyCopy isConditionSet:5])
  {
    [(ASRSchemaASRManualEditTextClassified *)self deleteManualEdits];
    [(ASRSchemaASRManualEditTextClassified *)self deleteFullCorrectedText];
  }

  if ([policyCopy isConditionSet:6])
  {
    [(ASRSchemaASRManualEditTextClassified *)self deleteManualEdits];
    [(ASRSchemaASRManualEditTextClassified *)self deleteFullCorrectedText];
  }

  if ([policyCopy isConditionSet:7])
  {
    [(ASRSchemaASRManualEditTextClassified *)self deleteManualEdits];
    [(ASRSchemaASRManualEditTextClassified *)self deleteFullCorrectedText];
  }

  originalAsrId = [(ASRSchemaASRManualEditTextClassified *)self originalAsrId];
  v7 = [originalAsrId applySensitiveConditionsPolicy:policyCopy];
  suppressMessage = [v7 suppressMessage];

  if (suppressMessage)
  {
    [(ASRSchemaASRManualEditTextClassified *)self deleteOriginalAsrId];
  }

  manualEdits = [(ASRSchemaASRManualEditTextClassified *)self manualEdits];
  v10 = [(SISchemaInstrumentationMessage *)self _pruneSuppressedMessagesFromArray:manualEdits underConditions:policyCopy];
  [(ASRSchemaASRManualEditTextClassified *)self setManualEdits:v10];

  return v5;
}

- (id)suppressMessageUnderConditions
{
  v2 = objc_alloc_init(SISensitiveConditionsSet);
  [(SISensitiveConditionsSet *)v2 addCondition:1];

  return v2;
}

@end