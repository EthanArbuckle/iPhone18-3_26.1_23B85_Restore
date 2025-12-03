@interface IFTSchemaIFTParameterConfirmation
- (BOOL)isEqual:(id)equal;
- (IFTSchemaIFTParameterConfirmation)initWithDictionary:(id)dictionary;
- (IFTSchemaIFTParameterConfirmation)initWithJSON:(id)n;
- (NSData)jsonData;
- (id)applySensitiveConditionsPolicy:(id)policy;
- (id)dictionaryRepresentation;
- (id)suppressMessageUnderConditions;
- (unint64_t)hash;
- (void)setHasParameterIndex:(BOOL)index;
- (void)writeTo:(id)to;
@end

@implementation IFTSchemaIFTParameterConfirmation

- (IFTSchemaIFTParameterConfirmation)initWithDictionary:(id)dictionary
{
  dictionaryCopy = dictionary;
  v14.receiver = self;
  v14.super_class = IFTSchemaIFTParameterConfirmation;
  v5 = [(IFTSchemaIFTParameterConfirmation *)&v14 init];
  if (v5)
  {
    v6 = [dictionaryCopy objectForKeyedSubscript:@"exists"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      -[IFTSchemaIFTParameterConfirmation setExists:](v5, "setExists:", [v6 BOOLValue]);
    }

    v7 = [dictionaryCopy objectForKeyedSubscript:@"parameterId"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v8 = [v7 copy];
      [(IFTSchemaIFTParameterConfirmation *)v5 setParameterId:v8];
    }

    v9 = [dictionaryCopy objectForKeyedSubscript:@"parameterIndex"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      -[IFTSchemaIFTParameterConfirmation setParameterIndex:](v5, "setParameterIndex:", [v9 longLongValue]);
    }

    v10 = [dictionaryCopy objectForKeyedSubscript:@"item"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v11 = [[IFTSchemaIFTTypedValue alloc] initWithDictionary:v10];
      [(IFTSchemaIFTParameterConfirmation *)v5 setItem:v11];
    }

    v12 = v5;
  }

  return v5;
}

- (IFTSchemaIFTParameterConfirmation)initWithJSON:(id)n
{
  v7 = 0;
  v4 = [MEMORY[0x1E696ACB0] JSONObjectWithData:n options:0 error:&v7];
  if (v7 || (objc_opt_class(), (objc_opt_isKindOfClass() & 1) == 0))
  {
    selfCopy = 0;
  }

  else
  {
    self = [(IFTSchemaIFTParameterConfirmation *)self initWithDictionary:v4];
    selfCopy = self;
  }

  return selfCopy;
}

- (NSData)jsonData
{
  dictionaryRepresentation = [(IFTSchemaIFTParameterConfirmation *)self dictionaryRepresentation];
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
    v4 = [MEMORY[0x1E696AD98] numberWithBool:{-[IFTSchemaIFTParameterConfirmation exists](self, "exists")}];
    [dictionary setObject:v4 forKeyedSubscript:@"exists"];
  }

  if (self->_item)
  {
    item = [(IFTSchemaIFTParameterConfirmation *)self item];
    dictionaryRepresentation = [item dictionaryRepresentation];
    if (dictionaryRepresentation)
    {
      [dictionary setObject:dictionaryRepresentation forKeyedSubscript:@"item"];
    }

    else
    {
      null = [MEMORY[0x1E695DFB0] null];
      [dictionary setObject:null forKeyedSubscript:@"item"];
    }
  }

  if (self->_parameterId)
  {
    parameterId = [(IFTSchemaIFTParameterConfirmation *)self parameterId];
    v9 = [parameterId copy];
    [dictionary setObject:v9 forKeyedSubscript:@"parameterId"];
  }

  if ((*&self->_has & 2) != 0)
  {
    v10 = [MEMORY[0x1E696AD98] numberWithLongLong:{-[IFTSchemaIFTParameterConfirmation parameterIndex](self, "parameterIndex")}];
    [dictionary setObject:v10 forKeyedSubscript:@"parameterIndex"];
  }

  [(SISchemaInstrumentationMessage *)self willProduceDictionaryRepresentation:dictionary];

  return dictionary;
}

- (unint64_t)hash
{
  if (*&self->_has)
  {
    v3 = 2654435761 * self->_exists;
  }

  else
  {
    v3 = 0;
  }

  v4 = [(NSString *)self->_parameterId hash];
  if ((*&self->_has & 2) != 0)
  {
    v5 = 2654435761 * self->_parameterIndex;
  }

  else
  {
    v5 = 0;
  }

  return v4 ^ v3 ^ v5 ^ [(IFTSchemaIFTTypedValue *)self->_item hash];
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  if (![equalCopy isMemberOfClass:objc_opt_class()])
  {
    goto LABEL_18;
  }

  if ((*&self->_has & 1) != (equalCopy[40] & 1))
  {
    goto LABEL_18;
  }

  if (*&self->_has)
  {
    exists = self->_exists;
    if (exists != [equalCopy exists])
    {
      goto LABEL_18;
    }
  }

  parameterId = [(IFTSchemaIFTParameterConfirmation *)self parameterId];
  parameterId2 = [equalCopy parameterId];
  if ((parameterId != 0) == (parameterId2 == 0))
  {
    goto LABEL_17;
  }

  parameterId3 = [(IFTSchemaIFTParameterConfirmation *)self parameterId];
  if (parameterId3)
  {
    v9 = parameterId3;
    parameterId4 = [(IFTSchemaIFTParameterConfirmation *)self parameterId];
    parameterId5 = [equalCopy parameterId];
    v12 = [parameterId4 isEqual:parameterId5];

    if (!v12)
    {
      goto LABEL_18;
    }
  }

  else
  {
  }

  v13 = (*&self->_has >> 1) & 1;
  if (v13 != ((equalCopy[40] >> 1) & 1))
  {
    goto LABEL_18;
  }

  if (v13)
  {
    parameterIndex = self->_parameterIndex;
    if (parameterIndex != [equalCopy parameterIndex])
    {
      goto LABEL_18;
    }
  }

  parameterId = [(IFTSchemaIFTParameterConfirmation *)self item];
  parameterId2 = [equalCopy item];
  if ((parameterId != 0) != (parameterId2 == 0))
  {
    item = [(IFTSchemaIFTParameterConfirmation *)self item];
    if (!item)
    {

LABEL_21:
      v20 = 1;
      goto LABEL_19;
    }

    v16 = item;
    item2 = [(IFTSchemaIFTParameterConfirmation *)self item];
    item3 = [equalCopy item];
    v19 = [item2 isEqual:item3];

    if (v19)
    {
      goto LABEL_21;
    }
  }

  else
  {
LABEL_17:
  }

LABEL_18:
  v20 = 0;
LABEL_19:

  return v20;
}

- (void)writeTo:(id)to
{
  toCopy = to;
  if (*&self->_has)
  {
    PBDataWriterWriteBOOLField();
  }

  parameterId = [(IFTSchemaIFTParameterConfirmation *)self parameterId];

  if (parameterId)
  {
    PBDataWriterWriteStringField();
  }

  if ((*&self->_has & 2) != 0)
  {
    PBDataWriterWriteInt64Field();
  }

  item = [(IFTSchemaIFTParameterConfirmation *)self item];

  v6 = toCopy;
  if (item)
  {
    item2 = [(IFTSchemaIFTParameterConfirmation *)self item];
    PBDataWriterWriteSubmessage();

    v6 = toCopy;
  }
}

- (void)setHasParameterIndex:(BOOL)index
{
  if (index)
  {
    v3 = 2;
  }

  else
  {
    v3 = 0;
  }

  *&self->_has = *&self->_has & 0xFD | v3;
}

- (id)applySensitiveConditionsPolicy:(id)policy
{
  v9.receiver = self;
  v9.super_class = IFTSchemaIFTParameterConfirmation;
  policyCopy = policy;
  v5 = [(SISchemaInstrumentationMessage *)&v9 applySensitiveConditionsPolicy:policyCopy];
  v6 = [(IFTSchemaIFTParameterConfirmation *)self item:v9.receiver];
  v7 = [v6 applySensitiveConditionsPolicy:policyCopy];

  LODWORD(policyCopy) = [v7 suppressMessage];
  if (policyCopy)
  {
    [(IFTSchemaIFTParameterConfirmation *)self deleteItem];
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