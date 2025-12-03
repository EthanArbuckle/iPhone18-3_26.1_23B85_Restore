@interface WFPBPersonalAutomationSuggestionEvent
- (BOOL)isEqual:(id)equal;
- (NSString)key;
- (id)copyWithZone:(_NSZone *)zone;
- (id)description;
- (id)dictionaryRepresentation;
- (unint64_t)hash;
- (void)copyTo:(id)to;
- (void)mergeFrom:(id)from;
- (void)setHasInteracted:(BOOL)interacted;
- (void)setHasVisible:(BOOL)visible;
- (void)writeTo:(id)to;
@end

@implementation WFPBPersonalAutomationSuggestionEvent

- (void)mergeFrom:(id)from
{
  fromCopy = from;
  v6 = fromCopy;
  if (*(fromCopy + 4))
  {
    [(WFPBPersonalAutomationSuggestionEvent *)self setKey:?];
    fromCopy = v6;
  }

  if (*(fromCopy + 3))
  {
    [(WFPBPersonalAutomationSuggestionEvent *)self setIntentType:?];
    fromCopy = v6;
  }

  if (*(fromCopy + 5))
  {
    [(WFPBPersonalAutomationSuggestionEvent *)self setSource:?];
    fromCopy = v6;
  }

  v5 = fromCopy[60];
  if ((v5 & 4) != 0)
  {
    self->_visible = fromCopy[58];
    *&self->_has |= 4u;
    v5 = fromCopy[60];
    if ((v5 & 2) == 0)
    {
LABEL_9:
      if (!v5)
      {
        goto LABEL_11;
      }

      goto LABEL_10;
    }
  }

  else if ((fromCopy[60] & 2) == 0)
  {
    goto LABEL_9;
  }

  self->_interacted = fromCopy[57];
  *&self->_has |= 2u;
  if (fromCopy[60])
  {
LABEL_10:
    self->_completed = fromCopy[56];
    *&self->_has |= 1u;
  }

LABEL_11:
  if (*(fromCopy + 2))
  {
    [(WFPBPersonalAutomationSuggestionEvent *)self setAppBundleIdentifier:?];
    fromCopy = v6;
  }

  if (*(fromCopy + 1))
  {
    [(WFPBPersonalAutomationSuggestionEvent *)self setActivityType:?];
    fromCopy = v6;
  }

  if (*(fromCopy + 6))
  {
    [(WFPBPersonalAutomationSuggestionEvent *)self setTriggerType:?];
    fromCopy = v6;
  }
}

- (unint64_t)hash
{
  v3 = [(NSString *)self->_key hash];
  v4 = [(NSString *)self->_intentType hash];
  v5 = [(NSString *)self->_source hash];
  if ((*&self->_has & 4) == 0)
  {
    v6 = 0;
    if ((*&self->_has & 2) != 0)
    {
      goto LABEL_3;
    }

LABEL_6:
    v7 = 0;
    if (*&self->_has)
    {
      goto LABEL_4;
    }

LABEL_7:
    v8 = 0;
    goto LABEL_8;
  }

  v6 = 2654435761 * self->_visible;
  if ((*&self->_has & 2) == 0)
  {
    goto LABEL_6;
  }

LABEL_3:
  v7 = 2654435761 * self->_interacted;
  if ((*&self->_has & 1) == 0)
  {
    goto LABEL_7;
  }

LABEL_4:
  v8 = 2654435761 * self->_completed;
LABEL_8:
  v9 = v4 ^ v3 ^ v5 ^ v6;
  v10 = v7 ^ v8 ^ [(NSString *)self->_appBundleIdentifier hash];
  v11 = v9 ^ v10 ^ [(NSString *)self->_activityType hash];
  return v11 ^ [(NSString *)self->_triggerType hash];
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  if (![equalCopy isMemberOfClass:objc_opt_class()])
  {
    goto LABEL_35;
  }

  key = self->_key;
  if (key | *(equalCopy + 4))
  {
    if (![(NSString *)key isEqual:?])
    {
      goto LABEL_35;
    }
  }

  intentType = self->_intentType;
  if (intentType | *(equalCopy + 3))
  {
    if (![(NSString *)intentType isEqual:?])
    {
      goto LABEL_35;
    }
  }

  source = self->_source;
  if (source | *(equalCopy + 5))
  {
    if (![(NSString *)source isEqual:?])
    {
      goto LABEL_35;
    }
  }

  v8 = *(equalCopy + 60);
  if ((*&self->_has & 4) != 0)
  {
    if ((*(equalCopy + 60) & 4) == 0)
    {
      goto LABEL_35;
    }

    v13 = *(equalCopy + 58);
    if (self->_visible)
    {
      if ((*(equalCopy + 58) & 1) == 0)
      {
        goto LABEL_35;
      }
    }

    else if (*(equalCopy + 58))
    {
      goto LABEL_35;
    }
  }

  else if ((*(equalCopy + 60) & 4) != 0)
  {
    goto LABEL_35;
  }

  if ((*&self->_has & 2) != 0)
  {
    if ((*(equalCopy + 60) & 2) == 0)
    {
      goto LABEL_35;
    }

    v14 = *(equalCopy + 57);
    if (self->_interacted)
    {
      if ((*(equalCopy + 57) & 1) == 0)
      {
        goto LABEL_35;
      }
    }

    else if (*(equalCopy + 57))
    {
      goto LABEL_35;
    }
  }

  else if ((*(equalCopy + 60) & 2) != 0)
  {
    goto LABEL_35;
  }

  if ((*&self->_has & 1) == 0)
  {
    goto LABEL_13;
  }

  if ((*(equalCopy + 60) & 1) == 0)
  {
    goto LABEL_35;
  }

  v8 = *(equalCopy + 56);
  if (!self->_completed)
  {
LABEL_13:
    if ((v8 & 1) == 0)
    {
      goto LABEL_14;
    }

LABEL_35:
    v12 = 0;
    goto LABEL_36;
  }

  if ((*(equalCopy + 56) & 1) == 0)
  {
    goto LABEL_35;
  }

LABEL_14:
  appBundleIdentifier = self->_appBundleIdentifier;
  if (appBundleIdentifier | *(equalCopy + 2) && ![(NSString *)appBundleIdentifier isEqual:?])
  {
    goto LABEL_35;
  }

  activityType = self->_activityType;
  if (activityType | *(equalCopy + 1))
  {
    if (![(NSString *)activityType isEqual:?])
    {
      goto LABEL_35;
    }
  }

  triggerType = self->_triggerType;
  if (triggerType | *(equalCopy + 6))
  {
    v12 = [(NSString *)triggerType isEqual:?];
  }

  else
  {
    v12 = 1;
  }

LABEL_36:

  return v12;
}

- (id)copyWithZone:(_NSZone *)zone
{
  v5 = [objc_msgSend(objc_opt_class() allocWithZone:{zone), "init"}];
  v6 = [(NSString *)self->_key copyWithZone:zone];
  v7 = *(v5 + 32);
  *(v5 + 32) = v6;

  v8 = [(NSString *)self->_intentType copyWithZone:zone];
  v9 = *(v5 + 24);
  *(v5 + 24) = v8;

  v10 = [(NSString *)self->_source copyWithZone:zone];
  v11 = *(v5 + 40);
  *(v5 + 40) = v10;

  has = self->_has;
  if ((has & 4) == 0)
  {
    if ((*&self->_has & 2) == 0)
    {
      goto LABEL_3;
    }

LABEL_7:
    *(v5 + 57) = self->_interacted;
    *(v5 + 60) |= 2u;
    if ((*&self->_has & 1) == 0)
    {
      goto LABEL_5;
    }

    goto LABEL_4;
  }

  *(v5 + 58) = self->_visible;
  *(v5 + 60) |= 4u;
  has = self->_has;
  if ((has & 2) != 0)
  {
    goto LABEL_7;
  }

LABEL_3:
  if (has)
  {
LABEL_4:
    *(v5 + 56) = self->_completed;
    *(v5 + 60) |= 1u;
  }

LABEL_5:
  v13 = [(NSString *)self->_appBundleIdentifier copyWithZone:zone];
  v14 = *(v5 + 16);
  *(v5 + 16) = v13;

  v15 = [(NSString *)self->_activityType copyWithZone:zone];
  v16 = *(v5 + 8);
  *(v5 + 8) = v15;

  v17 = [(NSString *)self->_triggerType copyWithZone:zone];
  v18 = *(v5 + 48);
  *(v5 + 48) = v17;

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

  if (self->_intentType)
  {
    [v6 setIntentType:?];
    toCopy = v6;
  }

  if (self->_source)
  {
    [v6 setSource:?];
    toCopy = v6;
  }

  has = self->_has;
  if ((has & 4) != 0)
  {
    toCopy[58] = self->_visible;
    toCopy[60] |= 4u;
    has = self->_has;
    if ((has & 2) == 0)
    {
LABEL_9:
      if ((has & 1) == 0)
      {
        goto LABEL_11;
      }

      goto LABEL_10;
    }
  }

  else if ((*&self->_has & 2) == 0)
  {
    goto LABEL_9;
  }

  toCopy[57] = self->_interacted;
  toCopy[60] |= 2u;
  if (*&self->_has)
  {
LABEL_10:
    toCopy[56] = self->_completed;
    toCopy[60] |= 1u;
  }

LABEL_11:
  if (self->_appBundleIdentifier)
  {
    [v6 setAppBundleIdentifier:?];
    toCopy = v6;
  }

  if (self->_activityType)
  {
    [v6 setActivityType:?];
    toCopy = v6;
  }

  if (self->_triggerType)
  {
    [v6 setTriggerType:?];
    toCopy = v6;
  }
}

- (void)writeTo:(id)to
{
  toCopy = to;
  v9 = toCopy;
  if (self->_key)
  {
    PBDataWriterWriteStringField();
    toCopy = v9;
  }

  if (self->_intentType)
  {
    PBDataWriterWriteStringField();
    toCopy = v9;
  }

  if (self->_source)
  {
    PBDataWriterWriteStringField();
    toCopy = v9;
  }

  has = self->_has;
  if ((has & 4) != 0)
  {
    visible = self->_visible;
    PBDataWriterWriteBOOLField();
    toCopy = v9;
    has = self->_has;
    if ((has & 2) == 0)
    {
LABEL_9:
      if ((has & 1) == 0)
      {
        goto LABEL_11;
      }

      goto LABEL_10;
    }
  }

  else if ((*&self->_has & 2) == 0)
  {
    goto LABEL_9;
  }

  interacted = self->_interacted;
  PBDataWriterWriteBOOLField();
  toCopy = v9;
  if (*&self->_has)
  {
LABEL_10:
    completed = self->_completed;
    PBDataWriterWriteBOOLField();
    toCopy = v9;
  }

LABEL_11:
  if (self->_appBundleIdentifier)
  {
    PBDataWriterWriteStringField();
    toCopy = v9;
  }

  if (self->_activityType)
  {
    PBDataWriterWriteStringField();
    toCopy = v9;
  }

  if (self->_triggerType)
  {
    PBDataWriterWriteStringField();
    toCopy = v9;
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

  intentType = self->_intentType;
  if (intentType)
  {
    [v4 setObject:intentType forKey:@"intentType"];
  }

  source = self->_source;
  if (source)
  {
    [v4 setObject:source forKey:@"source"];
  }

  has = self->_has;
  if ((has & 4) != 0)
  {
    v14 = [MEMORY[0x1E696AD98] numberWithBool:self->_visible];
    [v4 setObject:v14 forKey:@"visible"];

    has = self->_has;
    if ((has & 2) == 0)
    {
LABEL_9:
      if ((has & 1) == 0)
      {
        goto LABEL_11;
      }

      goto LABEL_10;
    }
  }

  else if ((*&self->_has & 2) == 0)
  {
    goto LABEL_9;
  }

  v15 = [MEMORY[0x1E696AD98] numberWithBool:self->_interacted];
  [v4 setObject:v15 forKey:@"interacted"];

  if (*&self->_has)
  {
LABEL_10:
    v9 = [MEMORY[0x1E696AD98] numberWithBool:self->_completed];
    [v4 setObject:v9 forKey:@"completed"];
  }

LABEL_11:
  appBundleIdentifier = self->_appBundleIdentifier;
  if (appBundleIdentifier)
  {
    [v4 setObject:appBundleIdentifier forKey:@"appBundleIdentifier"];
  }

  activityType = self->_activityType;
  if (activityType)
  {
    [v4 setObject:activityType forKey:@"activityType"];
  }

  triggerType = self->_triggerType;
  if (triggerType)
  {
    [v4 setObject:triggerType forKey:@"triggerType"];
  }

  return v4;
}

- (id)description
{
  v3 = MEMORY[0x1E696AEC0];
  v8.receiver = self;
  v8.super_class = WFPBPersonalAutomationSuggestionEvent;
  v4 = [(WFPBPersonalAutomationSuggestionEvent *)&v8 description];
  dictionaryRepresentation = [(WFPBPersonalAutomationSuggestionEvent *)self dictionaryRepresentation];
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

- (void)setHasVisible:(BOOL)visible
{
  if (visible)
  {
    v3 = 4;
  }

  else
  {
    v3 = 0;
  }

  *&self->_has = *&self->_has & 0xFB | v3;
}

- (NSString)key
{
  if (self->_key)
  {
    return self->_key;
  }

  else
  {
    return @"PersonalAutomationSuggestion";
  }
}

@end