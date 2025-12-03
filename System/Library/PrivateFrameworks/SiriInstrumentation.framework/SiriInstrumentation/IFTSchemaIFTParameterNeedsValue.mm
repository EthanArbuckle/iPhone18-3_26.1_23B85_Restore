@interface IFTSchemaIFTParameterNeedsValue
- (BOOL)isEqual:(id)equal;
- (IFTSchemaIFTParameterNeedsValue)initWithDictionary:(id)dictionary;
- (IFTSchemaIFTParameterNeedsValue)initWithJSON:(id)n;
- (NSData)jsonData;
- (id)dictionaryRepresentation;
- (id)suppressMessageUnderConditions;
- (unint64_t)hash;
- (void)writeTo:(id)to;
@end

@implementation IFTSchemaIFTParameterNeedsValue

- (IFTSchemaIFTParameterNeedsValue)initWithDictionary:(id)dictionary
{
  dictionaryCopy = dictionary;
  v11.receiver = self;
  v11.super_class = IFTSchemaIFTParameterNeedsValue;
  v5 = [(IFTSchemaIFTParameterNeedsValue *)&v11 init];
  if (v5)
  {
    v6 = [dictionaryCopy objectForKeyedSubscript:@"exists"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      -[IFTSchemaIFTParameterNeedsValue setExists:](v5, "setExists:", [v6 BOOLValue]);
    }

    v7 = [dictionaryCopy objectForKeyedSubscript:@"parameterId"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v8 = [v7 copy];
      [(IFTSchemaIFTParameterNeedsValue *)v5 setParameterId:v8];
    }

    v9 = v5;
  }

  return v5;
}

- (IFTSchemaIFTParameterNeedsValue)initWithJSON:(id)n
{
  v7 = 0;
  v4 = [MEMORY[0x1E696ACB0] JSONObjectWithData:n options:0 error:&v7];
  if (v7 || (objc_opt_class(), (objc_opt_isKindOfClass() & 1) == 0))
  {
    selfCopy = 0;
  }

  else
  {
    self = [(IFTSchemaIFTParameterNeedsValue *)self initWithDictionary:v4];
    selfCopy = self;
  }

  return selfCopy;
}

- (NSData)jsonData
{
  dictionaryRepresentation = [(IFTSchemaIFTParameterNeedsValue *)self dictionaryRepresentation];
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
  if (*&self->_has)
  {
    v4 = [MEMORY[0x1E696AD98] numberWithBool:{-[IFTSchemaIFTParameterNeedsValue exists](self, "exists")}];
    [dictionary setObject:v4 forKeyedSubscript:@"exists"];
  }

  if (self->_parameterId)
  {
    parameterId = [(IFTSchemaIFTParameterNeedsValue *)self parameterId];
    v6 = [parameterId copy];
    [dictionary setObject:v6 forKeyedSubscript:@"parameterId"];
  }

  [(SISchemaInstrumentationMessage *)self willProduceDictionaryRepresentation:dictionary];

  return dictionary;
}

- (unint64_t)hash
{
  if (*&self->_has)
  {
    v2 = 2654435761 * self->_exists;
  }

  else
  {
    v2 = 0;
  }

  return [(NSString *)self->_parameterId hash]^ v2;
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  if ([equalCopy isMemberOfClass:objc_opt_class()])
  {
    if ((*&self->_has & 1) == (equalCopy[24] & 1))
    {
      if ((*&self->_has & 1) == 0 || (exists = self->_exists, exists == [equalCopy exists]))
      {
        parameterId = [(IFTSchemaIFTParameterNeedsValue *)self parameterId];
        parameterId2 = [equalCopy parameterId];
        v8 = parameterId2;
        if ((parameterId != 0) != (parameterId2 == 0))
        {
          parameterId3 = [(IFTSchemaIFTParameterNeedsValue *)self parameterId];
          if (!parameterId3)
          {

LABEL_13:
            v14 = 1;
            goto LABEL_11;
          }

          v10 = parameterId3;
          parameterId4 = [(IFTSchemaIFTParameterNeedsValue *)self parameterId];
          parameterId5 = [equalCopy parameterId];
          v13 = [parameterId4 isEqual:parameterId5];

          if (v13)
          {
            goto LABEL_13;
          }
        }

        else
        {
        }
      }
    }
  }

  v14 = 0;
LABEL_11:

  return v14;
}

- (void)writeTo:(id)to
{
  toCopy = to;
  if (*&self->_has)
  {
    PBDataWriterWriteBOOLField();
  }

  parameterId = [(IFTSchemaIFTParameterNeedsValue *)self parameterId];

  v5 = toCopy;
  if (parameterId)
  {
    PBDataWriterWriteStringField();
    v5 = toCopy;
  }
}

- (id)suppressMessageUnderConditions
{
  v2 = objc_alloc_init(SISensitiveConditionsSet);
  [(SISensitiveConditionsSet *)v2 addCondition:1];

  return v2;
}

@end