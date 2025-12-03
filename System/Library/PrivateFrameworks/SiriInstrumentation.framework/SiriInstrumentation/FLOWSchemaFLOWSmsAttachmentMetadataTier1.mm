@interface FLOWSchemaFLOWSmsAttachmentMetadataTier1
- (BOOL)isEqual:(id)equal;
- (FLOWSchemaFLOWSmsAttachmentMetadataTier1)initWithDictionary:(id)dictionary;
- (FLOWSchemaFLOWSmsAttachmentMetadataTier1)initWithJSON:(id)n;
- (NSData)jsonData;
- (id)applySensitiveConditionsPolicy:(id)policy;
- (id)dictionaryRepresentation;
- (id)suppressMessageUnderConditions;
- (void)writeTo:(id)to;
@end

@implementation FLOWSchemaFLOWSmsAttachmentMetadataTier1

- (FLOWSchemaFLOWSmsAttachmentMetadataTier1)initWithDictionary:(id)dictionary
{
  dictionaryCopy = dictionary;
  v12.receiver = self;
  v12.super_class = FLOWSchemaFLOWSmsAttachmentMetadataTier1;
  v5 = [(FLOWSchemaFLOWSmsAttachmentMetadataTier1 *)&v12 init];
  if (v5)
  {
    v6 = [dictionaryCopy objectForKeyedSubscript:@"linkId"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v7 = [[SISchemaUUID alloc] initWithDictionary:v6];
      [(FLOWSchemaFLOWSmsAttachmentMetadataTier1 *)v5 setLinkId:v7];
    }

    v8 = [dictionaryCopy objectForKeyedSubscript:@"foregroundAppBundleId"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v9 = [v8 copy];
      [(FLOWSchemaFLOWSmsAttachmentMetadataTier1 *)v5 setForegroundAppBundleId:v9];
    }

    v10 = v5;
  }

  return v5;
}

- (FLOWSchemaFLOWSmsAttachmentMetadataTier1)initWithJSON:(id)n
{
  v7 = 0;
  v4 = [MEMORY[0x1E696ACB0] JSONObjectWithData:n options:0 error:&v7];
  if (v7 || (objc_opt_class(), (objc_opt_isKindOfClass() & 1) == 0))
  {
    selfCopy = 0;
  }

  else
  {
    self = [(FLOWSchemaFLOWSmsAttachmentMetadataTier1 *)self initWithDictionary:v4];
    selfCopy = self;
  }

  return selfCopy;
}

- (NSData)jsonData
{
  dictionaryRepresentation = [(FLOWSchemaFLOWSmsAttachmentMetadataTier1 *)self dictionaryRepresentation];
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
  if (self->_foregroundAppBundleId)
  {
    foregroundAppBundleId = [(FLOWSchemaFLOWSmsAttachmentMetadataTier1 *)self foregroundAppBundleId];
    v5 = [foregroundAppBundleId copy];
    [dictionary setObject:v5 forKeyedSubscript:@"foregroundAppBundleId"];
  }

  if (self->_linkId)
  {
    linkId = [(FLOWSchemaFLOWSmsAttachmentMetadataTier1 *)self linkId];
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

  linkId = [(FLOWSchemaFLOWSmsAttachmentMetadataTier1 *)self linkId];
  linkId2 = [equalCopy linkId];
  if ((linkId != 0) == (linkId2 == 0))
  {
    goto LABEL_11;
  }

  linkId3 = [(FLOWSchemaFLOWSmsAttachmentMetadataTier1 *)self linkId];
  if (linkId3)
  {
    v8 = linkId3;
    linkId4 = [(FLOWSchemaFLOWSmsAttachmentMetadataTier1 *)self linkId];
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

  linkId = [(FLOWSchemaFLOWSmsAttachmentMetadataTier1 *)self foregroundAppBundleId];
  linkId2 = [equalCopy foregroundAppBundleId];
  if ((linkId != 0) != (linkId2 == 0))
  {
    foregroundAppBundleId = [(FLOWSchemaFLOWSmsAttachmentMetadataTier1 *)self foregroundAppBundleId];
    if (!foregroundAppBundleId)
    {

LABEL_15:
      v17 = 1;
      goto LABEL_13;
    }

    v13 = foregroundAppBundleId;
    foregroundAppBundleId2 = [(FLOWSchemaFLOWSmsAttachmentMetadataTier1 *)self foregroundAppBundleId];
    foregroundAppBundleId3 = [equalCopy foregroundAppBundleId];
    v16 = [foregroundAppBundleId2 isEqual:foregroundAppBundleId3];

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
  linkId = [(FLOWSchemaFLOWSmsAttachmentMetadataTier1 *)self linkId];

  if (linkId)
  {
    linkId2 = [(FLOWSchemaFLOWSmsAttachmentMetadataTier1 *)self linkId];
    PBDataWriterWriteSubmessage();
  }

  foregroundAppBundleId = [(FLOWSchemaFLOWSmsAttachmentMetadataTier1 *)self foregroundAppBundleId];

  if (foregroundAppBundleId)
  {
    PBDataWriterWriteStringField();
  }
}

- (id)applySensitiveConditionsPolicy:(id)policy
{
  policyCopy = policy;
  v10.receiver = self;
  v10.super_class = FLOWSchemaFLOWSmsAttachmentMetadataTier1;
  v5 = [(SISchemaInstrumentationMessage *)&v10 applySensitiveConditionsPolicy:policyCopy];
  if ([policyCopy isConditionSet:4])
  {
    [(FLOWSchemaFLOWSmsAttachmentMetadataTier1 *)self deleteForegroundAppBundleId];
  }

  linkId = [(FLOWSchemaFLOWSmsAttachmentMetadataTier1 *)self linkId];
  v7 = [linkId applySensitiveConditionsPolicy:policyCopy];
  suppressMessage = [v7 suppressMessage];

  if (suppressMessage)
  {
    [(FLOWSchemaFLOWSmsAttachmentMetadataTier1 *)self deleteLinkId];
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