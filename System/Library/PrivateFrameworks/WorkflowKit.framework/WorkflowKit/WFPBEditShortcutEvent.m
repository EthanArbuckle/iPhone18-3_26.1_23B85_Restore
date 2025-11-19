@interface WFPBEditShortcutEvent
- (BOOL)isEqual:(id)a3;
- (NSString)key;
- (id)copyWithZone:(_NSZone *)a3;
- (id)description;
- (id)dictionaryRepresentation;
- (unint64_t)hash;
- (void)copyTo:(id)a3;
- (void)mergeFrom:(id)a3;
- (void)setHasNumberOfEngagedSuggestions:(BOOL)a3;
- (void)setHasNumberOfManuallyAddedActions:(BOOL)a3;
- (void)setHasNumberOfRejectedSuggestions:(BOOL)a3;
- (void)setHasNumberOfShownSuggestions:(BOOL)a3;
- (void)setHasStartingActionCount:(BOOL)a3;
- (void)writeTo:(id)a3;
@end

@implementation WFPBEditShortcutEvent

- (void)mergeFrom:(id)a3
{
  v4 = a3;
  v6 = v4;
  if (*(v4 + 4))
  {
    [(WFPBEditShortcutEvent *)self setKey:?];
    v4 = v6;
  }

  if (v4[17])
  {
    self->_actionCount = v4[2];
    *&self->_has |= 1u;
  }

  if (*(v4 + 2))
  {
    [(WFPBEditShortcutEvent *)self setAddToSiriBundleIdentifier:?];
    v4 = v6;
  }

  if (*(v4 + 3))
  {
    [(WFPBEditShortcutEvent *)self setGalleryIdentifier:?];
    v4 = v6;
  }

  if (*(v4 + 7))
  {
    [(WFPBEditShortcutEvent *)self setShortcutSource:?];
    v4 = v6;
  }

  v5 = *(v4 + 68);
  if ((v5 & 0x10) != 0)
  {
    self->_numberOfShownSuggestions = v4[13];
    *&self->_has |= 0x10u;
    v5 = *(v4 + 68);
    if ((v5 & 2) == 0)
    {
LABEL_13:
      if ((v5 & 8) == 0)
      {
        goto LABEL_14;
      }

      goto LABEL_22;
    }
  }

  else if ((v4[17] & 2) == 0)
  {
    goto LABEL_13;
  }

  self->_numberOfEngagedSuggestions = v4[10];
  *&self->_has |= 2u;
  v5 = *(v4 + 68);
  if ((v5 & 8) == 0)
  {
LABEL_14:
    if ((v5 & 4) == 0)
    {
      goto LABEL_15;
    }

    goto LABEL_23;
  }

LABEL_22:
  self->_numberOfRejectedSuggestions = v4[12];
  *&self->_has |= 8u;
  v5 = *(v4 + 68);
  if ((v5 & 4) == 0)
  {
LABEL_15:
    if ((v5 & 0x20) == 0)
    {
      goto LABEL_17;
    }

    goto LABEL_16;
  }

LABEL_23:
  self->_numberOfManuallyAddedActions = v4[11];
  *&self->_has |= 4u;
  if ((v4[17] & 0x20) != 0)
  {
LABEL_16:
    self->_startingActionCount = v4[16];
    *&self->_has |= 0x20u;
  }

LABEL_17:
}

- (unint64_t)hash
{
  v3 = [(NSString *)self->_key hash];
  if (*&self->_has)
  {
    v4 = 2654435761 * self->_actionCount;
  }

  else
  {
    v4 = 0;
  }

  v5 = [(NSString *)self->_addToSiriBundleIdentifier hash];
  v6 = [(NSString *)self->_galleryIdentifier hash];
  v7 = [(NSString *)self->_shortcutSource hash];
  if ((*&self->_has & 0x10) != 0)
  {
    v8 = 2654435761 * self->_numberOfShownSuggestions;
    if ((*&self->_has & 2) != 0)
    {
LABEL_6:
      v9 = 2654435761 * self->_numberOfEngagedSuggestions;
      if ((*&self->_has & 8) != 0)
      {
        goto LABEL_7;
      }

      goto LABEL_12;
    }
  }

  else
  {
    v8 = 0;
    if ((*&self->_has & 2) != 0)
    {
      goto LABEL_6;
    }
  }

  v9 = 0;
  if ((*&self->_has & 8) != 0)
  {
LABEL_7:
    v10 = 2654435761 * self->_numberOfRejectedSuggestions;
    if ((*&self->_has & 4) != 0)
    {
      goto LABEL_8;
    }

LABEL_13:
    v11 = 0;
    if ((*&self->_has & 0x20) != 0)
    {
      goto LABEL_9;
    }

LABEL_14:
    v12 = 0;
    return v4 ^ v3 ^ v5 ^ v6 ^ v7 ^ v8 ^ v9 ^ v10 ^ v11 ^ v12;
  }

LABEL_12:
  v10 = 0;
  if ((*&self->_has & 4) == 0)
  {
    goto LABEL_13;
  }

LABEL_8:
  v11 = 2654435761 * self->_numberOfManuallyAddedActions;
  if ((*&self->_has & 0x20) == 0)
  {
    goto LABEL_14;
  }

LABEL_9:
  v12 = 2654435761 * self->_startingActionCount;
  return v4 ^ v3 ^ v5 ^ v6 ^ v7 ^ v8 ^ v9 ^ v10 ^ v11 ^ v12;
}

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  if (![v4 isMemberOfClass:objc_opt_class()])
  {
    goto LABEL_39;
  }

  key = self->_key;
  if (key | *(v4 + 4))
  {
    if (![(NSString *)key isEqual:?])
    {
      goto LABEL_39;
    }
  }

  v6 = *(v4 + 68);
  if (*&self->_has)
  {
    if ((*(v4 + 68) & 1) == 0 || self->_actionCount != *(v4 + 2))
    {
      goto LABEL_39;
    }
  }

  else if (*(v4 + 68))
  {
LABEL_39:
    v10 = 0;
    goto LABEL_40;
  }

  addToSiriBundleIdentifier = self->_addToSiriBundleIdentifier;
  if (addToSiriBundleIdentifier | *(v4 + 2) && ![(NSString *)addToSiriBundleIdentifier isEqual:?])
  {
    goto LABEL_39;
  }

  galleryIdentifier = self->_galleryIdentifier;
  if (galleryIdentifier | *(v4 + 3))
  {
    if (![(NSString *)galleryIdentifier isEqual:?])
    {
      goto LABEL_39;
    }
  }

  shortcutSource = self->_shortcutSource;
  if (shortcutSource | *(v4 + 7))
  {
    if (![(NSString *)shortcutSource isEqual:?])
    {
      goto LABEL_39;
    }
  }

  if ((*&self->_has & 0x10) != 0)
  {
    if ((*(v4 + 68) & 0x10) == 0 || self->_numberOfShownSuggestions != *(v4 + 13))
    {
      goto LABEL_39;
    }
  }

  else if ((*(v4 + 68) & 0x10) != 0)
  {
    goto LABEL_39;
  }

  if ((*&self->_has & 2) != 0)
  {
    if ((*(v4 + 68) & 2) == 0 || self->_numberOfEngagedSuggestions != *(v4 + 10))
    {
      goto LABEL_39;
    }
  }

  else if ((*(v4 + 68) & 2) != 0)
  {
    goto LABEL_39;
  }

  if ((*&self->_has & 8) != 0)
  {
    if ((*(v4 + 68) & 8) == 0 || self->_numberOfRejectedSuggestions != *(v4 + 12))
    {
      goto LABEL_39;
    }
  }

  else if ((*(v4 + 68) & 8) != 0)
  {
    goto LABEL_39;
  }

  if ((*&self->_has & 4) != 0)
  {
    if ((*(v4 + 68) & 4) == 0 || self->_numberOfManuallyAddedActions != *(v4 + 11))
    {
      goto LABEL_39;
    }
  }

  else if ((*(v4 + 68) & 4) != 0)
  {
    goto LABEL_39;
  }

  v10 = (*(v4 + 68) & 0x20) == 0;
  if ((*&self->_has & 0x20) != 0)
  {
    if ((*(v4 + 68) & 0x20) == 0 || self->_startingActionCount != *(v4 + 16))
    {
      goto LABEL_39;
    }

    v10 = 1;
  }

LABEL_40:

  return v10;
}

- (id)copyWithZone:(_NSZone *)a3
{
  v5 = [objc_msgSend(objc_opt_class() allocWithZone:{a3), "init"}];
  v6 = [(NSString *)self->_key copyWithZone:a3];
  v7 = *(v5 + 32);
  *(v5 + 32) = v6;

  if (*&self->_has)
  {
    *(v5 + 8) = self->_actionCount;
    *(v5 + 68) |= 1u;
  }

  v8 = [(NSString *)self->_addToSiriBundleIdentifier copyWithZone:a3];
  v9 = *(v5 + 16);
  *(v5 + 16) = v8;

  v10 = [(NSString *)self->_galleryIdentifier copyWithZone:a3];
  v11 = *(v5 + 24);
  *(v5 + 24) = v10;

  v12 = [(NSString *)self->_shortcutSource copyWithZone:a3];
  v13 = *(v5 + 56);
  *(v5 + 56) = v12;

  has = self->_has;
  if ((has & 0x10) != 0)
  {
    *(v5 + 52) = self->_numberOfShownSuggestions;
    *(v5 + 68) |= 0x10u;
    has = self->_has;
    if ((has & 2) == 0)
    {
LABEL_5:
      if ((has & 8) == 0)
      {
        goto LABEL_6;
      }

      goto LABEL_12;
    }
  }

  else if ((*&self->_has & 2) == 0)
  {
    goto LABEL_5;
  }

  *(v5 + 40) = self->_numberOfEngagedSuggestions;
  *(v5 + 68) |= 2u;
  has = self->_has;
  if ((has & 8) == 0)
  {
LABEL_6:
    if ((has & 4) == 0)
    {
      goto LABEL_7;
    }

LABEL_13:
    *(v5 + 44) = self->_numberOfManuallyAddedActions;
    *(v5 + 68) |= 4u;
    if ((*&self->_has & 0x20) == 0)
    {
      return v5;
    }

    goto LABEL_8;
  }

LABEL_12:
  *(v5 + 48) = self->_numberOfRejectedSuggestions;
  *(v5 + 68) |= 8u;
  has = self->_has;
  if ((has & 4) != 0)
  {
    goto LABEL_13;
  }

LABEL_7:
  if ((has & 0x20) != 0)
  {
LABEL_8:
    *(v5 + 64) = self->_startingActionCount;
    *(v5 + 68) |= 0x20u;
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

  if (*&self->_has)
  {
    *(v4 + 2) = self->_actionCount;
    *(v4 + 68) |= 1u;
  }

  if (self->_addToSiriBundleIdentifier)
  {
    [v6 setAddToSiriBundleIdentifier:?];
    v4 = v6;
  }

  if (self->_galleryIdentifier)
  {
    [v6 setGalleryIdentifier:?];
    v4 = v6;
  }

  if (self->_shortcutSource)
  {
    [v6 setShortcutSource:?];
    v4 = v6;
  }

  has = self->_has;
  if ((has & 0x10) != 0)
  {
    *(v4 + 13) = self->_numberOfShownSuggestions;
    *(v4 + 68) |= 0x10u;
    has = self->_has;
    if ((has & 2) == 0)
    {
LABEL_13:
      if ((has & 8) == 0)
      {
        goto LABEL_14;
      }

      goto LABEL_22;
    }
  }

  else if ((*&self->_has & 2) == 0)
  {
    goto LABEL_13;
  }

  *(v4 + 10) = self->_numberOfEngagedSuggestions;
  *(v4 + 68) |= 2u;
  has = self->_has;
  if ((has & 8) == 0)
  {
LABEL_14:
    if ((has & 4) == 0)
    {
      goto LABEL_15;
    }

    goto LABEL_23;
  }

LABEL_22:
  *(v4 + 12) = self->_numberOfRejectedSuggestions;
  *(v4 + 68) |= 8u;
  has = self->_has;
  if ((has & 4) == 0)
  {
LABEL_15:
    if ((has & 0x20) == 0)
    {
      goto LABEL_17;
    }

    goto LABEL_16;
  }

LABEL_23:
  *(v4 + 11) = self->_numberOfManuallyAddedActions;
  *(v4 + 68) |= 4u;
  if ((*&self->_has & 0x20) != 0)
  {
LABEL_16:
    *(v4 + 16) = self->_startingActionCount;
    *(v4 + 68) |= 0x20u;
  }

LABEL_17:
}

- (void)writeTo:(id)a3
{
  v4 = a3;
  v12 = v4;
  if (self->_key)
  {
    PBDataWriterWriteStringField();
    v4 = v12;
  }

  if (*&self->_has)
  {
    actionCount = self->_actionCount;
    PBDataWriterWriteUint32Field();
    v4 = v12;
  }

  if (self->_addToSiriBundleIdentifier)
  {
    PBDataWriterWriteStringField();
    v4 = v12;
  }

  if (self->_galleryIdentifier)
  {
    PBDataWriterWriteStringField();
    v4 = v12;
  }

  if (self->_shortcutSource)
  {
    PBDataWriterWriteStringField();
    v4 = v12;
  }

  has = self->_has;
  if ((has & 0x10) != 0)
  {
    numberOfShownSuggestions = self->_numberOfShownSuggestions;
    PBDataWriterWriteUint32Field();
    v4 = v12;
    has = self->_has;
    if ((has & 2) == 0)
    {
LABEL_13:
      if ((has & 8) == 0)
      {
        goto LABEL_14;
      }

      goto LABEL_22;
    }
  }

  else if ((*&self->_has & 2) == 0)
  {
    goto LABEL_13;
  }

  numberOfEngagedSuggestions = self->_numberOfEngagedSuggestions;
  PBDataWriterWriteUint32Field();
  v4 = v12;
  has = self->_has;
  if ((has & 8) == 0)
  {
LABEL_14:
    if ((has & 4) == 0)
    {
      goto LABEL_15;
    }

    goto LABEL_23;
  }

LABEL_22:
  numberOfRejectedSuggestions = self->_numberOfRejectedSuggestions;
  PBDataWriterWriteUint32Field();
  v4 = v12;
  has = self->_has;
  if ((has & 4) == 0)
  {
LABEL_15:
    if ((has & 0x20) == 0)
    {
      goto LABEL_17;
    }

    goto LABEL_16;
  }

LABEL_23:
  numberOfManuallyAddedActions = self->_numberOfManuallyAddedActions;
  PBDataWriterWriteUint32Field();
  v4 = v12;
  if ((*&self->_has & 0x20) != 0)
  {
LABEL_16:
    startingActionCount = self->_startingActionCount;
    PBDataWriterWriteUint32Field();
    v4 = v12;
  }

LABEL_17:
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

  if (*&self->_has)
  {
    v6 = [MEMORY[0x1E696AD98] numberWithUnsignedInt:self->_actionCount];
    [v4 setObject:v6 forKey:@"actionCount"];
  }

  addToSiriBundleIdentifier = self->_addToSiriBundleIdentifier;
  if (addToSiriBundleIdentifier)
  {
    [v4 setObject:addToSiriBundleIdentifier forKey:@"addToSiriBundleIdentifier"];
  }

  galleryIdentifier = self->_galleryIdentifier;
  if (galleryIdentifier)
  {
    [v4 setObject:galleryIdentifier forKey:@"galleryIdentifier"];
  }

  shortcutSource = self->_shortcutSource;
  if (shortcutSource)
  {
    [v4 setObject:shortcutSource forKey:@"shortcutSource"];
  }

  has = self->_has;
  if ((has & 0x10) != 0)
  {
    v13 = [MEMORY[0x1E696AD98] numberWithUnsignedInt:self->_numberOfShownSuggestions];
    [v4 setObject:v13 forKey:@"numberOfShownSuggestions"];

    has = self->_has;
    if ((has & 2) == 0)
    {
LABEL_13:
      if ((has & 8) == 0)
      {
        goto LABEL_14;
      }

      goto LABEL_22;
    }
  }

  else if ((*&self->_has & 2) == 0)
  {
    goto LABEL_13;
  }

  v14 = [MEMORY[0x1E696AD98] numberWithUnsignedInt:self->_numberOfEngagedSuggestions];
  [v4 setObject:v14 forKey:@"numberOfEngagedSuggestions"];

  has = self->_has;
  if ((has & 8) == 0)
  {
LABEL_14:
    if ((has & 4) == 0)
    {
      goto LABEL_15;
    }

    goto LABEL_23;
  }

LABEL_22:
  v15 = [MEMORY[0x1E696AD98] numberWithUnsignedInt:self->_numberOfRejectedSuggestions];
  [v4 setObject:v15 forKey:@"numberOfRejectedSuggestions"];

  has = self->_has;
  if ((has & 4) == 0)
  {
LABEL_15:
    if ((has & 0x20) == 0)
    {
      goto LABEL_17;
    }

    goto LABEL_16;
  }

LABEL_23:
  v16 = [MEMORY[0x1E696AD98] numberWithUnsignedInt:self->_numberOfManuallyAddedActions];
  [v4 setObject:v16 forKey:@"numberOfManuallyAddedActions"];

  if ((*&self->_has & 0x20) != 0)
  {
LABEL_16:
    v11 = [MEMORY[0x1E696AD98] numberWithUnsignedInt:self->_startingActionCount];
    [v4 setObject:v11 forKey:@"startingActionCount"];
  }

LABEL_17:

  return v4;
}

- (id)description
{
  v3 = MEMORY[0x1E696AEC0];
  v8.receiver = self;
  v8.super_class = WFPBEditShortcutEvent;
  v4 = [(WFPBEditShortcutEvent *)&v8 description];
  v5 = [(WFPBEditShortcutEvent *)self dictionaryRepresentation];
  v6 = [v3 stringWithFormat:@"%@ %@", v4, v5];

  return v6;
}

- (void)setHasStartingActionCount:(BOOL)a3
{
  if (a3)
  {
    v3 = 32;
  }

  else
  {
    v3 = 0;
  }

  *&self->_has = *&self->_has & 0xDF | v3;
}

- (void)setHasNumberOfManuallyAddedActions:(BOOL)a3
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

- (void)setHasNumberOfRejectedSuggestions:(BOOL)a3
{
  if (a3)
  {
    v3 = 8;
  }

  else
  {
    v3 = 0;
  }

  *&self->_has = *&self->_has & 0xF7 | v3;
}

- (void)setHasNumberOfEngagedSuggestions:(BOOL)a3
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

- (void)setHasNumberOfShownSuggestions:(BOOL)a3
{
  if (a3)
  {
    v3 = 16;
  }

  else
  {
    v3 = 0;
  }

  *&self->_has = *&self->_has & 0xEF | v3;
}

- (NSString)key
{
  if (self->_key)
  {
    return self->_key;
  }

  else
  {
    return @"EditShortcut";
  }
}

@end