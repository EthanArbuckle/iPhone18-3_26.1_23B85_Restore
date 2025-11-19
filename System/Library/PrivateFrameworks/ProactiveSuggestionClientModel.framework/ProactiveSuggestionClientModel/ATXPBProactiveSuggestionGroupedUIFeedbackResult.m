@interface ATXPBProactiveSuggestionGroupedUIFeedbackResult
- (BOOL)isEqual:(id)a3;
- (id)copyWithZone:(_NSZone *)a3;
- (id)description;
- (id)dictionaryRepresentation;
- (unint64_t)hash;
- (void)copyTo:(id)a3;
- (void)mergeFrom:(id)a3;
- (void)setHasIsComplete:(BOOL)a3;
- (void)setHasNumAbandonedSuggestions:(BOOL)a3;
- (void)setHasNumEngagedSuggestions:(BOOL)a3;
- (void)setHasNumRejectedSuggestions:(BOOL)a3;
- (void)setHasNumSessionsWithAbandonedSuggestions:(BOOL)a3;
- (void)setHasNumSessionsWithEngagedSuggestions:(BOOL)a3;
- (void)setHasNumSessionsWithRejectedSuggestions:(BOOL)a3;
- (void)setHasStartDateOfFirstSessionInSeconds:(BOOL)a3;
- (void)writeTo:(id)a3;
@end

@implementation ATXPBProactiveSuggestionGroupedUIFeedbackResult

- (void)setHasNumSessionsWithEngagedSuggestions:(BOOL)a3
{
  if (a3)
  {
    v3 = 32;
  }

  else
  {
    v3 = 0;
  }

  *&self->_has = *&self->_has & 0xFFDF | v3;
}

- (void)setHasNumSessionsWithRejectedSuggestions:(BOOL)a3
{
  if (a3)
  {
    v3 = 64;
  }

  else
  {
    v3 = 0;
  }

  *&self->_has = *&self->_has & 0xFFBF | v3;
}

- (void)setHasNumSessionsWithAbandonedSuggestions:(BOOL)a3
{
  if (a3)
  {
    v3 = 16;
  }

  else
  {
    v3 = 0;
  }

  *&self->_has = *&self->_has & 0xFFEF | v3;
}

- (void)setHasNumEngagedSuggestions:(BOOL)a3
{
  if (a3)
  {
    v3 = 4;
  }

  else
  {
    v3 = 0;
  }

  *&self->_has = *&self->_has & 0xFFFB | v3;
}

- (void)setHasNumRejectedSuggestions:(BOOL)a3
{
  if (a3)
  {
    v3 = 8;
  }

  else
  {
    v3 = 0;
  }

  *&self->_has = *&self->_has & 0xFFF7 | v3;
}

- (void)setHasNumAbandonedSuggestions:(BOOL)a3
{
  if (a3)
  {
    v3 = 2;
  }

  else
  {
    v3 = 0;
  }

  *&self->_has = *&self->_has & 0xFFFD | v3;
}

- (void)setHasIsComplete:(BOOL)a3
{
  if (a3)
  {
    v3 = 256;
  }

  else
  {
    v3 = 0;
  }

  *&self->_has = *&self->_has & 0xFEFF | v3;
}

- (void)setHasStartDateOfFirstSessionInSeconds:(BOOL)a3
{
  if (a3)
  {
    v3 = 128;
  }

  else
  {
    v3 = 0;
  }

  *&self->_has = *&self->_has & 0xFF7F | v3;
}

- (id)description
{
  v3 = MEMORY[0x1E696AEC0];
  v8.receiver = self;
  v8.super_class = ATXPBProactiveSuggestionGroupedUIFeedbackResult;
  v4 = [(ATXPBProactiveSuggestionGroupedUIFeedbackResult *)&v8 description];
  v5 = [(ATXPBProactiveSuggestionGroupedUIFeedbackResult *)self dictionaryRepresentation];
  v6 = [v3 stringWithFormat:@"%@ %@", v4, v5];

  return v6;
}

- (id)dictionaryRepresentation
{
  v3 = [MEMORY[0x1E695DF90] dictionary];
  has = self->_has;
  if ((has & 0x20) != 0)
  {
    v7 = [MEMORY[0x1E696AD98] numberWithUnsignedLongLong:self->_numSessionsWithEngagedSuggestions];
    [v3 setObject:v7 forKey:@"numSessionsWithEngagedSuggestions"];

    has = self->_has;
    if ((has & 0x40) == 0)
    {
LABEL_3:
      if ((has & 0x10) == 0)
      {
        goto LABEL_4;
      }

      goto LABEL_16;
    }
  }

  else if ((has & 0x40) == 0)
  {
    goto LABEL_3;
  }

  v8 = [MEMORY[0x1E696AD98] numberWithUnsignedLongLong:self->_numSessionsWithRejectedSuggestions];
  [v3 setObject:v8 forKey:@"numSessionsWithRejectedSuggestions"];

  has = self->_has;
  if ((has & 0x10) == 0)
  {
LABEL_4:
    if ((has & 4) == 0)
    {
      goto LABEL_5;
    }

    goto LABEL_17;
  }

LABEL_16:
  v9 = [MEMORY[0x1E696AD98] numberWithUnsignedLongLong:self->_numSessionsWithAbandonedSuggestions];
  [v3 setObject:v9 forKey:@"numSessionsWithAbandonedSuggestions"];

  has = self->_has;
  if ((has & 4) == 0)
  {
LABEL_5:
    if ((has & 8) == 0)
    {
      goto LABEL_6;
    }

    goto LABEL_18;
  }

LABEL_17:
  v10 = [MEMORY[0x1E696AD98] numberWithUnsignedLongLong:self->_numEngagedSuggestions];
  [v3 setObject:v10 forKey:@"numEngagedSuggestions"];

  has = self->_has;
  if ((has & 8) == 0)
  {
LABEL_6:
    if ((has & 2) == 0)
    {
      goto LABEL_7;
    }

    goto LABEL_19;
  }

LABEL_18:
  v11 = [MEMORY[0x1E696AD98] numberWithUnsignedLongLong:self->_numRejectedSuggestions];
  [v3 setObject:v11 forKey:@"numRejectedSuggestions"];

  has = self->_has;
  if ((has & 2) == 0)
  {
LABEL_7:
    if ((has & 0x100) == 0)
    {
      goto LABEL_8;
    }

    goto LABEL_20;
  }

LABEL_19:
  v12 = [MEMORY[0x1E696AD98] numberWithUnsignedLongLong:self->_numAbandonedSuggestions];
  [v3 setObject:v12 forKey:@"numAbandonedSuggestions"];

  has = self->_has;
  if ((has & 0x100) == 0)
  {
LABEL_8:
    if ((has & 0x80) == 0)
    {
      goto LABEL_9;
    }

    goto LABEL_21;
  }

LABEL_20:
  v13 = [MEMORY[0x1E696AD98] numberWithBool:self->_isComplete];
  [v3 setObject:v13 forKey:@"isComplete"];

  has = self->_has;
  if ((has & 0x80) == 0)
  {
LABEL_9:
    if ((has & 1) == 0)
    {
      goto LABEL_11;
    }

    goto LABEL_10;
  }

LABEL_21:
  v14 = [MEMORY[0x1E696AD98] numberWithDouble:self->_startDateOfFirstSessionInSeconds];
  [v3 setObject:v14 forKey:@"startDateOfFirstSessionInSeconds"];

  if (*&self->_has)
  {
LABEL_10:
    v5 = [MEMORY[0x1E696AD98] numberWithDouble:self->_endDateOfLastSessionInSeconds];
    [v3 setObject:v5 forKey:@"endDateOfLastSessionInSeconds"];
  }

LABEL_11:

  return v3;
}

- (void)writeTo:(id)a3
{
  v14 = a3;
  has = self->_has;
  if ((has & 0x20) != 0)
  {
    numSessionsWithEngagedSuggestions = self->_numSessionsWithEngagedSuggestions;
    PBDataWriterWriteUint64Field();
    has = self->_has;
    if ((has & 0x40) == 0)
    {
LABEL_3:
      if ((has & 0x10) == 0)
      {
        goto LABEL_4;
      }

      goto LABEL_16;
    }
  }

  else if ((has & 0x40) == 0)
  {
    goto LABEL_3;
  }

  numSessionsWithRejectedSuggestions = self->_numSessionsWithRejectedSuggestions;
  PBDataWriterWriteUint64Field();
  has = self->_has;
  if ((has & 0x10) == 0)
  {
LABEL_4:
    if ((has & 4) == 0)
    {
      goto LABEL_5;
    }

    goto LABEL_17;
  }

LABEL_16:
  numSessionsWithAbandonedSuggestions = self->_numSessionsWithAbandonedSuggestions;
  PBDataWriterWriteUint64Field();
  has = self->_has;
  if ((has & 4) == 0)
  {
LABEL_5:
    if ((has & 8) == 0)
    {
      goto LABEL_6;
    }

    goto LABEL_18;
  }

LABEL_17:
  numEngagedSuggestions = self->_numEngagedSuggestions;
  PBDataWriterWriteUint64Field();
  has = self->_has;
  if ((has & 8) == 0)
  {
LABEL_6:
    if ((has & 2) == 0)
    {
      goto LABEL_7;
    }

    goto LABEL_19;
  }

LABEL_18:
  numRejectedSuggestions = self->_numRejectedSuggestions;
  PBDataWriterWriteUint64Field();
  has = self->_has;
  if ((has & 2) == 0)
  {
LABEL_7:
    if ((has & 0x100) == 0)
    {
      goto LABEL_8;
    }

    goto LABEL_20;
  }

LABEL_19:
  numAbandonedSuggestions = self->_numAbandonedSuggestions;
  PBDataWriterWriteUint64Field();
  has = self->_has;
  if ((has & 0x100) == 0)
  {
LABEL_8:
    if ((has & 0x80) == 0)
    {
      goto LABEL_9;
    }

    goto LABEL_21;
  }

LABEL_20:
  isComplete = self->_isComplete;
  PBDataWriterWriteBOOLField();
  has = self->_has;
  if ((has & 0x80) == 0)
  {
LABEL_9:
    if ((has & 1) == 0)
    {
      goto LABEL_11;
    }

    goto LABEL_10;
  }

LABEL_21:
  startDateOfFirstSessionInSeconds = self->_startDateOfFirstSessionInSeconds;
  PBDataWriterWriteDoubleField();
  if (*&self->_has)
  {
LABEL_10:
    endDateOfLastSessionInSeconds = self->_endDateOfLastSessionInSeconds;
    PBDataWriterWriteDoubleField();
  }

LABEL_11:
}

- (void)copyTo:(id)a3
{
  v4 = a3;
  has = self->_has;
  if ((has & 0x20) != 0)
  {
    v4[6] = self->_numSessionsWithEngagedSuggestions;
    *(v4 + 38) |= 0x20u;
    has = self->_has;
    if ((has & 0x40) == 0)
    {
LABEL_3:
      if ((has & 0x10) == 0)
      {
        goto LABEL_4;
      }

      goto LABEL_16;
    }
  }

  else if ((has & 0x40) == 0)
  {
    goto LABEL_3;
  }

  v4[7] = self->_numSessionsWithRejectedSuggestions;
  *(v4 + 38) |= 0x40u;
  has = self->_has;
  if ((has & 0x10) == 0)
  {
LABEL_4:
    if ((has & 4) == 0)
    {
      goto LABEL_5;
    }

    goto LABEL_17;
  }

LABEL_16:
  v4[5] = self->_numSessionsWithAbandonedSuggestions;
  *(v4 + 38) |= 0x10u;
  has = self->_has;
  if ((has & 4) == 0)
  {
LABEL_5:
    if ((has & 8) == 0)
    {
      goto LABEL_6;
    }

    goto LABEL_18;
  }

LABEL_17:
  v4[3] = self->_numEngagedSuggestions;
  *(v4 + 38) |= 4u;
  has = self->_has;
  if ((has & 8) == 0)
  {
LABEL_6:
    if ((has & 2) == 0)
    {
      goto LABEL_7;
    }

    goto LABEL_19;
  }

LABEL_18:
  v4[4] = self->_numRejectedSuggestions;
  *(v4 + 38) |= 8u;
  has = self->_has;
  if ((has & 2) == 0)
  {
LABEL_7:
    if ((has & 0x100) == 0)
    {
      goto LABEL_8;
    }

    goto LABEL_20;
  }

LABEL_19:
  v4[2] = self->_numAbandonedSuggestions;
  *(v4 + 38) |= 2u;
  has = self->_has;
  if ((has & 0x100) == 0)
  {
LABEL_8:
    if ((has & 0x80) == 0)
    {
      goto LABEL_9;
    }

    goto LABEL_21;
  }

LABEL_20:
  *(v4 + 72) = self->_isComplete;
  *(v4 + 38) |= 0x100u;
  has = self->_has;
  if ((has & 0x80) == 0)
  {
LABEL_9:
    if ((has & 1) == 0)
    {
      goto LABEL_11;
    }

    goto LABEL_10;
  }

LABEL_21:
  v4[8] = *&self->_startDateOfFirstSessionInSeconds;
  *(v4 + 38) |= 0x80u;
  if (*&self->_has)
  {
LABEL_10:
    v4[1] = *&self->_endDateOfLastSessionInSeconds;
    *(v4 + 38) |= 1u;
  }

LABEL_11:
}

- (id)copyWithZone:(_NSZone *)a3
{
  result = [objc_msgSend(objc_opt_class() allocWithZone:{a3), "init"}];
  has = self->_has;
  if ((has & 0x20) != 0)
  {
    *(result + 6) = self->_numSessionsWithEngagedSuggestions;
    *(result + 38) |= 0x20u;
    has = self->_has;
    if ((has & 0x40) == 0)
    {
LABEL_3:
      if ((has & 0x10) == 0)
      {
        goto LABEL_4;
      }

      goto LABEL_14;
    }
  }

  else if ((has & 0x40) == 0)
  {
    goto LABEL_3;
  }

  *(result + 7) = self->_numSessionsWithRejectedSuggestions;
  *(result + 38) |= 0x40u;
  has = self->_has;
  if ((has & 0x10) == 0)
  {
LABEL_4:
    if ((has & 4) == 0)
    {
      goto LABEL_5;
    }

    goto LABEL_15;
  }

LABEL_14:
  *(result + 5) = self->_numSessionsWithAbandonedSuggestions;
  *(result + 38) |= 0x10u;
  has = self->_has;
  if ((has & 4) == 0)
  {
LABEL_5:
    if ((has & 8) == 0)
    {
      goto LABEL_6;
    }

    goto LABEL_16;
  }

LABEL_15:
  *(result + 3) = self->_numEngagedSuggestions;
  *(result + 38) |= 4u;
  has = self->_has;
  if ((has & 8) == 0)
  {
LABEL_6:
    if ((has & 2) == 0)
    {
      goto LABEL_7;
    }

    goto LABEL_17;
  }

LABEL_16:
  *(result + 4) = self->_numRejectedSuggestions;
  *(result + 38) |= 8u;
  has = self->_has;
  if ((has & 2) == 0)
  {
LABEL_7:
    if ((has & 0x100) == 0)
    {
      goto LABEL_8;
    }

    goto LABEL_18;
  }

LABEL_17:
  *(result + 2) = self->_numAbandonedSuggestions;
  *(result + 38) |= 2u;
  has = self->_has;
  if ((has & 0x100) == 0)
  {
LABEL_8:
    if ((has & 0x80) == 0)
    {
      goto LABEL_9;
    }

    goto LABEL_19;
  }

LABEL_18:
  *(result + 72) = self->_isComplete;
  *(result + 38) |= 0x100u;
  has = self->_has;
  if ((has & 0x80) == 0)
  {
LABEL_9:
    if ((has & 1) == 0)
    {
      return result;
    }

    goto LABEL_10;
  }

LABEL_19:
  *(result + 8) = *&self->_startDateOfFirstSessionInSeconds;
  *(result + 38) |= 0x80u;
  if ((*&self->_has & 1) == 0)
  {
    return result;
  }

LABEL_10:
  *(result + 1) = *&self->_endDateOfLastSessionInSeconds;
  *(result + 38) |= 1u;
  return result;
}

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  if (![v4 isMemberOfClass:objc_opt_class()])
  {
    goto LABEL_48;
  }

  has = self->_has;
  v6 = *(v4 + 38);
  if ((has & 0x20) != 0)
  {
    if ((v6 & 0x20) == 0 || self->_numSessionsWithEngagedSuggestions != *(v4 + 6))
    {
      goto LABEL_48;
    }
  }

  else if ((v6 & 0x20) != 0)
  {
    goto LABEL_48;
  }

  if ((has & 0x40) != 0)
  {
    if ((v6 & 0x40) == 0 || self->_numSessionsWithRejectedSuggestions != *(v4 + 7))
    {
      goto LABEL_48;
    }
  }

  else if ((v6 & 0x40) != 0)
  {
    goto LABEL_48;
  }

  if ((has & 0x10) != 0)
  {
    if ((v6 & 0x10) == 0 || self->_numSessionsWithAbandonedSuggestions != *(v4 + 5))
    {
      goto LABEL_48;
    }
  }

  else if ((v6 & 0x10) != 0)
  {
    goto LABEL_48;
  }

  if ((has & 4) != 0)
  {
    if ((v6 & 4) == 0 || self->_numEngagedSuggestions != *(v4 + 3))
    {
      goto LABEL_48;
    }
  }

  else if ((v6 & 4) != 0)
  {
    goto LABEL_48;
  }

  if ((has & 8) != 0)
  {
    if ((v6 & 8) == 0 || self->_numRejectedSuggestions != *(v4 + 4))
    {
      goto LABEL_48;
    }
  }

  else if ((v6 & 8) != 0)
  {
    goto LABEL_48;
  }

  if ((has & 2) != 0)
  {
    if ((v6 & 2) == 0 || self->_numAbandonedSuggestions != *(v4 + 2))
    {
      goto LABEL_48;
    }
  }

  else if ((v6 & 2) != 0)
  {
    goto LABEL_48;
  }

  if ((*&self->_has & 0x100) == 0)
  {
    if ((*(v4 + 38) & 0x100) == 0)
    {
      goto LABEL_34;
    }

LABEL_48:
    v8 = 0;
    goto LABEL_49;
  }

  if ((*(v4 + 38) & 0x100) == 0)
  {
    goto LABEL_48;
  }

  v7 = *(v4 + 72);
  if (self->_isComplete)
  {
    if ((*(v4 + 72) & 1) == 0)
    {
      goto LABEL_48;
    }
  }

  else if (*(v4 + 72))
  {
    goto LABEL_48;
  }

LABEL_34:
  if ((has & 0x80) != 0)
  {
    if ((v6 & 0x80) == 0 || self->_startDateOfFirstSessionInSeconds != *(v4 + 8))
    {
      goto LABEL_48;
    }
  }

  else if ((v6 & 0x80) != 0)
  {
    goto LABEL_48;
  }

  v8 = (v6 & 1) == 0;
  if (has)
  {
    if ((v6 & 1) == 0 || self->_endDateOfLastSessionInSeconds != *(v4 + 1))
    {
      goto LABEL_48;
    }

    v8 = 1;
  }

LABEL_49:

  return v8;
}

- (unint64_t)hash
{
  has = self->_has;
  if ((has & 0x20) != 0)
  {
    v5 = 2654435761u * self->_numSessionsWithEngagedSuggestions;
    if ((has & 0x40) != 0)
    {
LABEL_3:
      v6 = 2654435761u * self->_numSessionsWithRejectedSuggestions;
      if ((has & 0x10) != 0)
      {
        goto LABEL_4;
      }

      goto LABEL_15;
    }
  }

  else
  {
    v5 = 0;
    if ((has & 0x40) != 0)
    {
      goto LABEL_3;
    }
  }

  v6 = 0;
  if ((has & 0x10) != 0)
  {
LABEL_4:
    v7 = 2654435761u * self->_numSessionsWithAbandonedSuggestions;
    if ((has & 4) != 0)
    {
      goto LABEL_5;
    }

    goto LABEL_16;
  }

LABEL_15:
  v7 = 0;
  if ((has & 4) != 0)
  {
LABEL_5:
    v8 = 2654435761u * self->_numEngagedSuggestions;
    if ((has & 8) != 0)
    {
      goto LABEL_6;
    }

    goto LABEL_17;
  }

LABEL_16:
  v8 = 0;
  if ((has & 8) != 0)
  {
LABEL_6:
    v9 = 2654435761u * self->_numRejectedSuggestions;
    if ((has & 2) != 0)
    {
      goto LABEL_7;
    }

    goto LABEL_18;
  }

LABEL_17:
  v9 = 0;
  if ((has & 2) != 0)
  {
LABEL_7:
    v10 = 2654435761u * self->_numAbandonedSuggestions;
    if ((*&self->_has & 0x100) != 0)
    {
      goto LABEL_8;
    }

LABEL_19:
    v11 = 0;
    if ((has & 0x80) != 0)
    {
      goto LABEL_9;
    }

LABEL_20:
    v15 = 0;
    goto LABEL_21;
  }

LABEL_18:
  v10 = 0;
  if ((*&self->_has & 0x100) == 0)
  {
    goto LABEL_19;
  }

LABEL_8:
  v11 = 2654435761 * self->_isComplete;
  if ((has & 0x80) == 0)
  {
    goto LABEL_20;
  }

LABEL_9:
  startDateOfFirstSessionInSeconds = self->_startDateOfFirstSessionInSeconds;
  if (startDateOfFirstSessionInSeconds < 0.0)
  {
    startDateOfFirstSessionInSeconds = -startDateOfFirstSessionInSeconds;
  }

  *v2.i64 = floor(startDateOfFirstSessionInSeconds + 0.5);
  v13 = (startDateOfFirstSessionInSeconds - *v2.i64) * 1.84467441e19;
  *v3.i64 = *v2.i64 - trunc(*v2.i64 * 5.42101086e-20) * 1.84467441e19;
  v14.f64[0] = NAN;
  v14.f64[1] = NAN;
  v2 = vbslq_s8(vnegq_f64(v14), v3, v2);
  v15 = 2654435761u * *v2.i64;
  if (v13 >= 0.0)
  {
    if (v13 > 0.0)
    {
      v15 += v13;
    }
  }

  else
  {
    v15 -= fabs(v13);
  }

LABEL_21:
  if (has)
  {
    endDateOfLastSessionInSeconds = self->_endDateOfLastSessionInSeconds;
    if (endDateOfLastSessionInSeconds < 0.0)
    {
      endDateOfLastSessionInSeconds = -endDateOfLastSessionInSeconds;
    }

    *v2.i64 = floor(endDateOfLastSessionInSeconds + 0.5);
    v18 = (endDateOfLastSessionInSeconds - *v2.i64) * 1.84467441e19;
    *v3.i64 = *v2.i64 - trunc(*v2.i64 * 5.42101086e-20) * 1.84467441e19;
    v19.f64[0] = NAN;
    v19.f64[1] = NAN;
    v16 = 2654435761u * *vbslq_s8(vnegq_f64(v19), v3, v2).i64;
    if (v18 >= 0.0)
    {
      if (v18 > 0.0)
      {
        v16 += v18;
      }
    }

    else
    {
      v16 -= fabs(v18);
    }
  }

  else
  {
    v16 = 0;
  }

  return v6 ^ v5 ^ v7 ^ v8 ^ v9 ^ v10 ^ v11 ^ v15 ^ v16;
}

- (void)mergeFrom:(id)a3
{
  v4 = a3;
  v5 = *(v4 + 38);
  if ((v5 & 0x20) != 0)
  {
    self->_numSessionsWithEngagedSuggestions = *(v4 + 6);
    *&self->_has |= 0x20u;
    v5 = *(v4 + 38);
    if ((v5 & 0x40) == 0)
    {
LABEL_3:
      if ((v5 & 0x10) == 0)
      {
        goto LABEL_4;
      }

      goto LABEL_16;
    }
  }

  else if ((v5 & 0x40) == 0)
  {
    goto LABEL_3;
  }

  self->_numSessionsWithRejectedSuggestions = *(v4 + 7);
  *&self->_has |= 0x40u;
  v5 = *(v4 + 38);
  if ((v5 & 0x10) == 0)
  {
LABEL_4:
    if ((v5 & 4) == 0)
    {
      goto LABEL_5;
    }

    goto LABEL_17;
  }

LABEL_16:
  self->_numSessionsWithAbandonedSuggestions = *(v4 + 5);
  *&self->_has |= 0x10u;
  v5 = *(v4 + 38);
  if ((v5 & 4) == 0)
  {
LABEL_5:
    if ((v5 & 8) == 0)
    {
      goto LABEL_6;
    }

    goto LABEL_18;
  }

LABEL_17:
  self->_numEngagedSuggestions = *(v4 + 3);
  *&self->_has |= 4u;
  v5 = *(v4 + 38);
  if ((v5 & 8) == 0)
  {
LABEL_6:
    if ((v5 & 2) == 0)
    {
      goto LABEL_7;
    }

    goto LABEL_19;
  }

LABEL_18:
  self->_numRejectedSuggestions = *(v4 + 4);
  *&self->_has |= 8u;
  v5 = *(v4 + 38);
  if ((v5 & 2) == 0)
  {
LABEL_7:
    if ((v5 & 0x100) == 0)
    {
      goto LABEL_8;
    }

    goto LABEL_20;
  }

LABEL_19:
  self->_numAbandonedSuggestions = *(v4 + 2);
  *&self->_has |= 2u;
  v5 = *(v4 + 38);
  if ((v5 & 0x100) == 0)
  {
LABEL_8:
    if ((v5 & 0x80) == 0)
    {
      goto LABEL_9;
    }

    goto LABEL_21;
  }

LABEL_20:
  self->_isComplete = *(v4 + 72);
  *&self->_has |= 0x100u;
  v5 = *(v4 + 38);
  if ((v5 & 0x80) == 0)
  {
LABEL_9:
    if ((v5 & 1) == 0)
    {
      goto LABEL_11;
    }

    goto LABEL_10;
  }

LABEL_21:
  self->_startDateOfFirstSessionInSeconds = *(v4 + 8);
  *&self->_has |= 0x80u;
  if (*(v4 + 38))
  {
LABEL_10:
    self->_endDateOfLastSessionInSeconds = *(v4 + 1);
    *&self->_has |= 1u;
  }

LABEL_11:
}

@end