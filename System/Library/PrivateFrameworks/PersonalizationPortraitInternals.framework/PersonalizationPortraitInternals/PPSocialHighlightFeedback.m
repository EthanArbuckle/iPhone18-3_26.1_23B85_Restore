@interface PPSocialHighlightFeedback
- (BOOL)isEqual:(id)a3;
- (id)copyWithZone:(_NSZone *)a3;
- (id)description;
- (id)dictionaryRepresentation;
- (int)StringAsFeedbackType:(id)a3;
- (int)feedbackType;
- (unint64_t)hash;
- (void)copyTo:(id)a3;
- (void)mergeFrom:(id)a3;
- (void)setHasFeedbackType:(BOOL)a3;
- (void)writeTo:(id)a3;
@end

@implementation PPSocialHighlightFeedback

- (void)mergeFrom:(id)a3
{
  v4 = a3;
  v8 = v4;
  if (*(v4 + 2))
  {
    [(PPSocialHighlightFeedback *)self setClientIdentifier:?];
    v4 = v8;
  }

  v5 = *(v4 + 48);
  if ((v5 & 2) != 0)
  {
    self->_feedbackType = *(v4 + 6);
    *&self->_has |= 2u;
    v5 = *(v4 + 48);
  }

  if (v5)
  {
    self->_feedbackCreationSecondsSinceReferenceDate = *(v4 + 1);
    *&self->_has |= 1u;
  }

  highlight = self->_highlight;
  v7 = *(v4 + 4);
  if (highlight)
  {
    if (!v7)
    {
      goto LABEL_13;
    }

    [(PPRankableSocialHighlight *)highlight mergeFrom:?];
  }

  else
  {
    if (!v7)
    {
      goto LABEL_13;
    }

    [(PPSocialHighlightFeedback *)self setHighlight:?];
  }

  v4 = v8;
LABEL_13:
  if (*(v4 + 5))
  {
    [(PPSocialHighlightFeedback *)self setVariant:?];
  }

  MEMORY[0x2821F96F8]();
}

- (unint64_t)hash
{
  v3 = [(NSString *)self->_clientIdentifier hash];
  if ((*&self->_has & 2) != 0)
  {
    v6 = 2654435761 * self->_feedbackType;
    if (*&self->_has)
    {
      goto LABEL_3;
    }

LABEL_8:
    v10 = 0;
    goto LABEL_9;
  }

  v6 = 0;
  if ((*&self->_has & 1) == 0)
  {
    goto LABEL_8;
  }

LABEL_3:
  feedbackCreationSecondsSinceReferenceDate = self->_feedbackCreationSecondsSinceReferenceDate;
  if (feedbackCreationSecondsSinceReferenceDate < 0.0)
  {
    feedbackCreationSecondsSinceReferenceDate = -feedbackCreationSecondsSinceReferenceDate;
  }

  *v4.i64 = floor(feedbackCreationSecondsSinceReferenceDate + 0.5);
  v8 = (feedbackCreationSecondsSinceReferenceDate - *v4.i64) * 1.84467441e19;
  *v5.i64 = *v4.i64 - trunc(*v4.i64 * 5.42101086e-20) * 1.84467441e19;
  v9.f64[0] = NAN;
  v9.f64[1] = NAN;
  v10 = 2654435761u * *vbslq_s8(vnegq_f64(v9), v5, v4).i64;
  if (v8 >= 0.0)
  {
    if (v8 > 0.0)
    {
      v10 += v8;
    }
  }

  else
  {
    v10 -= fabs(v8);
  }

LABEL_9:
  v11 = v6 ^ v3 ^ v10 ^ [(PPRankableSocialHighlight *)self->_highlight hash];
  return v11 ^ [(NSString *)self->_variant hash];
}

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  if (![v4 isMemberOfClass:objc_opt_class()])
  {
    goto LABEL_18;
  }

  clientIdentifier = self->_clientIdentifier;
  if (clientIdentifier | *(v4 + 2))
  {
    if (![(NSString *)clientIdentifier isEqual:?])
    {
      goto LABEL_18;
    }
  }

  v6 = *(v4 + 48);
  if ((*&self->_has & 2) != 0)
  {
    if ((*(v4 + 48) & 2) == 0 || self->_feedbackType != *(v4 + 6))
    {
      goto LABEL_18;
    }
  }

  else if ((*(v4 + 48) & 2) != 0)
  {
LABEL_18:
    v9 = 0;
    goto LABEL_19;
  }

  if (*&self->_has)
  {
    if ((*(v4 + 48) & 1) == 0 || self->_feedbackCreationSecondsSinceReferenceDate != *(v4 + 1))
    {
      goto LABEL_18;
    }
  }

  else if (*(v4 + 48))
  {
    goto LABEL_18;
  }

  highlight = self->_highlight;
  if (highlight | *(v4 + 4) && ![(PPRankableSocialHighlight *)highlight isEqual:?])
  {
    goto LABEL_18;
  }

  variant = self->_variant;
  if (variant | *(v4 + 5))
  {
    v9 = [(NSString *)variant isEqual:?];
  }

  else
  {
    v9 = 1;
  }

LABEL_19:

  return v9;
}

- (id)copyWithZone:(_NSZone *)a3
{
  v5 = [objc_msgSend(objc_opt_class() allocWithZone:{a3), "init"}];
  v6 = [(NSString *)self->_clientIdentifier copyWithZone:a3];
  v7 = *(v5 + 16);
  *(v5 + 16) = v6;

  has = self->_has;
  if ((has & 2) != 0)
  {
    *(v5 + 24) = self->_feedbackType;
    *(v5 + 48) |= 2u;
    has = self->_has;
  }

  if (has)
  {
    *(v5 + 8) = self->_feedbackCreationSecondsSinceReferenceDate;
    *(v5 + 48) |= 1u;
  }

  v9 = [(PPRankableSocialHighlight *)self->_highlight copyWithZone:a3];
  v10 = *(v5 + 32);
  *(v5 + 32) = v9;

  v11 = [(NSString *)self->_variant copyWithZone:a3];
  v12 = *(v5 + 40);
  *(v5 + 40) = v11;

  return v5;
}

- (void)copyTo:(id)a3
{
  v4 = a3;
  v6 = v4;
  if (self->_clientIdentifier)
  {
    [v4 setClientIdentifier:?];
    v4 = v6;
  }

  has = self->_has;
  if ((has & 2) != 0)
  {
    *(v4 + 6) = self->_feedbackType;
    *(v4 + 48) |= 2u;
    has = self->_has;
  }

  if (has)
  {
    *(v4 + 1) = *&self->_feedbackCreationSecondsSinceReferenceDate;
    *(v4 + 48) |= 1u;
  }

  if (self->_highlight)
  {
    [v6 setHighlight:?];
    v4 = v6;
  }

  if (self->_variant)
  {
    [v6 setVariant:?];
    v4 = v6;
  }
}

- (void)writeTo:(id)a3
{
  v4 = a3;
  v8 = v4;
  if (self->_clientIdentifier)
  {
    PBDataWriterWriteStringField();
    v4 = v8;
  }

  has = self->_has;
  if ((has & 2) != 0)
  {
    feedbackType = self->_feedbackType;
    PBDataWriterWriteInt32Field();
    v4 = v8;
    has = self->_has;
  }

  if (has)
  {
    feedbackCreationSecondsSinceReferenceDate = self->_feedbackCreationSecondsSinceReferenceDate;
    PBDataWriterWriteDoubleField();
    v4 = v8;
  }

  if (self->_highlight)
  {
    PBDataWriterWriteSubmessage();
    v4 = v8;
  }

  if (self->_variant)
  {
    PBDataWriterWriteStringField();
    v4 = v8;
  }
}

- (id)dictionaryRepresentation
{
  v3 = [MEMORY[0x277CBEB38] dictionary];
  v4 = v3;
  clientIdentifier = self->_clientIdentifier;
  if (clientIdentifier)
  {
    [v3 setObject:clientIdentifier forKey:@"clientIdentifier"];
  }

  has = self->_has;
  if ((has & 2) != 0)
  {
    feedbackType = self->_feedbackType;
    if (feedbackType >= 0xC)
    {
      v8 = [MEMORY[0x277CCACA8] stringWithFormat:@"(unknown: %i)", self->_feedbackType];
    }

    else
    {
      v8 = off_2789714E0[feedbackType];
    }

    [v4 setObject:v8 forKey:@"feedbackType"];

    has = self->_has;
  }

  if (has)
  {
    v9 = [MEMORY[0x277CCABB0] numberWithDouble:self->_feedbackCreationSecondsSinceReferenceDate];
    [v4 setObject:v9 forKey:@"feedbackCreationSecondsSinceReferenceDate"];
  }

  highlight = self->_highlight;
  if (highlight)
  {
    v11 = [(PPRankableSocialHighlight *)highlight dictionaryRepresentation];
    [v4 setObject:v11 forKey:@"highlight"];
  }

  variant = self->_variant;
  if (variant)
  {
    [v4 setObject:variant forKey:@"variant"];
  }

  return v4;
}

- (id)description
{
  v3 = MEMORY[0x277CCACA8];
  v8.receiver = self;
  v8.super_class = PPSocialHighlightFeedback;
  v4 = [(PPSocialHighlightFeedback *)&v8 description];
  v5 = [(PPSocialHighlightFeedback *)self dictionaryRepresentation];
  v6 = [v3 stringWithFormat:@"%@ %@", v4, v5];

  return v6;
}

- (int)StringAsFeedbackType:(id)a3
{
  v3 = a3;
  if ([v3 isEqualToString:@"Displayed"])
  {
    v4 = 0;
  }

  else if ([v3 isEqualToString:@"UserInteracted"])
  {
    v4 = 1;
  }

  else if ([v3 isEqualToString:@"Hide"])
  {
    v4 = 2;
  }

  else if ([v3 isEqualToString:@"AppButton"])
  {
    v4 = 3;
  }

  else if ([v3 isEqualToString:@"ActivityButton"])
  {
    v4 = 4;
  }

  else if ([v3 isEqualToString:@"ConsumptionStarted"])
  {
    v4 = 5;
  }

  else if ([v3 isEqualToString:@"ConsumptionFinished"])
  {
    v4 = 6;
  }

  else if ([v3 isEqualToString:@"ItemDetailViewed"])
  {
    v4 = 7;
  }

  else if ([v3 isEqualToString:@"ParentDetailViewed"])
  {
    v4 = 8;
  }

  else if ([v3 isEqualToString:@"AppReply"])
  {
    v4 = 9;
  }

  else if ([v3 isEqualToString:@"ConsumedExternally"])
  {
    v4 = 10;
  }

  else if ([v3 isEqualToString:@"ValueUnknown"])
  {
    v4 = 11;
  }

  else
  {
    v4 = 0;
  }

  return v4;
}

- (void)setHasFeedbackType:(BOOL)a3
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

- (int)feedbackType
{
  if ((*&self->_has & 2) != 0)
  {
    return self->_feedbackType;
  }

  else
  {
    return 0;
  }
}

@end