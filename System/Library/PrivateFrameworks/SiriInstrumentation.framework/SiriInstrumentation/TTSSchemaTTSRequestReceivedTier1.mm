@interface TTSSchemaTTSRequestReceivedTier1
- (BOOL)isEqual:(id)equal;
- (NSData)jsonData;
- (TTSSchemaTTSRequestReceivedTier1)initWithDictionary:(id)dictionary;
- (TTSSchemaTTSRequestReceivedTier1)initWithJSON:(id)n;
- (id)applySensitiveConditionsPolicy:(id)policy;
- (id)dictionaryRepresentation;
- (id)suppressMessageUnderConditions;
- (unint64_t)hash;
- (void)writeTo:(id)to;
@end

@implementation TTSSchemaTTSRequestReceivedTier1

- (TTSSchemaTTSRequestReceivedTier1)initWithDictionary:(id)dictionary
{
  dictionaryCopy = dictionary;
  v14.receiver = self;
  v14.super_class = TTSSchemaTTSRequestReceivedTier1;
  v5 = [(TTSSchemaTTSRequestReceivedTier1 *)&v14 init];
  if (v5)
  {
    v6 = [dictionaryCopy objectForKeyedSubscript:@"textToSynthesize"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v7 = [v6 copy];
      [(TTSSchemaTTSRequestReceivedTier1 *)v5 setTextToSynthesize:v7];
    }

    v8 = [dictionaryCopy objectForKeyedSubscript:@"linkId"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v9 = [[SISchemaUUID alloc] initWithDictionary:v8];
      [(TTSSchemaTTSRequestReceivedTier1 *)v5 setLinkId:v9];
    }

    v10 = [dictionaryCopy objectForKeyedSubscript:@"contextId"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v11 = [[SISchemaUUID alloc] initWithDictionary:v10];
      [(TTSSchemaTTSRequestReceivedTier1 *)v5 setContextId:v11];
    }

    v12 = v5;
  }

  return v5;
}

- (TTSSchemaTTSRequestReceivedTier1)initWithJSON:(id)n
{
  v7 = 0;
  v4 = [MEMORY[0x1E696ACB0] JSONObjectWithData:n options:0 error:&v7];
  if (v7 || (objc_opt_class(), (objc_opt_isKindOfClass() & 1) == 0))
  {
    selfCopy = 0;
  }

  else
  {
    self = [(TTSSchemaTTSRequestReceivedTier1 *)self initWithDictionary:v4];
    selfCopy = self;
  }

  return selfCopy;
}

- (NSData)jsonData
{
  dictionaryRepresentation = [(TTSSchemaTTSRequestReceivedTier1 *)self dictionaryRepresentation];
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
  if (self->_contextId)
  {
    contextId = [(TTSSchemaTTSRequestReceivedTier1 *)self contextId];
    dictionaryRepresentation = [contextId dictionaryRepresentation];
    if (dictionaryRepresentation)
    {
      [dictionary setObject:dictionaryRepresentation forKeyedSubscript:@"contextId"];
    }

    else
    {
      null = [MEMORY[0x1E695DFB0] null];
      [dictionary setObject:null forKeyedSubscript:@"contextId"];
    }
  }

  if (self->_linkId)
  {
    linkId = [(TTSSchemaTTSRequestReceivedTier1 *)self linkId];
    dictionaryRepresentation2 = [linkId dictionaryRepresentation];
    if (dictionaryRepresentation2)
    {
      [dictionary setObject:dictionaryRepresentation2 forKeyedSubscript:@"linkId"];
    }

    else
    {
      null2 = [MEMORY[0x1E695DFB0] null];
      [dictionary setObject:null2 forKeyedSubscript:@"linkId"];
    }
  }

  if (self->_textToSynthesize)
  {
    textToSynthesize = [(TTSSchemaTTSRequestReceivedTier1 *)self textToSynthesize];
    v11 = [textToSynthesize copy];
    [dictionary setObject:v11 forKeyedSubscript:@"textToSynthesize"];
  }

  [(SISchemaInstrumentationMessage *)self willProduceDictionaryRepresentation:dictionary];

  return dictionary;
}

- (unint64_t)hash
{
  v3 = [(NSString *)self->_textToSynthesize hash];
  v4 = [(SISchemaUUID *)self->_linkId hash]^ v3;
  return v4 ^ [(SISchemaUUID *)self->_contextId hash];
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  if (![equalCopy isMemberOfClass:objc_opt_class()])
  {
    goto LABEL_17;
  }

  textToSynthesize = [(TTSSchemaTTSRequestReceivedTier1 *)self textToSynthesize];
  textToSynthesize2 = [equalCopy textToSynthesize];
  if ((textToSynthesize != 0) == (textToSynthesize2 == 0))
  {
    goto LABEL_16;
  }

  textToSynthesize3 = [(TTSSchemaTTSRequestReceivedTier1 *)self textToSynthesize];
  if (textToSynthesize3)
  {
    v8 = textToSynthesize3;
    textToSynthesize4 = [(TTSSchemaTTSRequestReceivedTier1 *)self textToSynthesize];
    textToSynthesize5 = [equalCopy textToSynthesize];
    v11 = [textToSynthesize4 isEqual:textToSynthesize5];

    if (!v11)
    {
      goto LABEL_17;
    }
  }

  else
  {
  }

  textToSynthesize = [(TTSSchemaTTSRequestReceivedTier1 *)self linkId];
  textToSynthesize2 = [equalCopy linkId];
  if ((textToSynthesize != 0) == (textToSynthesize2 == 0))
  {
    goto LABEL_16;
  }

  linkId = [(TTSSchemaTTSRequestReceivedTier1 *)self linkId];
  if (linkId)
  {
    v13 = linkId;
    linkId2 = [(TTSSchemaTTSRequestReceivedTier1 *)self linkId];
    linkId3 = [equalCopy linkId];
    v16 = [linkId2 isEqual:linkId3];

    if (!v16)
    {
      goto LABEL_17;
    }
  }

  else
  {
  }

  textToSynthesize = [(TTSSchemaTTSRequestReceivedTier1 *)self contextId];
  textToSynthesize2 = [equalCopy contextId];
  if ((textToSynthesize != 0) != (textToSynthesize2 == 0))
  {
    contextId = [(TTSSchemaTTSRequestReceivedTier1 *)self contextId];
    if (!contextId)
    {

LABEL_20:
      v22 = 1;
      goto LABEL_18;
    }

    v18 = contextId;
    contextId2 = [(TTSSchemaTTSRequestReceivedTier1 *)self contextId];
    contextId3 = [equalCopy contextId];
    v21 = [contextId2 isEqual:contextId3];

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
  textToSynthesize = [(TTSSchemaTTSRequestReceivedTier1 *)self textToSynthesize];

  if (textToSynthesize)
  {
    PBDataWriterWriteStringField();
  }

  linkId = [(TTSSchemaTTSRequestReceivedTier1 *)self linkId];

  if (linkId)
  {
    linkId2 = [(TTSSchemaTTSRequestReceivedTier1 *)self linkId];
    PBDataWriterWriteSubmessage();
  }

  contextId = [(TTSSchemaTTSRequestReceivedTier1 *)self contextId];

  v8 = toCopy;
  if (contextId)
  {
    contextId2 = [(TTSSchemaTTSRequestReceivedTier1 *)self contextId];
    PBDataWriterWriteSubmessage();

    v8 = toCopy;
  }
}

- (id)applySensitiveConditionsPolicy:(id)policy
{
  policyCopy = policy;
  v13.receiver = self;
  v13.super_class = TTSSchemaTTSRequestReceivedTier1;
  v5 = [(SISchemaInstrumentationMessage *)&v13 applySensitiveConditionsPolicy:policyCopy];
  if ([policyCopy isConditionSet:2])
  {
    [(TTSSchemaTTSRequestReceivedTier1 *)self deleteTextToSynthesize];
  }

  if ([policyCopy isConditionSet:4])
  {
    [(TTSSchemaTTSRequestReceivedTier1 *)self deleteTextToSynthesize];
  }

  if ([policyCopy isConditionSet:5])
  {
    [(TTSSchemaTTSRequestReceivedTier1 *)self deleteTextToSynthesize];
  }

  if ([policyCopy isConditionSet:6])
  {
    [(TTSSchemaTTSRequestReceivedTier1 *)self deleteTextToSynthesize];
  }

  if ([policyCopy isConditionSet:7])
  {
    [(TTSSchemaTTSRequestReceivedTier1 *)self deleteTextToSynthesize];
  }

  if ([policyCopy isConditionSet:9])
  {
    [(TTSSchemaTTSRequestReceivedTier1 *)self deleteTextToSynthesize];
  }

  if ([policyCopy isConditionSet:10])
  {
    [(TTSSchemaTTSRequestReceivedTier1 *)self deleteTextToSynthesize];
  }

  linkId = [(TTSSchemaTTSRequestReceivedTier1 *)self linkId];
  v7 = [linkId applySensitiveConditionsPolicy:policyCopy];
  suppressMessage = [v7 suppressMessage];

  if (suppressMessage)
  {
    [(TTSSchemaTTSRequestReceivedTier1 *)self deleteLinkId];
  }

  contextId = [(TTSSchemaTTSRequestReceivedTier1 *)self contextId];
  v10 = [contextId applySensitiveConditionsPolicy:policyCopy];
  suppressMessage2 = [v10 suppressMessage];

  if (suppressMessage2)
  {
    [(TTSSchemaTTSRequestReceivedTier1 *)self deleteContextId];
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