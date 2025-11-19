@interface ATXPBContextualActionsGroupedUIFeedbackResult
- (BOOL)isEqual:(id)a3;
- (id)copyWithZone:(_NSZone *)a3;
- (id)description;
- (id)dictionaryRepresentation;
- (unint64_t)hash;
- (void)copyTo:(id)a3;
- (void)mergeFrom:(id)a3;
- (void)setHasNumShortcutsAtEnd:(BOOL)a3;
- (void)setHasNumShortcutsAtStart:(BOOL)a3;
- (void)writeTo:(id)a3;
@end

@implementation ATXPBContextualActionsGroupedUIFeedbackResult

- (void)setHasNumShortcutsAtStart:(BOOL)a3
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

- (void)setHasNumShortcutsAtEnd:(BOOL)a3
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

- (id)description
{
  v3 = MEMORY[0x1E696AEC0];
  v8.receiver = self;
  v8.super_class = ATXPBContextualActionsGroupedUIFeedbackResult;
  v4 = [(ATXPBContextualActionsGroupedUIFeedbackResult *)&v8 description];
  v5 = [(ATXPBContextualActionsGroupedUIFeedbackResult *)self dictionaryRepresentation];
  v6 = [v3 stringWithFormat:@"%@ %@", v4, v5];

  return v6;
}

- (id)dictionaryRepresentation
{
  v3 = [MEMORY[0x1E695DF90] dictionary];
  groupedUIFeedbackResults = self->_groupedUIFeedbackResults;
  if (groupedUIFeedbackResults)
  {
    v5 = [(ATXPBProactiveSuggestionGroupedUIFeedbackResult *)groupedUIFeedbackResults dictionaryRepresentation];
    [v3 setObject:v5 forKey:@"groupedUIFeedbackResults"];
  }

  has = self->_has;
  if ((has & 4) != 0)
  {
    v9 = [MEMORY[0x1E696AD98] numberWithUnsignedLongLong:self->_numShortcutsAtStart];
    [v3 setObject:v9 forKey:@"numShortcutsAtStart"];

    has = self->_has;
    if ((has & 2) == 0)
    {
LABEL_5:
      if ((has & 1) == 0)
      {
        goto LABEL_7;
      }

      goto LABEL_6;
    }
  }

  else if ((*&self->_has & 2) == 0)
  {
    goto LABEL_5;
  }

  v10 = [MEMORY[0x1E696AD98] numberWithUnsignedLongLong:self->_numShortcutsAtEnd];
  [v3 setObject:v10 forKey:@"numShortcutsAtEnd"];

  if (*&self->_has)
  {
LABEL_6:
    v7 = [MEMORY[0x1E696AD98] numberWithUnsignedLongLong:self->_numManuallyAddedSteps];
    [v3 setObject:v7 forKey:@"numManuallyAddedSteps"];
  }

LABEL_7:

  return v3;
}

- (void)writeTo:(id)a3
{
  v4 = a3;
  v9 = v4;
  if (self->_groupedUIFeedbackResults)
  {
    PBDataWriterWriteSubmessage();
    v4 = v9;
  }

  has = self->_has;
  if ((has & 4) != 0)
  {
    numShortcutsAtStart = self->_numShortcutsAtStart;
    PBDataWriterWriteUint64Field();
    v4 = v9;
    has = self->_has;
    if ((has & 2) == 0)
    {
LABEL_5:
      if ((has & 1) == 0)
      {
        goto LABEL_7;
      }

      goto LABEL_6;
    }
  }

  else if ((*&self->_has & 2) == 0)
  {
    goto LABEL_5;
  }

  numShortcutsAtEnd = self->_numShortcutsAtEnd;
  PBDataWriterWriteUint64Field();
  v4 = v9;
  if (*&self->_has)
  {
LABEL_6:
    numManuallyAddedSteps = self->_numManuallyAddedSteps;
    PBDataWriterWriteUint64Field();
    v4 = v9;
  }

LABEL_7:
}

- (void)copyTo:(id)a3
{
  v4 = a3;
  if (self->_groupedUIFeedbackResults)
  {
    v6 = v4;
    [v4 setGroupedUIFeedbackResults:?];
    v4 = v6;
  }

  has = self->_has;
  if ((has & 4) != 0)
  {
    *(v4 + 3) = self->_numShortcutsAtStart;
    *(v4 + 40) |= 4u;
    has = self->_has;
    if ((has & 2) == 0)
    {
LABEL_5:
      if ((has & 1) == 0)
      {
        goto LABEL_7;
      }

      goto LABEL_6;
    }
  }

  else if ((*&self->_has & 2) == 0)
  {
    goto LABEL_5;
  }

  *(v4 + 2) = self->_numShortcutsAtEnd;
  *(v4 + 40) |= 2u;
  if (*&self->_has)
  {
LABEL_6:
    *(v4 + 1) = self->_numManuallyAddedSteps;
    *(v4 + 40) |= 1u;
  }

LABEL_7:
}

- (id)copyWithZone:(_NSZone *)a3
{
  v5 = [objc_msgSend(objc_opt_class() allocWithZone:{a3), "init"}];
  v6 = [(ATXPBProactiveSuggestionGroupedUIFeedbackResult *)self->_groupedUIFeedbackResults copyWithZone:a3];
  v7 = *(v5 + 32);
  *(v5 + 32) = v6;

  has = self->_has;
  if ((has & 4) == 0)
  {
    if ((*&self->_has & 2) == 0)
    {
      goto LABEL_3;
    }

LABEL_7:
    *(v5 + 16) = self->_numShortcutsAtEnd;
    *(v5 + 40) |= 2u;
    if ((*&self->_has & 1) == 0)
    {
      return v5;
    }

    goto LABEL_4;
  }

  *(v5 + 24) = self->_numShortcutsAtStart;
  *(v5 + 40) |= 4u;
  has = self->_has;
  if ((has & 2) != 0)
  {
    goto LABEL_7;
  }

LABEL_3:
  if (has)
  {
LABEL_4:
    *(v5 + 8) = self->_numManuallyAddedSteps;
    *(v5 + 40) |= 1u;
  }

  return v5;
}

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  if (![v4 isMemberOfClass:objc_opt_class()])
  {
    goto LABEL_18;
  }

  groupedUIFeedbackResults = self->_groupedUIFeedbackResults;
  if (groupedUIFeedbackResults | *(v4 + 4))
  {
    if (![(ATXPBProactiveSuggestionGroupedUIFeedbackResult *)groupedUIFeedbackResults isEqual:?])
    {
      goto LABEL_18;
    }
  }

  if ((*&self->_has & 4) != 0)
  {
    if ((*(v4 + 40) & 4) == 0 || self->_numShortcutsAtStart != *(v4 + 3))
    {
      goto LABEL_18;
    }
  }

  else if ((*(v4 + 40) & 4) != 0)
  {
LABEL_18:
    v6 = 0;
    goto LABEL_19;
  }

  if ((*&self->_has & 2) != 0)
  {
    if ((*(v4 + 40) & 2) == 0 || self->_numShortcutsAtEnd != *(v4 + 2))
    {
      goto LABEL_18;
    }
  }

  else if ((*(v4 + 40) & 2) != 0)
  {
    goto LABEL_18;
  }

  v6 = (*(v4 + 40) & 1) == 0;
  if (*&self->_has)
  {
    if ((*(v4 + 40) & 1) == 0 || self->_numManuallyAddedSteps != *(v4 + 1))
    {
      goto LABEL_18;
    }

    v6 = 1;
  }

LABEL_19:

  return v6;
}

- (unint64_t)hash
{
  v3 = [(ATXPBProactiveSuggestionGroupedUIFeedbackResult *)self->_groupedUIFeedbackResults hash];
  if ((*&self->_has & 4) == 0)
  {
    v4 = 0;
    if ((*&self->_has & 2) != 0)
    {
      goto LABEL_3;
    }

LABEL_6:
    v5 = 0;
    if (*&self->_has)
    {
      goto LABEL_4;
    }

LABEL_7:
    v6 = 0;
    return v4 ^ v3 ^ v5 ^ v6;
  }

  v4 = 2654435761u * self->_numShortcutsAtStart;
  if ((*&self->_has & 2) == 0)
  {
    goto LABEL_6;
  }

LABEL_3:
  v5 = 2654435761u * self->_numShortcutsAtEnd;
  if ((*&self->_has & 1) == 0)
  {
    goto LABEL_7;
  }

LABEL_4:
  v6 = 2654435761u * self->_numManuallyAddedSteps;
  return v4 ^ v3 ^ v5 ^ v6;
}

- (void)mergeFrom:(id)a3
{
  v4 = a3;
  groupedUIFeedbackResults = self->_groupedUIFeedbackResults;
  v6 = v4[4];
  if (groupedUIFeedbackResults)
  {
    if (!v6)
    {
      goto LABEL_7;
    }

    v8 = v4;
    groupedUIFeedbackResults = [(ATXPBProactiveSuggestionGroupedUIFeedbackResult *)groupedUIFeedbackResults mergeFrom:?];
  }

  else
  {
    if (!v6)
    {
      goto LABEL_7;
    }

    v8 = v4;
    groupedUIFeedbackResults = [(ATXPBContextualActionsGroupedUIFeedbackResult *)self setGroupedUIFeedbackResults:?];
  }

  v4 = v8;
LABEL_7:
  v7 = *(v4 + 40);
  if ((v7 & 4) != 0)
  {
    self->_numShortcutsAtStart = v4[3];
    *&self->_has |= 4u;
    v7 = *(v4 + 40);
    if ((v7 & 2) == 0)
    {
LABEL_9:
      if ((v7 & 1) == 0)
      {
        goto LABEL_11;
      }

      goto LABEL_10;
    }
  }

  else if ((v4[5] & 2) == 0)
  {
    goto LABEL_9;
  }

  self->_numShortcutsAtEnd = v4[2];
  *&self->_has |= 2u;
  if (v4[5])
  {
LABEL_10:
    self->_numManuallyAddedSteps = v4[1];
    *&self->_has |= 1u;
  }

LABEL_11:

  MEMORY[0x1EEE66BB8](groupedUIFeedbackResults, v4);
}

@end