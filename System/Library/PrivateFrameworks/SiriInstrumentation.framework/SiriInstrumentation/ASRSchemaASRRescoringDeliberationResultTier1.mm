@interface ASRSchemaASRRescoringDeliberationResultTier1
- (ASRSchemaASRRescoringDeliberationResultTier1)initWithDictionary:(id)dictionary;
- (ASRSchemaASRRescoringDeliberationResultTier1)initWithJSON:(id)n;
- (BOOL)isEqual:(id)equal;
- (NSData)jsonData;
- (id)applySensitiveConditionsPolicy:(id)policy;
- (id)dictionaryRepresentation;
- (id)suppressMessageUnderConditions;
- (unint64_t)hash;
- (void)writeTo:(id)to;
@end

@implementation ASRSchemaASRRescoringDeliberationResultTier1

- (ASRSchemaASRRescoringDeliberationResultTier1)initWithDictionary:(id)dictionary
{
  dictionaryCopy = dictionary;
  v14.receiver = self;
  v14.super_class = ASRSchemaASRRescoringDeliberationResultTier1;
  v5 = [(ASRSchemaASRRescoringDeliberationResultTier1 *)&v14 init];
  if (v5)
  {
    v6 = [dictionaryCopy objectForKeyedSubscript:@"linkId"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v7 = [[SISchemaUUID alloc] initWithDictionary:v6];
      [(ASRSchemaASRRescoringDeliberationResultTier1 *)v5 setLinkId:v7];
    }

    v8 = [dictionaryCopy objectForKeyedSubscript:@"originalTranscript"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v9 = [v8 copy];
      [(ASRSchemaASRRescoringDeliberationResultTier1 *)v5 setOriginalTranscript:v9];
    }

    v10 = [dictionaryCopy objectForKeyedSubscript:@"modifiedTranscript"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v11 = [v10 copy];
      [(ASRSchemaASRRescoringDeliberationResultTier1 *)v5 setModifiedTranscript:v11];
    }

    v12 = v5;
  }

  return v5;
}

- (ASRSchemaASRRescoringDeliberationResultTier1)initWithJSON:(id)n
{
  v7 = 0;
  v4 = [MEMORY[0x1E696ACB0] JSONObjectWithData:n options:0 error:&v7];
  if (v7 || (objc_opt_class(), (objc_opt_isKindOfClass() & 1) == 0))
  {
    selfCopy = 0;
  }

  else
  {
    self = [(ASRSchemaASRRescoringDeliberationResultTier1 *)self initWithDictionary:v4];
    selfCopy = self;
  }

  return selfCopy;
}

- (NSData)jsonData
{
  dictionaryRepresentation = [(ASRSchemaASRRescoringDeliberationResultTier1 *)self dictionaryRepresentation];
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
  if (self->_linkId)
  {
    linkId = [(ASRSchemaASRRescoringDeliberationResultTier1 *)self linkId];
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

  if (self->_modifiedTranscript)
  {
    modifiedTranscript = [(ASRSchemaASRRescoringDeliberationResultTier1 *)self modifiedTranscript];
    v8 = [modifiedTranscript copy];
    [dictionary setObject:v8 forKeyedSubscript:@"modifiedTranscript"];
  }

  if (self->_originalTranscript)
  {
    originalTranscript = [(ASRSchemaASRRescoringDeliberationResultTier1 *)self originalTranscript];
    v10 = [originalTranscript copy];
    [dictionary setObject:v10 forKeyedSubscript:@"originalTranscript"];
  }

  [(SISchemaInstrumentationMessage *)self willProduceDictionaryRepresentation:dictionary];

  return dictionary;
}

- (unint64_t)hash
{
  v3 = [(SISchemaUUID *)self->_linkId hash];
  v4 = [(NSString *)self->_originalTranscript hash]^ v3;
  return v4 ^ [(NSString *)self->_modifiedTranscript hash];
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  if (![equalCopy isMemberOfClass:objc_opt_class()])
  {
    goto LABEL_17;
  }

  linkId = [(ASRSchemaASRRescoringDeliberationResultTier1 *)self linkId];
  linkId2 = [equalCopy linkId];
  if ((linkId != 0) == (linkId2 == 0))
  {
    goto LABEL_16;
  }

  linkId3 = [(ASRSchemaASRRescoringDeliberationResultTier1 *)self linkId];
  if (linkId3)
  {
    v8 = linkId3;
    linkId4 = [(ASRSchemaASRRescoringDeliberationResultTier1 *)self linkId];
    linkId5 = [equalCopy linkId];
    v11 = [linkId4 isEqual:linkId5];

    if (!v11)
    {
      goto LABEL_17;
    }
  }

  else
  {
  }

  linkId = [(ASRSchemaASRRescoringDeliberationResultTier1 *)self originalTranscript];
  linkId2 = [equalCopy originalTranscript];
  if ((linkId != 0) == (linkId2 == 0))
  {
    goto LABEL_16;
  }

  originalTranscript = [(ASRSchemaASRRescoringDeliberationResultTier1 *)self originalTranscript];
  if (originalTranscript)
  {
    v13 = originalTranscript;
    originalTranscript2 = [(ASRSchemaASRRescoringDeliberationResultTier1 *)self originalTranscript];
    originalTranscript3 = [equalCopy originalTranscript];
    v16 = [originalTranscript2 isEqual:originalTranscript3];

    if (!v16)
    {
      goto LABEL_17;
    }
  }

  else
  {
  }

  linkId = [(ASRSchemaASRRescoringDeliberationResultTier1 *)self modifiedTranscript];
  linkId2 = [equalCopy modifiedTranscript];
  if ((linkId != 0) != (linkId2 == 0))
  {
    modifiedTranscript = [(ASRSchemaASRRescoringDeliberationResultTier1 *)self modifiedTranscript];
    if (!modifiedTranscript)
    {

LABEL_20:
      v22 = 1;
      goto LABEL_18;
    }

    v18 = modifiedTranscript;
    modifiedTranscript2 = [(ASRSchemaASRRescoringDeliberationResultTier1 *)self modifiedTranscript];
    modifiedTranscript3 = [equalCopy modifiedTranscript];
    v21 = [modifiedTranscript2 isEqual:modifiedTranscript3];

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
  toCopy = to;
  linkId = [(ASRSchemaASRRescoringDeliberationResultTier1 *)self linkId];

  if (linkId)
  {
    linkId2 = [(ASRSchemaASRRescoringDeliberationResultTier1 *)self linkId];
    PBDataWriterWriteSubmessage();
  }

  originalTranscript = [(ASRSchemaASRRescoringDeliberationResultTier1 *)self originalTranscript];

  if (originalTranscript)
  {
    PBDataWriterWriteStringField();
  }

  modifiedTranscript = [(ASRSchemaASRRescoringDeliberationResultTier1 *)self modifiedTranscript];

  v8 = toCopy;
  if (modifiedTranscript)
  {
    PBDataWriterWriteStringField();
    v8 = toCopy;
  }
}

- (id)applySensitiveConditionsPolicy:(id)policy
{
  policyCopy = policy;
  v10.receiver = self;
  v10.super_class = ASRSchemaASRRescoringDeliberationResultTier1;
  v5 = [(SISchemaInstrumentationMessage *)&v10 applySensitiveConditionsPolicy:policyCopy];
  if ([policyCopy isConditionSet:2])
  {
    [(ASRSchemaASRRescoringDeliberationResultTier1 *)self deleteLinkId];
    [(ASRSchemaASRRescoringDeliberationResultTier1 *)self deleteOriginalTranscript];
    [(ASRSchemaASRRescoringDeliberationResultTier1 *)self deleteModifiedTranscript];
  }

  if ([policyCopy isConditionSet:4])
  {
    [(ASRSchemaASRRescoringDeliberationResultTier1 *)self deleteLinkId];
    [(ASRSchemaASRRescoringDeliberationResultTier1 *)self deleteOriginalTranscript];
    [(ASRSchemaASRRescoringDeliberationResultTier1 *)self deleteModifiedTranscript];
  }

  if ([policyCopy isConditionSet:5])
  {
    [(ASRSchemaASRRescoringDeliberationResultTier1 *)self deleteLinkId];
    [(ASRSchemaASRRescoringDeliberationResultTier1 *)self deleteOriginalTranscript];
    [(ASRSchemaASRRescoringDeliberationResultTier1 *)self deleteModifiedTranscript];
  }

  if ([policyCopy isConditionSet:6])
  {
    [(ASRSchemaASRRescoringDeliberationResultTier1 *)self deleteLinkId];
    [(ASRSchemaASRRescoringDeliberationResultTier1 *)self deleteOriginalTranscript];
    [(ASRSchemaASRRescoringDeliberationResultTier1 *)self deleteModifiedTranscript];
  }

  if ([policyCopy isConditionSet:7])
  {
    [(ASRSchemaASRRescoringDeliberationResultTier1 *)self deleteLinkId];
    [(ASRSchemaASRRescoringDeliberationResultTier1 *)self deleteOriginalTranscript];
    [(ASRSchemaASRRescoringDeliberationResultTier1 *)self deleteModifiedTranscript];
  }

  linkId = [(ASRSchemaASRRescoringDeliberationResultTier1 *)self linkId];
  v7 = [linkId applySensitiveConditionsPolicy:policyCopy];
  suppressMessage = [v7 suppressMessage];

  if (suppressMessage)
  {
    [(ASRSchemaASRRescoringDeliberationResultTier1 *)self deleteLinkId];
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