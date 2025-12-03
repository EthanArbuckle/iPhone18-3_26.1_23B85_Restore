@interface ODDSiriSchemaODDwatchOSAssistantProperties
- (BOOL)isEqual:(id)equal;
- (NSData)jsonData;
- (ODDSiriSchemaODDwatchOSAssistantProperties)initWithDictionary:(id)dictionary;
- (ODDSiriSchemaODDwatchOSAssistantProperties)initWithJSON:(id)n;
- (id)applySensitiveConditionsPolicy:(id)policy;
- (id)dictionaryRepresentation;
- (id)suppressMessageUnderConditions;
- (unint64_t)hash;
- (void)setHasIsSiriTryItCompleted:(BOOL)completed;
- (void)writeTo:(id)to;
@end

@implementation ODDSiriSchemaODDwatchOSAssistantProperties

- (ODDSiriSchemaODDwatchOSAssistantProperties)initWithDictionary:(id)dictionary
{
  dictionaryCopy = dictionary;
  v12.receiver = self;
  v12.super_class = ODDSiriSchemaODDwatchOSAssistantProperties;
  v5 = [(ODDSiriSchemaODDwatchOSAssistantProperties *)&v12 init];
  if (v5)
  {
    v6 = [dictionaryCopy objectForKeyedSubscript:@"isRaiseToSpeakEnabled"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      -[ODDSiriSchemaODDwatchOSAssistantProperties setIsRaiseToSpeakEnabled:](v5, "setIsRaiseToSpeakEnabled:", [v6 BOOLValue]);
    }

    v7 = [dictionaryCopy objectForKeyedSubscript:@"isSiriTryItCompleted"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      -[ODDSiriSchemaODDwatchOSAssistantProperties setIsSiriTryItCompleted:](v5, "setIsSiriTryItCompleted:", [v7 BOOLValue]);
    }

    v8 = [dictionaryCopy objectForKeyedSubscript:@"headGestures"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v9 = [[ODDSiriSchemaODDHeadGestureProperties alloc] initWithDictionary:v8];
      [(ODDSiriSchemaODDwatchOSAssistantProperties *)v5 setHeadGestures:v9];
    }

    v10 = v5;
  }

  return v5;
}

- (ODDSiriSchemaODDwatchOSAssistantProperties)initWithJSON:(id)n
{
  v7 = 0;
  v4 = [MEMORY[0x1E696ACB0] JSONObjectWithData:n options:0 error:&v7];
  if (v7 || (objc_opt_class(), (objc_opt_isKindOfClass() & 1) == 0))
  {
    selfCopy = 0;
  }

  else
  {
    self = [(ODDSiriSchemaODDwatchOSAssistantProperties *)self initWithDictionary:v4];
    selfCopy = self;
  }

  return selfCopy;
}

- (NSData)jsonData
{
  dictionaryRepresentation = [(ODDSiriSchemaODDwatchOSAssistantProperties *)self dictionaryRepresentation];
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
  if (self->_headGestures)
  {
    headGestures = [(ODDSiriSchemaODDwatchOSAssistantProperties *)self headGestures];
    dictionaryRepresentation = [headGestures dictionaryRepresentation];
    if (dictionaryRepresentation)
    {
      [dictionary setObject:dictionaryRepresentation forKeyedSubscript:@"headGestures"];
    }

    else
    {
      null = [MEMORY[0x1E695DFB0] null];
      [dictionary setObject:null forKeyedSubscript:@"headGestures"];
    }
  }

  has = self->_has;
  if (has)
  {
    v8 = [MEMORY[0x1E696AD98] numberWithBool:{-[ODDSiriSchemaODDwatchOSAssistantProperties isRaiseToSpeakEnabled](self, "isRaiseToSpeakEnabled")}];
    [dictionary setObject:v8 forKeyedSubscript:@"isRaiseToSpeakEnabled"];

    has = self->_has;
  }

  if ((has & 2) != 0)
  {
    v9 = [MEMORY[0x1E696AD98] numberWithBool:{-[ODDSiriSchemaODDwatchOSAssistantProperties isSiriTryItCompleted](self, "isSiriTryItCompleted")}];
    [dictionary setObject:v9 forKeyedSubscript:@"isSiriTryItCompleted"];
  }

  [(SISchemaInstrumentationMessage *)self willProduceDictionaryRepresentation:dictionary];

  return dictionary;
}

- (unint64_t)hash
{
  if (*&self->_has)
  {
    v6 = 2654435761 * self->_isRaiseToSpeakEnabled;
    if ((*&self->_has & 2) != 0)
    {
      goto LABEL_3;
    }

LABEL_5:
    v7 = 0;
    return v7 ^ v6 ^ [(ODDSiriSchemaODDHeadGestureProperties *)self->_headGestures hash:v3];
  }

  v6 = 0;
  if ((*&self->_has & 2) == 0)
  {
    goto LABEL_5;
  }

LABEL_3:
  v7 = 2654435761 * self->_isSiriTryItCompleted;
  return v7 ^ v6 ^ [(ODDSiriSchemaODDHeadGestureProperties *)self->_headGestures hash:v3];
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  if (![equalCopy isMemberOfClass:objc_opt_class()])
  {
    goto LABEL_14;
  }

  has = self->_has;
  v6 = equalCopy[24];
  if ((*&has & 1) != (v6 & 1))
  {
    goto LABEL_14;
  }

  if (*&has)
  {
    isRaiseToSpeakEnabled = self->_isRaiseToSpeakEnabled;
    if (isRaiseToSpeakEnabled != [equalCopy isRaiseToSpeakEnabled])
    {
      goto LABEL_14;
    }

    has = self->_has;
    v6 = equalCopy[24];
  }

  v8 = (*&has >> 1) & 1;
  if (v8 == ((v6 >> 1) & 1))
  {
    if (!v8 || (isSiriTryItCompleted = self->_isSiriTryItCompleted, isSiriTryItCompleted == [equalCopy isSiriTryItCompleted]))
    {
      headGestures = [(ODDSiriSchemaODDwatchOSAssistantProperties *)self headGestures];
      headGestures2 = [equalCopy headGestures];
      v12 = headGestures2;
      if ((headGestures != 0) != (headGestures2 == 0))
      {
        headGestures3 = [(ODDSiriSchemaODDwatchOSAssistantProperties *)self headGestures];
        if (!headGestures3)
        {

LABEL_17:
          v18 = 1;
          goto LABEL_15;
        }

        v14 = headGestures3;
        headGestures4 = [(ODDSiriSchemaODDwatchOSAssistantProperties *)self headGestures];
        headGestures5 = [equalCopy headGestures];
        v17 = [headGestures4 isEqual:headGestures5];

        if (v17)
        {
          goto LABEL_17;
        }
      }

      else
      {
      }
    }
  }

LABEL_14:
  v18 = 0;
LABEL_15:

  return v18;
}

- (void)writeTo:(id)to
{
  toCopy = to;
  has = self->_has;
  if (has)
  {
    PBDataWriterWriteBOOLField();
    has = self->_has;
  }

  if ((has & 2) != 0)
  {
    PBDataWriterWriteBOOLField();
  }

  headGestures = [(ODDSiriSchemaODDwatchOSAssistantProperties *)self headGestures];

  v6 = toCopy;
  if (headGestures)
  {
    headGestures2 = [(ODDSiriSchemaODDwatchOSAssistantProperties *)self headGestures];
    PBDataWriterWriteSubmessage();

    v6 = toCopy;
  }
}

- (void)setHasIsSiriTryItCompleted:(BOOL)completed
{
  if (completed)
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
  v9.super_class = ODDSiriSchemaODDwatchOSAssistantProperties;
  policyCopy = policy;
  v5 = [(SISchemaInstrumentationMessage *)&v9 applySensitiveConditionsPolicy:policyCopy];
  v6 = [(ODDSiriSchemaODDwatchOSAssistantProperties *)self headGestures:v9.receiver];
  v7 = [v6 applySensitiveConditionsPolicy:policyCopy];

  LODWORD(policyCopy) = [v7 suppressMessage];
  if (policyCopy)
  {
    [(ODDSiriSchemaODDwatchOSAssistantProperties *)self deleteHeadGestures];
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