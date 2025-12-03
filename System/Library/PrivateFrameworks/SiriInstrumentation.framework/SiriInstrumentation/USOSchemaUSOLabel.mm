@interface USOSchemaUSOLabel
- (BOOL)isEqual:(id)equal;
- (NSData)jsonData;
- (USOSchemaUSOLabel)initWithDictionary:(id)dictionary;
- (USOSchemaUSOLabel)initWithJSON:(id)n;
- (id)dictionaryRepresentation;
- (id)suppressMessageUnderConditions;
- (void)writeTo:(id)to;
@end

@implementation USOSchemaUSOLabel

- (USOSchemaUSOLabel)initWithDictionary:(id)dictionary
{
  dictionaryCopy = dictionary;
  v10.receiver = self;
  v10.super_class = USOSchemaUSOLabel;
  v5 = [(USOSchemaUSOLabel *)&v10 init];
  if (v5)
  {
    v6 = [dictionaryCopy objectForKeyedSubscript:@"value"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v7 = [v6 copy];
      [(USOSchemaUSOLabel *)v5 setValue:v7];
    }

    v8 = v5;
  }

  return v5;
}

- (USOSchemaUSOLabel)initWithJSON:(id)n
{
  v7 = 0;
  v4 = [MEMORY[0x1E696ACB0] JSONObjectWithData:n options:0 error:&v7];
  if (v7 || (objc_opt_class(), (objc_opt_isKindOfClass() & 1) == 0))
  {
    selfCopy = 0;
  }

  else
  {
    self = [(USOSchemaUSOLabel *)self initWithDictionary:v4];
    selfCopy = self;
  }

  return selfCopy;
}

- (NSData)jsonData
{
  dictionaryRepresentation = [(USOSchemaUSOLabel *)self dictionaryRepresentation];
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
  if (self->_value)
  {
    value = [(USOSchemaUSOLabel *)self value];
    v5 = [value copy];
    [dictionary setObject:v5 forKeyedSubscript:@"value"];
  }

  [(SISchemaInstrumentationMessage *)self willProduceDictionaryRepresentation:dictionary];

  return dictionary;
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  if ([equalCopy isMemberOfClass:objc_opt_class()])
  {
    value = [(USOSchemaUSOLabel *)self value];
    value2 = [equalCopy value];
    v7 = value2;
    if ((value != 0) != (value2 == 0))
    {
      value3 = [(USOSchemaUSOLabel *)self value];
      if (!value3)
      {

LABEL_10:
        v13 = 1;
        goto LABEL_8;
      }

      v9 = value3;
      value4 = [(USOSchemaUSOLabel *)self value];
      value5 = [equalCopy value];
      v12 = [value4 isEqual:value5];

      if (v12)
      {
        goto LABEL_10;
      }
    }

    else
    {
    }
  }

  v13 = 0;
LABEL_8:

  return v13;
}

- (void)writeTo:(id)to
{
  toCopy = to;
  value = [(USOSchemaUSOLabel *)self value];

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