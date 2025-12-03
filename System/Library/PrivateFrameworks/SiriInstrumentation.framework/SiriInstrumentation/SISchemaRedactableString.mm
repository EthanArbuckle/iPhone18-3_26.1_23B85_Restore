@interface SISchemaRedactableString
- (BOOL)isEqual:(id)equal;
- (NSData)jsonData;
- (NSString)value;
- (SISchemaRedactableString)initWithDictionary:(id)dictionary;
- (SISchemaRedactableString)initWithJSON:(id)n;
- (id)dictionaryRepresentation;
- (id)suppressMessageUnderConditions;
- (int)redactionState;
- (unint64_t)hash;
- (void)deleteRedactionState;
- (void)deleteValue;
- (void)setRedactionState:(int)state;
- (void)setValue:(id)value;
- (void)writeTo:(id)to;
@end

@implementation SISchemaRedactableString

- (SISchemaRedactableString)initWithDictionary:(id)dictionary
{
  dictionaryCopy = dictionary;
  v11.receiver = self;
  v11.super_class = SISchemaRedactableString;
  v5 = [(SISchemaRedactableString *)&v11 init];
  if (v5)
  {
    v6 = [dictionaryCopy objectForKeyedSubscript:@"redactionState"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      -[SISchemaRedactableString setRedactionState:](v5, "setRedactionState:", [v6 intValue]);
    }

    v7 = [dictionaryCopy objectForKeyedSubscript:@"value"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v8 = [v7 copy];
      [(SISchemaRedactableString *)v5 setValue:v8];
    }

    v9 = v5;
  }

  return v5;
}

- (SISchemaRedactableString)initWithJSON:(id)n
{
  v7 = 0;
  v4 = [MEMORY[0x1E696ACB0] JSONObjectWithData:n options:0 error:&v7];
  if (v7 || (objc_opt_class(), (objc_opt_isKindOfClass() & 1) == 0))
  {
    selfCopy = 0;
  }

  else
  {
    self = [(SISchemaRedactableString *)self initWithDictionary:v4];
    selfCopy = self;
  }

  return selfCopy;
}

- (NSData)jsonData
{
  dictionaryRepresentation = [(SISchemaRedactableString *)self dictionaryRepresentation];
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
  if (self->_which_String == 1)
  {
    [(SISchemaRedactableString *)self redactionState];
    [dictionary setObject:@"REDACTED" forKeyedSubscript:@"redactionState"];
  }

  if (self->_value)
  {
    value = [(SISchemaRedactableString *)self value];
    v5 = [value copy];
    [dictionary setObject:v5 forKeyedSubscript:@"value"];
  }

  [(SISchemaInstrumentationMessage *)self willProduceDictionaryRepresentation:dictionary];

  return dictionary;
}

- (unint64_t)hash
{
  if (self->_which_String == 1)
  {
    v2 = 2654435761 * self->_redactionState;
  }

  else
  {
    v2 = 0;
  }

  return [(NSString *)self->_value hash]^ v2;
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  if ([equalCopy isMemberOfClass:objc_opt_class()])
  {
    which_String = self->_which_String;
    if (which_String == [equalCopy which_String])
    {
      redactionState = self->_redactionState;
      if (redactionState == [equalCopy redactionState])
      {
        value = [(SISchemaRedactableString *)self value];
        value2 = [equalCopy value];
        v9 = value2;
        if ((value != 0) != (value2 == 0))
        {
          value3 = [(SISchemaRedactableString *)self value];
          if (!value3)
          {

LABEL_12:
            v15 = 1;
            goto LABEL_10;
          }

          v11 = value3;
          value4 = [(SISchemaRedactableString *)self value];
          value5 = [equalCopy value];
          v14 = [value4 isEqual:value5];

          if (v14)
          {
            goto LABEL_12;
          }
        }

        else
        {
        }
      }
    }
  }

  v15 = 0;
LABEL_10:

  return v15;
}

- (void)writeTo:(id)to
{
  toCopy = to;
  if (self->_which_String == 1)
  {
    PBDataWriterWriteInt32Field();
  }

  value = [(SISchemaRedactableString *)self value];

  v5 = toCopy;
  if (value)
  {
    PBDataWriterWriteStringField();
    v5 = toCopy;
  }
}

- (void)deleteValue
{
  if (self->_which_String == 2)
  {
    self->_which_String = 0;
    self->_value = 0;
    MEMORY[0x1EEE66BB8]();
  }
}

- (NSString)value
{
  if (self->_which_String == 2)
  {
    v3 = self->_value;
  }

  else
  {
    v3 = 0;
  }

  return v3;
}

- (void)setValue:(id)value
{
  self->_redactionState = 0;
  self->_which_String = 2 * (value != 0);
  valueCopy = value;
  v4 = [valueCopy copy];
  value = self->_value;
  self->_value = v4;
}

- (void)deleteRedactionState
{
  if (self->_which_String == 1)
  {
    self->_which_String = 0;
    self->_redactionState = 0;
  }
}

- (int)redactionState
{
  if (self->_which_String == 1)
  {
    return self->_redactionState;
  }

  else
  {
    return 0;
  }
}

- (void)setRedactionState:(int)state
{
  value = self->_value;
  self->_value = 0;

  self->_which_String = 1;
  self->_redactionState = state;
}

- (id)suppressMessageUnderConditions
{
  v2 = objc_alloc_init(SISensitiveConditionsSet);
  [(SISensitiveConditionsSet *)v2 addCondition:1];

  return v2;
}

@end