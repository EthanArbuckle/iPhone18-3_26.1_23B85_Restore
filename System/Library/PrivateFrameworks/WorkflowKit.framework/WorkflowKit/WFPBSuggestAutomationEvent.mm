@interface WFPBSuggestAutomationEvent
- (BOOL)isEqual:(id)equal;
- (NSString)key;
- (id)copyWithZone:(_NSZone *)zone;
- (id)description;
- (id)dictionaryRepresentation;
- (unint64_t)hash;
- (void)copyTo:(id)to;
- (void)mergeFrom:(id)from;
- (void)setHasInteracted:(BOOL)interacted;
- (void)writeTo:(id)to;
@end

@implementation WFPBSuggestAutomationEvent

- (void)mergeFrom:(id)from
{
  fromCopy = from;
  v6 = fromCopy;
  if (*(fromCopy + 1))
  {
    [(WFPBSuggestAutomationEvent *)self setKey:?];
    fromCopy = v6;
  }

  if (*(fromCopy + 3))
  {
    [(WFPBSuggestAutomationEvent *)self setSuggestedAutomationIdentifier:?];
    fromCopy = v6;
  }

  v5 = fromCopy[36];
  if ((v5 & 2) != 0)
  {
    self->_interacted = fromCopy[33];
    *&self->_has |= 2u;
    v5 = fromCopy[36];
  }

  if (v5)
  {
    self->_completed = fromCopy[32];
    *&self->_has |= 1u;
  }

  if (*(fromCopy + 2))
  {
    [(WFPBSuggestAutomationEvent *)self setSource:?];
    fromCopy = v6;
  }
}

- (unint64_t)hash
{
  v3 = [(NSString *)self->_key hash];
  v4 = [(NSString *)self->_suggestedAutomationIdentifier hash];
  if ((*&self->_has & 2) != 0)
  {
    v5 = 2654435761 * self->_interacted;
    if (*&self->_has)
    {
      goto LABEL_3;
    }

LABEL_5:
    v6 = 0;
    return v4 ^ v3 ^ v5 ^ v6 ^ [(NSString *)self->_source hash];
  }

  v5 = 0;
  if ((*&self->_has & 1) == 0)
  {
    goto LABEL_5;
  }

LABEL_3:
  v6 = 2654435761 * self->_completed;
  return v4 ^ v3 ^ v5 ^ v6 ^ [(NSString *)self->_source hash];
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  if (![equalCopy isMemberOfClass:objc_opt_class()])
  {
    goto LABEL_21;
  }

  key = self->_key;
  if (key | *(equalCopy + 1))
  {
    if (![(NSString *)key isEqual:?])
    {
      goto LABEL_21;
    }
  }

  suggestedAutomationIdentifier = self->_suggestedAutomationIdentifier;
  if (suggestedAutomationIdentifier | *(equalCopy + 3))
  {
    if (![(NSString *)suggestedAutomationIdentifier isEqual:?])
    {
      goto LABEL_21;
    }
  }

  v7 = *(equalCopy + 36);
  if ((*&self->_has & 2) != 0)
  {
    if ((*(equalCopy + 36) & 2) == 0)
    {
      goto LABEL_21;
    }

    v10 = *(equalCopy + 33);
    if (self->_interacted)
    {
      if ((*(equalCopy + 33) & 1) == 0)
      {
        goto LABEL_21;
      }
    }

    else if (*(equalCopy + 33))
    {
      goto LABEL_21;
    }
  }

  else if ((*(equalCopy + 36) & 2) != 0)
  {
    goto LABEL_21;
  }

  if ((*&self->_has & 1) == 0)
  {
    goto LABEL_9;
  }

  if ((*(equalCopy + 36) & 1) == 0)
  {
    goto LABEL_21;
  }

  v7 = *(equalCopy + 32);
  if (!self->_completed)
  {
LABEL_9:
    if ((v7 & 1) == 0)
    {
      goto LABEL_10;
    }

LABEL_21:
    v9 = 0;
    goto LABEL_22;
  }

  if ((*(equalCopy + 32) & 1) == 0)
  {
    goto LABEL_21;
  }

LABEL_10:
  source = self->_source;
  if (source | *(equalCopy + 2))
  {
    v9 = [(NSString *)source isEqual:?];
  }

  else
  {
    v9 = 1;
  }

LABEL_22:

  return v9;
}

- (id)copyWithZone:(_NSZone *)zone
{
  v5 = [objc_msgSend(objc_opt_class() allocWithZone:{zone), "init"}];
  v6 = [(NSString *)self->_key copyWithZone:zone];
  v7 = *(v5 + 8);
  *(v5 + 8) = v6;

  v8 = [(NSString *)self->_suggestedAutomationIdentifier copyWithZone:zone];
  v9 = *(v5 + 24);
  *(v5 + 24) = v8;

  has = self->_has;
  if ((has & 2) != 0)
  {
    *(v5 + 33) = self->_interacted;
    *(v5 + 36) |= 2u;
    has = self->_has;
  }

  if (has)
  {
    *(v5 + 32) = self->_completed;
    *(v5 + 36) |= 1u;
  }

  v11 = [(NSString *)self->_source copyWithZone:zone];
  v12 = *(v5 + 16);
  *(v5 + 16) = v11;

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
  if ((has & 2) != 0)
  {
    toCopy[33] = self->_interacted;
    toCopy[36] |= 2u;
    has = self->_has;
  }

  if (has)
  {
    toCopy[32] = self->_completed;
    toCopy[36] |= 1u;
  }

  if (self->_source)
  {
    [v6 setSource:?];
    toCopy = v6;
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
  if ((has & 2) != 0)
  {
    interacted = self->_interacted;
    PBDataWriterWriteBOOLField();
    toCopy = v8;
    has = self->_has;
  }

  if (has)
  {
    completed = self->_completed;
    PBDataWriterWriteBOOLField();
    toCopy = v8;
  }

  if (self->_source)
  {
    PBDataWriterWriteStringField();
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
  if ((has & 2) != 0)
  {
    v8 = [MEMORY[0x1E696AD98] numberWithBool:self->_interacted];
    [v4 setObject:v8 forKey:@"interacted"];

    has = self->_has;
  }

  if (has)
  {
    v9 = [MEMORY[0x1E696AD98] numberWithBool:self->_completed];
    [v4 setObject:v9 forKey:@"completed"];
  }

  source = self->_source;
  if (source)
  {
    [v4 setObject:source forKey:@"source"];
  }

  return v4;
}

- (id)description
{
  v3 = MEMORY[0x1E696AEC0];
  v8.receiver = self;
  v8.super_class = WFPBSuggestAutomationEvent;
  v4 = [(WFPBSuggestAutomationEvent *)&v8 description];
  dictionaryRepresentation = [(WFPBSuggestAutomationEvent *)self dictionaryRepresentation];
  v6 = [v3 stringWithFormat:@"%@ %@", v4, dictionaryRepresentation];

  return v6;
}

- (void)setHasInteracted:(BOOL)interacted
{
  if (interacted)
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
    return @"SuggestAutomation";
  }
}

@end