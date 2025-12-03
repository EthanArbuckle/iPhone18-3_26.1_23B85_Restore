@interface WFPBAddAutomationEvent
- (BOOL)isEqual:(id)equal;
- (NSString)key;
- (id)copyWithZone:(_NSZone *)zone;
- (id)description;
- (id)dictionaryRepresentation;
- (unint64_t)hash;
- (void)copyTo:(id)to;
- (void)mergeFrom:(id)from;
- (void)setHasRequiresRuntimeConfirmation:(BOOL)confirmation;
- (void)setHasShowsNotification:(BOOL)notification;
- (void)writeTo:(id)to;
@end

@implementation WFPBAddAutomationEvent

- (void)mergeFrom:(id)from
{
  fromCopy = from;
  v6 = fromCopy;
  if (*(fromCopy + 6))
  {
    [(WFPBAddAutomationEvent *)self setKey:?];
    fromCopy = v6;
  }

  if (*(fromCopy + 9))
  {
    [(WFPBAddAutomationEvent *)self setTriggerType:?];
    fromCopy = v6;
  }

  if (*(fromCopy + 5))
  {
    [(WFPBAddAutomationEvent *)self setIntentType:?];
    fromCopy = v6;
  }

  if (*(fromCopy + 8))
  {
    [(WFPBAddAutomationEvent *)self setSource:?];
    fromCopy = v6;
  }

  if (*(fromCopy + 84))
  {
    self->_actionCount = *(fromCopy + 2);
    *&self->_has |= 1u;
  }

  if (*(fromCopy + 7))
  {
    [(WFPBAddAutomationEvent *)self setShortcutIdentifier:?];
    fromCopy = v6;
  }

  if (*(fromCopy + 3))
  {
    [(WFPBAddAutomationEvent *)self setAppBundleIdentifier:?];
    fromCopy = v6;
  }

  if (*(fromCopy + 2))
  {
    [(WFPBAddAutomationEvent *)self setActivityType:?];
    fromCopy = v6;
  }

  if (*(fromCopy + 4))
  {
    [(WFPBAddAutomationEvent *)self setAutomationSuggestionsTrialIdentifier:?];
    fromCopy = v6;
  }

  v5 = *(fromCopy + 84);
  if ((v5 & 4) != 0)
  {
    self->_showsNotification = *(fromCopy + 81);
    *&self->_has |= 4u;
    v5 = *(fromCopy + 84);
  }

  if ((v5 & 2) != 0)
  {
    self->_requiresRuntimeConfirmation = *(fromCopy + 80);
    *&self->_has |= 2u;
  }
}

- (unint64_t)hash
{
  v14 = [(NSString *)self->_key hash];
  v3 = [(NSString *)self->_triggerType hash];
  v4 = [(NSString *)self->_intentType hash];
  v5 = [(NSString *)self->_source hash];
  if (*&self->_has)
  {
    v6 = 2654435761 * self->_actionCount;
  }

  else
  {
    v6 = 0;
  }

  v7 = [(NSString *)self->_shortcutIdentifier hash];
  v8 = [(NSString *)self->_appBundleIdentifier hash];
  v9 = [(NSString *)self->_activityType hash];
  v10 = [(NSString *)self->_automationSuggestionsTrialIdentifier hash];
  if ((*&self->_has & 4) != 0)
  {
    v11 = 2654435761 * self->_showsNotification;
    if ((*&self->_has & 2) != 0)
    {
      goto LABEL_6;
    }

LABEL_8:
    v12 = 0;
    return v3 ^ v14 ^ v4 ^ v5 ^ v6 ^ v7 ^ v8 ^ v9 ^ v10 ^ v11 ^ v12;
  }

  v11 = 0;
  if ((*&self->_has & 2) == 0)
  {
    goto LABEL_8;
  }

LABEL_6:
  v12 = 2654435761 * self->_requiresRuntimeConfirmation;
  return v3 ^ v14 ^ v4 ^ v5 ^ v6 ^ v7 ^ v8 ^ v9 ^ v10 ^ v11 ^ v12;
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  if (![equalCopy isMemberOfClass:objc_opt_class()])
  {
    goto LABEL_31;
  }

  key = self->_key;
  if (key | *(equalCopy + 6))
  {
    if (![(NSString *)key isEqual:?])
    {
      goto LABEL_31;
    }
  }

  triggerType = self->_triggerType;
  if (triggerType | *(equalCopy + 9))
  {
    if (![(NSString *)triggerType isEqual:?])
    {
      goto LABEL_31;
    }
  }

  intentType = self->_intentType;
  if (intentType | *(equalCopy + 5))
  {
    if (![(NSString *)intentType isEqual:?])
    {
      goto LABEL_31;
    }
  }

  source = self->_source;
  if (source | *(equalCopy + 8))
  {
    if (![(NSString *)source isEqual:?])
    {
      goto LABEL_31;
    }
  }

  v9 = *(equalCopy + 84);
  if (*&self->_has)
  {
    if ((*(equalCopy + 84) & 1) == 0 || self->_actionCount != *(equalCopy + 2))
    {
      goto LABEL_31;
    }
  }

  else if (*(equalCopy + 84))
  {
    goto LABEL_31;
  }

  shortcutIdentifier = self->_shortcutIdentifier;
  if (shortcutIdentifier | *(equalCopy + 7) && ![(NSString *)shortcutIdentifier isEqual:?])
  {
    goto LABEL_31;
  }

  appBundleIdentifier = self->_appBundleIdentifier;
  if (appBundleIdentifier | *(equalCopy + 3))
  {
    if (![(NSString *)appBundleIdentifier isEqual:?])
    {
      goto LABEL_31;
    }
  }

  activityType = self->_activityType;
  if (activityType | *(equalCopy + 2))
  {
    if (![(NSString *)activityType isEqual:?])
    {
      goto LABEL_31;
    }
  }

  automationSuggestionsTrialIdentifier = self->_automationSuggestionsTrialIdentifier;
  if (automationSuggestionsTrialIdentifier | *(equalCopy + 4))
  {
    if (![(NSString *)automationSuggestionsTrialIdentifier isEqual:?])
    {
      goto LABEL_31;
    }
  }

  if ((*&self->_has & 4) != 0)
  {
    if ((*(equalCopy + 84) & 4) == 0)
    {
      goto LABEL_31;
    }

    v16 = *(equalCopy + 81);
    if (self->_showsNotification)
    {
      if ((*(equalCopy + 81) & 1) == 0)
      {
        goto LABEL_31;
      }
    }

    else if (*(equalCopy + 81))
    {
      goto LABEL_31;
    }
  }

  else if ((*(equalCopy + 84) & 4) != 0)
  {
    goto LABEL_31;
  }

  v14 = (*(equalCopy + 84) & 2) == 0;
  if ((*&self->_has & 2) != 0)
  {
    if ((*(equalCopy + 84) & 2) != 0)
    {
      if (self->_requiresRuntimeConfirmation)
      {
        if (*(equalCopy + 80))
        {
          goto LABEL_39;
        }
      }

      else if (!*(equalCopy + 80))
      {
LABEL_39:
        v14 = 1;
        goto LABEL_32;
      }
    }

LABEL_31:
    v14 = 0;
  }

LABEL_32:

  return v14;
}

- (id)copyWithZone:(_NSZone *)zone
{
  v5 = [objc_msgSend(objc_opt_class() allocWithZone:{zone), "init"}];
  v6 = [(NSString *)self->_key copyWithZone:zone];
  v7 = *(v5 + 48);
  *(v5 + 48) = v6;

  v8 = [(NSString *)self->_triggerType copyWithZone:zone];
  v9 = *(v5 + 72);
  *(v5 + 72) = v8;

  v10 = [(NSString *)self->_intentType copyWithZone:zone];
  v11 = *(v5 + 40);
  *(v5 + 40) = v10;

  v12 = [(NSString *)self->_source copyWithZone:zone];
  v13 = *(v5 + 64);
  *(v5 + 64) = v12;

  if (*&self->_has)
  {
    *(v5 + 8) = self->_actionCount;
    *(v5 + 84) |= 1u;
  }

  v14 = [(NSString *)self->_shortcutIdentifier copyWithZone:zone];
  v15 = *(v5 + 56);
  *(v5 + 56) = v14;

  v16 = [(NSString *)self->_appBundleIdentifier copyWithZone:zone];
  v17 = *(v5 + 24);
  *(v5 + 24) = v16;

  v18 = [(NSString *)self->_activityType copyWithZone:zone];
  v19 = *(v5 + 16);
  *(v5 + 16) = v18;

  v20 = [(NSString *)self->_automationSuggestionsTrialIdentifier copyWithZone:zone];
  v21 = *(v5 + 32);
  *(v5 + 32) = v20;

  has = self->_has;
  if ((has & 4) != 0)
  {
    *(v5 + 81) = self->_showsNotification;
    *(v5 + 84) |= 4u;
    has = self->_has;
  }

  if ((has & 2) != 0)
  {
    *(v5 + 80) = self->_requiresRuntimeConfirmation;
    *(v5 + 84) |= 2u;
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

  if (self->_triggerType)
  {
    [v6 setTriggerType:?];
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

  if (*&self->_has)
  {
    *(toCopy + 2) = self->_actionCount;
    *(toCopy + 84) |= 1u;
  }

  if (self->_shortcutIdentifier)
  {
    [v6 setShortcutIdentifier:?];
    toCopy = v6;
  }

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

  if (self->_automationSuggestionsTrialIdentifier)
  {
    [v6 setAutomationSuggestionsTrialIdentifier:?];
    toCopy = v6;
  }

  has = self->_has;
  if ((has & 4) != 0)
  {
    *(toCopy + 81) = self->_showsNotification;
    *(toCopy + 84) |= 4u;
    has = self->_has;
  }

  if ((has & 2) != 0)
  {
    *(toCopy + 80) = self->_requiresRuntimeConfirmation;
    *(toCopy + 84) |= 2u;
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

  if (self->_triggerType)
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

  if (*&self->_has)
  {
    actionCount = self->_actionCount;
    PBDataWriterWriteUint32Field();
    toCopy = v9;
  }

  if (self->_shortcutIdentifier)
  {
    PBDataWriterWriteStringField();
    toCopy = v9;
  }

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

  if (self->_automationSuggestionsTrialIdentifier)
  {
    PBDataWriterWriteStringField();
    toCopy = v9;
  }

  has = self->_has;
  if ((has & 4) != 0)
  {
    showsNotification = self->_showsNotification;
    PBDataWriterWriteBOOLField();
    toCopy = v9;
    has = self->_has;
  }

  if ((has & 2) != 0)
  {
    requiresRuntimeConfirmation = self->_requiresRuntimeConfirmation;
    PBDataWriterWriteBOOLField();
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

  triggerType = self->_triggerType;
  if (triggerType)
  {
    [v4 setObject:triggerType forKey:@"triggerType"];
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

  if (*&self->_has)
  {
    v9 = [MEMORY[0x1E696AD98] numberWithUnsignedInt:self->_actionCount];
    [v4 setObject:v9 forKey:@"actionCount"];
  }

  shortcutIdentifier = self->_shortcutIdentifier;
  if (shortcutIdentifier)
  {
    [v4 setObject:shortcutIdentifier forKey:@"shortcutIdentifier"];
  }

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

  automationSuggestionsTrialIdentifier = self->_automationSuggestionsTrialIdentifier;
  if (automationSuggestionsTrialIdentifier)
  {
    [v4 setObject:automationSuggestionsTrialIdentifier forKey:@"automationSuggestionsTrialIdentifier"];
  }

  has = self->_has;
  if ((has & 4) != 0)
  {
    v15 = [MEMORY[0x1E696AD98] numberWithBool:self->_showsNotification];
    [v4 setObject:v15 forKey:@"showsNotification"];

    has = self->_has;
  }

  if ((has & 2) != 0)
  {
    v16 = [MEMORY[0x1E696AD98] numberWithBool:self->_requiresRuntimeConfirmation];
    [v4 setObject:v16 forKey:@"requiresRuntimeConfirmation"];
  }

  return v4;
}

- (id)description
{
  v3 = MEMORY[0x1E696AEC0];
  v8.receiver = self;
  v8.super_class = WFPBAddAutomationEvent;
  v4 = [(WFPBAddAutomationEvent *)&v8 description];
  dictionaryRepresentation = [(WFPBAddAutomationEvent *)self dictionaryRepresentation];
  v6 = [v3 stringWithFormat:@"%@ %@", v4, dictionaryRepresentation];

  return v6;
}

- (void)setHasRequiresRuntimeConfirmation:(BOOL)confirmation
{
  if (confirmation)
  {
    v3 = 2;
  }

  else
  {
    v3 = 0;
  }

  *&self->_has = *&self->_has & 0xFD | v3;
}

- (void)setHasShowsNotification:(BOOL)notification
{
  if (notification)
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
    return @"AddAutomation";
  }
}

@end