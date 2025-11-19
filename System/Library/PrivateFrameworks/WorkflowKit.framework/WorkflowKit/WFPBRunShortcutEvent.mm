@interface WFPBRunShortcutEvent
- (BOOL)isEqual:(id)a3;
- (NSString)key;
- (NSString)runSource;
- (id)copyWithZone:(_NSZone *)a3;
- (id)description;
- (id)dictionaryRepresentation;
- (unint64_t)hash;
- (void)copyTo:(id)a3;
- (void)mergeFrom:(id)a3;
- (void)setHasCompleted:(BOOL)a3;
- (void)setHasDidPresentShareSheet:(BOOL)a3;
- (void)setHasDidRunRemotely:(BOOL)a3;
- (void)setHasIsFromAutomationSuggestion:(BOOL)a3;
- (void)setHasNumberOfDialogsPresented:(BOOL)a3;
- (void)writeTo:(id)a3;
@end

@implementation WFPBRunShortcutEvent

- (id)description
{
  v3 = MEMORY[0x1E696AEC0];
  v8.receiver = self;
  v8.super_class = WFPBRunShortcutEvent;
  v4 = [(WFPBRunShortcutEvent *)&v8 description];
  v5 = [(WFPBRunShortcutEvent *)self dictionaryRepresentation];
  v6 = [v3 stringWithFormat:@"%@ %@", v4, v5];

  return v6;
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

- (void)mergeFrom:(id)a3
{
  v4 = a3;
  v7 = v4;
  if (*(v4 + 5))
  {
    [(WFPBRunShortcutEvent *)self setKey:?];
    v4 = v7;
  }

  if (*(v4 + 7))
  {
    [(WFPBRunShortcutEvent *)self setRunSource:?];
    v4 = v7;
  }

  if (*(v4 + 3))
  {
    [(WFPBRunShortcutEvent *)self setAutomationType:?];
    v4 = v7;
  }

  v5 = *(v4 + 84);
  if (v5)
  {
    self->_actionCount = *(v4 + 2);
    *&self->_has |= 1u;
    v5 = *(v4 + 84);
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

  else if ((*(v4 + 84) & 4) == 0)
  {
    goto LABEL_9;
  }

  self->_completed = *(v4 + 80);
  *&self->_has |= 4u;
  if ((*(v4 + 84) & 0x10) != 0)
  {
LABEL_10:
    self->_didRunRemotely = *(v4 + 82);
    *&self->_has |= 0x10u;
  }

LABEL_11:
  if (*(v4 + 9))
  {
    [(WFPBRunShortcutEvent *)self setShortcutSource:?];
    v4 = v7;
  }

  if (*(v4 + 4))
  {
    [(WFPBRunShortcutEvent *)self setGalleryIdentifier:?];
    v4 = v7;
  }

  v6 = *(v4 + 84);
  if ((v6 & 2) != 0)
  {
    self->_numberOfDialogsPresented = *(v4 + 12);
    *&self->_has |= 2u;
    v6 = *(v4 + 84);
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

  else if ((*(v4 + 84) & 8) == 0)
  {
    goto LABEL_17;
  }

  self->_didPresentShareSheet = *(v4 + 81);
  *&self->_has |= 8u;
  if ((*(v4 + 84) & 0x20) != 0)
  {
LABEL_18:
    self->_isFromAutomationSuggestion = *(v4 + 83);
    *&self->_has |= 0x20u;
  }

LABEL_19:
  if (*(v4 + 2))
  {
    [(WFPBRunShortcutEvent *)self setAutomationSuggestionsTrialIdentifier:?];
    v4 = v7;
  }

  if (*(v4 + 8))
  {
    [(WFPBRunShortcutEvent *)self setScriptingRunBundleIdentifier:?];
    v4 = v7;
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

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  if (![v4 isMemberOfClass:objc_opt_class()])
  {
    goto LABEL_58;
  }

  key = self->_key;
  if (key | *(v4 + 5))
  {
    if (![(NSString *)key isEqual:?])
    {
      goto LABEL_58;
    }
  }

  runSource = self->_runSource;
  if (runSource | *(v4 + 7))
  {
    if (![(NSString *)runSource isEqual:?])
    {
      goto LABEL_58;
    }
  }

  automationType = self->_automationType;
  if (automationType | *(v4 + 3))
  {
    if (![(NSString *)automationType isEqual:?])
    {
      goto LABEL_58;
    }
  }

  v8 = *(v4 + 84);
  if (*&self->_has)
  {
    if ((*(v4 + 84) & 1) == 0 || self->_actionCount != *(v4 + 2))
    {
      goto LABEL_58;
    }
  }

  else if (*(v4 + 84))
  {
    goto LABEL_58;
  }

  if ((*&self->_has & 4) != 0)
  {
    if ((*(v4 + 84) & 4) == 0)
    {
      goto LABEL_58;
    }

    v12 = *(v4 + 80);
    if (self->_completed)
    {
      if ((*(v4 + 80) & 1) == 0)
      {
        goto LABEL_58;
      }
    }

    else if (*(v4 + 80))
    {
      goto LABEL_58;
    }
  }

  else if ((*(v4 + 84) & 4) != 0)
  {
    goto LABEL_58;
  }

  if ((*&self->_has & 0x10) != 0)
  {
    if ((*(v4 + 84) & 0x10) == 0)
    {
      goto LABEL_58;
    }

    v13 = *(v4 + 82);
    if (self->_didRunRemotely)
    {
      if ((*(v4 + 82) & 1) == 0)
      {
        goto LABEL_58;
      }
    }

    else if (*(v4 + 82))
    {
      goto LABEL_58;
    }
  }

  else if ((*(v4 + 84) & 0x10) != 0)
  {
    goto LABEL_58;
  }

  shortcutSource = self->_shortcutSource;
  if (shortcutSource | *(v4 + 9) && ![(NSString *)shortcutSource isEqual:?])
  {
    goto LABEL_58;
  }

  galleryIdentifier = self->_galleryIdentifier;
  if (galleryIdentifier | *(v4 + 4))
  {
    if (![(NSString *)galleryIdentifier isEqual:?])
    {
      goto LABEL_58;
    }
  }

  v11 = *(v4 + 84);
  if ((*&self->_has & 2) != 0)
  {
    if ((*(v4 + 84) & 2) == 0 || self->_numberOfDialogsPresented != *(v4 + 12))
    {
      goto LABEL_58;
    }
  }

  else if ((*(v4 + 84) & 2) != 0)
  {
    goto LABEL_58;
  }

  if ((*&self->_has & 8) != 0)
  {
    if ((*(v4 + 84) & 8) == 0)
    {
      goto LABEL_58;
    }

    v17 = *(v4 + 81);
    if (self->_didPresentShareSheet)
    {
      if ((*(v4 + 81) & 1) == 0)
      {
        goto LABEL_58;
      }
    }

    else if (*(v4 + 81))
    {
      goto LABEL_58;
    }
  }

  else if ((*(v4 + 84) & 8) != 0)
  {
    goto LABEL_58;
  }

  if ((*&self->_has & 0x20) == 0)
  {
    if ((*(v4 + 84) & 0x20) == 0)
    {
      goto LABEL_42;
    }

LABEL_58:
    v16 = 0;
    goto LABEL_59;
  }

  if ((*(v4 + 84) & 0x20) == 0)
  {
    goto LABEL_58;
  }

  v18 = *(v4 + 83);
  if (!self->_isFromAutomationSuggestion)
  {
    if ((*(v4 + 83) & 1) == 0)
    {
      goto LABEL_42;
    }

    goto LABEL_58;
  }

  if ((*(v4 + 83) & 1) == 0)
  {
    goto LABEL_58;
  }

LABEL_42:
  automationSuggestionsTrialIdentifier = self->_automationSuggestionsTrialIdentifier;
  if (automationSuggestionsTrialIdentifier | *(v4 + 2) && ![(NSString *)automationSuggestionsTrialIdentifier isEqual:?])
  {
    goto LABEL_58;
  }

  scriptingRunBundleIdentifier = self->_scriptingRunBundleIdentifier;
  if (scriptingRunBundleIdentifier | *(v4 + 8))
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

- (id)copyWithZone:(_NSZone *)a3
{
  v5 = [objc_msgSend(objc_opt_class() allocWithZone:{a3), "init"}];
  v6 = [(NSString *)self->_key copyWithZone:a3];
  v7 = *(v5 + 40);
  *(v5 + 40) = v6;

  v8 = [(NSString *)self->_runSource copyWithZone:a3];
  v9 = *(v5 + 56);
  *(v5 + 56) = v8;

  v10 = [(NSString *)self->_automationType copyWithZone:a3];
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
  v13 = [(NSString *)self->_shortcutSource copyWithZone:a3];
  v14 = *(v5 + 72);
  *(v5 + 72) = v13;

  v15 = [(NSString *)self->_galleryIdentifier copyWithZone:a3];
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
  v18 = [(NSString *)self->_automationSuggestionsTrialIdentifier copyWithZone:a3];
  v19 = *(v5 + 16);
  *(v5 + 16) = v18;

  v20 = [(NSString *)self->_scriptingRunBundleIdentifier copyWithZone:a3];
  v21 = *(v5 + 64);
  *(v5 + 64) = v20;

  return v5;
}

- (void)copyTo:(id)a3
{
  v4 = a3;
  v7 = v4;
  if (self->_key)
  {
    [v4 setKey:?];
    v4 = v7;
  }

  if (self->_runSource)
  {
    [v7 setRunSource:?];
    v4 = v7;
  }

  if (self->_automationType)
  {
    [v7 setAutomationType:?];
    v4 = v7;
  }

  has = self->_has;
  if (has)
  {
    *(v4 + 2) = self->_actionCount;
    *(v4 + 84) |= 1u;
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

  *(v4 + 80) = self->_completed;
  *(v4 + 84) |= 4u;
  if ((*&self->_has & 0x10) != 0)
  {
LABEL_10:
    *(v4 + 82) = self->_didRunRemotely;
    *(v4 + 84) |= 0x10u;
  }

LABEL_11:
  if (self->_shortcutSource)
  {
    [v7 setShortcutSource:?];
    v4 = v7;
  }

  if (self->_galleryIdentifier)
  {
    [v7 setGalleryIdentifier:?];
    v4 = v7;
  }

  v6 = self->_has;
  if ((v6 & 2) != 0)
  {
    *(v4 + 12) = self->_numberOfDialogsPresented;
    *(v4 + 84) |= 2u;
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

  *(v4 + 81) = self->_didPresentShareSheet;
  *(v4 + 84) |= 8u;
  if ((*&self->_has & 0x20) != 0)
  {
LABEL_18:
    *(v4 + 83) = self->_isFromAutomationSuggestion;
    *(v4 + 84) |= 0x20u;
  }

LABEL_19:
  if (self->_automationSuggestionsTrialIdentifier)
  {
    [v7 setAutomationSuggestionsTrialIdentifier:?];
    v4 = v7;
  }

  if (self->_scriptingRunBundleIdentifier)
  {
    [v7 setScriptingRunBundleIdentifier:?];
    v4 = v7;
  }
}

- (void)writeTo:(id)a3
{
  v4 = a3;
  v13 = v4;
  if (self->_key)
  {
    PBDataWriterWriteStringField();
    v4 = v13;
  }

  if (self->_runSource)
  {
    PBDataWriterWriteStringField();
    v4 = v13;
  }

  if (self->_automationType)
  {
    PBDataWriterWriteStringField();
    v4 = v13;
  }

  has = self->_has;
  if (has)
  {
    actionCount = self->_actionCount;
    PBDataWriterWriteUint32Field();
    v4 = v13;
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
  v4 = v13;
  if ((*&self->_has & 0x10) != 0)
  {
LABEL_10:
    didRunRemotely = self->_didRunRemotely;
    PBDataWriterWriteBOOLField();
    v4 = v13;
  }

LABEL_11:
  if (self->_shortcutSource)
  {
    PBDataWriterWriteStringField();
    v4 = v13;
  }

  if (self->_galleryIdentifier)
  {
    PBDataWriterWriteStringField();
    v4 = v13;
  }

  v7 = self->_has;
  if ((v7 & 2) != 0)
  {
    numberOfDialogsPresented = self->_numberOfDialogsPresented;
    PBDataWriterWriteUint32Field();
    v4 = v13;
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
  v4 = v13;
  if ((*&self->_has & 0x20) != 0)
  {
LABEL_18:
    isFromAutomationSuggestion = self->_isFromAutomationSuggestion;
    PBDataWriterWriteBOOLField();
    v4 = v13;
  }

LABEL_19:
  if (self->_automationSuggestionsTrialIdentifier)
  {
    PBDataWriterWriteStringField();
    v4 = v13;
  }

  if (self->_scriptingRunBundleIdentifier)
  {
    PBDataWriterWriteStringField();
    v4 = v13;
  }
}

- (void)setHasIsFromAutomationSuggestion:(BOOL)a3
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

- (void)setHasDidPresentShareSheet:(BOOL)a3
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

- (void)setHasNumberOfDialogsPresented:(BOOL)a3
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

- (void)setHasDidRunRemotely:(BOOL)a3
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

- (void)setHasCompleted:(BOOL)a3
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