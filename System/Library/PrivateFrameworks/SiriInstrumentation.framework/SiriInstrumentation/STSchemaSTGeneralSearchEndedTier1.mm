@interface STSchemaSTGeneralSearchEndedTier1
- (BOOL)isEqual:(id)equal;
- (NSData)jsonData;
- (STSchemaSTGeneralSearchEndedTier1)initWithDictionary:(id)dictionary;
- (STSchemaSTGeneralSearchEndedTier1)initWithJSON:(id)n;
- (id)applySensitiveConditionsPolicy:(id)policy;
- (id)dictionaryRepresentation;
- (id)suppressMessageUnderConditions;
- (unint64_t)hash;
- (void)writeTo:(id)to;
@end

@implementation STSchemaSTGeneralSearchEndedTier1

- (STSchemaSTGeneralSearchEndedTier1)initWithDictionary:(id)dictionary
{
  dictionaryCopy = dictionary;
  v14.receiver = self;
  v14.super_class = STSchemaSTGeneralSearchEndedTier1;
  v5 = [(STSchemaSTGeneralSearchEndedTier1 *)&v14 init];
  if (v5)
  {
    v6 = [dictionaryCopy objectForKeyedSubscript:@"linkId"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v7 = [[SISchemaUUID alloc] initWithDictionary:v6];
      [(STSchemaSTGeneralSearchEndedTier1 *)v5 setLinkId:v7];
    }

    v8 = [dictionaryCopy objectForKeyedSubscript:@"catId"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v9 = [v8 copy];
      [(STSchemaSTGeneralSearchEndedTier1 *)v5 setCatId:v9];
    }

    v10 = [dictionaryCopy objectForKeyedSubscript:@"staticDialogId"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v11 = [v10 copy];
      [(STSchemaSTGeneralSearchEndedTier1 *)v5 setStaticDialogId:v11];
    }

    v12 = v5;
  }

  return v5;
}

- (STSchemaSTGeneralSearchEndedTier1)initWithJSON:(id)n
{
  v7 = 0;
  v4 = [MEMORY[0x1E696ACB0] JSONObjectWithData:n options:0 error:&v7];
  if (v7 || (objc_opt_class(), (objc_opt_isKindOfClass() & 1) == 0))
  {
    selfCopy = 0;
  }

  else
  {
    self = [(STSchemaSTGeneralSearchEndedTier1 *)self initWithDictionary:v4];
    selfCopy = self;
  }

  return selfCopy;
}

- (NSData)jsonData
{
  dictionaryRepresentation = [(STSchemaSTGeneralSearchEndedTier1 *)self dictionaryRepresentation];
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
  if (self->_catId)
  {
    catId = [(STSchemaSTGeneralSearchEndedTier1 *)self catId];
    v5 = [catId copy];
    [dictionary setObject:v5 forKeyedSubscript:@"catId"];
  }

  if (self->_linkId)
  {
    linkId = [(STSchemaSTGeneralSearchEndedTier1 *)self linkId];
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

  if (self->_staticDialogId)
  {
    staticDialogId = [(STSchemaSTGeneralSearchEndedTier1 *)self staticDialogId];
    v10 = [staticDialogId copy];
    [dictionary setObject:v10 forKeyedSubscript:@"staticDialogId"];
  }

  [(SISchemaInstrumentationMessage *)self willProduceDictionaryRepresentation:dictionary];

  return dictionary;
}

- (unint64_t)hash
{
  v3 = [(SISchemaUUID *)self->_linkId hash];
  v4 = [(NSString *)self->_catId hash]^ v3;
  return v4 ^ [(NSString *)self->_staticDialogId hash];
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  if (![equalCopy isMemberOfClass:objc_opt_class()])
  {
    goto LABEL_17;
  }

  linkId = [(STSchemaSTGeneralSearchEndedTier1 *)self linkId];
  linkId2 = [equalCopy linkId];
  if ((linkId != 0) == (linkId2 == 0))
  {
    goto LABEL_16;
  }

  linkId3 = [(STSchemaSTGeneralSearchEndedTier1 *)self linkId];
  if (linkId3)
  {
    v8 = linkId3;
    linkId4 = [(STSchemaSTGeneralSearchEndedTier1 *)self linkId];
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

  linkId = [(STSchemaSTGeneralSearchEndedTier1 *)self catId];
  linkId2 = [equalCopy catId];
  if ((linkId != 0) == (linkId2 == 0))
  {
    goto LABEL_16;
  }

  catId = [(STSchemaSTGeneralSearchEndedTier1 *)self catId];
  if (catId)
  {
    v13 = catId;
    catId2 = [(STSchemaSTGeneralSearchEndedTier1 *)self catId];
    catId3 = [equalCopy catId];
    v16 = [catId2 isEqual:catId3];

    if (!v16)
    {
      goto LABEL_17;
    }
  }

  else
  {
  }

  linkId = [(STSchemaSTGeneralSearchEndedTier1 *)self staticDialogId];
  linkId2 = [equalCopy staticDialogId];
  if ((linkId != 0) != (linkId2 == 0))
  {
    staticDialogId = [(STSchemaSTGeneralSearchEndedTier1 *)self staticDialogId];
    if (!staticDialogId)
    {

LABEL_20:
      v22 = 1;
      goto LABEL_18;
    }

    v18 = staticDialogId;
    staticDialogId2 = [(STSchemaSTGeneralSearchEndedTier1 *)self staticDialogId];
    staticDialogId3 = [equalCopy staticDialogId];
    v21 = [staticDialogId2 isEqual:staticDialogId3];

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
  linkId = [(STSchemaSTGeneralSearchEndedTier1 *)self linkId];

  if (linkId)
  {
    linkId2 = [(STSchemaSTGeneralSearchEndedTier1 *)self linkId];
    PBDataWriterWriteSubmessage();
  }

  catId = [(STSchemaSTGeneralSearchEndedTier1 *)self catId];

  if (catId)
  {
    PBDataWriterWriteStringField();
  }

  staticDialogId = [(STSchemaSTGeneralSearchEndedTier1 *)self staticDialogId];

  v8 = toCopy;
  if (staticDialogId)
  {
    PBDataWriterWriteStringField();
    v8 = toCopy;
  }
}

- (id)applySensitiveConditionsPolicy:(id)policy
{
  policyCopy = policy;
  v10.receiver = self;
  v10.super_class = STSchemaSTGeneralSearchEndedTier1;
  v5 = [(SISchemaInstrumentationMessage *)&v10 applySensitiveConditionsPolicy:policyCopy];
  if ([policyCopy isConditionSet:2])
  {
    [(STSchemaSTGeneralSearchEndedTier1 *)self deleteCatId];
    [(STSchemaSTGeneralSearchEndedTier1 *)self deleteStaticDialogId];
  }

  if ([policyCopy isConditionSet:4])
  {
    [(STSchemaSTGeneralSearchEndedTier1 *)self deleteCatId];
    [(STSchemaSTGeneralSearchEndedTier1 *)self deleteStaticDialogId];
  }

  if ([policyCopy isConditionSet:5])
  {
    [(STSchemaSTGeneralSearchEndedTier1 *)self deleteCatId];
    [(STSchemaSTGeneralSearchEndedTier1 *)self deleteStaticDialogId];
  }

  if ([policyCopy isConditionSet:6])
  {
    [(STSchemaSTGeneralSearchEndedTier1 *)self deleteCatId];
    [(STSchemaSTGeneralSearchEndedTier1 *)self deleteStaticDialogId];
  }

  if ([policyCopy isConditionSet:7])
  {
    [(STSchemaSTGeneralSearchEndedTier1 *)self deleteCatId];
    [(STSchemaSTGeneralSearchEndedTier1 *)self deleteStaticDialogId];
  }

  linkId = [(STSchemaSTGeneralSearchEndedTier1 *)self linkId];
  v7 = [linkId applySensitiveConditionsPolicy:policyCopy];
  suppressMessage = [v7 suppressMessage];

  if (suppressMessage)
  {
    [(STSchemaSTGeneralSearchEndedTier1 *)self deleteLinkId];
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