@interface ATXPBContextualActionsGroupedUIFeedbackResult
- (BOOL)isEqual:(id)equal;
- (id)copyWithZone:(_NSZone *)zone;
- (id)description;
- (id)dictionaryRepresentation;
- (unint64_t)hash;
- (void)copyTo:(id)to;
- (void)mergeFrom:(id)from;
- (void)setHasNumShortcutsAtEnd:(BOOL)end;
- (void)setHasNumShortcutsAtStart:(BOOL)start;
- (void)writeTo:(id)to;
@end

@implementation ATXPBContextualActionsGroupedUIFeedbackResult

- (void)setHasNumShortcutsAtStart:(BOOL)start
{
  if (start)
  {
    v3 = 4;
  }

  else
  {
    v3 = 0;
  }

  *&self->_has = *&self->_has & 0xFB | v3;
}

- (void)setHasNumShortcutsAtEnd:(BOOL)end
{
  if (end)
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
  dictionaryRepresentation = [(ATXPBContextualActionsGroupedUIFeedbackResult *)self dictionaryRepresentation];
  v6 = [v3 stringWithFormat:@"%@ %@", v4, dictionaryRepresentation];

  return v6;
}

- (id)dictionaryRepresentation
{
  dictionary = [MEMORY[0x1E695DF90] dictionary];
  groupedUIFeedbackResults = self->_groupedUIFeedbackResults;
  if (groupedUIFeedbackResults)
  {
    dictionaryRepresentation = [(ATXPBProactiveSuggestionGroupedUIFeedbackResult *)groupedUIFeedbackResults dictionaryRepresentation];
    [dictionary setObject:dictionaryRepresentation forKey:@"groupedUIFeedbackResults"];
  }

  has = self->_has;
  if ((has & 4) != 0)
  {
    v9 = [MEMORY[0x1E696AD98] numberWithUnsignedLongLong:self->_numShortcutsAtStart];
    [dictionary setObject:v9 forKey:@"numShortcutsAtStart"];

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
  [dictionary setObject:v10 forKey:@"numShortcutsAtEnd"];

  if (*&self->_has)
  {
LABEL_6:
    v7 = [MEMORY[0x1E696AD98] numberWithUnsignedLongLong:self->_numManuallyAddedSteps];
    [dictionary setObject:v7 forKey:@"numManuallyAddedSteps"];
  }

LABEL_7:

  return dictionary;
}

- (void)writeTo:(id)to
{
  toCopy = to;
  v9 = toCopy;
  if (self->_groupedUIFeedbackResults)
  {
    PBDataWriterWriteSubmessage();
    toCopy = v9;
  }

  has = self->_has;
  if ((has & 4) != 0)
  {
    numShortcutsAtStart = self->_numShortcutsAtStart;
    PBDataWriterWriteUint64Field();
    toCopy = v9;
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
  toCopy = v9;
  if (*&self->_has)
  {
LABEL_6:
    numManuallyAddedSteps = self->_numManuallyAddedSteps;
    PBDataWriterWriteUint64Field();
    toCopy = v9;
  }

LABEL_7:
}

- (void)copyTo:(id)to
{
  toCopy = to;
  if (self->_groupedUIFeedbackResults)
  {
    v6 = toCopy;
    [toCopy setGroupedUIFeedbackResults:?];
    toCopy = v6;
  }

  has = self->_has;
  if ((has & 4) != 0)
  {
    *(toCopy + 3) = self->_numShortcutsAtStart;
    *(toCopy + 40) |= 4u;
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

  *(toCopy + 2) = self->_numShortcutsAtEnd;
  *(toCopy + 40) |= 2u;
  if (*&self->_has)
  {
LABEL_6:
    *(toCopy + 1) = self->_numManuallyAddedSteps;
    *(toCopy + 40) |= 1u;
  }

LABEL_7:
}

- (id)copyWithZone:(_NSZone *)zone
{
  v5 = [objc_msgSend(objc_opt_class() allocWithZone:{zone), "init"}];
  v6 = [(ATXPBProactiveSuggestionGroupedUIFeedbackResult *)self->_groupedUIFeedbackResults copyWithZone:zone];
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

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  if (![equalCopy isMemberOfClass:objc_opt_class()])
  {
    goto LABEL_18;
  }

  groupedUIFeedbackResults = self->_groupedUIFeedbackResults;
  if (groupedUIFeedbackResults | *(equalCopy + 4))
  {
    if (![(ATXPBProactiveSuggestionGroupedUIFeedbackResult *)groupedUIFeedbackResults isEqual:?])
    {
      goto LABEL_18;
    }
  }

  if ((*&self->_has & 4) != 0)
  {
    if ((*(equalCopy + 40) & 4) == 0 || self->_numShortcutsAtStart != *(equalCopy + 3))
    {
      goto LABEL_18;
    }
  }

  else if ((*(equalCopy + 40) & 4) != 0)
  {
LABEL_18:
    v6 = 0;
    goto LABEL_19;
  }

  if ((*&self->_has & 2) != 0)
  {
    if ((*(equalCopy + 40) & 2) == 0 || self->_numShortcutsAtEnd != *(equalCopy + 2))
    {
      goto LABEL_18;
    }
  }

  else if ((*(equalCopy + 40) & 2) != 0)
  {
    goto LABEL_18;
  }

  v6 = (*(equalCopy + 40) & 1) == 0;
  if (*&self->_has)
  {
    if ((*(equalCopy + 40) & 1) == 0 || self->_numManuallyAddedSteps != *(equalCopy + 1))
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

- (void)mergeFrom:(id)from
{
  fromCopy = from;
  groupedUIFeedbackResults = self->_groupedUIFeedbackResults;
  v6 = fromCopy[4];
  if (groupedUIFeedbackResults)
  {
    if (!v6)
    {
      goto LABEL_7;
    }

    v8 = fromCopy;
    groupedUIFeedbackResults = [(ATXPBProactiveSuggestionGroupedUIFeedbackResult *)groupedUIFeedbackResults mergeFrom:?];
  }

  else
  {
    if (!v6)
    {
      goto LABEL_7;
    }

    v8 = fromCopy;
    groupedUIFeedbackResults = [(ATXPBContextualActionsGroupedUIFeedbackResult *)self setGroupedUIFeedbackResults:?];
  }

  fromCopy = v8;
LABEL_7:
  v7 = *(fromCopy + 40);
  if ((v7 & 4) != 0)
  {
    self->_numShortcutsAtStart = fromCopy[3];
    *&self->_has |= 4u;
    v7 = *(fromCopy + 40);
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

  else if ((fromCopy[5] & 2) == 0)
  {
    goto LABEL_9;
  }

  self->_numShortcutsAtEnd = fromCopy[2];
  *&self->_has |= 2u;
  if (fromCopy[5])
  {
LABEL_10:
    self->_numManuallyAddedSteps = fromCopy[1];
    *&self->_has |= 1u;
  }

LABEL_11:

  MEMORY[0x1EEE66BB8](groupedUIFeedbackResults, fromCopy);
}

@end