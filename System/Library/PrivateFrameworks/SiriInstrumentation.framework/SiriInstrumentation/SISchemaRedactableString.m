@interface SISchemaRedactableString
- (BOOL)isEqual:(id)a3;
- (NSData)jsonData;
- (NSString)value;
- (SISchemaRedactableString)initWithDictionary:(id)a3;
- (SISchemaRedactableString)initWithJSON:(id)a3;
- (id)dictionaryRepresentation;
- (id)suppressMessageUnderConditions;
- (int)redactionState;
- (unint64_t)hash;
- (void)deleteRedactionState;
- (void)deleteValue;
- (void)setRedactionState:(int)a3;
- (void)setValue:(id)a3;
- (void)writeTo:(id)a3;
@end

@implementation SISchemaRedactableString

- (SISchemaRedactableString)initWithDictionary:(id)a3
{
  v4 = a3;
  v11.receiver = self;
  v11.super_class = SISchemaRedactableString;
  v5 = [(SISchemaRedactableString *)&v11 init];
  if (v5)
  {
    v6 = [v4 objectForKeyedSubscript:@"redactionState"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      -[SISchemaRedactableString setRedactionState:](v5, "setRedactionState:", [v6 intValue]);
    }

    v7 = [v4 objectForKeyedSubscript:@"value"];
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

- (SISchemaRedactableString)initWithJSON:(id)a3
{
  v7 = 0;
  v4 = [MEMORY[0x1E696ACB0] JSONObjectWithData:a3 options:0 error:&v7];
  if (v7 || (objc_opt_class(), (objc_opt_isKindOfClass() & 1) == 0))
  {
    v5 = 0;
  }

  else
  {
    self = [(SISchemaRedactableString *)self initWithDictionary:v4];
    v5 = self;
  }

  return v5;
}

- (NSData)jsonData
{
  v2 = [(SISchemaRedactableString *)self dictionaryRepresentation];
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
  if (self->_which_String == 1)
  {
    [(SISchemaRedactableString *)self redactionState];
    [v3 setObject:@"REDACTED" forKeyedSubscript:@"redactionState"];
  }

  if (self->_value)
  {
    v4 = [(SISchemaRedactableString *)self value];
    v5 = [v4 copy];
    [v3 setObject:v5 forKeyedSubscript:@"value"];
  }

  [(SISchemaInstrumentationMessage *)self willProduceDictionaryRepresentation:v3];

  return v3;
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

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  if ([v4 isMemberOfClass:objc_opt_class()])
  {
    which_String = self->_which_String;
    if (which_String == [v4 which_String])
    {
      redactionState = self->_redactionState;
      if (redactionState == [v4 redactionState])
      {
        v7 = [(SISchemaRedactableString *)self value];
        v8 = [v4 value];
        v9 = v8;
        if ((v7 != 0) != (v8 == 0))
        {
          v10 = [(SISchemaRedactableString *)self value];
          if (!v10)
          {

LABEL_12:
            v15 = 1;
            goto LABEL_10;
          }

          v11 = v10;
          v12 = [(SISchemaRedactableString *)self value];
          v13 = [v4 value];
          v14 = [v12 isEqual:v13];

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

- (void)writeTo:(id)a3
{
  v6 = a3;
  if (self->_which_String == 1)
  {
    PBDataWriterWriteInt32Field();
  }

  v4 = [(SISchemaRedactableString *)self value];

  v5 = v6;
  if (v4)
  {
    PBDataWriterWriteStringField();
    v5 = v6;
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

- (void)setValue:(id)a3
{
  self->_redactionState = 0;
  self->_which_String = 2 * (a3 != 0);
  v6 = a3;
  v4 = [v6 copy];
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

- (void)setRedactionState:(int)a3
{
  value = self->_value;
  self->_value = 0;

  self->_which_String = 1;
  self->_redactionState = a3;
}

- (id)suppressMessageUnderConditions
{
  v2 = objc_alloc_init(SISensitiveConditionsSet);
  [(SISensitiveConditionsSet *)v2 addCondition:1];

  return v2;
}

@end