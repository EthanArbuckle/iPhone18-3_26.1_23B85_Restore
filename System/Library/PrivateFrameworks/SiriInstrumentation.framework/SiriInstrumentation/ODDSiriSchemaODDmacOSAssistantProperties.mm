@interface ODDSiriSchemaODDmacOSAssistantProperties
- (BOOL)isEqual:(id)equal;
- (NSData)jsonData;
- (ODDSiriSchemaODDmacOSAssistantProperties)initWithDictionary:(id)dictionary;
- (ODDSiriSchemaODDmacOSAssistantProperties)initWithJSON:(id)n;
- (id)applySensitiveConditionsPolicy:(id)policy;
- (id)dictionaryRepresentation;
- (id)suppressMessageUnderConditions;
- (unint64_t)hash;
- (void)writeTo:(id)to;
@end

@implementation ODDSiriSchemaODDmacOSAssistantProperties

- (ODDSiriSchemaODDmacOSAssistantProperties)initWithDictionary:(id)dictionary
{
  dictionaryCopy = dictionary;
  v11.receiver = self;
  v11.super_class = ODDSiriSchemaODDmacOSAssistantProperties;
  v5 = [(ODDSiriSchemaODDmacOSAssistantProperties *)&v11 init];
  if (v5)
  {
    v6 = [dictionaryCopy objectForKeyedSubscript:@"isExternalMicrophoneHSEnabled"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      -[ODDSiriSchemaODDmacOSAssistantProperties setIsExternalMicrophoneHSEnabled:](v5, "setIsExternalMicrophoneHSEnabled:", [v6 BOOLValue]);
    }

    v7 = [dictionaryCopy objectForKeyedSubscript:@"headGestures"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v8 = [[ODDSiriSchemaODDHeadGestureProperties alloc] initWithDictionary:v7];
      [(ODDSiriSchemaODDmacOSAssistantProperties *)v5 setHeadGestures:v8];
    }

    v9 = v5;
  }

  return v5;
}

- (ODDSiriSchemaODDmacOSAssistantProperties)initWithJSON:(id)n
{
  v7 = 0;
  v4 = [MEMORY[0x1E696ACB0] JSONObjectWithData:n options:0 error:&v7];
  if (v7 || (objc_opt_class(), (objc_opt_isKindOfClass() & 1) == 0))
  {
    selfCopy = 0;
  }

  else
  {
    self = [(ODDSiriSchemaODDmacOSAssistantProperties *)self initWithDictionary:v4];
    selfCopy = self;
  }

  return selfCopy;
}

- (NSData)jsonData
{
  dictionaryRepresentation = [(ODDSiriSchemaODDmacOSAssistantProperties *)self dictionaryRepresentation];
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
    headGestures = [(ODDSiriSchemaODDmacOSAssistantProperties *)self headGestures];
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

  if (*&self->_has)
  {
    v7 = [MEMORY[0x1E696AD98] numberWithBool:{-[ODDSiriSchemaODDmacOSAssistantProperties isExternalMicrophoneHSEnabled](self, "isExternalMicrophoneHSEnabled")}];
    [dictionary setObject:v7 forKeyedSubscript:@"isExternalMicrophoneHSEnabled"];
  }

  [(SISchemaInstrumentationMessage *)self willProduceDictionaryRepresentation:dictionary];

  return dictionary;
}

- (unint64_t)hash
{
  if (*&self->_has)
  {
    v2 = 2654435761 * self->_isExternalMicrophoneHSEnabled;
  }

  else
  {
    v2 = 0;
  }

  return [(ODDSiriSchemaODDHeadGestureProperties *)self->_headGestures hash]^ v2;
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  if ([equalCopy isMemberOfClass:objc_opt_class()])
  {
    if ((*&self->_has & 1) == (equalCopy[24] & 1))
    {
      if ((*&self->_has & 1) == 0 || (isExternalMicrophoneHSEnabled = self->_isExternalMicrophoneHSEnabled, isExternalMicrophoneHSEnabled == [equalCopy isExternalMicrophoneHSEnabled]))
      {
        headGestures = [(ODDSiriSchemaODDmacOSAssistantProperties *)self headGestures];
        headGestures2 = [equalCopy headGestures];
        v8 = headGestures2;
        if ((headGestures != 0) != (headGestures2 == 0))
        {
          headGestures3 = [(ODDSiriSchemaODDmacOSAssistantProperties *)self headGestures];
          if (!headGestures3)
          {

LABEL_13:
            v14 = 1;
            goto LABEL_11;
          }

          v10 = headGestures3;
          headGestures4 = [(ODDSiriSchemaODDmacOSAssistantProperties *)self headGestures];
          headGestures5 = [equalCopy headGestures];
          v13 = [headGestures4 isEqual:headGestures5];

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

  headGestures = [(ODDSiriSchemaODDmacOSAssistantProperties *)self headGestures];

  v5 = toCopy;
  if (headGestures)
  {
    headGestures2 = [(ODDSiriSchemaODDmacOSAssistantProperties *)self headGestures];
    PBDataWriterWriteSubmessage();

    v5 = toCopy;
  }
}

- (id)applySensitiveConditionsPolicy:(id)policy
{
  v9.receiver = self;
  v9.super_class = ODDSiriSchemaODDmacOSAssistantProperties;
  policyCopy = policy;
  v5 = [(SISchemaInstrumentationMessage *)&v9 applySensitiveConditionsPolicy:policyCopy];
  v6 = [(ODDSiriSchemaODDmacOSAssistantProperties *)self headGestures:v9.receiver];
  v7 = [v6 applySensitiveConditionsPolicy:policyCopy];

  LODWORD(policyCopy) = [v7 suppressMessage];
  if (policyCopy)
  {
    [(ODDSiriSchemaODDmacOSAssistantProperties *)self deleteHeadGestures];
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