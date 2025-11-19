@interface QDSchemaQDToolParameterDefinition
- (BOOL)isEqual:(id)a3;
- (NSData)jsonData;
- (QDSchemaQDToolParameterDefinition)initWithDictionary:(id)a3;
- (QDSchemaQDToolParameterDefinition)initWithJSON:(id)a3;
- (id)applySensitiveConditionsPolicy:(id)a3;
- (id)dictionaryRepresentation;
- (id)suppressMessageUnderConditions;
- (unint64_t)hash;
- (void)writeTo:(id)a3;
@end

@implementation QDSchemaQDToolParameterDefinition

- (QDSchemaQDToolParameterDefinition)initWithDictionary:(id)a3
{
  v4 = a3;
  v16.receiver = self;
  v16.super_class = QDSchemaQDToolParameterDefinition;
  v5 = [(QDSchemaQDToolParameterDefinition *)&v16 init];
  if (v5)
  {
    v6 = [v4 objectForKeyedSubscript:@"key"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v7 = [v6 copy];
      [(QDSchemaQDToolParameterDefinition *)v5 setKey:v7];
    }

    v8 = [v4 objectForKeyedSubscript:@"name"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v9 = [v8 copy];
      [(QDSchemaQDToolParameterDefinition *)v5 setName:v9];
    }

    v10 = [v4 objectForKeyedSubscript:@"entityType"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v11 = [[QDSchemaQDEntityType alloc] initWithDictionary:v10];
      [(QDSchemaQDToolParameterDefinition *)v5 setEntityType:v11];
    }

    v12 = [v4 objectForKeyedSubscript:@"description"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v13 = [v12 copy];
      [(QDSchemaQDToolParameterDefinition *)v5 setDescription:v13];
    }

    v14 = v5;
  }

  return v5;
}

- (QDSchemaQDToolParameterDefinition)initWithJSON:(id)a3
{
  v7 = 0;
  v4 = [MEMORY[0x1E696ACB0] JSONObjectWithData:a3 options:0 error:&v7];
  if (v7 || (objc_opt_class(), (objc_opt_isKindOfClass() & 1) == 0))
  {
    v5 = 0;
  }

  else
  {
    self = [(QDSchemaQDToolParameterDefinition *)self initWithDictionary:v4];
    v5 = self;
  }

  return v5;
}

- (NSData)jsonData
{
  v2 = [(QDSchemaQDToolParameterDefinition *)self dictionaryRepresentation];
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
  if (self->_description)
  {
    v4 = [(QDSchemaQDToolParameterDefinition *)self description];
    v5 = [v4 copy];
    [v3 setObject:v5 forKeyedSubscript:@"description"];
  }

  if (self->_entityType)
  {
    v6 = [(QDSchemaQDToolParameterDefinition *)self entityType];
    v7 = [v6 dictionaryRepresentation];
    if (v7)
    {
      [v3 setObject:v7 forKeyedSubscript:@"entityType"];
    }

    else
    {
      v8 = [MEMORY[0x1E695DFB0] null];
      [v3 setObject:v8 forKeyedSubscript:@"entityType"];
    }
  }

  if (self->_key)
  {
    v9 = [(QDSchemaQDToolParameterDefinition *)self key];
    v10 = [v9 copy];
    [v3 setObject:v10 forKeyedSubscript:@"key"];
  }

  if (self->_name)
  {
    v11 = [(QDSchemaQDToolParameterDefinition *)self name];
    v12 = [v11 copy];
    [v3 setObject:v12 forKeyedSubscript:@"name"];
  }

  [(SISchemaInstrumentationMessage *)self willProduceDictionaryRepresentation:v3];

  return v3;
}

- (unint64_t)hash
{
  v3 = [(NSString *)self->_key hash];
  v4 = [(NSString *)self->_name hash]^ v3;
  v5 = [(QDSchemaQDEntityType *)self->_entityType hash];
  return v4 ^ v5 ^ [(NSString *)self->_description hash];
}

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  if (![v4 isMemberOfClass:objc_opt_class()])
  {
    goto LABEL_22;
  }

  v5 = [(QDSchemaQDToolParameterDefinition *)self key];
  v6 = [v4 key];
  if ((v5 != 0) == (v6 == 0))
  {
    goto LABEL_21;
  }

  v7 = [(QDSchemaQDToolParameterDefinition *)self key];
  if (v7)
  {
    v8 = v7;
    v9 = [(QDSchemaQDToolParameterDefinition *)self key];
    v10 = [v4 key];
    v11 = [v9 isEqual:v10];

    if (!v11)
    {
      goto LABEL_22;
    }
  }

  else
  {
  }

  v5 = [(QDSchemaQDToolParameterDefinition *)self name];
  v6 = [v4 name];
  if ((v5 != 0) == (v6 == 0))
  {
    goto LABEL_21;
  }

  v12 = [(QDSchemaQDToolParameterDefinition *)self name];
  if (v12)
  {
    v13 = v12;
    v14 = [(QDSchemaQDToolParameterDefinition *)self name];
    v15 = [v4 name];
    v16 = [v14 isEqual:v15];

    if (!v16)
    {
      goto LABEL_22;
    }
  }

  else
  {
  }

  v5 = [(QDSchemaQDToolParameterDefinition *)self entityType];
  v6 = [v4 entityType];
  if ((v5 != 0) == (v6 == 0))
  {
    goto LABEL_21;
  }

  v17 = [(QDSchemaQDToolParameterDefinition *)self entityType];
  if (v17)
  {
    v18 = v17;
    v19 = [(QDSchemaQDToolParameterDefinition *)self entityType];
    v20 = [v4 entityType];
    v21 = [v19 isEqual:v20];

    if (!v21)
    {
      goto LABEL_22;
    }
  }

  else
  {
  }

  v5 = [(QDSchemaQDToolParameterDefinition *)self description];
  v6 = [v4 description];
  if ((v5 != 0) != (v6 == 0))
  {
    v22 = [(QDSchemaQDToolParameterDefinition *)self description];
    if (!v22)
    {

LABEL_25:
      v27 = 1;
      goto LABEL_23;
    }

    v23 = v22;
    v24 = [(QDSchemaQDToolParameterDefinition *)self description];
    v25 = [v4 description];
    v26 = [v24 isEqual:v25];

    if (v26)
    {
      goto LABEL_25;
    }
  }

  else
  {
LABEL_21:
  }

LABEL_22:
  v27 = 0;
LABEL_23:

  return v27;
}

- (void)writeTo:(id)a3
{
  v10 = a3;
  v4 = [(QDSchemaQDToolParameterDefinition *)self key];

  if (v4)
  {
    PBDataWriterWriteStringField();
  }

  v5 = [(QDSchemaQDToolParameterDefinition *)self name];

  if (v5)
  {
    PBDataWriterWriteStringField();
  }

  v6 = [(QDSchemaQDToolParameterDefinition *)self entityType];

  if (v6)
  {
    v7 = [(QDSchemaQDToolParameterDefinition *)self entityType];
    PBDataWriterWriteSubmessage();
  }

  v8 = [(QDSchemaQDToolParameterDefinition *)self description];

  v9 = v10;
  if (v8)
  {
    PBDataWriterWriteStringField();
    v9 = v10;
  }
}

- (id)applySensitiveConditionsPolicy:(id)a3
{
  v9.receiver = self;
  v9.super_class = QDSchemaQDToolParameterDefinition;
  v4 = a3;
  v5 = [(SISchemaInstrumentationMessage *)&v9 applySensitiveConditionsPolicy:v4];
  v6 = [(QDSchemaQDToolParameterDefinition *)self entityType:v9.receiver];
  v7 = [v6 applySensitiveConditionsPolicy:v4];

  LODWORD(v4) = [v7 suppressMessage];
  if (v4)
  {
    [(QDSchemaQDToolParameterDefinition *)self deleteEntityType];
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