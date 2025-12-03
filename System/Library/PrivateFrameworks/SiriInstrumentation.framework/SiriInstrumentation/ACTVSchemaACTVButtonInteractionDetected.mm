@interface ACTVSchemaACTVButtonInteractionDetected
- (ACTVSchemaACTVButtonInteractionDetected)initWithDictionary:(id)dictionary;
- (ACTVSchemaACTVButtonInteractionDetected)initWithJSON:(id)n;
- (BOOL)isEqual:(id)equal;
- (NSData)jsonData;
- (id)dictionaryRepresentation;
- (id)suppressMessageUnderConditions;
- (unint64_t)hash;
- (void)writeTo:(id)to;
@end

@implementation ACTVSchemaACTVButtonInteractionDetected

- (ACTVSchemaACTVButtonInteractionDetected)initWithDictionary:(id)dictionary
{
  dictionaryCopy = dictionary;
  v11.receiver = self;
  v11.super_class = ACTVSchemaACTVButtonInteractionDetected;
  v5 = [(ACTVSchemaACTVButtonInteractionDetected *)&v11 init];
  if (v5)
  {
    v6 = [dictionaryCopy objectForKeyedSubscript:@"buttonInteractionType"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      -[ACTVSchemaACTVButtonInteractionDetected setButtonInteractionType:](v5, "setButtonInteractionType:", [v6 intValue]);
    }

    v7 = [dictionaryCopy objectForKeyedSubscript:@"buttonName"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v8 = [v7 copy];
      [(ACTVSchemaACTVButtonInteractionDetected *)v5 setButtonName:v8];
    }

    v9 = v5;
  }

  return v5;
}

- (ACTVSchemaACTVButtonInteractionDetected)initWithJSON:(id)n
{
  v7 = 0;
  v4 = [MEMORY[0x1E696ACB0] JSONObjectWithData:n options:0 error:&v7];
  if (v7 || (objc_opt_class(), (objc_opt_isKindOfClass() & 1) == 0))
  {
    selfCopy = 0;
  }

  else
  {
    self = [(ACTVSchemaACTVButtonInteractionDetected *)self initWithDictionary:v4];
    selfCopy = self;
  }

  return selfCopy;
}

- (NSData)jsonData
{
  dictionaryRepresentation = [(ACTVSchemaACTVButtonInteractionDetected *)self dictionaryRepresentation];
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
    v4 = [(ACTVSchemaACTVButtonInteractionDetected *)self buttonInteractionType]- 1;
    if (v4 > 2)
    {
      v5 = @"BUTTONINTERACTIONTYPE_UNKNOWN";
    }

    else
    {
      v5 = off_1E78D15B8[v4];
    }

    [dictionary setObject:v5 forKeyedSubscript:@"buttonInteractionType"];
  }

  if (self->_buttonName)
  {
    buttonName = [(ACTVSchemaACTVButtonInteractionDetected *)self buttonName];
    v7 = [buttonName copy];
    [dictionary setObject:v7 forKeyedSubscript:@"buttonName"];
  }

  [(SISchemaInstrumentationMessage *)self willProduceDictionaryRepresentation:dictionary];

  return dictionary;
}

- (unint64_t)hash
{
  if (*&self->_has)
  {
    v2 = 2654435761 * self->_buttonInteractionType;
  }

  else
  {
    v2 = 0;
  }

  return [(NSString *)self->_buttonName hash]^ v2;
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  if ([equalCopy isMemberOfClass:objc_opt_class()])
  {
    if ((*&self->_has & 1) == (equalCopy[24] & 1))
    {
      if ((*&self->_has & 1) == 0 || (buttonInteractionType = self->_buttonInteractionType, buttonInteractionType == [equalCopy buttonInteractionType]))
      {
        buttonName = [(ACTVSchemaACTVButtonInteractionDetected *)self buttonName];
        buttonName2 = [equalCopy buttonName];
        v8 = buttonName2;
        if ((buttonName != 0) != (buttonName2 == 0))
        {
          buttonName3 = [(ACTVSchemaACTVButtonInteractionDetected *)self buttonName];
          if (!buttonName3)
          {

LABEL_13:
            v14 = 1;
            goto LABEL_11;
          }

          v10 = buttonName3;
          buttonName4 = [(ACTVSchemaACTVButtonInteractionDetected *)self buttonName];
          buttonName5 = [equalCopy buttonName];
          v13 = [buttonName4 isEqual:buttonName5];

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

  buttonName = [(ACTVSchemaACTVButtonInteractionDetected *)self buttonName];

  v5 = toCopy;
  if (buttonName)
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