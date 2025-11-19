@interface WFPBSetupAutomationEvent
- (BOOL)isEqual:(id)a3;
- (NSString)key;
- (id)copyWithZone:(_NSZone *)a3;
- (id)description;
- (id)dictionaryRepresentation;
- (unint64_t)hash;
- (void)copyTo:(id)a3;
- (void)mergeFrom:(id)a3;
- (void)setHasShowsNotification:(BOOL)a3;
- (void)writeTo:(id)a3;
@end

@implementation WFPBSetupAutomationEvent

- (void)mergeFrom:(id)a3
{
  v4 = a3;
  v6 = v4;
  if (*(v4 + 3))
  {
    [(WFPBSetupAutomationEvent *)self setKey:?];
    v4 = v6;
  }

  if (*(v4 + 4))
  {
    [(WFPBSetupAutomationEvent *)self setTriggerType:?];
    v4 = v6;
  }

  v5 = v4[44];
  if (v5)
  {
    self->_requiredRuntimeConfirmation = v4[40];
    *&self->_has |= 1u;
    v5 = v4[44];
  }

  if ((v5 & 2) != 0)
  {
    self->_showsNotification = v4[41];
    *&self->_has |= 2u;
  }

  if (*(v4 + 1))
  {
    [(WFPBSetupAutomationEvent *)self setActionIdentifier:?];
    v4 = v6;
  }

  if (*(v4 + 2))
  {
    [(WFPBSetupAutomationEvent *)self setBundleIdentifier:?];
    v4 = v6;
  }
}

- (unint64_t)hash
{
  v3 = [(NSString *)self->_key hash];
  v4 = [(NSString *)self->_triggerType hash];
  if (*&self->_has)
  {
    v5 = 2654435761 * self->_requiredRuntimeConfirmation;
    if ((*&self->_has & 2) != 0)
    {
      goto LABEL_3;
    }

LABEL_5:
    v6 = 0;
    goto LABEL_6;
  }

  v5 = 0;
  if ((*&self->_has & 2) == 0)
  {
    goto LABEL_5;
  }

LABEL_3:
  v6 = 2654435761 * self->_showsNotification;
LABEL_6:
  v7 = v4 ^ v3 ^ v5 ^ v6 ^ [(NSString *)self->_actionIdentifier hash];
  return v7 ^ [(NSString *)self->_bundleIdentifier hash];
}

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  if (![v4 isMemberOfClass:objc_opt_class()])
  {
    goto LABEL_26;
  }

  key = self->_key;
  if (key | *(v4 + 3))
  {
    if (![(NSString *)key isEqual:?])
    {
      goto LABEL_26;
    }
  }

  triggerType = self->_triggerType;
  if (triggerType | *(v4 + 4))
  {
    if (![(NSString *)triggerType isEqual:?])
    {
      goto LABEL_26;
    }
  }

  v7 = *(v4 + 44);
  if (*&self->_has)
  {
    if ((*(v4 + 44) & 1) == 0)
    {
      goto LABEL_26;
    }

    v11 = *(v4 + 40);
    if (self->_requiredRuntimeConfirmation)
    {
      if ((*(v4 + 40) & 1) == 0)
      {
        goto LABEL_26;
      }
    }

    else if (*(v4 + 40))
    {
      goto LABEL_26;
    }
  }

  else if (*(v4 + 44))
  {
    goto LABEL_26;
  }

  if ((*&self->_has & 2) != 0)
  {
    if ((*(v4 + 44) & 2) != 0)
    {
      v12 = *(v4 + 41);
      if (self->_showsNotification)
      {
        if (*(v4 + 41))
        {
          goto LABEL_10;
        }
      }

      else if ((*(v4 + 41) & 1) == 0)
      {
        goto LABEL_10;
      }
    }

LABEL_26:
    v10 = 0;
    goto LABEL_27;
  }

  if ((*(v4 + 44) & 2) != 0)
  {
    goto LABEL_26;
  }

LABEL_10:
  actionIdentifier = self->_actionIdentifier;
  if (actionIdentifier | *(v4 + 1) && ![(NSString *)actionIdentifier isEqual:?])
  {
    goto LABEL_26;
  }

  bundleIdentifier = self->_bundleIdentifier;
  if (bundleIdentifier | *(v4 + 2))
  {
    v10 = [(NSString *)bundleIdentifier isEqual:?];
  }

  else
  {
    v10 = 1;
  }

LABEL_27:

  return v10;
}

- (id)copyWithZone:(_NSZone *)a3
{
  v5 = [objc_msgSend(objc_opt_class() allocWithZone:{a3), "init"}];
  v6 = [(NSString *)self->_key copyWithZone:a3];
  v7 = *(v5 + 24);
  *(v5 + 24) = v6;

  v8 = [(NSString *)self->_triggerType copyWithZone:a3];
  v9 = *(v5 + 32);
  *(v5 + 32) = v8;

  has = self->_has;
  if (has)
  {
    *(v5 + 40) = self->_requiredRuntimeConfirmation;
    *(v5 + 44) |= 1u;
    has = self->_has;
  }

  if ((has & 2) != 0)
  {
    *(v5 + 41) = self->_showsNotification;
    *(v5 + 44) |= 2u;
  }

  v11 = [(NSString *)self->_actionIdentifier copyWithZone:a3];
  v12 = *(v5 + 8);
  *(v5 + 8) = v11;

  v13 = [(NSString *)self->_bundleIdentifier copyWithZone:a3];
  v14 = *(v5 + 16);
  *(v5 + 16) = v13;

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

  has = self->_has;
  if (has)
  {
    v4[40] = self->_requiredRuntimeConfirmation;
    v4[44] |= 1u;
    has = self->_has;
  }

  if ((has & 2) != 0)
  {
    v4[41] = self->_showsNotification;
    v4[44] |= 2u;
  }

  if (self->_actionIdentifier)
  {
    [v6 setActionIdentifier:?];
    v4 = v6;
  }

  if (self->_bundleIdentifier)
  {
    [v6 setBundleIdentifier:?];
    v4 = v6;
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

  if (self->_triggerType)
  {
    PBDataWriterWriteStringField();
    v4 = v8;
  }

  has = self->_has;
  if (has)
  {
    requiredRuntimeConfirmation = self->_requiredRuntimeConfirmation;
    PBDataWriterWriteBOOLField();
    v4 = v8;
    has = self->_has;
  }

  if ((has & 2) != 0)
  {
    showsNotification = self->_showsNotification;
    PBDataWriterWriteBOOLField();
    v4 = v8;
  }

  if (self->_actionIdentifier)
  {
    PBDataWriterWriteStringField();
    v4 = v8;
  }

  if (self->_bundleIdentifier)
  {
    PBDataWriterWriteStringField();
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

  triggerType = self->_triggerType;
  if (triggerType)
  {
    [v4 setObject:triggerType forKey:@"triggerType"];
  }

  has = self->_has;
  if (has)
  {
    v8 = [MEMORY[0x1E696AD98] numberWithBool:self->_requiredRuntimeConfirmation];
    [v4 setObject:v8 forKey:@"requiredRuntimeConfirmation"];

    has = self->_has;
  }

  if ((has & 2) != 0)
  {
    v9 = [MEMORY[0x1E696AD98] numberWithBool:self->_showsNotification];
    [v4 setObject:v9 forKey:@"showsNotification"];
  }

  actionIdentifier = self->_actionIdentifier;
  if (actionIdentifier)
  {
    [v4 setObject:actionIdentifier forKey:@"actionIdentifier"];
  }

  bundleIdentifier = self->_bundleIdentifier;
  if (bundleIdentifier)
  {
    [v4 setObject:bundleIdentifier forKey:@"bundleIdentifier"];
  }

  return v4;
}

- (id)description
{
  v3 = MEMORY[0x1E696AEC0];
  v8.receiver = self;
  v8.super_class = WFPBSetupAutomationEvent;
  v4 = [(WFPBSetupAutomationEvent *)&v8 description];
  v5 = [(WFPBSetupAutomationEvent *)self dictionaryRepresentation];
  v6 = [v3 stringWithFormat:@"%@ %@", v4, v5];

  return v6;
}

- (void)setHasShowsNotification:(BOOL)a3
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
    return @"SetupAutomationEvent";
  }
}

@end