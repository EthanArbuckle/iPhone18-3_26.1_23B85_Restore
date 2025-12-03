@interface QDSchemaQDToolParameterDefinition
- (BOOL)isEqual:(id)equal;
- (NSData)jsonData;
- (QDSchemaQDToolParameterDefinition)initWithDictionary:(id)dictionary;
- (QDSchemaQDToolParameterDefinition)initWithJSON:(id)n;
- (id)applySensitiveConditionsPolicy:(id)policy;
- (id)dictionaryRepresentation;
- (id)suppressMessageUnderConditions;
- (unint64_t)hash;
- (void)writeTo:(id)to;
@end

@implementation QDSchemaQDToolParameterDefinition

- (QDSchemaQDToolParameterDefinition)initWithDictionary:(id)dictionary
{
  dictionaryCopy = dictionary;
  v16.receiver = self;
  v16.super_class = QDSchemaQDToolParameterDefinition;
  v5 = [(QDSchemaQDToolParameterDefinition *)&v16 init];
  if (v5)
  {
    v6 = [dictionaryCopy objectForKeyedSubscript:@"key"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v7 = [v6 copy];
      [(QDSchemaQDToolParameterDefinition *)v5 setKey:v7];
    }

    v8 = [dictionaryCopy objectForKeyedSubscript:@"name"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v9 = [v8 copy];
      [(QDSchemaQDToolParameterDefinition *)v5 setName:v9];
    }

    v10 = [dictionaryCopy objectForKeyedSubscript:@"entityType"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v11 = [[QDSchemaQDEntityType alloc] initWithDictionary:v10];
      [(QDSchemaQDToolParameterDefinition *)v5 setEntityType:v11];
    }

    v12 = [dictionaryCopy objectForKeyedSubscript:@"description"];
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

- (QDSchemaQDToolParameterDefinition)initWithJSON:(id)n
{
  v7 = 0;
  v4 = [MEMORY[0x1E696ACB0] JSONObjectWithData:n options:0 error:&v7];
  if (v7 || (objc_opt_class(), (objc_opt_isKindOfClass() & 1) == 0))
  {
    selfCopy = 0;
  }

  else
  {
    self = [(QDSchemaQDToolParameterDefinition *)self initWithDictionary:v4];
    selfCopy = self;
  }

  return selfCopy;
}

- (NSData)jsonData
{
  dictionaryRepresentation = [(QDSchemaQDToolParameterDefinition *)self dictionaryRepresentation];
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
  if (self->_description)
  {
    v4 = [(QDSchemaQDToolParameterDefinition *)self description];
    v5 = [v4 copy];
    [dictionary setObject:v5 forKeyedSubscript:@"description"];
  }

  if (self->_entityType)
  {
    entityType = [(QDSchemaQDToolParameterDefinition *)self entityType];
    dictionaryRepresentation = [entityType dictionaryRepresentation];
    if (dictionaryRepresentation)
    {
      [dictionary setObject:dictionaryRepresentation forKeyedSubscript:@"entityType"];
    }

    else
    {
      null = [MEMORY[0x1E695DFB0] null];
      [dictionary setObject:null forKeyedSubscript:@"entityType"];
    }
  }

  if (self->_key)
  {
    v9 = [(QDSchemaQDToolParameterDefinition *)self key];
    v10 = [v9 copy];
    [dictionary setObject:v10 forKeyedSubscript:@"key"];
  }

  if (self->_name)
  {
    name = [(QDSchemaQDToolParameterDefinition *)self name];
    v12 = [name copy];
    [dictionary setObject:v12 forKeyedSubscript:@"name"];
  }

  [(SISchemaInstrumentationMessage *)self willProduceDictionaryRepresentation:dictionary];

  return dictionary;
}

- (unint64_t)hash
{
  v3 = [(NSString *)self->_key hash];
  v4 = [(NSString *)self->_name hash]^ v3;
  v5 = [(QDSchemaQDEntityType *)self->_entityType hash];
  return v4 ^ v5 ^ [(NSString *)self->_description hash];
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  if (![equalCopy isMemberOfClass:objc_opt_class()])
  {
    goto LABEL_22;
  }

  name = [(QDSchemaQDToolParameterDefinition *)self key];
  name2 = [equalCopy key];
  if ((name != 0) == (name2 == 0))
  {
    goto LABEL_21;
  }

  v7 = [(QDSchemaQDToolParameterDefinition *)self key];
  if (v7)
  {
    v8 = v7;
    v9 = [(QDSchemaQDToolParameterDefinition *)self key];
    v10 = [equalCopy key];
    v11 = [v9 isEqual:v10];

    if (!v11)
    {
      goto LABEL_22;
    }
  }

  else
  {
  }

  name = [(QDSchemaQDToolParameterDefinition *)self name];
  name2 = [equalCopy name];
  if ((name != 0) == (name2 == 0))
  {
    goto LABEL_21;
  }

  name3 = [(QDSchemaQDToolParameterDefinition *)self name];
  if (name3)
  {
    v13 = name3;
    name4 = [(QDSchemaQDToolParameterDefinition *)self name];
    name5 = [equalCopy name];
    v16 = [name4 isEqual:name5];

    if (!v16)
    {
      goto LABEL_22;
    }
  }

  else
  {
  }

  name = [(QDSchemaQDToolParameterDefinition *)self entityType];
  name2 = [equalCopy entityType];
  if ((name != 0) == (name2 == 0))
  {
    goto LABEL_21;
  }

  entityType = [(QDSchemaQDToolParameterDefinition *)self entityType];
  if (entityType)
  {
    v18 = entityType;
    entityType2 = [(QDSchemaQDToolParameterDefinition *)self entityType];
    entityType3 = [equalCopy entityType];
    v21 = [entityType2 isEqual:entityType3];

    if (!v21)
    {
      goto LABEL_22;
    }
  }

  else
  {
  }

  name = [(QDSchemaQDToolParameterDefinition *)self description];
  name2 = [equalCopy description];
  if ((name != 0) != (name2 == 0))
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
    v25 = [equalCopy description];
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

- (void)writeTo:(id)to
{
  toCopy = to;
  v4 = [(QDSchemaQDToolParameterDefinition *)self key];

  if (v4)
  {
    PBDataWriterWriteStringField();
  }

  name = [(QDSchemaQDToolParameterDefinition *)self name];

  if (name)
  {
    PBDataWriterWriteStringField();
  }

  entityType = [(QDSchemaQDToolParameterDefinition *)self entityType];

  if (entityType)
  {
    entityType2 = [(QDSchemaQDToolParameterDefinition *)self entityType];
    PBDataWriterWriteSubmessage();
  }

  v8 = [(QDSchemaQDToolParameterDefinition *)self description];

  v9 = toCopy;
  if (v8)
  {
    PBDataWriterWriteStringField();
    v9 = toCopy;
  }
}

- (id)applySensitiveConditionsPolicy:(id)policy
{
  v9.receiver = self;
  v9.super_class = QDSchemaQDToolParameterDefinition;
  policyCopy = policy;
  v5 = [(SISchemaInstrumentationMessage *)&v9 applySensitiveConditionsPolicy:policyCopy];
  v6 = [(QDSchemaQDToolParameterDefinition *)self entityType:v9.receiver];
  v7 = [v6 applySensitiveConditionsPolicy:policyCopy];

  LODWORD(policyCopy) = [v7 suppressMessage];
  if (policyCopy)
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