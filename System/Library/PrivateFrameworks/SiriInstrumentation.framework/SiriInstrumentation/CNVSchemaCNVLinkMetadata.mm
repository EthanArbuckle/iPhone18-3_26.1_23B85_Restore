@interface CNVSchemaCNVLinkMetadata
- (BOOL)isEqual:(id)equal;
- (CNVSchemaCNVLinkMetadata)initWithDictionary:(id)dictionary;
- (CNVSchemaCNVLinkMetadata)initWithJSON:(id)n;
- (NSData)jsonData;
- (id)applySensitiveConditionsPolicy:(id)policy;
- (id)dictionaryRepresentation;
- (id)suppressMessageUnderConditions;
- (unint64_t)hash;
- (void)writeTo:(id)to;
@end

@implementation CNVSchemaCNVLinkMetadata

- (CNVSchemaCNVLinkMetadata)initWithDictionary:(id)dictionary
{
  dictionaryCopy = dictionary;
  v13.receiver = self;
  v13.super_class = CNVSchemaCNVLinkMetadata;
  v5 = [(CNVSchemaCNVLinkMetadata *)&v13 init];
  if (v5)
  {
    v6 = [dictionaryCopy objectForKeyedSubscript:@"linkId"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v7 = [[SISchemaUUID alloc] initWithDictionary:v6];
      [(CNVSchemaCNVLinkMetadata *)v5 setLinkId:v7];
    }

    v8 = [dictionaryCopy objectForKeyedSubscript:@"linkActionId"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v9 = [v8 copy];
      [(CNVSchemaCNVLinkMetadata *)v5 setLinkActionId:v9];
    }

    v10 = [dictionaryCopy objectForKeyedSubscript:@"systemProtocol"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      -[CNVSchemaCNVLinkMetadata setSystemProtocol:](v5, "setSystemProtocol:", [v10 intValue]);
    }

    v11 = v5;
  }

  return v5;
}

- (CNVSchemaCNVLinkMetadata)initWithJSON:(id)n
{
  v7 = 0;
  v4 = [MEMORY[0x1E696ACB0] JSONObjectWithData:n options:0 error:&v7];
  if (v7 || (objc_opt_class(), (objc_opt_isKindOfClass() & 1) == 0))
  {
    selfCopy = 0;
  }

  else
  {
    self = [(CNVSchemaCNVLinkMetadata *)self initWithDictionary:v4];
    selfCopy = self;
  }

  return selfCopy;
}

- (NSData)jsonData
{
  dictionaryRepresentation = [(CNVSchemaCNVLinkMetadata *)self dictionaryRepresentation];
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
  if (self->_linkActionId)
  {
    linkActionId = [(CNVSchemaCNVLinkMetadata *)self linkActionId];
    v5 = [linkActionId copy];
    [dictionary setObject:v5 forKeyedSubscript:@"linkActionId"];
  }

  if (self->_linkId)
  {
    linkId = [(CNVSchemaCNVLinkMetadata *)self linkId];
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

  if (*&self->_has)
  {
    v9 = [(CNVSchemaCNVLinkMetadata *)self systemProtocol]- 1;
    if (v9 > 0x19)
    {
      v10 = @"LINKSYSTEMACTIONPROTOCOL_UNKNOWN";
    }

    else
    {
      v10 = off_1E78D3320[v9];
    }

    [dictionary setObject:v10 forKeyedSubscript:@"systemProtocol"];
  }

  [(SISchemaInstrumentationMessage *)self willProduceDictionaryRepresentation:dictionary];

  return dictionary;
}

- (unint64_t)hash
{
  v3 = [(SISchemaUUID *)self->_linkId hash];
  v4 = [(NSString *)self->_linkActionId hash];
  if (*&self->_has)
  {
    v5 = 2654435761 * self->_systemProtocol;
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

  linkId = [(CNVSchemaCNVLinkMetadata *)self linkId];
  linkId2 = [equalCopy linkId];
  if ((linkId != 0) == (linkId2 == 0))
  {
    goto LABEL_11;
  }

  linkId3 = [(CNVSchemaCNVLinkMetadata *)self linkId];
  if (linkId3)
  {
    v8 = linkId3;
    linkId4 = [(CNVSchemaCNVLinkMetadata *)self linkId];
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

  linkId = [(CNVSchemaCNVLinkMetadata *)self linkActionId];
  linkId2 = [equalCopy linkActionId];
  if ((linkId != 0) == (linkId2 == 0))
  {
LABEL_11:

    goto LABEL_12;
  }

  linkActionId = [(CNVSchemaCNVLinkMetadata *)self linkActionId];
  if (linkActionId)
  {
    v13 = linkActionId;
    linkActionId2 = [(CNVSchemaCNVLinkMetadata *)self linkActionId];
    linkActionId3 = [equalCopy linkActionId];
    v16 = [linkActionId2 isEqual:linkActionId3];

    if (!v16)
    {
      goto LABEL_12;
    }
  }

  else
  {
  }

  if ((*&self->_has & 1) == (equalCopy[28] & 1))
  {
    if ((*&self->_has & 1) == 0 || (systemProtocol = self->_systemProtocol, systemProtocol == [equalCopy systemProtocol]))
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
  linkId = [(CNVSchemaCNVLinkMetadata *)self linkId];

  if (linkId)
  {
    linkId2 = [(CNVSchemaCNVLinkMetadata *)self linkId];
    PBDataWriterWriteSubmessage();
  }

  linkActionId = [(CNVSchemaCNVLinkMetadata *)self linkActionId];

  if (linkActionId)
  {
    PBDataWriterWriteStringField();
  }

  v7 = toCopy;
  if (*&self->_has)
  {
    PBDataWriterWriteInt32Field();
    v7 = toCopy;
  }
}

- (id)applySensitiveConditionsPolicy:(id)policy
{
  v9.receiver = self;
  v9.super_class = CNVSchemaCNVLinkMetadata;
  policyCopy = policy;
  v5 = [(SISchemaInstrumentationMessage *)&v9 applySensitiveConditionsPolicy:policyCopy];
  v6 = [(CNVSchemaCNVLinkMetadata *)self linkId:v9.receiver];
  v7 = [v6 applySensitiveConditionsPolicy:policyCopy];

  LODWORD(policyCopy) = [v7 suppressMessage];
  if (policyCopy)
  {
    [(CNVSchemaCNVLinkMetadata *)self deleteLinkId];
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