@interface DialogEngineSchemaDialogEngineNamedEntity
- (BOOL)isEqual:(id)equal;
- (DialogEngineSchemaDialogEngineNamedEntity)initWithDictionary:(id)dictionary;
- (DialogEngineSchemaDialogEngineNamedEntity)initWithJSON:(id)n;
- (NSData)jsonData;
- (id)dictionaryRepresentation;
- (id)suppressMessageUnderConditions;
- (unint64_t)hash;
- (void)writeTo:(id)to;
@end

@implementation DialogEngineSchemaDialogEngineNamedEntity

- (DialogEngineSchemaDialogEngineNamedEntity)initWithDictionary:(id)dictionary
{
  dictionaryCopy = dictionary;
  v11.receiver = self;
  v11.super_class = DialogEngineSchemaDialogEngineNamedEntity;
  v5 = [(DialogEngineSchemaDialogEngineNamedEntity *)&v11 init];
  if (v5)
  {
    v6 = [dictionaryCopy objectForKeyedSubscript:@"catParameter"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      -[DialogEngineSchemaDialogEngineNamedEntity setCatParameter:](v5, "setCatParameter:", [v6 intValue]);
    }

    v7 = [dictionaryCopy objectForKeyedSubscript:@"catParameterValue"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v8 = [v7 copy];
      [(DialogEngineSchemaDialogEngineNamedEntity *)v5 setCatParameterValue:v8];
    }

    v9 = v5;
  }

  return v5;
}

- (DialogEngineSchemaDialogEngineNamedEntity)initWithJSON:(id)n
{
  v7 = 0;
  v4 = [MEMORY[0x1E696ACB0] JSONObjectWithData:n options:0 error:&v7];
  if (v7 || (objc_opt_class(), (objc_opt_isKindOfClass() & 1) == 0))
  {
    selfCopy = 0;
  }

  else
  {
    self = [(DialogEngineSchemaDialogEngineNamedEntity *)self initWithDictionary:v4];
    selfCopy = self;
  }

  return selfCopy;
}

- (NSData)jsonData
{
  dictionaryRepresentation = [(DialogEngineSchemaDialogEngineNamedEntity *)self dictionaryRepresentation];
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
    v4 = [(DialogEngineSchemaDialogEngineNamedEntity *)self catParameter]- 1;
    if (v4 > 0x44)
    {
      v5 = @"DIALOGENGINENAMEDENTITYPARAMETER__UNKNOWN";
    }

    else
    {
      v5 = off_1E78D3400[v4];
    }

    [dictionary setObject:v5 forKeyedSubscript:@"catParameter"];
  }

  if (self->_catParameterValue)
  {
    catParameterValue = [(DialogEngineSchemaDialogEngineNamedEntity *)self catParameterValue];
    v7 = [catParameterValue copy];
    [dictionary setObject:v7 forKeyedSubscript:@"catParameterValue"];
  }

  [(SISchemaInstrumentationMessage *)self willProduceDictionaryRepresentation:dictionary];

  return dictionary;
}

- (unint64_t)hash
{
  if (*&self->_has)
  {
    v2 = 2654435761 * self->_catParameter;
  }

  else
  {
    v2 = 0;
  }

  return [(NSString *)self->_catParameterValue hash]^ v2;
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  if ([equalCopy isMemberOfClass:objc_opt_class()])
  {
    if ((*&self->_has & 1) == (equalCopy[24] & 1))
    {
      if ((*&self->_has & 1) == 0 || (catParameter = self->_catParameter, catParameter == [equalCopy catParameter]))
      {
        catParameterValue = [(DialogEngineSchemaDialogEngineNamedEntity *)self catParameterValue];
        catParameterValue2 = [equalCopy catParameterValue];
        v8 = catParameterValue2;
        if ((catParameterValue != 0) != (catParameterValue2 == 0))
        {
          catParameterValue3 = [(DialogEngineSchemaDialogEngineNamedEntity *)self catParameterValue];
          if (!catParameterValue3)
          {

LABEL_13:
            v14 = 1;
            goto LABEL_11;
          }

          v10 = catParameterValue3;
          catParameterValue4 = [(DialogEngineSchemaDialogEngineNamedEntity *)self catParameterValue];
          catParameterValue5 = [equalCopy catParameterValue];
          v13 = [catParameterValue4 isEqual:catParameterValue5];

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
    PBDataWriterWriteInt32Field();
  }

  catParameterValue = [(DialogEngineSchemaDialogEngineNamedEntity *)self catParameterValue];

  v5 = toCopy;
  if (catParameterValue)
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