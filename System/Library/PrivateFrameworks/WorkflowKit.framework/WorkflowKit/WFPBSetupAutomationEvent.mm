@interface WFPBSetupAutomationEvent
- (BOOL)isEqual:(id)equal;
- (NSString)key;
- (id)copyWithZone:(_NSZone *)zone;
- (id)description;
- (id)dictionaryRepresentation;
- (unint64_t)hash;
- (void)copyTo:(id)to;
- (void)mergeFrom:(id)from;
- (void)setHasShowsNotification:(BOOL)notification;
- (void)writeTo:(id)to;
@end

@implementation WFPBSetupAutomationEvent

- (void)mergeFrom:(id)from
{
  fromCopy = from;
  v6 = fromCopy;
  if (*(fromCopy + 3))
  {
    [(WFPBSetupAutomationEvent *)self setKey:?];
    fromCopy = v6;
  }

  if (*(fromCopy + 4))
  {
    [(WFPBSetupAutomationEvent *)self setTriggerType:?];
    fromCopy = v6;
  }

  v5 = fromCopy[44];
  if (v5)
  {
    self->_requiredRuntimeConfirmation = fromCopy[40];
    *&self->_has |= 1u;
    v5 = fromCopy[44];
  }

  if ((v5 & 2) != 0)
  {
    self->_showsNotification = fromCopy[41];
    *&self->_has |= 2u;
  }

  if (*(fromCopy + 1))
  {
    [(WFPBSetupAutomationEvent *)self setActionIdentifier:?];
    fromCopy = v6;
  }

  if (*(fromCopy + 2))
  {
    [(WFPBSetupAutomationEvent *)self setBundleIdentifier:?];
    fromCopy = v6;
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

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  if (![equalCopy isMemberOfClass:objc_opt_class()])
  {
    goto LABEL_26;
  }

  key = self->_key;
  if (key | *(equalCopy + 3))
  {
    if (![(NSString *)key isEqual:?])
    {
      goto LABEL_26;
    }
  }

  triggerType = self->_triggerType;
  if (triggerType | *(equalCopy + 4))
  {
    if (![(NSString *)triggerType isEqual:?])
    {
      goto LABEL_26;
    }
  }

  v7 = *(equalCopy + 44);
  if (*&self->_has)
  {
    if ((*(equalCopy + 44) & 1) == 0)
    {
      goto LABEL_26;
    }

    v11 = *(equalCopy + 40);
    if (self->_requiredRuntimeConfirmation)
    {
      if ((*(equalCopy + 40) & 1) == 0)
      {
        goto LABEL_26;
      }
    }

    else if (*(equalCopy + 40))
    {
      goto LABEL_26;
    }
  }

  else if (*(equalCopy + 44))
  {
    goto LABEL_26;
  }

  if ((*&self->_has & 2) != 0)
  {
    if ((*(equalCopy + 44) & 2) != 0)
    {
      v12 = *(equalCopy + 41);
      if (self->_showsNotification)
      {
        if (*(equalCopy + 41))
        {
          goto LABEL_10;
        }
      }

      else if ((*(equalCopy + 41) & 1) == 0)
      {
        goto LABEL_10;
      }
    }

LABEL_26:
    v10 = 0;
    goto LABEL_27;
  }

  if ((*(equalCopy + 44) & 2) != 0)
  {
    goto LABEL_26;
  }

LABEL_10:
  actionIdentifier = self->_actionIdentifier;
  if (actionIdentifier | *(equalCopy + 1) && ![(NSString *)actionIdentifier isEqual:?])
  {
    goto LABEL_26;
  }

  bundleIdentifier = self->_bundleIdentifier;
  if (bundleIdentifier | *(equalCopy + 2))
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

- (id)copyWithZone:(_NSZone *)zone
{
  v5 = [objc_msgSend(objc_opt_class() allocWithZone:{zone), "init"}];
  v6 = [(NSString *)self->_key copyWithZone:zone];
  v7 = *(v5 + 24);
  *(v5 + 24) = v6;

  v8 = [(NSString *)self->_triggerType copyWithZone:zone];
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

  v11 = [(NSString *)self->_actionIdentifier copyWithZone:zone];
  v12 = *(v5 + 8);
  *(v5 + 8) = v11;

  v13 = [(NSString *)self->_bundleIdentifier copyWithZone:zone];
  v14 = *(v5 + 16);
  *(v5 + 16) = v13;

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

  has = self->_has;
  if (has)
  {
    toCopy[40] = self->_requiredRuntimeConfirmation;
    toCopy[44] |= 1u;
    has = self->_has;
  }

  if ((has & 2) != 0)
  {
    toCopy[41] = self->_showsNotification;
    toCopy[44] |= 2u;
  }

  if (self->_actionIdentifier)
  {
    [v6 setActionIdentifier:?];
    toCopy = v6;
  }

  if (self->_bundleIdentifier)
  {
    [v6 setBundleIdentifier:?];
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

  if (self->_triggerType)
  {
    PBDataWriterWriteStringField();
    toCopy = v8;
  }

  has = self->_has;
  if (has)
  {
    requiredRuntimeConfirmation = self->_requiredRuntimeConfirmation;
    PBDataWriterWriteBOOLField();
    toCopy = v8;
    has = self->_has;
  }

  if ((has & 2) != 0)
  {
    showsNotification = self->_showsNotification;
    PBDataWriterWriteBOOLField();
    toCopy = v8;
  }

  if (self->_actionIdentifier)
  {
    PBDataWriterWriteStringField();
    toCopy = v8;
  }

  if (self->_bundleIdentifier)
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
  dictionaryRepresentation = [(WFPBSetupAutomationEvent *)self dictionaryRepresentation];
  v6 = [v3 stringWithFormat:@"%@ %@", v4, dictionaryRepresentation];

  return v6;
}

- (void)setHasShowsNotification:(BOOL)notification
{
  if (notification)
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