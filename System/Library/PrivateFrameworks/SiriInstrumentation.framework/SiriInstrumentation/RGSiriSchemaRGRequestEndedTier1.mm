@interface RGSiriSchemaRGRequestEndedTier1
- (BOOL)isEqual:(id)equal;
- (NSData)jsonData;
- (RGSiriSchemaRGRequestEndedTier1)initWithDictionary:(id)dictionary;
- (RGSiriSchemaRGRequestEndedTier1)initWithJSON:(id)n;
- (id)applySensitiveConditionsPolicy:(id)policy;
- (id)dictionaryRepresentation;
- (id)suppressMessageUnderConditions;
- (unint64_t)hash;
- (void)writeTo:(id)to;
@end

@implementation RGSiriSchemaRGRequestEndedTier1

- (RGSiriSchemaRGRequestEndedTier1)initWithDictionary:(id)dictionary
{
  dictionaryCopy = dictionary;
  v18.receiver = self;
  v18.super_class = RGSiriSchemaRGRequestEndedTier1;
  v5 = [(RGSiriSchemaRGRequestEndedTier1 *)&v18 init];
  if (v5)
  {
    v6 = [dictionaryCopy objectForKeyedSubscript:@"linkId"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v7 = [[SISchemaUUID alloc] initWithDictionary:v6];
      [(RGSiriSchemaRGRequestEndedTier1 *)v5 setLinkId:v7];
    }

    v8 = [dictionaryCopy objectForKeyedSubscript:@"displayString"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v9 = [v8 copy];
      [(RGSiriSchemaRGRequestEndedTier1 *)v5 setDisplayString:v9];
    }

    v10 = [dictionaryCopy objectForKeyedSubscript:@"spokenString"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v11 = [v10 copy];
      [(RGSiriSchemaRGRequestEndedTier1 *)v5 setSpokenString:v11];
    }

    v12 = [dictionaryCopy objectForKeyedSubscript:@"catId"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v13 = [v12 copy];
      [(RGSiriSchemaRGRequestEndedTier1 *)v5 setCatId:v13];
    }

    v14 = [dictionaryCopy objectForKeyedSubscript:@"staticDialogId"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v15 = [v14 copy];
      [(RGSiriSchemaRGRequestEndedTier1 *)v5 setStaticDialogId:v15];
    }

    v16 = v5;
  }

  return v5;
}

- (RGSiriSchemaRGRequestEndedTier1)initWithJSON:(id)n
{
  v7 = 0;
  v4 = [MEMORY[0x1E696ACB0] JSONObjectWithData:n options:0 error:&v7];
  if (v7 || (objc_opt_class(), (objc_opt_isKindOfClass() & 1) == 0))
  {
    selfCopy = 0;
  }

  else
  {
    self = [(RGSiriSchemaRGRequestEndedTier1 *)self initWithDictionary:v4];
    selfCopy = self;
  }

  return selfCopy;
}

- (NSData)jsonData
{
  dictionaryRepresentation = [(RGSiriSchemaRGRequestEndedTier1 *)self dictionaryRepresentation];
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
    catId = [(RGSiriSchemaRGRequestEndedTier1 *)self catId];
    v5 = [catId copy];
    [dictionary setObject:v5 forKeyedSubscript:@"catId"];
  }

  if (self->_displayString)
  {
    displayString = [(RGSiriSchemaRGRequestEndedTier1 *)self displayString];
    v7 = [displayString copy];
    [dictionary setObject:v7 forKeyedSubscript:@"displayString"];
  }

  if (self->_linkId)
  {
    linkId = [(RGSiriSchemaRGRequestEndedTier1 *)self linkId];
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

  if (self->_spokenString)
  {
    spokenString = [(RGSiriSchemaRGRequestEndedTier1 *)self spokenString];
    v12 = [spokenString copy];
    [dictionary setObject:v12 forKeyedSubscript:@"spokenString"];
  }

  if (self->_staticDialogId)
  {
    staticDialogId = [(RGSiriSchemaRGRequestEndedTier1 *)self staticDialogId];
    v14 = [staticDialogId copy];
    [dictionary setObject:v14 forKeyedSubscript:@"staticDialogId"];
  }

  [(SISchemaInstrumentationMessage *)self willProduceDictionaryRepresentation:dictionary];

  return dictionary;
}

- (unint64_t)hash
{
  v3 = [(SISchemaUUID *)self->_linkId hash];
  v4 = [(NSString *)self->_displayString hash]^ v3;
  v5 = [(NSString *)self->_spokenString hash];
  v6 = v4 ^ v5 ^ [(NSString *)self->_catId hash];
  return v6 ^ [(NSString *)self->_staticDialogId hash];
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  if (![equalCopy isMemberOfClass:objc_opt_class()])
  {
    goto LABEL_27;
  }

  linkId = [(RGSiriSchemaRGRequestEndedTier1 *)self linkId];
  linkId2 = [equalCopy linkId];
  if ((linkId != 0) == (linkId2 == 0))
  {
    goto LABEL_26;
  }

  linkId3 = [(RGSiriSchemaRGRequestEndedTier1 *)self linkId];
  if (linkId3)
  {
    v8 = linkId3;
    linkId4 = [(RGSiriSchemaRGRequestEndedTier1 *)self linkId];
    linkId5 = [equalCopy linkId];
    v11 = [linkId4 isEqual:linkId5];

    if (!v11)
    {
      goto LABEL_27;
    }
  }

  else
  {
  }

  linkId = [(RGSiriSchemaRGRequestEndedTier1 *)self displayString];
  linkId2 = [equalCopy displayString];
  if ((linkId != 0) == (linkId2 == 0))
  {
    goto LABEL_26;
  }

  displayString = [(RGSiriSchemaRGRequestEndedTier1 *)self displayString];
  if (displayString)
  {
    v13 = displayString;
    displayString2 = [(RGSiriSchemaRGRequestEndedTier1 *)self displayString];
    displayString3 = [equalCopy displayString];
    v16 = [displayString2 isEqual:displayString3];

    if (!v16)
    {
      goto LABEL_27;
    }
  }

  else
  {
  }

  linkId = [(RGSiriSchemaRGRequestEndedTier1 *)self spokenString];
  linkId2 = [equalCopy spokenString];
  if ((linkId != 0) == (linkId2 == 0))
  {
    goto LABEL_26;
  }

  spokenString = [(RGSiriSchemaRGRequestEndedTier1 *)self spokenString];
  if (spokenString)
  {
    v18 = spokenString;
    spokenString2 = [(RGSiriSchemaRGRequestEndedTier1 *)self spokenString];
    spokenString3 = [equalCopy spokenString];
    v21 = [spokenString2 isEqual:spokenString3];

    if (!v21)
    {
      goto LABEL_27;
    }
  }

  else
  {
  }

  linkId = [(RGSiriSchemaRGRequestEndedTier1 *)self catId];
  linkId2 = [equalCopy catId];
  if ((linkId != 0) == (linkId2 == 0))
  {
    goto LABEL_26;
  }

  catId = [(RGSiriSchemaRGRequestEndedTier1 *)self catId];
  if (catId)
  {
    v23 = catId;
    catId2 = [(RGSiriSchemaRGRequestEndedTier1 *)self catId];
    catId3 = [equalCopy catId];
    v26 = [catId2 isEqual:catId3];

    if (!v26)
    {
      goto LABEL_27;
    }
  }

  else
  {
  }

  linkId = [(RGSiriSchemaRGRequestEndedTier1 *)self staticDialogId];
  linkId2 = [equalCopy staticDialogId];
  if ((linkId != 0) != (linkId2 == 0))
  {
    staticDialogId = [(RGSiriSchemaRGRequestEndedTier1 *)self staticDialogId];
    if (!staticDialogId)
    {

LABEL_30:
      v32 = 1;
      goto LABEL_28;
    }

    v28 = staticDialogId;
    staticDialogId2 = [(RGSiriSchemaRGRequestEndedTier1 *)self staticDialogId];
    staticDialogId3 = [equalCopy staticDialogId];
    v31 = [staticDialogId2 isEqual:staticDialogId3];

    if (v31)
    {
      goto LABEL_30;
    }
  }

  else
  {
LABEL_26:
  }

LABEL_27:
  v32 = 0;
LABEL_28:

  return v32;
}

- (void)writeTo:(id)to
{
  toCopy = to;
  linkId = [(RGSiriSchemaRGRequestEndedTier1 *)self linkId];

  if (linkId)
  {
    linkId2 = [(RGSiriSchemaRGRequestEndedTier1 *)self linkId];
    PBDataWriterWriteSubmessage();
  }

  displayString = [(RGSiriSchemaRGRequestEndedTier1 *)self displayString];

  if (displayString)
  {
    PBDataWriterWriteStringField();
  }

  spokenString = [(RGSiriSchemaRGRequestEndedTier1 *)self spokenString];

  if (spokenString)
  {
    PBDataWriterWriteStringField();
  }

  catId = [(RGSiriSchemaRGRequestEndedTier1 *)self catId];

  if (catId)
  {
    PBDataWriterWriteStringField();
  }

  staticDialogId = [(RGSiriSchemaRGRequestEndedTier1 *)self staticDialogId];

  v10 = toCopy;
  if (staticDialogId)
  {
    PBDataWriterWriteStringField();
    v10 = toCopy;
  }
}

- (id)applySensitiveConditionsPolicy:(id)policy
{
  policyCopy = policy;
  v10.receiver = self;
  v10.super_class = RGSiriSchemaRGRequestEndedTier1;
  v5 = [(SISchemaInstrumentationMessage *)&v10 applySensitiveConditionsPolicy:policyCopy];
  if ([policyCopy isConditionSet:2])
  {
    [(RGSiriSchemaRGRequestEndedTier1 *)self deleteDisplayString];
    [(RGSiriSchemaRGRequestEndedTier1 *)self deleteSpokenString];
    [(RGSiriSchemaRGRequestEndedTier1 *)self deleteCatId];
    [(RGSiriSchemaRGRequestEndedTier1 *)self deleteStaticDialogId];
  }

  if ([policyCopy isConditionSet:4])
  {
    [(RGSiriSchemaRGRequestEndedTier1 *)self deleteDisplayString];
    [(RGSiriSchemaRGRequestEndedTier1 *)self deleteSpokenString];
    [(RGSiriSchemaRGRequestEndedTier1 *)self deleteCatId];
    [(RGSiriSchemaRGRequestEndedTier1 *)self deleteStaticDialogId];
  }

  if ([policyCopy isConditionSet:5])
  {
    [(RGSiriSchemaRGRequestEndedTier1 *)self deleteDisplayString];
    [(RGSiriSchemaRGRequestEndedTier1 *)self deleteSpokenString];
    [(RGSiriSchemaRGRequestEndedTier1 *)self deleteCatId];
    [(RGSiriSchemaRGRequestEndedTier1 *)self deleteStaticDialogId];
  }

  if ([policyCopy isConditionSet:6])
  {
    [(RGSiriSchemaRGRequestEndedTier1 *)self deleteDisplayString];
    [(RGSiriSchemaRGRequestEndedTier1 *)self deleteSpokenString];
    [(RGSiriSchemaRGRequestEndedTier1 *)self deleteCatId];
    [(RGSiriSchemaRGRequestEndedTier1 *)self deleteStaticDialogId];
  }

  if ([policyCopy isConditionSet:7])
  {
    [(RGSiriSchemaRGRequestEndedTier1 *)self deleteDisplayString];
    [(RGSiriSchemaRGRequestEndedTier1 *)self deleteSpokenString];
    [(RGSiriSchemaRGRequestEndedTier1 *)self deleteCatId];
    [(RGSiriSchemaRGRequestEndedTier1 *)self deleteStaticDialogId];
  }

  linkId = [(RGSiriSchemaRGRequestEndedTier1 *)self linkId];
  v7 = [linkId applySensitiveConditionsPolicy:policyCopy];
  suppressMessage = [v7 suppressMessage];

  if (suppressMessage)
  {
    [(RGSiriSchemaRGRequestEndedTier1 *)self deleteLinkId];
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