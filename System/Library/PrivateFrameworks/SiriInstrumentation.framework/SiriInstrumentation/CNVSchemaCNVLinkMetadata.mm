@interface CNVSchemaCNVLinkMetadata
- (BOOL)isEqual:(id)a3;
- (CNVSchemaCNVLinkMetadata)initWithDictionary:(id)a3;
- (CNVSchemaCNVLinkMetadata)initWithJSON:(id)a3;
- (NSData)jsonData;
- (id)applySensitiveConditionsPolicy:(id)a3;
- (id)dictionaryRepresentation;
- (id)suppressMessageUnderConditions;
- (unint64_t)hash;
- (void)writeTo:(id)a3;
@end

@implementation CNVSchemaCNVLinkMetadata

- (CNVSchemaCNVLinkMetadata)initWithDictionary:(id)a3
{
  v4 = a3;
  v13.receiver = self;
  v13.super_class = CNVSchemaCNVLinkMetadata;
  v5 = [(CNVSchemaCNVLinkMetadata *)&v13 init];
  if (v5)
  {
    v6 = [v4 objectForKeyedSubscript:@"linkId"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v7 = [[SISchemaUUID alloc] initWithDictionary:v6];
      [(CNVSchemaCNVLinkMetadata *)v5 setLinkId:v7];
    }

    v8 = [v4 objectForKeyedSubscript:@"linkActionId"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v9 = [v8 copy];
      [(CNVSchemaCNVLinkMetadata *)v5 setLinkActionId:v9];
    }

    v10 = [v4 objectForKeyedSubscript:@"systemProtocol"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      -[CNVSchemaCNVLinkMetadata setSystemProtocol:](v5, "setSystemProtocol:", [v10 intValue]);
    }

    v11 = v5;
  }

  return v5;
}

- (CNVSchemaCNVLinkMetadata)initWithJSON:(id)a3
{
  v7 = 0;
  v4 = [MEMORY[0x1E696ACB0] JSONObjectWithData:a3 options:0 error:&v7];
  if (v7 || (objc_opt_class(), (objc_opt_isKindOfClass() & 1) == 0))
  {
    v5 = 0;
  }

  else
  {
    self = [(CNVSchemaCNVLinkMetadata *)self initWithDictionary:v4];
    v5 = self;
  }

  return v5;
}

- (NSData)jsonData
{
  v2 = [(CNVSchemaCNVLinkMetadata *)self dictionaryRepresentation];
  if ([MEMORY[0x1E696ACB0] isValidJSONObject:v2])
  {
    v3 = [MEMORY[0x1E696ACB0] dataWithJSONObject:v2 options:0 error:0];
  }

  else
  {
    v3 = 0;
  }

  return v3;
}

- (id)dictionaryRepresentation
{
  v3 = [MEMORY[0x1E695DF90] dictionary];
  if (self->_linkActionId)
  {
    v4 = [(CNVSchemaCNVLinkMetadata *)self linkActionId];
    v5 = [v4 copy];
    [v3 setObject:v5 forKeyedSubscript:@"linkActionId"];
  }

  if (self->_linkId)
  {
    v6 = [(CNVSchemaCNVLinkMetadata *)self linkId];
    v7 = [v6 dictionaryRepresentation];
    if (v7)
    {
      [v3 setObject:v7 forKeyedSubscript:@"linkId"];
    }

    else
    {
      v8 = [MEMORY[0x1E695DFB0] null];
      [v3 setObject:v8 forKeyedSubscript:@"linkId"];
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

    [v3 setObject:v10 forKeyedSubscript:@"systemProtocol"];
  }

  [(SISchemaInstrumentationMessage *)self willProduceDictionaryRepresentation:v3];

  return v3;
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

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  if (![v4 isMemberOfClass:objc_opt_class()])
  {
    goto LABEL_12;
  }

  v5 = [(CNVSchemaCNVLinkMetadata *)self linkId];
  v6 = [v4 linkId];
  if ((v5 != 0) == (v6 == 0))
  {
    goto LABEL_11;
  }

  v7 = [(CNVSchemaCNVLinkMetadata *)self linkId];
  if (v7)
  {
    v8 = v7;
    v9 = [(CNVSchemaCNVLinkMetadata *)self linkId];
    v10 = [v4 linkId];
    v11 = [v9 isEqual:v10];

    if (!v11)
    {
      goto LABEL_12;
    }
  }

  else
  {
  }

  v5 = [(CNVSchemaCNVLinkMetadata *)self linkActionId];
  v6 = [v4 linkActionId];
  if ((v5 != 0) == (v6 == 0))
  {
LABEL_11:

    goto LABEL_12;
  }

  v12 = [(CNVSchemaCNVLinkMetadata *)self linkActionId];
  if (v12)
  {
    v13 = v12;
    v14 = [(CNVSchemaCNVLinkMetadata *)self linkActionId];
    v15 = [v4 linkActionId];
    v16 = [v14 isEqual:v15];

    if (!v16)
    {
      goto LABEL_12;
    }
  }

  else
  {
  }

  if ((*&self->_has & 1) == (v4[28] & 1))
  {
    if ((*&self->_has & 1) == 0 || (systemProtocol = self->_systemProtocol, systemProtocol == [v4 systemProtocol]))
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

- (void)writeTo:(id)a3
{
  v8 = a3;
  v4 = [(CNVSchemaCNVLinkMetadata *)self linkId];

  if (v4)
  {
    v5 = [(CNVSchemaCNVLinkMetadata *)self linkId];
    PBDataWriterWriteSubmessage();
  }

  v6 = [(CNVSchemaCNVLinkMetadata *)self linkActionId];

  if (v6)
  {
    PBDataWriterWriteStringField();
  }

  v7 = v8;
  if (*&self->_has)
  {
    PBDataWriterWriteInt32Field();
    v7 = v8;
  }
}

- (id)applySensitiveConditionsPolicy:(id)a3
{
  v9.receiver = self;
  v9.super_class = CNVSchemaCNVLinkMetadata;
  v4 = a3;
  v5 = [(SISchemaInstrumentationMessage *)&v9 applySensitiveConditionsPolicy:v4];
  v6 = [(CNVSchemaCNVLinkMetadata *)self linkId:v9.receiver];
  v7 = [v6 applySensitiveConditionsPolicy:v4];

  LODWORD(v4) = [v7 suppressMessage];
  if (v4)
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