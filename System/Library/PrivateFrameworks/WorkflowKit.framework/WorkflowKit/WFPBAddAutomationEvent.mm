@interface WFPBAddAutomationEvent
- (BOOL)isEqual:(id)a3;
- (NSString)key;
- (id)copyWithZone:(_NSZone *)a3;
- (id)description;
- (id)dictionaryRepresentation;
- (unint64_t)hash;
- (void)copyTo:(id)a3;
- (void)mergeFrom:(id)a3;
- (void)setHasRequiresRuntimeConfirmation:(BOOL)a3;
- (void)setHasShowsNotification:(BOOL)a3;
- (void)writeTo:(id)a3;
@end

@implementation WFPBAddAutomationEvent

- (void)mergeFrom:(id)a3
{
  v4 = a3;
  v6 = v4;
  if (*(v4 + 6))
  {
    [(WFPBAddAutomationEvent *)self setKey:?];
    v4 = v6;
  }

  if (*(v4 + 9))
  {
    [(WFPBAddAutomationEvent *)self setTriggerType:?];
    v4 = v6;
  }

  if (*(v4 + 5))
  {
    [(WFPBAddAutomationEvent *)self setIntentType:?];
    v4 = v6;
  }

  if (*(v4 + 8))
  {
    [(WFPBAddAutomationEvent *)self setSource:?];
    v4 = v6;
  }

  if (*(v4 + 84))
  {
    self->_actionCount = *(v4 + 2);
    *&self->_has |= 1u;
  }

  if (*(v4 + 7))
  {
    [(WFPBAddAutomationEvent *)self setShortcutIdentifier:?];
    v4 = v6;
  }

  if (*(v4 + 3))
  {
    [(WFPBAddAutomationEvent *)self setAppBundleIdentifier:?];
    v4 = v6;
  }

  if (*(v4 + 2))
  {
    [(WFPBAddAutomationEvent *)self setActivityType:?];
    v4 = v6;
  }

  if (*(v4 + 4))
  {
    [(WFPBAddAutomationEvent *)self setAutomationSuggestionsTrialIdentifier:?];
    v4 = v6;
  }

  v5 = *(v4 + 84);
  if ((v5 & 4) != 0)
  {
    self->_showsNotification = *(v4 + 81);
    *&self->_has |= 4u;
    v5 = *(v4 + 84);
  }

  if ((v5 & 2) != 0)
  {
    self->_requiresRuntimeConfirmation = *(v4 + 80);
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

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  if (![v4 isMemberOfClass:objc_opt_class()])
  {
    goto LABEL_31;
  }

  key = self->_key;
  if (key | *(v4 + 6))
  {
    if (![(NSString *)key isEqual:?])
    {
      goto LABEL_31;
    }
  }

  triggerType = self->_triggerType;
  if (triggerType | *(v4 + 9))
  {
    if (![(NSString *)triggerType isEqual:?])
    {
      goto LABEL_31;
    }
  }

  intentType = self->_intentType;
  if (intentType | *(v4 + 5))
  {
    if (![(NSString *)intentType isEqual:?])
    {
      goto LABEL_31;
    }
  }

  source = self->_source;
  if (source | *(v4 + 8))
  {
    if (![(NSString *)source isEqual:?])
    {
      goto LABEL_31;
    }
  }

  v9 = *(v4 + 84);
  if (*&self->_has)
  {
    if ((*(v4 + 84) & 1) == 0 || self->_actionCount != *(v4 + 2))
    {
      goto LABEL_31;
    }
  }

  else if (*(v4 + 84))
  {
    goto LABEL_31;
  }

  shortcutIdentifier = self->_shortcutIdentifier;
  if (shortcutIdentifier | *(v4 + 7) && ![(NSString *)shortcutIdentifier isEqual:?])
  {
    goto LABEL_31;
  }

  appBundleIdentifier = self->_appBundleIdentifier;
  if (appBundleIdentifier | *(v4 + 3))
  {
    if (![(NSString *)appBundleIdentifier isEqual:?])
    {
      goto LABEL_31;
    }
  }

  activityType = self->_activityType;
  if (activityType | *(v4 + 2))
  {
    if (![(NSString *)activityType isEqual:?])
    {
      goto LABEL_31;
    }
  }

  automationSuggestionsTrialIdentifier = self->_automationSuggestionsTrialIdentifier;
  if (automationSuggestionsTrialIdentifier | *(v4 + 4))
  {
    if (![(NSString *)automationSuggestionsTrialIdentifier isEqual:?])
    {
      goto LABEL_31;
    }
  }

  if ((*&self->_has & 4) != 0)
  {
    if ((*(v4 + 84) & 4) == 0)
    {
      goto LABEL_31;
    }

    v16 = *(v4 + 81);
    if (self->_showsNotification)
    {
      if ((*(v4 + 81) & 1) == 0)
      {
        goto LABEL_31;
      }
    }

    else if (*(v4 + 81))
    {
      goto LABEL_31;
    }
  }

  else if ((*(v4 + 84) & 4) != 0)
  {
    goto LABEL_31;
  }

  v14 = (*(v4 + 84) & 2) == 0;
  if ((*&self->_has & 2) != 0)
  {
    if ((*(v4 + 84) & 2) != 0)
    {
      if (self->_requiresRuntimeConfirmation)
      {
        if (*(v4 + 80))
        {
          goto LABEL_39;
        }
      }

      else if (!*(v4 + 80))
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

- (id)copyWithZone:(_NSZone *)a3
{
  v5 = [objc_msgSend(objc_opt_class() allocWithZone:{a3), "init"}];
  v6 = [(NSString *)self->_key copyWithZone:a3];
  v7 = *(v5 + 48);
  *(v5 + 48) = v6;

  v8 = [(NSString *)self->_triggerType copyWithZone:a3];
  v9 = *(v5 + 72);
  *(v5 + 72) = v8;

  v10 = [(NSString *)self->_intentType copyWithZone:a3];
  v11 = *(v5 + 40);
  *(v5 + 40) = v10;

  v12 = [(NSString *)self->_source copyWithZone:a3];
  v13 = *(v5 + 64);
  *(v5 + 64) = v12;

  if (*&self->_has)
  {
    *(v5 + 8) = self->_actionCount;
    *(v5 + 84) |= 1u;
  }

  v14 = [(NSString *)self->_shortcutIdentifier copyWithZone:a3];
  v15 = *(v5 + 56);
  *(v5 + 56) = v14;

  v16 = [(NSString *)self->_appBundleIdentifier copyWithZone:a3];
  v17 = *(v5 + 24);
  *(v5 + 24) = v16;

  v18 = [(NSString *)self->_activityType copyWithZone:a3];
  v19 = *(v5 + 16);
  *(v5 + 16) = v18;

  v20 = [(NSString *)self->_automationSuggestionsTrialIdentifier copyWithZone:a3];
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

- (void)copyTo:(id)a3
{
  v4 = a3;
  v6 = v4;
  if (self->_key)
  {
    [v4 setKey:?];
    v4 = v6;
  }

  if (self->_triggerType)
  {
    [v6 setTriggerType:?];
    v4 = v6;
  }

  if (self->_intentType)
  {
    [v6 setIntentType:?];
    v4 = v6;
  }

  if (self->_source)
  {
    [v6 setSource:?];
    v4 = v6;
  }

  if (*&self->_has)
  {
    *(v4 + 2) = self->_actionCount;
    *(v4 + 84) |= 1u;
  }

  if (self->_shortcutIdentifier)
  {
    [v6 setShortcutIdentifier:?];
    v4 = v6;
  }

  if (self->_appBundleIdentifier)
  {
    [v6 setAppBundleIdentifier:?];
    v4 = v6;
  }

  if (self->_activityType)
  {
    [v6 setActivityType:?];
    v4 = v6;
  }

  if (self->_automationSuggestionsTrialIdentifier)
  {
    [v6 setAutomationSuggestionsTrialIdentifier:?];
    v4 = v6;
  }

  has = self->_has;
  if ((has & 4) != 0)
  {
    *(v4 + 81) = self->_showsNotification;
    *(v4 + 84) |= 4u;
    has = self->_has;
  }

  if ((has & 2) != 0)
  {
    *(v4 + 80) = self->_requiresRuntimeConfirmation;
    *(v4 + 84) |= 2u;
  }
}

- (void)writeTo:(id)a3
{
  v4 = a3;
  v9 = v4;
  if (self->_key)
  {
    PBDataWriterWriteStringField();
    v4 = v9;
  }

  if (self->_triggerType)
  {
    PBDataWriterWriteStringField();
    v4 = v9;
  }

  if (self->_intentType)
  {
    PBDataWriterWriteStringField();
    v4 = v9;
  }

  if (self->_source)
  {
    PBDataWriterWriteStringField();
    v4 = v9;
  }

  if (*&self->_has)
  {
    actionCount = self->_actionCount;
    PBDataWriterWriteUint32Field();
    v4 = v9;
  }

  if (self->_shortcutIdentifier)
  {
    PBDataWriterWriteStringField();
    v4 = v9;
  }

  if (self->_appBundleIdentifier)
  {
    PBDataWriterWriteStringField();
    v4 = v9;
  }

  if (self->_activityType)
  {
    PBDataWriterWriteStringField();
    v4 = v9;
  }

  if (self->_automationSuggestionsTrialIdentifier)
  {
    PBDataWriterWriteStringField();
    v4 = v9;
  }

  has = self->_has;
  if ((has & 4) != 0)
  {
    showsNotification = self->_showsNotification;
    PBDataWriterWriteBOOLField();
    v4 = v9;
    has = self->_has;
  }

  if ((has & 2) != 0)
  {
    requiresRuntimeConfirmation = self->_requiresRuntimeConfirmation;
    PBDataWriterWriteBOOLField();
    v4 = v9;
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
  v5 = [(WFPBAddAutomationEvent *)self dictionaryRepresentation];
  v6 = [v3 stringWithFormat:@"%@ %@", v4, v5];

  return v6;
}

- (void)setHasRequiresRuntimeConfirmation:(BOOL)a3
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

- (void)setHasShowsNotification:(BOOL)a3
{
  if (a3)
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