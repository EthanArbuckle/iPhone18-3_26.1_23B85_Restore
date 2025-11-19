@interface IFTSchemaIFTCustom
- (BOOL)isEqual:(id)a3;
- (IFTSchemaIFTCustom)initWithDictionary:(id)a3;
- (IFTSchemaIFTCustom)initWithJSON:(id)a3;
- (NSData)jsonData;
- (id)applySensitiveConditionsPolicy:(id)a3;
- (id)dictionaryRepresentation;
- (id)suppressMessageUnderConditions;
- (void)writeTo:(id)a3;
@end

@implementation IFTSchemaIFTCustom

- (IFTSchemaIFTCustom)initWithDictionary:(id)a3
{
  v4 = a3;
  v12.receiver = self;
  v12.super_class = IFTSchemaIFTCustom;
  v5 = [(IFTSchemaIFTCustom *)&v12 init];
  if (v5)
  {
    v6 = [v4 objectForKeyedSubscript:@"bundleId"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v7 = [v6 copy];
      [(IFTSchemaIFTCustom *)v5 setBundleId:v7];
    }

    v8 = [v4 objectForKeyedSubscript:@"customTypeName"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v9 = [v8 copy];
      [(IFTSchemaIFTCustom *)v5 setCustomTypeName:v9];
    }

    v10 = v5;
  }

  return v5;
}

- (IFTSchemaIFTCustom)initWithJSON:(id)a3
{
  v7 = 0;
  v4 = [MEMORY[0x1E696ACB0] JSONObjectWithData:a3 options:0 error:&v7];
  if (v7 || (objc_opt_class(), (objc_opt_isKindOfClass() & 1) == 0))
  {
    v5 = 0;
  }

  else
  {
    self = [(IFTSchemaIFTCustom *)self initWithDictionary:v4];
    v5 = self;
  }

  return v5;
}

- (NSData)jsonData
{
  v2 = [(IFTSchemaIFTCustom *)self dictionaryRepresentation];
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
  if (self->_bundleId)
  {
    v4 = [(IFTSchemaIFTCustom *)self bundleId];
    v5 = [v4 copy];
    [v3 setObject:v5 forKeyedSubscript:@"bundleId"];
  }

  if (self->_customTypeName)
  {
    v6 = [(IFTSchemaIFTCustom *)self customTypeName];
    v7 = [v6 copy];
    [v3 setObject:v7 forKeyedSubscript:@"customTypeName"];
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

  v5 = [(IFTSchemaIFTCustom *)self bundleId];
  v6 = [v4 bundleId];
  if ((v5 != 0) == (v6 == 0))
  {
    goto LABEL_11;
  }

  v7 = [(IFTSchemaIFTCustom *)self bundleId];
  if (v7)
  {
    v8 = v7;
    v9 = [(IFTSchemaIFTCustom *)self bundleId];
    v10 = [v4 bundleId];
    v11 = [v9 isEqual:v10];

    if (!v11)
    {
      goto LABEL_12;
    }
  }

  else
  {
  }

  v5 = [(IFTSchemaIFTCustom *)self customTypeName];
  v6 = [v4 customTypeName];
  if ((v5 != 0) != (v6 == 0))
  {
    v12 = [(IFTSchemaIFTCustom *)self customTypeName];
    if (!v12)
    {

LABEL_15:
      v17 = 1;
      goto LABEL_13;
    }

    v13 = v12;
    v14 = [(IFTSchemaIFTCustom *)self customTypeName];
    v15 = [v4 customTypeName];
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
  v4 = [(IFTSchemaIFTCustom *)self bundleId];

  if (v4)
  {
    PBDataWriterWriteStringField();
  }

  v5 = [(IFTSchemaIFTCustom *)self customTypeName];

  if (v5)
  {
    PBDataWriterWriteStringField();
  }
}

- (id)applySensitiveConditionsPolicy:(id)a3
{
  v8.receiver = self;
  v8.super_class = IFTSchemaIFTCustom;
  v4 = a3;
  v5 = [(SISchemaInstrumentationMessage *)&v8 applySensitiveConditionsPolicy:v4];
  v6 = [v4 isConditionSet:{4, v8.receiver, v8.super_class}];

  if (v6)
  {
    [(IFTSchemaIFTCustom *)self deleteBundleId];
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