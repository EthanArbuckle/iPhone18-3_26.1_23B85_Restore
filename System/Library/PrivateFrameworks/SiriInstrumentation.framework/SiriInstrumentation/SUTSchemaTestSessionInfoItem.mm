@interface SUTSchemaTestSessionInfoItem
- (BOOL)isEqual:(id)equal;
- (NSData)jsonData;
- (SUTSchemaTestSessionInfoItem)initWithDictionary:(id)dictionary;
- (SUTSchemaTestSessionInfoItem)initWithJSON:(id)n;
- (id)dictionaryRepresentation;
- (id)suppressMessageUnderConditions;
- (void)writeTo:(id)to;
@end

@implementation SUTSchemaTestSessionInfoItem

- (SUTSchemaTestSessionInfoItem)initWithDictionary:(id)dictionary
{
  dictionaryCopy = dictionary;
  v12.receiver = self;
  v12.super_class = SUTSchemaTestSessionInfoItem;
  v5 = [(SUTSchemaTestSessionInfoItem *)&v12 init];
  if (v5)
  {
    v6 = [dictionaryCopy objectForKeyedSubscript:@"name"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v7 = [v6 copy];
      [(SUTSchemaTestSessionInfoItem *)v5 setName:v7];
    }

    v8 = [dictionaryCopy objectForKeyedSubscript:@"value"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v9 = [v8 copy];
      [(SUTSchemaTestSessionInfoItem *)v5 setValue:v9];
    }

    v10 = v5;
  }

  return v5;
}

- (SUTSchemaTestSessionInfoItem)initWithJSON:(id)n
{
  v7 = 0;
  v4 = [MEMORY[0x1E696ACB0] JSONObjectWithData:n options:0 error:&v7];
  if (v7 || (objc_opt_class(), (objc_opt_isKindOfClass() & 1) == 0))
  {
    selfCopy = 0;
  }

  else
  {
    self = [(SUTSchemaTestSessionInfoItem *)self initWithDictionary:v4];
    selfCopy = self;
  }

  return selfCopy;
}

- (NSData)jsonData
{
  dictionaryRepresentation = [(SUTSchemaTestSessionInfoItem *)self dictionaryRepresentation];
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
  if (self->_name)
  {
    name = [(SUTSchemaTestSessionInfoItem *)self name];
    v5 = [name copy];
    [dictionary setObject:v5 forKeyedSubscript:@"name"];
  }

  if (self->_value)
  {
    value = [(SUTSchemaTestSessionInfoItem *)self value];
    v7 = [value copy];
    [dictionary setObject:v7 forKeyedSubscript:@"value"];
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

  name = [(SUTSchemaTestSessionInfoItem *)self name];
  name2 = [equalCopy name];
  if ((name != 0) == (name2 == 0))
  {
    goto LABEL_11;
  }

  name3 = [(SUTSchemaTestSessionInfoItem *)self name];
  if (name3)
  {
    v8 = name3;
    name4 = [(SUTSchemaTestSessionInfoItem *)self name];
    name5 = [equalCopy name];
    v11 = [name4 isEqual:name5];

    if (!v11)
    {
      goto LABEL_12;
    }
  }

  else
  {
  }

  name = [(SUTSchemaTestSessionInfoItem *)self value];
  name2 = [equalCopy value];
  if ((name != 0) != (name2 == 0))
  {
    value = [(SUTSchemaTestSessionInfoItem *)self value];
    if (!value)
    {

LABEL_15:
      v17 = 1;
      goto LABEL_13;
    }

    v13 = value;
    value2 = [(SUTSchemaTestSessionInfoItem *)self value];
    value3 = [equalCopy value];
    v16 = [value2 isEqual:value3];

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
  name = [(SUTSchemaTestSessionInfoItem *)self name];

  if (name)
  {
    PBDataWriterWriteStringField();
  }

  value = [(SUTSchemaTestSessionInfoItem *)self value];

  if (value)
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