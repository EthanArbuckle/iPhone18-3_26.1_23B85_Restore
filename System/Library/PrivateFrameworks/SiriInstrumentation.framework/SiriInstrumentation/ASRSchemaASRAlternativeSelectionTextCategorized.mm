@interface ASRSchemaASRAlternativeSelectionTextCategorized
- (ASRSchemaASRAlternativeSelectionTextCategorized)initWithDictionary:(id)dictionary;
- (ASRSchemaASRAlternativeSelectionTextCategorized)initWithJSON:(id)n;
- (BOOL)isEqual:(id)equal;
- (NSData)jsonData;
- (id)applySensitiveConditionsPolicy:(id)policy;
- (id)dictionaryRepresentation;
- (id)suppressMessageUnderConditions;
- (void)writeTo:(id)to;
@end

@implementation ASRSchemaASRAlternativeSelectionTextCategorized

- (ASRSchemaASRAlternativeSelectionTextCategorized)initWithDictionary:(id)dictionary
{
  dictionaryCopy = dictionary;
  v12.receiver = self;
  v12.super_class = ASRSchemaASRAlternativeSelectionTextCategorized;
  v5 = [(ASRSchemaASRAlternativeSelectionTextCategorized *)&v12 init];
  if (v5)
  {
    v6 = [dictionaryCopy objectForKeyedSubscript:@"originalAsrId"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v7 = [[SISchemaUUID alloc] initWithDictionary:v6];
      [(ASRSchemaASRAlternativeSelectionTextCategorized *)v5 setOriginalAsrId:v7];
    }

    v8 = [dictionaryCopy objectForKeyedSubscript:@"fullCorrectedText"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v9 = [v8 copy];
      [(ASRSchemaASRAlternativeSelectionTextCategorized *)v5 setFullCorrectedText:v9];
    }

    v10 = v5;
  }

  return v5;
}

- (ASRSchemaASRAlternativeSelectionTextCategorized)initWithJSON:(id)n
{
  v7 = 0;
  v4 = [MEMORY[0x1E696ACB0] JSONObjectWithData:n options:0 error:&v7];
  if (v7 || (objc_opt_class(), (objc_opt_isKindOfClass() & 1) == 0))
  {
    selfCopy = 0;
  }

  else
  {
    self = [(ASRSchemaASRAlternativeSelectionTextCategorized *)self initWithDictionary:v4];
    selfCopy = self;
  }

  return selfCopy;
}

- (NSData)jsonData
{
  dictionaryRepresentation = [(ASRSchemaASRAlternativeSelectionTextCategorized *)self dictionaryRepresentation];
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
  if (self->_fullCorrectedText)
  {
    fullCorrectedText = [(ASRSchemaASRAlternativeSelectionTextCategorized *)self fullCorrectedText];
    v5 = [fullCorrectedText copy];
    [dictionary setObject:v5 forKeyedSubscript:@"fullCorrectedText"];
  }

  if (self->_originalAsrId)
  {
    originalAsrId = [(ASRSchemaASRAlternativeSelectionTextCategorized *)self originalAsrId];
    dictionaryRepresentation = [originalAsrId dictionaryRepresentation];
    if (dictionaryRepresentation)
    {
      [dictionary setObject:dictionaryRepresentation forKeyedSubscript:@"originalAsrId"];
    }

    else
    {
      null = [MEMORY[0x1E695DFB0] null];
      [dictionary setObject:null forKeyedSubscript:@"originalAsrId"];
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

  originalAsrId = [(ASRSchemaASRAlternativeSelectionTextCategorized *)self originalAsrId];
  originalAsrId2 = [equalCopy originalAsrId];
  if ((originalAsrId != 0) == (originalAsrId2 == 0))
  {
    goto LABEL_11;
  }

  originalAsrId3 = [(ASRSchemaASRAlternativeSelectionTextCategorized *)self originalAsrId];
  if (originalAsrId3)
  {
    v8 = originalAsrId3;
    originalAsrId4 = [(ASRSchemaASRAlternativeSelectionTextCategorized *)self originalAsrId];
    originalAsrId5 = [equalCopy originalAsrId];
    v11 = [originalAsrId4 isEqual:originalAsrId5];

    if (!v11)
    {
      goto LABEL_12;
    }
  }

  else
  {
  }

  originalAsrId = [(ASRSchemaASRAlternativeSelectionTextCategorized *)self fullCorrectedText];
  originalAsrId2 = [equalCopy fullCorrectedText];
  if ((originalAsrId != 0) != (originalAsrId2 == 0))
  {
    fullCorrectedText = [(ASRSchemaASRAlternativeSelectionTextCategorized *)self fullCorrectedText];
    if (!fullCorrectedText)
    {

LABEL_15:
      v17 = 1;
      goto LABEL_13;
    }

    v13 = fullCorrectedText;
    fullCorrectedText2 = [(ASRSchemaASRAlternativeSelectionTextCategorized *)self fullCorrectedText];
    fullCorrectedText3 = [equalCopy fullCorrectedText];
    v16 = [fullCorrectedText2 isEqual:fullCorrectedText3];

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
  toCopy = to;
  originalAsrId = [(ASRSchemaASRAlternativeSelectionTextCategorized *)self originalAsrId];

  if (originalAsrId)
  {
    originalAsrId2 = [(ASRSchemaASRAlternativeSelectionTextCategorized *)self originalAsrId];
    PBDataWriterWriteSubmessage();
  }

  fullCorrectedText = [(ASRSchemaASRAlternativeSelectionTextCategorized *)self fullCorrectedText];

  if (fullCorrectedText)
  {
    PBDataWriterWriteStringField();
  }
}

- (id)applySensitiveConditionsPolicy:(id)policy
{
  policyCopy = policy;
  v10.receiver = self;
  v10.super_class = ASRSchemaASRAlternativeSelectionTextCategorized;
  v5 = [(SISchemaInstrumentationMessage *)&v10 applySensitiveConditionsPolicy:policyCopy];
  if ([policyCopy isConditionSet:2])
  {
    [(ASRSchemaASRAlternativeSelectionTextCategorized *)self deleteFullCorrectedText];
  }

  if ([policyCopy isConditionSet:4])
  {
    [(ASRSchemaASRAlternativeSelectionTextCategorized *)self deleteFullCorrectedText];
  }

  if ([policyCopy isConditionSet:5])
  {
    [(ASRSchemaASRAlternativeSelectionTextCategorized *)self deleteFullCorrectedText];
  }

  if ([policyCopy isConditionSet:6])
  {
    [(ASRSchemaASRAlternativeSelectionTextCategorized *)self deleteFullCorrectedText];
  }

  if ([policyCopy isConditionSet:7])
  {
    [(ASRSchemaASRAlternativeSelectionTextCategorized *)self deleteFullCorrectedText];
  }

  originalAsrId = [(ASRSchemaASRAlternativeSelectionTextCategorized *)self originalAsrId];
  v7 = [originalAsrId applySensitiveConditionsPolicy:policyCopy];
  suppressMessage = [v7 suppressMessage];

  if (suppressMessage)
  {
    [(ASRSchemaASRAlternativeSelectionTextCategorized *)self deleteOriginalAsrId];
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