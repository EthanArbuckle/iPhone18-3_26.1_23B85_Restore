@interface CNVSchemaCNVLinkMetadataTier1
- (BOOL)isEqual:(id)a3;
- (CNVSchemaCNVLinkMetadataTier1)initWithDictionary:(id)a3;
- (CNVSchemaCNVLinkMetadataTier1)initWithJSON:(id)a3;
- (NSData)jsonData;
- (id)applySensitiveConditionsPolicy:(id)a3;
- (id)dictionaryRepresentation;
- (id)suppressMessageUnderConditions;
- (void)writeTo:(id)a3;
@end

@implementation CNVSchemaCNVLinkMetadataTier1

- (CNVSchemaCNVLinkMetadataTier1)initWithDictionary:(id)a3
{
  v4 = a3;
  v12.receiver = self;
  v12.super_class = CNVSchemaCNVLinkMetadataTier1;
  v5 = [(CNVSchemaCNVLinkMetadataTier1 *)&v12 init];
  if (v5)
  {
    v6 = [v4 objectForKeyedSubscript:@"linkId"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v7 = [[SISchemaUUID alloc] initWithDictionary:v6];
      [(CNVSchemaCNVLinkMetadataTier1 *)v5 setLinkId:v7];
    }

    v8 = [v4 objectForKeyedSubscript:@"appBundleId"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v9 = [v8 copy];
      [(CNVSchemaCNVLinkMetadataTier1 *)v5 setAppBundleId:v9];
    }

    v10 = v5;
  }

  return v5;
}

- (CNVSchemaCNVLinkMetadataTier1)initWithJSON:(id)a3
{
  v7 = 0;
  v4 = [MEMORY[0x1E696ACB0] JSONObjectWithData:a3 options:0 error:&v7];
  if (v7 || (objc_opt_class(), (objc_opt_isKindOfClass() & 1) == 0))
  {
    v5 = 0;
  }

  else
  {
    self = [(CNVSchemaCNVLinkMetadataTier1 *)self initWithDictionary:v4];
    v5 = self;
  }

  return v5;
}

- (NSData)jsonData
{
  v2 = [(CNVSchemaCNVLinkMetadataTier1 *)self dictionaryRepresentation];
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
  if (self->_appBundleId)
  {
    v4 = [(CNVSchemaCNVLinkMetadataTier1 *)self appBundleId];
    v5 = [v4 copy];
    [v3 setObject:v5 forKeyedSubscript:@"appBundleId"];
  }

  if (self->_linkId)
  {
    v6 = [(CNVSchemaCNVLinkMetadataTier1 *)self linkId];
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

  [(SISchemaInstrumentationMessage *)self willProduceDictionaryRepresentation:v3];

  return v3;
}

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  if (![v4 isMemberOfClass:objc_opt_class()])
  {
    goto LABEL_12;
  }

  v5 = [(CNVSchemaCNVLinkMetadataTier1 *)self linkId];
  v6 = [v4 linkId];
  if ((v5 != 0) == (v6 == 0))
  {
    goto LABEL_11;
  }

  v7 = [(CNVSchemaCNVLinkMetadataTier1 *)self linkId];
  if (v7)
  {
    v8 = v7;
    v9 = [(CNVSchemaCNVLinkMetadataTier1 *)self linkId];
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

  v5 = [(CNVSchemaCNVLinkMetadataTier1 *)self appBundleId];
  v6 = [v4 appBundleId];
  if ((v5 != 0) != (v6 == 0))
  {
    v12 = [(CNVSchemaCNVLinkMetadataTier1 *)self appBundleId];
    if (!v12)
    {

LABEL_15:
      v17 = 1;
      goto LABEL_13;
    }

    v13 = v12;
    v14 = [(CNVSchemaCNVLinkMetadataTier1 *)self appBundleId];
    v15 = [v4 appBundleId];
    v16 = [v14 isEqual:v15];

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

- (void)writeTo:(id)a3
{
  v7 = a3;
  v4 = [(CNVSchemaCNVLinkMetadataTier1 *)self linkId];

  if (v4)
  {
    v5 = [(CNVSchemaCNVLinkMetadataTier1 *)self linkId];
    PBDataWriterWriteSubmessage();
  }

  v6 = [(CNVSchemaCNVLinkMetadataTier1 *)self appBundleId];

  if (v6)
  {
    PBDataWriterWriteStringField();
  }
}

- (id)applySensitiveConditionsPolicy:(id)a3
{
  v4 = a3;
  v10.receiver = self;
  v10.super_class = CNVSchemaCNVLinkMetadataTier1;
  v5 = [(SISchemaInstrumentationMessage *)&v10 applySensitiveConditionsPolicy:v4];
  if ([v4 isConditionSet:4])
  {
    [(CNVSchemaCNVLinkMetadataTier1 *)self deleteAppBundleId];
  }

  v6 = [(CNVSchemaCNVLinkMetadataTier1 *)self linkId];
  v7 = [v6 applySensitiveConditionsPolicy:v4];
  v8 = [v7 suppressMessage];

  if (v8)
  {
    [(CNVSchemaCNVLinkMetadataTier1 *)self deleteLinkId];
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