@interface ODDSiriSchemaODDHeadGestureProperties
- (BOOL)isEqual:(id)equal;
- (NSData)jsonData;
- (ODDSiriSchemaODDHeadGestureProperties)initWithDictionary:(id)dictionary;
- (ODDSiriSchemaODDHeadGestureProperties)initWithJSON:(id)n;
- (id)dictionaryRepresentation;
- (id)suppressMessageUnderConditions;
- (unint64_t)hash;
- (void)setHasAcceptProceedGesture:(BOOL)gesture;
- (void)setHasDeclineDismissGesture:(BOOL)gesture;
- (void)setHasHeadGesturesEnabled:(BOOL)enabled;
- (void)writeTo:(id)to;
@end

@implementation ODDSiriSchemaODDHeadGestureProperties

- (ODDSiriSchemaODDHeadGestureProperties)initWithDictionary:(id)dictionary
{
  dictionaryCopy = dictionary;
  v12.receiver = self;
  v12.super_class = ODDSiriSchemaODDHeadGestureProperties;
  v5 = [(ODDSiriSchemaODDHeadGestureProperties *)&v12 init];
  if (v5)
  {
    v6 = [dictionaryCopy objectForKeyedSubscript:@"headGesturesSupported"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      -[ODDSiriSchemaODDHeadGestureProperties setHeadGesturesSupported:](v5, "setHeadGesturesSupported:", [v6 BOOLValue]);
    }

    v7 = [dictionaryCopy objectForKeyedSubscript:@"headGesturesEnabled"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      -[ODDSiriSchemaODDHeadGestureProperties setHeadGesturesEnabled:](v5, "setHeadGesturesEnabled:", [v7 BOOLValue]);
    }

    v8 = [dictionaryCopy objectForKeyedSubscript:@"acceptProceedGesture"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      -[ODDSiriSchemaODDHeadGestureProperties setAcceptProceedGesture:](v5, "setAcceptProceedGesture:", [v8 intValue]);
    }

    v9 = [dictionaryCopy objectForKeyedSubscript:@"declineDismissGesture"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      -[ODDSiriSchemaODDHeadGestureProperties setDeclineDismissGesture:](v5, "setDeclineDismissGesture:", [v9 intValue]);
    }

    v10 = v5;
  }

  return v5;
}

- (ODDSiriSchemaODDHeadGestureProperties)initWithJSON:(id)n
{
  v7 = 0;
  v4 = [MEMORY[0x1E696ACB0] JSONObjectWithData:n options:0 error:&v7];
  if (v7 || (objc_opt_class(), (objc_opt_isKindOfClass() & 1) == 0))
  {
    selfCopy = 0;
  }

  else
  {
    self = [(ODDSiriSchemaODDHeadGestureProperties *)self initWithDictionary:v4];
    selfCopy = self;
  }

  return selfCopy;
}

- (NSData)jsonData
{
  dictionaryRepresentation = [(ODDSiriSchemaODDHeadGestureProperties *)self dictionaryRepresentation];
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
  has = self->_has;
  if ((has & 4) != 0)
  {
    acceptProceedGesture = [(ODDSiriSchemaODDHeadGestureProperties *)self acceptProceedGesture];
    if (acceptProceedGesture == 1)
    {
      v6 = @"ORCHHEADGESTUREMAPPING_SIDE_TO_SIDE";
    }

    else
    {
      v6 = @"ORCHHEADGESTUREMAPPING_UNKNOWN";
    }

    if (acceptProceedGesture == 2)
    {
      v7 = @"ORCHHEADGESTUREMAPPING_UP_AND_DOWN";
    }

    else
    {
      v7 = v6;
    }

    [dictionary setObject:v7 forKeyedSubscript:@"acceptProceedGesture"];
    has = self->_has;
  }

  if ((has & 8) != 0)
  {
    declineDismissGesture = [(ODDSiriSchemaODDHeadGestureProperties *)self declineDismissGesture];
    if (declineDismissGesture == 1)
    {
      v9 = @"ORCHHEADGESTUREMAPPING_SIDE_TO_SIDE";
    }

    else
    {
      v9 = @"ORCHHEADGESTUREMAPPING_UNKNOWN";
    }

    if (declineDismissGesture == 2)
    {
      v10 = @"ORCHHEADGESTUREMAPPING_UP_AND_DOWN";
    }

    else
    {
      v10 = v9;
    }

    [dictionary setObject:v10 forKeyedSubscript:@"declineDismissGesture"];
    has = self->_has;
  }

  if ((has & 2) != 0)
  {
    v11 = [MEMORY[0x1E696AD98] numberWithBool:{-[ODDSiriSchemaODDHeadGestureProperties headGesturesEnabled](self, "headGesturesEnabled")}];
    [dictionary setObject:v11 forKeyedSubscript:@"headGesturesEnabled"];

    has = self->_has;
  }

  if (has)
  {
    v12 = [MEMORY[0x1E696AD98] numberWithBool:{-[ODDSiriSchemaODDHeadGestureProperties headGesturesSupported](self, "headGesturesSupported")}];
    [dictionary setObject:v12 forKeyedSubscript:@"headGesturesSupported"];
  }

  [(SISchemaInstrumentationMessage *)self willProduceDictionaryRepresentation:dictionary];

  return dictionary;
}

- (unint64_t)hash
{
  if (*&self->_has)
  {
    v2 = 2654435761 * self->_headGesturesSupported;
    if ((*&self->_has & 2) != 0)
    {
LABEL_3:
      v3 = 2654435761 * self->_headGesturesEnabled;
      if ((*&self->_has & 4) != 0)
      {
        goto LABEL_4;
      }

LABEL_8:
      v4 = 0;
      if ((*&self->_has & 8) != 0)
      {
        goto LABEL_5;
      }

LABEL_9:
      v5 = 0;
      return v3 ^ v2 ^ v4 ^ v5;
    }
  }

  else
  {
    v2 = 0;
    if ((*&self->_has & 2) != 0)
    {
      goto LABEL_3;
    }
  }

  v3 = 0;
  if ((*&self->_has & 4) == 0)
  {
    goto LABEL_8;
  }

LABEL_4:
  v4 = 2654435761 * self->_acceptProceedGesture;
  if ((*&self->_has & 8) == 0)
  {
    goto LABEL_9;
  }

LABEL_5:
  v5 = 2654435761 * self->_declineDismissGesture;
  return v3 ^ v2 ^ v4 ^ v5;
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  if (![equalCopy isMemberOfClass:objc_opt_class()])
  {
    goto LABEL_18;
  }

  has = self->_has;
  v6 = equalCopy[20];
  if ((*&has & 1) != (v6 & 1))
  {
    goto LABEL_18;
  }

  if (*&has)
  {
    headGesturesSupported = self->_headGesturesSupported;
    if (headGesturesSupported != [equalCopy headGesturesSupported])
    {
      goto LABEL_18;
    }

    has = self->_has;
    v6 = equalCopy[20];
  }

  v8 = (*&has >> 1) & 1;
  if (v8 != ((v6 >> 1) & 1))
  {
    goto LABEL_18;
  }

  if (v8)
  {
    headGesturesEnabled = self->_headGesturesEnabled;
    if (headGesturesEnabled != [equalCopy headGesturesEnabled])
    {
      goto LABEL_18;
    }

    has = self->_has;
    v6 = equalCopy[20];
  }

  v10 = (*&has >> 2) & 1;
  if (v10 != ((v6 >> 2) & 1))
  {
    goto LABEL_18;
  }

  if (v10)
  {
    acceptProceedGesture = self->_acceptProceedGesture;
    if (acceptProceedGesture == [equalCopy acceptProceedGesture])
    {
      has = self->_has;
      v6 = equalCopy[20];
      goto LABEL_14;
    }

LABEL_18:
    v14 = 0;
    goto LABEL_19;
  }

LABEL_14:
  v12 = (*&has >> 3) & 1;
  if (v12 != ((v6 >> 3) & 1))
  {
    goto LABEL_18;
  }

  if (v12)
  {
    declineDismissGesture = self->_declineDismissGesture;
    if (declineDismissGesture != [equalCopy declineDismissGesture])
    {
      goto LABEL_18;
    }
  }

  v14 = 1;
LABEL_19:

  return v14;
}

- (void)writeTo:(id)to
{
  toCopy = to;
  has = self->_has;
  if (has)
  {
    PBDataWriterWriteBOOLField();
    has = self->_has;
    if ((has & 2) == 0)
    {
LABEL_3:
      if ((has & 4) == 0)
      {
        goto LABEL_4;
      }

      goto LABEL_11;
    }
  }

  else if ((*&self->_has & 2) == 0)
  {
    goto LABEL_3;
  }

  PBDataWriterWriteBOOLField();
  has = self->_has;
  if ((has & 4) == 0)
  {
LABEL_4:
    if ((has & 8) == 0)
    {
      goto LABEL_6;
    }

    goto LABEL_5;
  }

LABEL_11:
  PBDataWriterWriteInt32Field();
  if ((*&self->_has & 8) != 0)
  {
LABEL_5:
    PBDataWriterWriteInt32Field();
  }

LABEL_6:
}

- (void)setHasDeclineDismissGesture:(BOOL)gesture
{
  if (gesture)
  {
    v3 = 8;
  }

  else
  {
    v3 = 0;
  }

  *&self->_has = *&self->_has & 0xF7 | v3;
}

- (void)setHasAcceptProceedGesture:(BOOL)gesture
{
  if (gesture)
  {
    v3 = 4;
  }

  else
  {
    v3 = 0;
  }

  *&self->_has = *&self->_has & 0xFB | v3;
}

- (void)setHasHeadGesturesEnabled:(BOOL)enabled
{
  if (enabled)
  {
    v3 = 2;
  }

  else
  {
    v3 = 0;
  }

  *&self->_has = *&self->_has & 0xFD | v3;
}

- (id)suppressMessageUnderConditions
{
  v2 = objc_alloc_init(SISensitiveConditionsSet);
  [(SISensitiveConditionsSet *)v2 addCondition:1];

  return v2;
}

@end