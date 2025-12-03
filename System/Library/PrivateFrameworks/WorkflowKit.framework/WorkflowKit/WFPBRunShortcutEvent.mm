@interface WFPBRunShortcutEvent
- (BOOL)isEqual:(id)equal;
- (NSString)key;
- (NSString)runSource;
- (id)copyWithZone:(_NSZone *)zone;
- (id)description;
- (id)dictionaryRepresentation;
- (unint64_t)hash;
- (void)copyTo:(id)to;
- (void)mergeFrom:(id)from;
- (void)setHasCompleted:(BOOL)completed;
- (void)setHasDidPresentShareSheet:(BOOL)sheet;
- (void)setHasDidRunRemotely:(BOOL)remotely;
- (void)setHasIsFromAutomationSuggestion:(BOOL)suggestion;
- (void)setHasNumberOfDialogsPresented:(BOOL)presented;
- (void)writeTo:(id)to;
@end

@implementation WFPBRunShortcutEvent

- (id)description
{
  v3 = MEMORY[0x1E696AEC0];
  v8.receiver = self;
  v8.super_class = WFPBRunShortcutEvent;
  v4 = [(WFPBRunShortcutEvent *)&v8 description];
  dictionaryRepresentation = [(WFPBRunShortcutEvent *)self dictionaryRepresentation];
  v6 = [v3 stringWithFormat:@"%@ %@", v4, dictionaryRepresentation];

  return v6;
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

  runSource = self->_runSource;
  if (runSource)
  {
    [v4 setObject:runSource forKey:@"runSource"];
  }

  automationType = self->_automationType;
  if (automationType)
  {
    [v4 setObject:automationType forKey:@"automationType"];
  }

  has = self->_has;
  if (has)
  {
    v17 = [MEMORY[0x1E696AD98] numberWithUnsignedInt:self->_actionCount];
    [v4 setObject:v17 forKey:@"actionCount"];

    has = self->_has;
    if ((has & 4) == 0)
    {
LABEL_9:
      if ((has & 0x10) == 0)
      {
        goto LABEL_11;
      }

      goto LABEL_10;
    }
  }

  else if ((*&self->_has & 4) == 0)
  {
    goto LABEL_9;
  }

  v18 = [MEMORY[0x1E696AD98] numberWithBool:self->_completed];
  [v4 setObject:v18 forKey:@"completed"];

  if ((*&self->_has & 0x10) != 0)
  {
LABEL_10:
    v9 = [MEMORY[0x1E696AD98] numberWithBool:self->_didRunRemotely];
    [v4 setObject:v9 forKey:@"didRunRemotely"];
  }

LABEL_11:
  shortcutSource = self->_shortcutSource;
  if (shortcutSource)
  {
    [v4 setObject:shortcutSource forKey:@"shortcutSource"];
  }

  galleryIdentifier = self->_galleryIdentifier;
  if (galleryIdentifier)
  {
    [v4 setObject:galleryIdentifier forKey:@"galleryIdentifier"];
  }

  v12 = self->_has;
  if ((v12 & 2) != 0)
  {
    v19 = [MEMORY[0x1E696AD98] numberWithUnsignedInt:self->_numberOfDialogsPresented];
    [v4 setObject:v19 forKey:@"numberOfDialogsPresented"];

    v12 = self->_has;
    if ((v12 & 8) == 0)
    {
LABEL_17:
      if ((v12 & 0x20) == 0)
      {
        goto LABEL_19;
      }

      goto LABEL_18;
    }
  }

  else if ((*&self->_has & 8) == 0)
  {
    goto LABEL_17;
  }

  v20 = [MEMORY[0x1E696AD98] numberWithBool:self->_didPresentShareSheet];
  [v4 setObject:v20 forKey:@"didPresentShareSheet"];

  if ((*&self->_has & 0x20) != 0)
  {
LABEL_18:
    v13 = [MEMORY[0x1E696AD98] numberWithBool:self->_isFromAutomationSuggestion];
    [v4 setObject:v13 forKey:@"isFromAutomationSuggestion"];
  }

LABEL_19:
  automationSuggestionsTrialIdentifier = self->_automationSuggestionsTrialIdentifier;
  if (automationSuggestionsTrialIdentifier)
  {
    [v4 setObject:automationSuggestionsTrialIdentifier forKey:@"automationSuggestionsTrialIdentifier"];
  }

  scriptingRunBundleIdentifier = self->_scriptingRunBundleIdentifier;
  if (scriptingRunBundleIdentifier)
  {
    [v4 setObject:scriptingRunBundleIdentifier forKey:@"scriptingRunBundleIdentifier"];
  }

  return v4;
}

- (void)mergeFrom:(id)from
{
  fromCopy = from;
  v7 = fromCopy;
  if (*(fromCopy + 5))
  {
    [(WFPBRunShortcutEvent *)self setKey:?];
    fromCopy = v7;
  }

  if (*(fromCopy + 7))
  {
    [(WFPBRunShortcutEvent *)self setRunSource:?];
    fromCopy = v7;
  }

  if (*(fromCopy + 3))
  {
    [(WFPBRunShortcutEvent *)self setAutomationType:?];
    fromCopy = v7;
  }

  v5 = *(fromCopy + 84);
  if (v5)
  {
    self->_actionCount = *(fromCopy + 2);
    *&self->_has |= 1u;
    v5 = *(fromCopy + 84);
    if ((v5 & 4) == 0)
    {
LABEL_9:
      if ((v5 & 0x10) == 0)
      {
        goto LABEL_11;
      }

      goto LABEL_10;
    }
  }

  else if ((*(fromCopy + 84) & 4) == 0)
  {
    goto LABEL_9;
  }

  self->_completed = *(fromCopy + 80);
  *&self->_has |= 4u;
  if ((*(fromCopy + 84) & 0x10) != 0)
  {
LABEL_10:
    self->_didRunRemotely = *(fromCopy + 82);
    *&self->_has |= 0x10u;
  }

LABEL_11:
  if (*(fromCopy + 9))
  {
    [(WFPBRunShortcutEvent *)self setShortcutSource:?];
    fromCopy = v7;
  }

  if (*(fromCopy + 4))
  {
    [(WFPBRunShortcutEvent *)self setGalleryIdentifier:?];
    fromCopy = v7;
  }

  v6 = *(fromCopy + 84);
  if ((v6 & 2) != 0)
  {
    self->_numberOfDialogsPresented = *(fromCopy + 12);
    *&self->_has |= 2u;
    v6 = *(fromCopy + 84);
    if ((v6 & 8) == 0)
    {
LABEL_17:
      if ((v6 & 0x20) == 0)
      {
        goto LABEL_19;
      }

      goto LABEL_18;
    }
  }

  else if ((*(fromCopy + 84) & 8) == 0)
  {
    goto LABEL_17;
  }

  self->_didPresentShareSheet = *(fromCopy + 81);
  *&self->_has |= 8u;
  if ((*(fromCopy + 84) & 0x20) != 0)
  {
LABEL_18:
    self->_isFromAutomationSuggestion = *(fromCopy + 83);
    *&self->_has |= 0x20u;
  }

LABEL_19:
  if (*(fromCopy + 2))
  {
    [(WFPBRunShortcutEvent *)self setAutomationSuggestionsTrialIdentifier:?];
    fromCopy = v7;
  }

  if (*(fromCopy + 8))
  {
    [(WFPBRunShortcutEvent *)self setScriptingRunBundleIdentifier:?];
    fromCopy = v7;
  }
}

- (unint64_t)hash
{
  v3 = [(NSString *)self->_key hash];
  v4 = [(NSString *)self->_runSource hash];
  v5 = [(NSString *)self->_automationType hash];
  if ((*&self->_has & 1) == 0)
  {
    v6 = 0;
    if ((*&self->_has & 4) != 0)
    {
      goto LABEL_3;
    }

LABEL_6:
    v7 = 0;
    if ((*&self->_has & 0x10) != 0)
    {
      goto LABEL_4;
    }

    goto LABEL_7;
  }

  v6 = 2654435761 * self->_actionCount;
  if ((*&self->_has & 4) == 0)
  {
    goto LABEL_6;
  }

LABEL_3:
  v7 = 2654435761 * self->_completed;
  if ((*&self->_has & 0x10) != 0)
  {
LABEL_4:
    v8 = 2654435761 * self->_didRunRemotely;
    goto LABEL_8;
  }

LABEL_7:
  v8 = 0;
LABEL_8:
  v9 = [(NSString *)self->_shortcutSource hash];
  v10 = [(NSString *)self->_galleryIdentifier hash];
  if ((*&self->_has & 2) == 0)
  {
    v11 = 0;
    if ((*&self->_has & 8) != 0)
    {
      goto LABEL_10;
    }

LABEL_13:
    v12 = 0;
    if ((*&self->_has & 0x20) != 0)
    {
      goto LABEL_11;
    }

LABEL_14:
    v13 = 0;
    goto LABEL_15;
  }

  v11 = 2654435761 * self->_numberOfDialogsPresented;
  if ((*&self->_has & 8) == 0)
  {
    goto LABEL_13;
  }

LABEL_10:
  v12 = 2654435761 * self->_didPresentShareSheet;
  if ((*&self->_has & 0x20) == 0)
  {
    goto LABEL_14;
  }

LABEL_11:
  v13 = 2654435761 * self->_isFromAutomationSuggestion;
LABEL_15:
  v14 = v4 ^ v3 ^ v5 ^ v6 ^ v7 ^ v8 ^ v9 ^ v10;
  v15 = v11 ^ v12 ^ v13 ^ [(NSString *)self->_automationSuggestionsTrialIdentifier hash];
  return v14 ^ v15 ^ [(NSString *)self->_scriptingRunBundleIdentifier hash];
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  if (![equalCopy isMemberOfClass:objc_opt_class()])
  {
    goto LABEL_58;
  }

  key = self->_key;
  if (key | *(equalCopy + 5))
  {
    if (![(NSString *)key isEqual:?])
    {
      goto LABEL_58;
    }
  }

  runSource = self->_runSource;
  if (runSource | *(equalCopy + 7))
  {
    if (![(NSString *)runSource isEqual:?])
    {
      goto LABEL_58;
    }
  }

  automationType = self->_automationType;
  if (automationType | *(equalCopy + 3))
  {
    if (![(NSString *)automationType isEqual:?])
    {
      goto LABEL_58;
    }
  }

  v8 = *(equalCopy + 84);
  if (*&self->_has)
  {
    if ((*(equalCopy + 84) & 1) == 0 || self->_actionCount != *(equalCopy + 2))
    {
      goto LABEL_58;
    }
  }

  else if (*(equalCopy + 84))
  {
    goto LABEL_58;
  }

  if ((*&self->_has & 4) != 0)
  {
    if ((*(equalCopy + 84) & 4) == 0)
    {
      goto LABEL_58;
    }

    v12 = *(equalCopy + 80);
    if (self->_completed)
    {
      if ((*(equalCopy + 80) & 1) == 0)
      {
        goto LABEL_58;
      }
    }

    else if (*(equalCopy + 80))
    {
      goto LABEL_58;
    }
  }

  else if ((*(equalCopy + 84) & 4) != 0)
  {
    goto LABEL_58;
  }

  if ((*&self->_has & 0x10) != 0)
  {
    if ((*(equalCopy + 84) & 0x10) == 0)
    {
      goto LABEL_58;
    }

    v13 = *(equalCopy + 82);
    if (self->_didRunRemotely)
    {
      if ((*(equalCopy + 82) & 1) == 0)
      {
        goto LABEL_58;
      }
    }

    else if (*(equalCopy + 82))
    {
      goto LABEL_58;
    }
  }

  else if ((*(equalCopy + 84) & 0x10) != 0)
  {
    goto LABEL_58;
  }

  shortcutSource = self->_shortcutSource;
  if (shortcutSource | *(equalCopy + 9) && ![(NSString *)shortcutSource isEqual:?])
  {
    goto LABEL_58;
  }

  galleryIdentifier = self->_galleryIdentifier;
  if (galleryIdentifier | *(equalCopy + 4))
  {
    if (![(NSString *)galleryIdentifier isEqual:?])
    {
      goto LABEL_58;
    }
  }

  v11 = *(equalCopy + 84);
  if ((*&self->_has & 2) != 0)
  {
    if ((*(equalCopy + 84) & 2) == 0 || self->_numberOfDialogsPresented != *(equalCopy + 12))
    {
      goto LABEL_58;
    }
  }

  else if ((*(equalCopy + 84) & 2) != 0)
  {
    goto LABEL_58;
  }

  if ((*&self->_has & 8) != 0)
  {
    if ((*(equalCopy + 84) & 8) == 0)
    {
      goto LABEL_58;
    }

    v17 = *(equalCopy + 81);
    if (self->_didPresentShareSheet)
    {
      if ((*(equalCopy + 81) & 1) == 0)
      {
        goto LABEL_58;
      }
    }

    else if (*(equalCopy + 81))
    {
      goto LABEL_58;
    }
  }

  else if ((*(equalCopy + 84) & 8) != 0)
  {
    goto LABEL_58;
  }

  if ((*&self->_has & 0x20) == 0)
  {
    if ((*(equalCopy + 84) & 0x20) == 0)
    {
      goto LABEL_42;
    }

LABEL_58:
    v16 = 0;
    goto LABEL_59;
  }

  if ((*(equalCopy + 84) & 0x20) == 0)
  {
    goto LABEL_58;
  }

  v18 = *(equalCopy + 83);
  if (!self->_isFromAutomationSuggestion)
  {
    if ((*(equalCopy + 83) & 1) == 0)
    {
      goto LABEL_42;
    }

    goto LABEL_58;
  }

  if ((*(equalCopy + 83) & 1) == 0)
  {
    goto LABEL_58;
  }

LABEL_42:
  automationSuggestionsTrialIdentifier = self->_automationSuggestionsTrialIdentifier;
  if (automationSuggestionsTrialIdentifier | *(equalCopy + 2) && ![(NSString *)automationSuggestionsTrialIdentifier isEqual:?])
  {
    goto LABEL_58;
  }

  scriptingRunBundleIdentifier = self->_scriptingRunBundleIdentifier;
  if (scriptingRunBundleIdentifier | *(equalCopy + 8))
  {
    v16 = [(NSString *)scriptingRunBundleIdentifier isEqual:?];
  }

  else
  {
    v16 = 1;
  }

LABEL_59:

  return v16;
}

- (id)copyWithZone:(_NSZone *)zone
{
  v5 = [objc_msgSend(objc_opt_class() allocWithZone:{zone), "init"}];
  v6 = [(NSString *)self->_key copyWithZone:zone];
  v7 = *(v5 + 40);
  *(v5 + 40) = v6;

  v8 = [(NSString *)self->_runSource copyWithZone:zone];
  v9 = *(v5 + 56);
  *(v5 + 56) = v8;

  v10 = [(NSString *)self->_automationType copyWithZone:zone];
  v11 = *(v5 + 24);
  *(v5 + 24) = v10;

  has = self->_has;
  if (has)
  {
    *(v5 + 8) = self->_actionCount;
    *(v5 + 84) |= 1u;
    has = self->_has;
    if ((has & 4) == 0)
    {
LABEL_3:
      if ((has & 0x10) == 0)
      {
        goto LABEL_5;
      }

      goto LABEL_4;
    }
  }

  else if ((*&self->_has & 4) == 0)
  {
    goto LABEL_3;
  }

  *(v5 + 80) = self->_completed;
  *(v5 + 84) |= 4u;
  if ((*&self->_has & 0x10) != 0)
  {
LABEL_4:
    *(v5 + 82) = self->_didRunRemotely;
    *(v5 + 84) |= 0x10u;
  }

LABEL_5:
  v13 = [(NSString *)self->_shortcutSource copyWithZone:zone];
  v14 = *(v5 + 72);
  *(v5 + 72) = v13;

  v15 = [(NSString *)self->_galleryIdentifier copyWithZone:zone];
  v16 = *(v5 + 32);
  *(v5 + 32) = v15;

  v17 = self->_has;
  if ((v17 & 2) == 0)
  {
    if ((*&self->_has & 8) == 0)
    {
      goto LABEL_7;
    }

LABEL_14:
    *(v5 + 81) = self->_didPresentShareSheet;
    *(v5 + 84) |= 8u;
    if ((*&self->_has & 0x20) == 0)
    {
      goto LABEL_9;
    }

    goto LABEL_8;
  }

  *(v5 + 48) = self->_numberOfDialogsPresented;
  *(v5 + 84) |= 2u;
  v17 = self->_has;
  if ((v17 & 8) != 0)
  {
    goto LABEL_14;
  }

LABEL_7:
  if ((v17 & 0x20) != 0)
  {
LABEL_8:
    *(v5 + 83) = self->_isFromAutomationSuggestion;
    *(v5 + 84) |= 0x20u;
  }

LABEL_9:
  v18 = [(NSString *)self->_automationSuggestionsTrialIdentifier copyWithZone:zone];
  v19 = *(v5 + 16);
  *(v5 + 16) = v18;

  v20 = [(NSString *)self->_scriptingRunBundleIdentifier copyWithZone:zone];
  v21 = *(v5 + 64);
  *(v5 + 64) = v20;

  return v5;
}

- (void)copyTo:(id)to
{
  toCopy = to;
  v7 = toCopy;
  if (self->_key)
  {
    [toCopy setKey:?];
    toCopy = v7;
  }

  if (self->_runSource)
  {
    [v7 setRunSource:?];
    toCopy = v7;
  }

  if (self->_automationType)
  {
    [v7 setAutomationType:?];
    toCopy = v7;
  }

  has = self->_has;
  if (has)
  {
    *(toCopy + 2) = self->_actionCount;
    *(toCopy + 84) |= 1u;
    has = self->_has;
    if ((has & 4) == 0)
    {
LABEL_9:
      if ((has & 0x10) == 0)
      {
        goto LABEL_11;
      }

      goto LABEL_10;
    }
  }

  else if ((*&self->_has & 4) == 0)
  {
    goto LABEL_9;
  }

  *(toCopy + 80) = self->_completed;
  *(toCopy + 84) |= 4u;
  if ((*&self->_has & 0x10) != 0)
  {
LABEL_10:
    *(toCopy + 82) = self->_didRunRemotely;
    *(toCopy + 84) |= 0x10u;
  }

LABEL_11:
  if (self->_shortcutSource)
  {
    [v7 setShortcutSource:?];
    toCopy = v7;
  }

  if (self->_galleryIdentifier)
  {
    [v7 setGalleryIdentifier:?];
    toCopy = v7;
  }

  v6 = self->_has;
  if ((v6 & 2) != 0)
  {
    *(toCopy + 12) = self->_numberOfDialogsPresented;
    *(toCopy + 84) |= 2u;
    v6 = self->_has;
    if ((v6 & 8) == 0)
    {
LABEL_17:
      if ((v6 & 0x20) == 0)
      {
        goto LABEL_19;
      }

      goto LABEL_18;
    }
  }

  else if ((*&self->_has & 8) == 0)
  {
    goto LABEL_17;
  }

  *(toCopy + 81) = self->_didPresentShareSheet;
  *(toCopy + 84) |= 8u;
  if ((*&self->_has & 0x20) != 0)
  {
LABEL_18:
    *(toCopy + 83) = self->_isFromAutomationSuggestion;
    *(toCopy + 84) |= 0x20u;
  }

LABEL_19:
  if (self->_automationSuggestionsTrialIdentifier)
  {
    [v7 setAutomationSuggestionsTrialIdentifier:?];
    toCopy = v7;
  }

  if (self->_scriptingRunBundleIdentifier)
  {
    [v7 setScriptingRunBundleIdentifier:?];
    toCopy = v7;
  }
}

- (void)writeTo:(id)to
{
  toCopy = to;
  v13 = toCopy;
  if (self->_key)
  {
    PBDataWriterWriteStringField();
    toCopy = v13;
  }

  if (self->_runSource)
  {
    PBDataWriterWriteStringField();
    toCopy = v13;
  }

  if (self->_automationType)
  {
    PBDataWriterWriteStringField();
    toCopy = v13;
  }

  has = self->_has;
  if (has)
  {
    actionCount = self->_actionCount;
    PBDataWriterWriteUint32Field();
    toCopy = v13;
    has = self->_has;
    if ((has & 4) == 0)
    {
LABEL_9:
      if ((has & 0x10) == 0)
      {
        goto LABEL_11;
      }

      goto LABEL_10;
    }
  }

  else if ((*&self->_has & 4) == 0)
  {
    goto LABEL_9;
  }

  completed = self->_completed;
  PBDataWriterWriteBOOLField();
  toCopy = v13;
  if ((*&self->_has & 0x10) != 0)
  {
LABEL_10:
    didRunRemotely = self->_didRunRemotely;
    PBDataWriterWriteBOOLField();
    toCopy = v13;
  }

LABEL_11:
  if (self->_shortcutSource)
  {
    PBDataWriterWriteStringField();
    toCopy = v13;
  }

  if (self->_galleryIdentifier)
  {
    PBDataWriterWriteStringField();
    toCopy = v13;
  }

  v7 = self->_has;
  if ((v7 & 2) != 0)
  {
    numberOfDialogsPresented = self->_numberOfDialogsPresented;
    PBDataWriterWriteUint32Field();
    toCopy = v13;
    v7 = self->_has;
    if ((v7 & 8) == 0)
    {
LABEL_17:
      if ((v7 & 0x20) == 0)
      {
        goto LABEL_19;
      }

      goto LABEL_18;
    }
  }

  else if ((*&self->_has & 8) == 0)
  {
    goto LABEL_17;
  }

  didPresentShareSheet = self->_didPresentShareSheet;
  PBDataWriterWriteBOOLField();
  toCopy = v13;
  if ((*&self->_has & 0x20) != 0)
  {
LABEL_18:
    isFromAutomationSuggestion = self->_isFromAutomationSuggestion;
    PBDataWriterWriteBOOLField();
    toCopy = v13;
  }

LABEL_19:
  if (self->_automationSuggestionsTrialIdentifier)
  {
    PBDataWriterWriteStringField();
    toCopy = v13;
  }

  if (self->_scriptingRunBundleIdentifier)
  {
    PBDataWriterWriteStringField();
    toCopy = v13;
  }
}

- (void)setHasIsFromAutomationSuggestion:(BOOL)suggestion
{
  if (suggestion)
  {
    v3 = 32;
  }

  else
  {
    v3 = 0;
  }

  *&self->_has = *&self->_has & 0xDF | v3;
}

- (void)setHasDidPresentShareSheet:(BOOL)sheet
{
  if (sheet)
  {
    v3 = 8;
  }

  else
  {
    v3 = 0;
  }

  *&self->_has = *&self->_has & 0xF7 | v3;
}

- (void)setHasNumberOfDialogsPresented:(BOOL)presented
{
  if (presented)
  {
    v3 = 2;
  }

  else
  {
    v3 = 0;
  }

  *&self->_has = *&self->_has & 0xFD | v3;
}

- (void)setHasDidRunRemotely:(BOOL)remotely
{
  if (remotely)
  {
    v3 = 16;
  }

  else
  {
    v3 = 0;
  }

  *&self->_has = *&self->_has & 0xEF | v3;
}

- (void)setHasCompleted:(BOOL)completed
{
  if (completed)
  {
    v3 = 4;
  }

  else
  {
    v3 = 0;
  }

  *&self->_has = *&self->_has & 0xFB | v3;
}

- (NSString)runSource
{
  if (self->_runSource)
  {
    return self->_runSource;
  }

  else
  {
    return @"unknown";
  }
}

- (NSString)key
{
  if (self->_key)
  {
    return self->_key;
  }

  else
  {
    return @"RunShortcut";
  }
}

@end