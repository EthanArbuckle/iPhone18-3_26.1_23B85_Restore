@interface ASRSchemaASRFullPayloadCorrectionInfoTier1
- (ASRSchemaASRFullPayloadCorrectionInfoTier1)initWithDictionary:(id)dictionary;
- (ASRSchemaASRFullPayloadCorrectionInfoTier1)initWithJSON:(id)n;
- (BOOL)isEqual:(id)equal;
- (NSData)jsonData;
- (id)applySensitiveConditionsPolicy:(id)policy;
- (id)dictionaryRepresentation;
- (id)suppressMessageUnderConditions;
- (unint64_t)hash;
- (void)writeTo:(id)to;
@end

@implementation ASRSchemaASRFullPayloadCorrectionInfoTier1

- (ASRSchemaASRFullPayloadCorrectionInfoTier1)initWithDictionary:(id)dictionary
{
  dictionaryCopy = dictionary;
  v14.receiver = self;
  v14.super_class = ASRSchemaASRFullPayloadCorrectionInfoTier1;
  v5 = [(ASRSchemaASRFullPayloadCorrectionInfoTier1 *)&v14 init];
  if (v5)
  {
    v6 = [dictionaryCopy objectForKeyedSubscript:@"linkId"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v7 = [[SISchemaUUID alloc] initWithDictionary:v6];
      [(ASRSchemaASRFullPayloadCorrectionInfoTier1 *)v5 setLinkId:v7];
    }

    v8 = [dictionaryCopy objectForKeyedSubscript:@"fullPayloadCorrectorOutput"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v9 = [v8 copy];
      [(ASRSchemaASRFullPayloadCorrectionInfoTier1 *)v5 setFullPayloadCorrectorOutput:v9];
    }

    v10 = [dictionaryCopy objectForKeyedSubscript:@"fullPayloadCorrectorInput"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v11 = [v10 copy];
      [(ASRSchemaASRFullPayloadCorrectionInfoTier1 *)v5 setFullPayloadCorrectorInput:v11];
    }

    v12 = v5;
  }

  return v5;
}

- (ASRSchemaASRFullPayloadCorrectionInfoTier1)initWithJSON:(id)n
{
  v7 = 0;
  v4 = [MEMORY[0x1E696ACB0] JSONObjectWithData:n options:0 error:&v7];
  if (v7 || (objc_opt_class(), (objc_opt_isKindOfClass() & 1) == 0))
  {
    selfCopy = 0;
  }

  else
  {
    self = [(ASRSchemaASRFullPayloadCorrectionInfoTier1 *)self initWithDictionary:v4];
    selfCopy = self;
  }

  return selfCopy;
}

- (NSData)jsonData
{
  dictionaryRepresentation = [(ASRSchemaASRFullPayloadCorrectionInfoTier1 *)self dictionaryRepresentation];
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
  if (self->_fullPayloadCorrectorInput)
  {
    fullPayloadCorrectorInput = [(ASRSchemaASRFullPayloadCorrectionInfoTier1 *)self fullPayloadCorrectorInput];
    v5 = [fullPayloadCorrectorInput copy];
    [dictionary setObject:v5 forKeyedSubscript:@"fullPayloadCorrectorInput"];
  }

  if (self->_fullPayloadCorrectorOutput)
  {
    fullPayloadCorrectorOutput = [(ASRSchemaASRFullPayloadCorrectionInfoTier1 *)self fullPayloadCorrectorOutput];
    v7 = [fullPayloadCorrectorOutput copy];
    [dictionary setObject:v7 forKeyedSubscript:@"fullPayloadCorrectorOutput"];
  }

  if (self->_linkId)
  {
    linkId = [(ASRSchemaASRFullPayloadCorrectionInfoTier1 *)self linkId];
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

- (unint64_t)hash
{
  v3 = [(SISchemaUUID *)self->_linkId hash];
  v4 = [(NSString *)self->_fullPayloadCorrectorOutput hash]^ v3;
  return v4 ^ [(NSString *)self->_fullPayloadCorrectorInput hash];
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  if (![equalCopy isMemberOfClass:objc_opt_class()])
  {
    goto LABEL_17;
  }

  linkId = [(ASRSchemaASRFullPayloadCorrectionInfoTier1 *)self linkId];
  linkId2 = [equalCopy linkId];
  if ((linkId != 0) == (linkId2 == 0))
  {
    goto LABEL_16;
  }

  linkId3 = [(ASRSchemaASRFullPayloadCorrectionInfoTier1 *)self linkId];
  if (linkId3)
  {
    v8 = linkId3;
    linkId4 = [(ASRSchemaASRFullPayloadCorrectionInfoTier1 *)self linkId];
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

  linkId = [(ASRSchemaASRFullPayloadCorrectionInfoTier1 *)self fullPayloadCorrectorOutput];
  linkId2 = [equalCopy fullPayloadCorrectorOutput];
  if ((linkId != 0) == (linkId2 == 0))
  {
    goto LABEL_16;
  }

  fullPayloadCorrectorOutput = [(ASRSchemaASRFullPayloadCorrectionInfoTier1 *)self fullPayloadCorrectorOutput];
  if (fullPayloadCorrectorOutput)
  {
    v13 = fullPayloadCorrectorOutput;
    fullPayloadCorrectorOutput2 = [(ASRSchemaASRFullPayloadCorrectionInfoTier1 *)self fullPayloadCorrectorOutput];
    fullPayloadCorrectorOutput3 = [equalCopy fullPayloadCorrectorOutput];
    v16 = [fullPayloadCorrectorOutput2 isEqual:fullPayloadCorrectorOutput3];

    if (!v16)
    {
      goto LABEL_17;
    }
  }

  else
  {
  }

  linkId = [(ASRSchemaASRFullPayloadCorrectionInfoTier1 *)self fullPayloadCorrectorInput];
  linkId2 = [equalCopy fullPayloadCorrectorInput];
  if ((linkId != 0) != (linkId2 == 0))
  {
    fullPayloadCorrectorInput = [(ASRSchemaASRFullPayloadCorrectionInfoTier1 *)self fullPayloadCorrectorInput];
    if (!fullPayloadCorrectorInput)
    {

LABEL_20:
      v22 = 1;
      goto LABEL_18;
    }

    v18 = fullPayloadCorrectorInput;
    fullPayloadCorrectorInput2 = [(ASRSchemaASRFullPayloadCorrectionInfoTier1 *)self fullPayloadCorrectorInput];
    fullPayloadCorrectorInput3 = [equalCopy fullPayloadCorrectorInput];
    v21 = [fullPayloadCorrectorInput2 isEqual:fullPayloadCorrectorInput3];

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
  linkId = [(ASRSchemaASRFullPayloadCorrectionInfoTier1 *)self linkId];

  if (linkId)
  {
    linkId2 = [(ASRSchemaASRFullPayloadCorrectionInfoTier1 *)self linkId];
    PBDataWriterWriteSubmessage();
  }

  fullPayloadCorrectorOutput = [(ASRSchemaASRFullPayloadCorrectionInfoTier1 *)self fullPayloadCorrectorOutput];

  if (fullPayloadCorrectorOutput)
  {
    PBDataWriterWriteStringField();
  }

  fullPayloadCorrectorInput = [(ASRSchemaASRFullPayloadCorrectionInfoTier1 *)self fullPayloadCorrectorInput];

  v8 = toCopy;
  if (fullPayloadCorrectorInput)
  {
    PBDataWriterWriteStringField();
    v8 = toCopy;
  }
}

- (id)applySensitiveConditionsPolicy:(id)policy
{
  policyCopy = policy;
  v10.receiver = self;
  v10.super_class = ASRSchemaASRFullPayloadCorrectionInfoTier1;
  v5 = [(SISchemaInstrumentationMessage *)&v10 applySensitiveConditionsPolicy:policyCopy];
  if ([policyCopy isConditionSet:2])
  {
    [(ASRSchemaASRFullPayloadCorrectionInfoTier1 *)self deleteFullPayloadCorrectorOutput];
    [(ASRSchemaASRFullPayloadCorrectionInfoTier1 *)self deleteFullPayloadCorrectorInput];
  }

  if ([policyCopy isConditionSet:4])
  {
    [(ASRSchemaASRFullPayloadCorrectionInfoTier1 *)self deleteFullPayloadCorrectorOutput];
    [(ASRSchemaASRFullPayloadCorrectionInfoTier1 *)self deleteFullPayloadCorrectorInput];
  }

  if ([policyCopy isConditionSet:5])
  {
    [(ASRSchemaASRFullPayloadCorrectionInfoTier1 *)self deleteFullPayloadCorrectorOutput];
    [(ASRSchemaASRFullPayloadCorrectionInfoTier1 *)self deleteFullPayloadCorrectorInput];
  }

  if ([policyCopy isConditionSet:6])
  {
    [(ASRSchemaASRFullPayloadCorrectionInfoTier1 *)self deleteFullPayloadCorrectorOutput];
    [(ASRSchemaASRFullPayloadCorrectionInfoTier1 *)self deleteFullPayloadCorrectorInput];
  }

  if ([policyCopy isConditionSet:7])
  {
    [(ASRSchemaASRFullPayloadCorrectionInfoTier1 *)self deleteFullPayloadCorrectorOutput];
    [(ASRSchemaASRFullPayloadCorrectionInfoTier1 *)self deleteFullPayloadCorrectorInput];
  }

  linkId = [(ASRSchemaASRFullPayloadCorrectionInfoTier1 *)self linkId];
  v7 = [linkId applySensitiveConditionsPolicy:policyCopy];
  suppressMessage = [v7 suppressMessage];

  if (suppressMessage)
  {
    [(ASRSchemaASRFullPayloadCorrectionInfoTier1 *)self deleteLinkId];
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