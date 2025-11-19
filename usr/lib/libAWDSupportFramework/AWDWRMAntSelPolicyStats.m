@interface AWDWRMAntSelPolicyStats
- (BOOL)isEqual:(id)a3;
- (id)copyWithZone:(_NSZone *)a3;
- (id)description;
- (id)dictionaryRepresentation;
- (unint64_t)hash;
- (void)copyTo:(id)a3;
- (void)mergeFrom:(id)a3;
- (void)setHasHasAntConstraint:(BOOL)a3;
- (void)setHasIsCoexBand:(BOOL)a3;
- (void)setHasIssueBand:(BOOL)a3;
- (void)setHasIssueType:(BOOL)a3;
- (void)writeTo:(id)a3;
@end

@implementation AWDWRMAntSelPolicyStats

- (void)setHasIssueBand:(BOOL)a3
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

- (void)setHasIssueType:(BOOL)a3
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

- (void)setHasIsCoexBand:(BOOL)a3
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

- (void)setHasHasAntConstraint:(BOOL)a3
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

- (id)description
{
  v3.receiver = self;
  v3.super_class = AWDWRMAntSelPolicyStats;
  return [MEMORY[0x29EDBA0F8] stringWithFormat:@"%@ %@", -[AWDWRMAntSelPolicyStats description](&v3, sel_description), -[AWDWRMAntSelPolicyStats dictionaryRepresentation](self, "dictionaryRepresentation")];
}

- (id)dictionaryRepresentation
{
  v3 = [MEMORY[0x29EDB8E00] dictionary];
  has = self->_has;
  if (has)
  {
    [v3 setObject:objc_msgSend(MEMORY[0x29EDBA070] forKey:{"numberWithUnsignedLongLong:", self->_timestamp), @"timestamp"}];
    has = self->_has;
    if ((has & 2) == 0)
    {
LABEL_3:
      if ((has & 4) == 0)
      {
        goto LABEL_4;
      }

      goto LABEL_10;
    }
  }

  else if ((*&self->_has & 2) == 0)
  {
    goto LABEL_3;
  }

  [v3 setObject:objc_msgSend(MEMORY[0x29EDBA070] forKey:{"numberWithUnsignedInt:", self->_issueBand), @"IssueBand"}];
  has = self->_has;
  if ((has & 4) == 0)
  {
LABEL_4:
    if ((has & 0x10) == 0)
    {
      goto LABEL_5;
    }

LABEL_11:
    [v3 setObject:objc_msgSend(MEMORY[0x29EDBA070] forKey:{"numberWithBool:", self->_isCoexBand), @"IsCoexBand"}];
    if ((*&self->_has & 8) == 0)
    {
      return v3;
    }

    goto LABEL_6;
  }

LABEL_10:
  [v3 setObject:objc_msgSend(MEMORY[0x29EDBA070] forKey:{"numberWithUnsignedInt:", self->_issueType), @"IssueType"}];
  has = self->_has;
  if ((has & 0x10) != 0)
  {
    goto LABEL_11;
  }

LABEL_5:
  if ((has & 8) != 0)
  {
LABEL_6:
    [v3 setObject:objc_msgSend(MEMORY[0x29EDBA070] forKey:{"numberWithBool:", self->_hasAntConstraint), @"hasAntConstraint"}];
  }

  return v3;
}

- (void)writeTo:(id)a3
{
  has = self->_has;
  if (has)
  {
    timestamp = self->_timestamp;
    PBDataWriterWriteUint64Field();
    has = self->_has;
    if ((has & 2) == 0)
    {
LABEL_3:
      if ((has & 4) == 0)
      {
        goto LABEL_4;
      }

      goto LABEL_9;
    }
  }

  else if ((*&self->_has & 2) == 0)
  {
    goto LABEL_3;
  }

  issueBand = self->_issueBand;
  PBDataWriterWriteUint32Field();
  has = self->_has;
  if ((has & 4) == 0)
  {
LABEL_4:
    if ((has & 0x10) == 0)
    {
      goto LABEL_5;
    }

LABEL_10:
    isCoexBand = self->_isCoexBand;
    PBDataWriterWriteBOOLField();
    if ((*&self->_has & 8) == 0)
    {
      return;
    }

    goto LABEL_11;
  }

LABEL_9:
  issueType = self->_issueType;
  PBDataWriterWriteUint32Field();
  has = self->_has;
  if ((has & 0x10) != 0)
  {
    goto LABEL_10;
  }

LABEL_5:
  if ((has & 8) == 0)
  {
    return;
  }

LABEL_11:
  hasAntConstraint = self->_hasAntConstraint;

  PBDataWriterWriteBOOLField();
}

- (void)copyTo:(id)a3
{
  has = self->_has;
  if (has)
  {
    *(a3 + 1) = self->_timestamp;
    *(a3 + 28) |= 1u;
    has = self->_has;
    if ((has & 2) == 0)
    {
LABEL_3:
      if ((has & 4) == 0)
      {
        goto LABEL_4;
      }

      goto LABEL_9;
    }
  }

  else if ((*&self->_has & 2) == 0)
  {
    goto LABEL_3;
  }

  *(a3 + 4) = self->_issueBand;
  *(a3 + 28) |= 2u;
  has = self->_has;
  if ((has & 4) == 0)
  {
LABEL_4:
    if ((has & 0x10) == 0)
    {
      goto LABEL_5;
    }

    goto LABEL_10;
  }

LABEL_9:
  *(a3 + 5) = self->_issueType;
  *(a3 + 28) |= 4u;
  has = self->_has;
  if ((has & 0x10) == 0)
  {
LABEL_5:
    if ((has & 8) == 0)
    {
      return;
    }

LABEL_11:
    *(a3 + 24) = self->_hasAntConstraint;
    *(a3 + 28) |= 8u;
    return;
  }

LABEL_10:
  *(a3 + 25) = self->_isCoexBand;
  *(a3 + 28) |= 0x10u;
  if ((*&self->_has & 8) != 0)
  {
    goto LABEL_11;
  }
}

- (id)copyWithZone:(_NSZone *)a3
{
  result = [objc_msgSend(objc_opt_class() allocWithZone:{a3), "init"}];
  has = self->_has;
  if (has)
  {
    *(result + 1) = self->_timestamp;
    *(result + 28) |= 1u;
    has = self->_has;
    if ((has & 2) == 0)
    {
LABEL_3:
      if ((has & 4) == 0)
      {
        goto LABEL_4;
      }

      goto LABEL_10;
    }
  }

  else if ((*&self->_has & 2) == 0)
  {
    goto LABEL_3;
  }

  *(result + 4) = self->_issueBand;
  *(result + 28) |= 2u;
  has = self->_has;
  if ((has & 4) == 0)
  {
LABEL_4:
    if ((has & 0x10) == 0)
    {
      goto LABEL_5;
    }

    goto LABEL_11;
  }

LABEL_10:
  *(result + 5) = self->_issueType;
  *(result + 28) |= 4u;
  has = self->_has;
  if ((has & 0x10) == 0)
  {
LABEL_5:
    if ((has & 8) == 0)
    {
      return result;
    }

    goto LABEL_6;
  }

LABEL_11:
  *(result + 25) = self->_isCoexBand;
  *(result + 28) |= 0x10u;
  if ((*&self->_has & 8) == 0)
  {
    return result;
  }

LABEL_6:
  *(result + 24) = self->_hasAntConstraint;
  *(result + 28) |= 8u;
  return result;
}

- (BOOL)isEqual:(id)a3
{
  v5 = [a3 isMemberOfClass:objc_opt_class()];
  if (v5)
  {
    if (*&self->_has)
    {
      if ((*(a3 + 28) & 1) == 0 || self->_timestamp != *(a3 + 1))
      {
        goto LABEL_25;
      }
    }

    else if (*(a3 + 28))
    {
      goto LABEL_25;
    }

    if ((*&self->_has & 2) != 0)
    {
      if ((*(a3 + 28) & 2) == 0 || self->_issueBand != *(a3 + 4))
      {
        goto LABEL_25;
      }
    }

    else if ((*(a3 + 28) & 2) != 0)
    {
      goto LABEL_25;
    }

    if ((*&self->_has & 4) != 0)
    {
      if ((*(a3 + 28) & 4) == 0 || self->_issueType != *(a3 + 5))
      {
        goto LABEL_25;
      }
    }

    else if ((*(a3 + 28) & 4) != 0)
    {
      goto LABEL_25;
    }

    if ((*&self->_has & 0x10) != 0)
    {
      if ((*(a3 + 28) & 0x10) == 0)
      {
        goto LABEL_25;
      }

      v6 = *(a3 + 25);
      if (self->_isCoexBand)
      {
        if ((*(a3 + 25) & 1) == 0)
        {
          goto LABEL_25;
        }
      }

      else if (*(a3 + 25))
      {
        goto LABEL_25;
      }
    }

    else if ((*(a3 + 28) & 0x10) != 0)
    {
      goto LABEL_25;
    }

    LOBYTE(v5) = (*(a3 + 28) & 8) == 0;
    if ((*&self->_has & 8) == 0)
    {
      return v5;
    }

    if ((*(a3 + 28) & 8) != 0)
    {
      if (self->_hasAntConstraint)
      {
        if (*(a3 + 24))
        {
          goto LABEL_33;
        }
      }

      else if (!*(a3 + 24))
      {
LABEL_33:
        LOBYTE(v5) = 1;
        return v5;
      }
    }

LABEL_25:
    LOBYTE(v5) = 0;
  }

  return v5;
}

- (unint64_t)hash
{
  if (*&self->_has)
  {
    v2 = 2654435761u * self->_timestamp;
    if ((*&self->_has & 2) != 0)
    {
LABEL_3:
      v3 = 2654435761 * self->_issueBand;
      if ((*&self->_has & 4) != 0)
      {
        goto LABEL_4;
      }

      goto LABEL_9;
    }
  }

  else
  {
    v2 = 0;
    if ((*&self->_has & 2) != 0)
    {
      goto LABEL_3;
    }
  }

  v3 = 0;
  if ((*&self->_has & 4) != 0)
  {
LABEL_4:
    v4 = 2654435761 * self->_issueType;
    if ((*&self->_has & 0x10) != 0)
    {
      goto LABEL_5;
    }

LABEL_10:
    v5 = 0;
    if ((*&self->_has & 8) != 0)
    {
      goto LABEL_6;
    }

LABEL_11:
    v6 = 0;
    return v3 ^ v2 ^ v4 ^ v5 ^ v6;
  }

LABEL_9:
  v4 = 0;
  if ((*&self->_has & 0x10) == 0)
  {
    goto LABEL_10;
  }

LABEL_5:
  v5 = 2654435761 * self->_isCoexBand;
  if ((*&self->_has & 8) == 0)
  {
    goto LABEL_11;
  }

LABEL_6:
  v6 = 2654435761 * self->_hasAntConstraint;
  return v3 ^ v2 ^ v4 ^ v5 ^ v6;
}

- (void)mergeFrom:(id)a3
{
  v3 = *(a3 + 28);
  if (v3)
  {
    self->_timestamp = *(a3 + 1);
    *&self->_has |= 1u;
    v3 = *(a3 + 28);
    if ((v3 & 2) == 0)
    {
LABEL_3:
      if ((v3 & 4) == 0)
      {
        goto LABEL_4;
      }

      goto LABEL_9;
    }
  }

  else if ((*(a3 + 28) & 2) == 0)
  {
    goto LABEL_3;
  }

  self->_issueBand = *(a3 + 4);
  *&self->_has |= 2u;
  v3 = *(a3 + 28);
  if ((v3 & 4) == 0)
  {
LABEL_4:
    if ((v3 & 0x10) == 0)
    {
      goto LABEL_5;
    }

    goto LABEL_10;
  }

LABEL_9:
  self->_issueType = *(a3 + 5);
  *&self->_has |= 4u;
  v3 = *(a3 + 28);
  if ((v3 & 0x10) == 0)
  {
LABEL_5:
    if ((v3 & 8) == 0)
    {
      return;
    }

LABEL_11:
    self->_hasAntConstraint = *(a3 + 24);
    *&self->_has |= 8u;
    return;
  }

LABEL_10:
  self->_isCoexBand = *(a3 + 25);
  *&self->_has |= 0x10u;
  if ((*(a3 + 28) & 8) != 0)
  {
    goto LABEL_11;
  }
}

@end