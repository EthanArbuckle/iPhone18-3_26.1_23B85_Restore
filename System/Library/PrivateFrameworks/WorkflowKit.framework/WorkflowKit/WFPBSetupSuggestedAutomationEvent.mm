@interface WFPBSetupSuggestedAutomationEvent
- (BOOL)isEqual:(id)equal;
- (NSString)key;
- (id)copyWithZone:(_NSZone *)zone;
- (id)description;
- (id)dictionaryRepresentation;
- (unint64_t)hash;
- (void)copyTo:(id)to;
- (void)mergeFrom:(id)from;
- (void)setHasCompleted:(BOOL)completed;
- (void)writeTo:(id)to;
@end

@implementation WFPBSetupSuggestedAutomationEvent

- (void)mergeFrom:(id)from
{
  fromCopy = from;
  v6 = fromCopy;
  if (*(fromCopy + 2))
  {
    [(WFPBSetupSuggestedAutomationEvent *)self setKey:?];
    fromCopy = v6;
  }

  if (*(fromCopy + 3))
  {
    [(WFPBSetupSuggestedAutomationEvent *)self setSuggestedAutomationIdentifier:?];
    fromCopy = v6;
  }

  v5 = *(fromCopy + 36);
  if (v5)
  {
    self->_currentStep = *(fromCopy + 2);
    *&self->_has |= 1u;
    v5 = *(fromCopy + 36);
  }

  if ((v5 & 2) != 0)
  {
    self->_completed = *(fromCopy + 32);
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

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  if (![equalCopy isMemberOfClass:objc_opt_class()])
  {
    goto LABEL_13;
  }

  key = self->_key;
  if (key | *(equalCopy + 2))
  {
    if (![(NSString *)key isEqual:?])
    {
      goto LABEL_13;
    }
  }

  suggestedAutomationIdentifier = self->_suggestedAutomationIdentifier;
  if (suggestedAutomationIdentifier | *(equalCopy + 3))
  {
    if (![(NSString *)suggestedAutomationIdentifier isEqual:?])
    {
      goto LABEL_13;
    }
  }

  if (*&self->_has)
  {
    if ((*(equalCopy + 36) & 1) == 0 || self->_currentStep != *(equalCopy + 2))
    {
      goto LABEL_13;
    }
  }

  else if (*(equalCopy + 36))
  {
    goto LABEL_13;
  }

  v7 = (*(equalCopy + 36) & 2) == 0;
  if ((*&self->_has & 2) != 0)
  {
    if ((*(equalCopy + 36) & 2) == 0)
    {
LABEL_13:
      v7 = 0;
      goto LABEL_14;
    }

    if (self->_completed)
    {
      if ((*(equalCopy + 32) & 1) == 0)
      {
        goto LABEL_13;
      }
    }

    else if (*(equalCopy + 32))
    {
      goto LABEL_13;
    }

    v7 = 1;
  }

LABEL_14:

  return v7;
}

- (id)copyWithZone:(_NSZone *)zone
{
  v5 = [objc_msgSend(objc_opt_class() allocWithZone:{zone), "init"}];
  v6 = [(NSString *)self->_key copyWithZone:zone];
  v7 = *(v5 + 16);
  *(v5 + 16) = v6;

  v8 = [(NSString *)self->_suggestedAutomationIdentifier copyWithZone:zone];
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

- (void)copyTo:(id)to
{
  toCopy = to;
  v6 = toCopy;
  if (self->_key)
  {
    [toCopy setKey:?];
    toCopy = v6;
  }

  if (self->_suggestedAutomationIdentifier)
  {
    [v6 setSuggestedAutomationIdentifier:?];
    toCopy = v6;
  }

  has = self->_has;
  if (has)
  {
    *(toCopy + 2) = self->_currentStep;
    *(toCopy + 36) |= 1u;
    has = self->_has;
  }

  if ((has & 2) != 0)
  {
    *(toCopy + 32) = self->_completed;
    *(toCopy + 36) |= 2u;
  }
}

- (void)writeTo:(id)to
{
  toCopy = to;
  v8 = toCopy;
  if (self->_key)
  {
    PBDataWriterWriteStringField();
    toCopy = v8;
  }

  if (self->_suggestedAutomationIdentifier)
  {
    PBDataWriterWriteStringField();
    toCopy = v8;
  }

  has = self->_has;
  if (has)
  {
    currentStep = self->_currentStep;
    PBDataWriterWriteUint32Field();
    toCopy = v8;
    has = self->_has;
  }

  if ((has & 2) != 0)
  {
    completed = self->_completed;
    PBDataWriterWriteBOOLField();
    toCopy = v8;
  }
}

- (id)dictionaryRepresentation
{
  dictionary = [MEMORY[0x1E695DF90] dictionary];
  v4 = dictionary;
  key = self->_key;
  if (key)
  {
    [dictionary setObject:key forKey:@"key"];
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
  dictionaryRepresentation = [(WFPBSetupSuggestedAutomationEvent *)self dictionaryRepresentation];
  v6 = [v3 stringWithFormat:@"%@ %@", v4, dictionaryRepresentation];

  return v6;
}

- (void)setHasCompleted:(BOOL)completed
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