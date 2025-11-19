@interface ODDSiriSchemaODDwatchOSAssistantProperties
- (BOOL)isEqual:(id)a3;
- (NSData)jsonData;
- (ODDSiriSchemaODDwatchOSAssistantProperties)initWithDictionary:(id)a3;
- (ODDSiriSchemaODDwatchOSAssistantProperties)initWithJSON:(id)a3;
- (id)applySensitiveConditionsPolicy:(id)a3;
- (id)dictionaryRepresentation;
- (id)suppressMessageUnderConditions;
- (unint64_t)hash;
- (void)setHasIsSiriTryItCompleted:(BOOL)a3;
- (void)writeTo:(id)a3;
@end

@implementation ODDSiriSchemaODDwatchOSAssistantProperties

- (ODDSiriSchemaODDwatchOSAssistantProperties)initWithDictionary:(id)a3
{
  v4 = a3;
  v12.receiver = self;
  v12.super_class = ODDSiriSchemaODDwatchOSAssistantProperties;
  v5 = [(ODDSiriSchemaODDwatchOSAssistantProperties *)&v12 init];
  if (v5)
  {
    v6 = [v4 objectForKeyedSubscript:@"isRaiseToSpeakEnabled"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      -[ODDSiriSchemaODDwatchOSAssistantProperties setIsRaiseToSpeakEnabled:](v5, "setIsRaiseToSpeakEnabled:", [v6 BOOLValue]);
    }

    v7 = [v4 objectForKeyedSubscript:@"isSiriTryItCompleted"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      -[ODDSiriSchemaODDwatchOSAssistantProperties setIsSiriTryItCompleted:](v5, "setIsSiriTryItCompleted:", [v7 BOOLValue]);
    }

    v8 = [v4 objectForKeyedSubscript:@"headGestures"];
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

- (ODDSiriSchemaODDwatchOSAssistantProperties)initWithJSON:(id)a3
{
  v7 = 0;
  v4 = [MEMORY[0x1E696ACB0] JSONObjectWithData:a3 options:0 error:&v7];
  if (v7 || (objc_opt_class(), (objc_opt_isKindOfClass() & 1) == 0))
  {
    v5 = 0;
  }

  else
  {
    self = [(ODDSiriSchemaODDwatchOSAssistantProperties *)self initWithDictionary:v4];
    v5 = self;
  }

  return v5;
}

- (NSData)jsonData
{
  v2 = [(ODDSiriSchemaODDwatchOSAssistantProperties *)self dictionaryRepresentation];
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
  if (self->_headGestures)
  {
    v4 = [(ODDSiriSchemaODDwatchOSAssistantProperties *)self headGestures];
    v5 = [v4 dictionaryRepresentation];
    if (v5)
    {
      [v3 setObject:v5 forKeyedSubscript:@"headGestures"];
    }

    else
    {
      v6 = [MEMORY[0x1E695DFB0] null];
      [v3 setObject:v6 forKeyedSubscript:@"headGestures"];
    }
  }

  has = self->_has;
  if (has)
  {
    v8 = [MEMORY[0x1E696AD98] numberWithBool:{-[ODDSiriSchemaODDwatchOSAssistantProperties isRaiseToSpeakEnabled](self, "isRaiseToSpeakEnabled")}];
    [v3 setObject:v8 forKeyedSubscript:@"isRaiseToSpeakEnabled"];

    has = self->_has;
  }

  if ((has & 2) != 0)
  {
    v9 = [MEMORY[0x1E696AD98] numberWithBool:{-[ODDSiriSchemaODDwatchOSAssistantProperties isSiriTryItCompleted](self, "isSiriTryItCompleted")}];
    [v3 setObject:v9 forKeyedSubscript:@"isSiriTryItCompleted"];
  }

  [(SISchemaInstrumentationMessage *)self willProduceDictionaryRepresentation:v3];

  return v3;
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

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  if (![v4 isMemberOfClass:objc_opt_class()])
  {
    goto LABEL_14;
  }

  has = self->_has;
  v6 = v4[24];
  if ((*&has & 1) != (v6 & 1))
  {
    goto LABEL_14;
  }

  if (*&has)
  {
    isRaiseToSpeakEnabled = self->_isRaiseToSpeakEnabled;
    if (isRaiseToSpeakEnabled != [v4 isRaiseToSpeakEnabled])
    {
      goto LABEL_14;
    }

    has = self->_has;
    v6 = v4[24];
  }

  v8 = (*&has >> 1) & 1;
  if (v8 == ((v6 >> 1) & 1))
  {
    if (!v8 || (isSiriTryItCompleted = self->_isSiriTryItCompleted, isSiriTryItCompleted == [v4 isSiriTryItCompleted]))
    {
      v10 = [(ODDSiriSchemaODDwatchOSAssistantProperties *)self headGestures];
      v11 = [v4 headGestures];
      v12 = v11;
      if ((v10 != 0) != (v11 == 0))
      {
        v13 = [(ODDSiriSchemaODDwatchOSAssistantProperties *)self headGestures];
        if (!v13)
        {

LABEL_17:
          v18 = 1;
          goto LABEL_15;
        }

        v14 = v13;
        v15 = [(ODDSiriSchemaODDwatchOSAssistantProperties *)self headGestures];
        v16 = [v4 headGestures];
        v17 = [v15 isEqual:v16];

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

- (void)writeTo:(id)a3
{
  v8 = a3;
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

  v5 = [(ODDSiriSchemaODDwatchOSAssistantProperties *)self headGestures];

  v6 = v8;
  if (v5)
  {
    v7 = [(ODDSiriSchemaODDwatchOSAssistantProperties *)self headGestures];
    PBDataWriterWriteSubmessage();

    v6 = v8;
  }
}

- (void)setHasIsSiriTryItCompleted:(BOOL)a3
{
  if (a3)
  {
    v3 = 2;
  }

  else
  {
    v3 = 0;
  }

  *&self->_has = *&self->_has & 0xFD | v3;
}

- (id)applySensitiveConditionsPolicy:(id)a3
{
  v9.receiver = self;
  v9.super_class = ODDSiriSchemaODDwatchOSAssistantProperties;
  v4 = a3;
  v5 = [(SISchemaInstrumentationMessage *)&v9 applySensitiveConditionsPolicy:v4];
  v6 = [(ODDSiriSchemaODDwatchOSAssistantProperties *)self headGestures:v9.receiver];
  v7 = [v6 applySensitiveConditionsPolicy:v4];

  LODWORD(v4) = [v7 suppressMessage];
  if (v4)
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