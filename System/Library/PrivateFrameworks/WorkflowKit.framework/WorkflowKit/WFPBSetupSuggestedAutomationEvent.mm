@interface WFPBSetupSuggestedAutomationEvent
- (BOOL)isEqual:(id)a3;
- (NSString)key;
- (id)copyWithZone:(_NSZone *)a3;
- (id)description;
- (id)dictionaryRepresentation;
- (unint64_t)hash;
- (void)copyTo:(id)a3;
- (void)mergeFrom:(id)a3;
- (void)setHasCompleted:(BOOL)a3;
- (void)writeTo:(id)a3;
@end

@implementation WFPBSetupSuggestedAutomationEvent

- (void)mergeFrom:(id)a3
{
  v4 = a3;
  v6 = v4;
  if (*(v4 + 2))
  {
    [(WFPBSetupSuggestedAutomationEvent *)self setKey:?];
    v4 = v6;
  }

  if (*(v4 + 3))
  {
    [(WFPBSetupSuggestedAutomationEvent *)self setSuggestedAutomationIdentifier:?];
    v4 = v6;
  }

  v5 = *(v4 + 36);
  if (v5)
  {
    self->_currentStep = *(v4 + 2);
    *&self->_has |= 1u;
    v5 = *(v4 + 36);
  }

  if ((v5 & 2) != 0)
  {
    self->_completed = *(v4 + 32);
    *&self->_has |= 2u;
  }
}

- (unint64_t)hash
{
  v3 = [(NSString *)self->_key hash];
  v4 = [(NSString *)self->_suggestedAutomationIdentifier hash];
  if (*&self->_has)
  {
    v5 = 2654435761 * self->_currentStep;
    if ((*&self->_has & 2) != 0)
    {
      goto LABEL_3;
    }

LABEL_5:
    v6 = 0;
    return v4 ^ v3 ^ v5 ^ v6;
  }

  v5 = 0;
  if ((*&self->_has & 2) == 0)
  {
    goto LABEL_5;
  }

LABEL_3:
  v6 = 2654435761 * self->_completed;
  return v4 ^ v3 ^ v5 ^ v6;
}

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  if (![v4 isMemberOfClass:objc_opt_class()])
  {
    goto LABEL_13;
  }

  key = self->_key;
  if (key | *(v4 + 2))
  {
    if (![(NSString *)key isEqual:?])
    {
      goto LABEL_13;
    }
  }

  suggestedAutomationIdentifier = self->_suggestedAutomationIdentifier;
  if (suggestedAutomationIdentifier | *(v4 + 3))
  {
    if (![(NSString *)suggestedAutomationIdentifier isEqual:?])
    {
      goto LABEL_13;
    }
  }

  if (*&self->_has)
  {
    if ((*(v4 + 36) & 1) == 0 || self->_currentStep != *(v4 + 2))
    {
      goto LABEL_13;
    }
  }

  else if (*(v4 + 36))
  {
    goto LABEL_13;
  }

  v7 = (*(v4 + 36) & 2) == 0;
  if ((*&self->_has & 2) != 0)
  {
    if ((*(v4 + 36) & 2) == 0)
    {
LABEL_13:
      v7 = 0;
      goto LABEL_14;
    }

    if (self->_completed)
    {
      if ((*(v4 + 32) & 1) == 0)
      {
        goto LABEL_13;
      }
    }

    else if (*(v4 + 32))
    {
      goto LABEL_13;
    }

    v7 = 1;
  }

LABEL_14:

  return v7;
}

- (id)copyWithZone:(_NSZone *)a3
{
  v5 = [objc_msgSend(objc_opt_class() allocWithZone:{a3), "init"}];
  v6 = [(NSString *)self->_key copyWithZone:a3];
  v7 = *(v5 + 16);
  *(v5 + 16) = v6;

  v8 = [(NSString *)self->_suggestedAutomationIdentifier copyWithZone:a3];
  v9 = *(v5 + 24);
  *(v5 + 24) = v8;

  has = self->_has;
  if (has)
  {
    *(v5 + 8) = self->_currentStep;
    *(v5 + 36) |= 1u;
    has = self->_has;
  }

  if ((has & 2) != 0)
  {
    *(v5 + 32) = self->_completed;
    *(v5 + 36) |= 2u;
  }

  return v5;
}

- (void)copyTo:(id)a3
{
  v4 = a3;
  v6 = v4;
  if (self->_key)
  {
    [v4 setKey:?];
    v4 = v6;
  }

  if (self->_suggestedAutomationIdentifier)
  {
    [v6 setSuggestedAutomationIdentifier:?];
    v4 = v6;
  }

  has = self->_has;
  if (has)
  {
    *(v4 + 2) = self->_currentStep;
    *(v4 + 36) |= 1u;
    has = self->_has;
  }

  if ((has & 2) != 0)
  {
    *(v4 + 32) = self->_completed;
    *(v4 + 36) |= 2u;
  }
}

- (void)writeTo:(id)a3
{
  v4 = a3;
  v8 = v4;
  if (self->_key)
  {
    PBDataWriterWriteStringField();
    v4 = v8;
  }

  if (self->_suggestedAutomationIdentifier)
  {
    PBDataWriterWriteStringField();
    v4 = v8;
  }

  has = self->_has;
  if (has)
  {
    currentStep = self->_currentStep;
    PBDataWriterWriteUint32Field();
    v4 = v8;
    has = self->_has;
  }

  if ((has & 2) != 0)
  {
    completed = self->_completed;
    PBDataWriterWriteBOOLField();
    v4 = v8;
  }
}

- (id)dictionaryRepresentation
{
  v3 = [MEMORY[0x1E695DF90] dictionary];
  v4 = v3;
  key = self->_key;
  if (key)
  {
    [v3 setObject:key forKey:@"key"];
  }

  suggestedAutomationIdentifier = self->_suggestedAutomationIdentifier;
  if (suggestedAutomationIdentifier)
  {
    [v4 setObject:suggestedAutomationIdentifier forKey:@"suggestedAutomationIdentifier"];
  }

  has = self->_has;
  if (has)
  {
    v8 = [MEMORY[0x1E696AD98] numberWithUnsignedInt:self->_currentStep];
    [v4 setObject:v8 forKey:@"currentStep"];

    has = self->_has;
  }

  if ((has & 2) != 0)
  {
    v9 = [MEMORY[0x1E696AD98] numberWithBool:self->_completed];
    [v4 setObject:v9 forKey:@"completed"];
  }

  return v4;
}

- (id)description
{
  v3 = MEMORY[0x1E696AEC0];
  v8.receiver = self;
  v8.super_class = WFPBSetupSuggestedAutomationEvent;
  v4 = [(WFPBSetupSuggestedAutomationEvent *)&v8 description];
  v5 = [(WFPBSetupSuggestedAutomationEvent *)self dictionaryRepresentation];
  v6 = [v3 stringWithFormat:@"%@ %@", v4, v5];

  return v6;
}

- (void)setHasCompleted:(BOOL)a3
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

- (NSString)key
{
  if (self->_key)
  {
    return self->_key;
  }

  else
  {
    return @"SetupSuggestedAutomation";
  }
}

@end