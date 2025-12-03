@interface ANCSchemaANCNotificationReceivedTier1
- (ANCSchemaANCNotificationReceivedTier1)initWithDictionary:(id)dictionary;
- (ANCSchemaANCNotificationReceivedTier1)initWithJSON:(id)n;
- (BOOL)isEqual:(id)equal;
- (NSData)jsonData;
- (id)applySensitiveConditionsPolicy:(id)policy;
- (id)dictionaryRepresentation;
- (id)suppressMessageUnderConditions;
- (unint64_t)hash;
- (void)writeTo:(id)to;
@end

@implementation ANCSchemaANCNotificationReceivedTier1

- (ANCSchemaANCNotificationReceivedTier1)initWithDictionary:(id)dictionary
{
  dictionaryCopy = dictionary;
  v13.receiver = self;
  v13.super_class = ANCSchemaANCNotificationReceivedTier1;
  v5 = [(ANCSchemaANCNotificationReceivedTier1 *)&v13 init];
  if (v5)
  {
    v6 = [dictionaryCopy objectForKeyedSubscript:@"linkId"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v7 = [[SISchemaUUID alloc] initWithDictionary:v6];
      [(ANCSchemaANCNotificationReceivedTier1 *)v5 setLinkId:v7];
    }

    v8 = [dictionaryCopy objectForKeyedSubscript:@"appBundleId"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v9 = [v8 copy];
      [(ANCSchemaANCNotificationReceivedTier1 *)v5 setAppBundleId:v9];
    }

    v10 = [dictionaryCopy objectForKeyedSubscript:@"isRedactedDueToOptOut"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      -[ANCSchemaANCNotificationReceivedTier1 setIsRedactedDueToOptOut:](v5, "setIsRedactedDueToOptOut:", [v10 BOOLValue]);
    }

    v11 = v5;
  }

  return v5;
}

- (ANCSchemaANCNotificationReceivedTier1)initWithJSON:(id)n
{
  v7 = 0;
  v4 = [MEMORY[0x1E696ACB0] JSONObjectWithData:n options:0 error:&v7];
  if (v7 || (objc_opt_class(), (objc_opt_isKindOfClass() & 1) == 0))
  {
    selfCopy = 0;
  }

  else
  {
    self = [(ANCSchemaANCNotificationReceivedTier1 *)self initWithDictionary:v4];
    selfCopy = self;
  }

  return selfCopy;
}

- (NSData)jsonData
{
  dictionaryRepresentation = [(ANCSchemaANCNotificationReceivedTier1 *)self dictionaryRepresentation];
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
  if (self->_appBundleId)
  {
    appBundleId = [(ANCSchemaANCNotificationReceivedTier1 *)self appBundleId];
    v5 = [appBundleId copy];
    [dictionary setObject:v5 forKeyedSubscript:@"appBundleId"];
  }

  if (*(&self->_isRedactedDueToOptOut + 1))
  {
    v6 = [MEMORY[0x1E696AD98] numberWithBool:{-[ANCSchemaANCNotificationReceivedTier1 isRedactedDueToOptOut](self, "isRedactedDueToOptOut")}];
    [dictionary setObject:v6 forKeyedSubscript:@"isRedactedDueToOptOut"];
  }

  if (self->_linkId)
  {
    linkId = [(ANCSchemaANCNotificationReceivedTier1 *)self linkId];
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
  v4 = [(NSString *)self->_appBundleId hash];
  if (*(&self->_isRedactedDueToOptOut + 1))
  {
    v5 = 2654435761 * self->_isRedactedDueToOptOut;
  }

  else
  {
    v5 = 0;
  }

  return v4 ^ v3 ^ v5;
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  if (![equalCopy isMemberOfClass:objc_opt_class()])
  {
    goto LABEL_12;
  }

  linkId = [(ANCSchemaANCNotificationReceivedTier1 *)self linkId];
  linkId2 = [equalCopy linkId];
  if ((linkId != 0) == (linkId2 == 0))
  {
    goto LABEL_11;
  }

  linkId3 = [(ANCSchemaANCNotificationReceivedTier1 *)self linkId];
  if (linkId3)
  {
    v8 = linkId3;
    linkId4 = [(ANCSchemaANCNotificationReceivedTier1 *)self linkId];
    linkId5 = [equalCopy linkId];
    v11 = [linkId4 isEqual:linkId5];

    if (!v11)
    {
      goto LABEL_12;
    }
  }

  else
  {
  }

  linkId = [(ANCSchemaANCNotificationReceivedTier1 *)self appBundleId];
  linkId2 = [equalCopy appBundleId];
  if ((linkId != 0) == (linkId2 == 0))
  {
LABEL_11:

    goto LABEL_12;
  }

  appBundleId = [(ANCSchemaANCNotificationReceivedTier1 *)self appBundleId];
  if (appBundleId)
  {
    v13 = appBundleId;
    appBundleId2 = [(ANCSchemaANCNotificationReceivedTier1 *)self appBundleId];
    appBundleId3 = [equalCopy appBundleId];
    v16 = [appBundleId2 isEqual:appBundleId3];

    if (!v16)
    {
      goto LABEL_12;
    }
  }

  else
  {
  }

  if (*(&self->_isRedactedDueToOptOut + 1) == (equalCopy[25] & 1))
  {
    if (!*(&self->_isRedactedDueToOptOut + 1) || (isRedactedDueToOptOut = self->_isRedactedDueToOptOut, isRedactedDueToOptOut == [equalCopy isRedactedDueToOptOut]))
    {
      v17 = 1;
      goto LABEL_13;
    }
  }

LABEL_12:
  v17 = 0;
LABEL_13:

  return v17;
}

- (void)writeTo:(id)to
{
  toCopy = to;
  linkId = [(ANCSchemaANCNotificationReceivedTier1 *)self linkId];

  if (linkId)
  {
    linkId2 = [(ANCSchemaANCNotificationReceivedTier1 *)self linkId];
    PBDataWriterWriteSubmessage();
  }

  appBundleId = [(ANCSchemaANCNotificationReceivedTier1 *)self appBundleId];

  if (appBundleId)
  {
    PBDataWriterWriteStringField();
  }

  v7 = toCopy;
  if (*(&self->_isRedactedDueToOptOut + 1))
  {
    PBDataWriterWriteBOOLField();
    v7 = toCopy;
  }
}

- (id)applySensitiveConditionsPolicy:(id)policy
{
  policyCopy = policy;
  v10.receiver = self;
  v10.super_class = ANCSchemaANCNotificationReceivedTier1;
  v5 = [(SISchemaInstrumentationMessage *)&v10 applySensitiveConditionsPolicy:policyCopy];
  if ([policyCopy isConditionSet:2])
  {
    [(ANCSchemaANCNotificationReceivedTier1 *)self deleteAppBundleId];
  }

  if ([policyCopy isConditionSet:4])
  {
    [(ANCSchemaANCNotificationReceivedTier1 *)self deleteAppBundleId];
  }

  if ([policyCopy isConditionSet:5])
  {
    [(ANCSchemaANCNotificationReceivedTier1 *)self deleteAppBundleId];
  }

  if ([policyCopy isConditionSet:6])
  {
    [(ANCSchemaANCNotificationReceivedTier1 *)self deleteAppBundleId];
  }

  if ([policyCopy isConditionSet:7])
  {
    [(ANCSchemaANCNotificationReceivedTier1 *)self deleteAppBundleId];
  }

  linkId = [(ANCSchemaANCNotificationReceivedTier1 *)self linkId];
  v7 = [linkId applySensitiveConditionsPolicy:policyCopy];
  suppressMessage = [v7 suppressMessage];

  if (suppressMessage)
  {
    [(ANCSchemaANCNotificationReceivedTier1 *)self deleteLinkId];
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