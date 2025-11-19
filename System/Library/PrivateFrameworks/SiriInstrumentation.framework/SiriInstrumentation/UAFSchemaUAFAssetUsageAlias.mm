@interface UAFSchemaUAFAssetUsageAlias
- (BOOL)isEqual:(id)a3;
- (NSData)jsonData;
- (UAFSchemaUAFAssetUsageAlias)initWithDictionary:(id)a3;
- (UAFSchemaUAFAssetUsageAlias)initWithJSON:(id)a3;
- (id)dictionaryRepresentation;
- (id)suppressMessageUnderConditions;
- (void)writeTo:(id)a3;
@end

@implementation UAFSchemaUAFAssetUsageAlias

- (UAFSchemaUAFAssetUsageAlias)initWithDictionary:(id)a3
{
  v4 = a3;
  v12.receiver = self;
  v12.super_class = UAFSchemaUAFAssetUsageAlias;
  v5 = [(UAFSchemaUAFAssetUsageAlias *)&v12 init];
  if (v5)
  {
    v6 = [v4 objectForKeyedSubscript:@"aliasName"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v7 = [v6 copy];
      [(UAFSchemaUAFAssetUsageAlias *)v5 setAliasName:v7];
    }

    v8 = [v4 objectForKeyedSubscript:@"aliasValue"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v9 = [v8 copy];
      [(UAFSchemaUAFAssetUsageAlias *)v5 setAliasValue:v9];
    }

    v10 = v5;
  }

  return v5;
}

- (UAFSchemaUAFAssetUsageAlias)initWithJSON:(id)a3
{
  v7 = 0;
  v4 = [MEMORY[0x1E696ACB0] JSONObjectWithData:a3 options:0 error:&v7];
  if (v7 || (objc_opt_class(), (objc_opt_isKindOfClass() & 1) == 0))
  {
    v5 = 0;
  }

  else
  {
    self = [(UAFSchemaUAFAssetUsageAlias *)self initWithDictionary:v4];
    v5 = self;
  }

  return v5;
}

- (NSData)jsonData
{
  v2 = [(UAFSchemaUAFAssetUsageAlias *)self dictionaryRepresentation];
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
  if (self->_aliasName)
  {
    v4 = [(UAFSchemaUAFAssetUsageAlias *)self aliasName];
    v5 = [v4 copy];
    [v3 setObject:v5 forKeyedSubscript:@"aliasName"];
  }

  if (self->_aliasValue)
  {
    v6 = [(UAFSchemaUAFAssetUsageAlias *)self aliasValue];
    v7 = [v6 copy];
    [v3 setObject:v7 forKeyedSubscript:@"aliasValue"];
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

  v5 = [(UAFSchemaUAFAssetUsageAlias *)self aliasName];
  v6 = [v4 aliasName];
  if ((v5 != 0) == (v6 == 0))
  {
    goto LABEL_11;
  }

  v7 = [(UAFSchemaUAFAssetUsageAlias *)self aliasName];
  if (v7)
  {
    v8 = v7;
    v9 = [(UAFSchemaUAFAssetUsageAlias *)self aliasName];
    v10 = [v4 aliasName];
    v11 = [v9 isEqual:v10];

    if (!v11)
    {
      goto LABEL_12;
    }
  }

  else
  {
  }

  v5 = [(UAFSchemaUAFAssetUsageAlias *)self aliasValue];
  v6 = [v4 aliasValue];
  if ((v5 != 0) != (v6 == 0))
  {
    v12 = [(UAFSchemaUAFAssetUsageAlias *)self aliasValue];
    if (!v12)
    {

LABEL_15:
      v17 = 1;
      goto LABEL_13;
    }

    v13 = v12;
    v14 = [(UAFSchemaUAFAssetUsageAlias *)self aliasValue];
    v15 = [v4 aliasValue];
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
  v6 = a3;
  v4 = [(UAFSchemaUAFAssetUsageAlias *)self aliasName];

  if (v4)
  {
    PBDataWriterWriteStringField();
  }

  v5 = [(UAFSchemaUAFAssetUsageAlias *)self aliasValue];

  if (v5)
  {
    PBDataWriterWriteStringField();
  }
}

- (id)suppressMessageUnderConditions
{
  v2 = objc_alloc_init(SISensitiveConditionsSet);
  [(SISensitiveConditionsSet *)v2 addCondition:1];

  return v2;
}

@end