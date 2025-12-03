@interface CSDMessagingSmartHoldingEvent
- (BOOL)isEqual:(id)equal;
- (CSDMessagingSmartHoldingEvent)initWithEvent:(id)event;
- (TUSmartHoldingEvent)tuSmartHoldingEvent;
- (id)copyWithZone:(_NSZone *)zone;
- (id)description;
- (id)dictionaryRepresentation;
- (int)StringAsEventType:(id)type;
- (int)eventType;
- (unint64_t)hash;
- (void)copyTo:(id)to;
- (void)mergeFrom:(id)from;
- (void)setHasDateSinceEpoch:(BOOL)epoch;
- (void)setHasEventType:(BOOL)type;
- (void)writeTo:(id)to;
@end

@implementation CSDMessagingSmartHoldingEvent

- (CSDMessagingSmartHoldingEvent)initWithEvent:(id)event
{
  eventCopy = event;
  v13.receiver = self;
  v13.super_class = CSDMessagingSmartHoldingEvent;
  v5 = [(CSDMessagingSmartHoldingEvent *)&v13 init];
  if (v5)
  {
    eventType = [eventCopy eventType];
    if (eventType <= 2)
    {
      v5->_eventType = eventType;
    }

    *&v5->_has |= 4u;
    text = [eventCopy text];
    text = v5->_text;
    v5->_text = text;

    date = [eventCopy date];
    [date timeIntervalSince1970];
    v5->_dateSinceEpoch = v10;

    *&v5->_has |= 2u;
    [eventCopy confidenceScore];
    v5->_confidenceScore = v11;
    *&v5->_has |= 1u;
  }

  return v5;
}

- (TUSmartHoldingEvent)tuSmartHoldingEvent
{
  v3 = [NSDate alloc];
  [(CSDMessagingSmartHoldingEvent *)self dateSinceEpoch];
  v4 = [v3 initWithTimeIntervalSince1970:?];
  v5 = [TUSmartHoldingEvent alloc];
  eventType = [(CSDMessagingSmartHoldingEvent *)self eventType];
  text = [(CSDMessagingSmartHoldingEvent *)self text];
  [(CSDMessagingSmartHoldingEvent *)self confidenceScore];
  v8 = [v5 initWithType:eventType text:text date:v4 confidenceScore:?];

  return v8;
}

- (int)eventType
{
  if ((*&self->_has & 4) != 0)
  {
    return self->_eventType;
  }

  else
  {
    return 0;
  }
}

- (void)setHasEventType:(BOOL)type
{
  if (type)
  {
    v3 = 4;
  }

  else
  {
    v3 = 0;
  }

  *&self->_has = *&self->_has & 0xFB | v3;
}

- (int)StringAsEventType:(id)type
{
  typeCopy = type;
  if ([typeCopy isEqualToString:@"Unknown"])
  {
    v4 = 0;
  }

  else if ([typeCopy isEqualToString:@"RemoteUtterance"])
  {
    v4 = 1;
  }

  else if ([typeCopy isEqualToString:@"SoundTypeChanged"])
  {
    v4 = 2;
  }

  else
  {
    v4 = 0;
  }

  return v4;
}

- (void)setHasDateSinceEpoch:(BOOL)epoch
{
  if (epoch)
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
  v7.receiver = self;
  v7.super_class = CSDMessagingSmartHoldingEvent;
  v3 = [(CSDMessagingSmartHoldingEvent *)&v7 description];
  dictionaryRepresentation = [(CSDMessagingSmartHoldingEvent *)self dictionaryRepresentation];
  v5 = [NSString stringWithFormat:@"%@ %@", v3, dictionaryRepresentation];

  return v5;
}

- (id)dictionaryRepresentation
{
  v3 = +[NSMutableDictionary dictionary];
  if ((*&self->_has & 4) != 0)
  {
    eventType = self->_eventType;
    if (eventType >= 3)
    {
      v5 = [NSString stringWithFormat:@"(unknown: %i)", self->_eventType];
    }

    else
    {
      v5 = off_10061B198[eventType];
    }

    [v3 setObject:v5 forKey:@"eventType"];
  }

  text = self->_text;
  if (text)
  {
    [v3 setObject:text forKey:@"text"];
  }

  has = self->_has;
  if ((has & 2) != 0)
  {
    v8 = [NSNumber numberWithDouble:self->_dateSinceEpoch];
    [v3 setObject:v8 forKey:@"dateSinceEpoch"];

    has = self->_has;
  }

  if (has)
  {
    v9 = [NSNumber numberWithDouble:self->_confidenceScore];
    [v3 setObject:v9 forKey:@"confidenceScore"];
  }

  return v3;
}

- (void)writeTo:(id)to
{
  toCopy = to;
  if ((*&self->_has & 4) != 0)
  {
    eventType = self->_eventType;
    PBDataWriterWriteInt32Field();
  }

  if (self->_text)
  {
    PBDataWriterWriteStringField();
  }

  has = self->_has;
  if ((has & 2) != 0)
  {
    dateSinceEpoch = self->_dateSinceEpoch;
    PBDataWriterWriteDoubleField();
    has = self->_has;
  }

  if (has)
  {
    confidenceScore = self->_confidenceScore;
    PBDataWriterWriteDoubleField();
  }
}

- (void)copyTo:(id)to
{
  toCopy = to;
  if ((*&self->_has & 4) != 0)
  {
    toCopy[6] = self->_eventType;
    *(toCopy + 40) |= 4u;
  }

  if (self->_text)
  {
    v6 = toCopy;
    [toCopy setText:?];
    toCopy = v6;
  }

  has = self->_has;
  if ((has & 2) != 0)
  {
    *(toCopy + 2) = *&self->_dateSinceEpoch;
    *(toCopy + 40) |= 2u;
    has = self->_has;
  }

  if (has)
  {
    *(toCopy + 1) = *&self->_confidenceScore;
    *(toCopy + 40) |= 1u;
  }
}

- (id)copyWithZone:(_NSZone *)zone
{
  v5 = [objc_msgSend(objc_opt_class() allocWithZone:{zone), "init"}];
  v6 = v5;
  if ((*&self->_has & 4) != 0)
  {
    v5[6] = self->_eventType;
    *(v5 + 40) |= 4u;
  }

  v7 = [(NSString *)self->_text copyWithZone:zone];
  v8 = v6[4];
  v6[4] = v7;

  has = self->_has;
  if ((has & 2) != 0)
  {
    v6[2] = *&self->_dateSinceEpoch;
    *(v6 + 40) |= 2u;
    has = self->_has;
  }

  if (has)
  {
    v6[1] = *&self->_confidenceScore;
    *(v6 + 40) |= 1u;
  }

  return v6;
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  if (![equalCopy isMemberOfClass:objc_opt_class()])
  {
    goto LABEL_19;
  }

  has = self->_has;
  v6 = *(equalCopy + 40);
  if ((has & 4) != 0)
  {
    if ((*(equalCopy + 40) & 4) == 0 || self->_eventType != *(equalCopy + 6))
    {
      goto LABEL_19;
    }
  }

  else if ((*(equalCopy + 40) & 4) != 0)
  {
    goto LABEL_19;
  }

  text = self->_text;
  if (text | *(equalCopy + 4))
  {
    if (![(NSString *)text isEqual:?])
    {
LABEL_19:
      v8 = 0;
      goto LABEL_20;
    }

    has = self->_has;
  }

  if ((has & 2) != 0)
  {
    if ((*(equalCopy + 40) & 2) == 0 || self->_dateSinceEpoch != *(equalCopy + 2))
    {
      goto LABEL_19;
    }
  }

  else if ((*(equalCopy + 40) & 2) != 0)
  {
    goto LABEL_19;
  }

  v8 = (*(equalCopy + 40) & 1) == 0;
  if (has)
  {
    if ((*(equalCopy + 40) & 1) == 0 || self->_confidenceScore != *(equalCopy + 1))
    {
      goto LABEL_19;
    }

    v8 = 1;
  }

LABEL_20:

  return v8;
}

- (unint64_t)hash
{
  if ((*&self->_has & 4) != 0)
  {
    v3 = 2654435761 * self->_eventType;
  }

  else
  {
    v3 = 0;
  }

  v4 = [(NSString *)self->_text hash];
  if ((*&self->_has & 2) != 0)
  {
    dateSinceEpoch = self->_dateSinceEpoch;
    if (dateSinceEpoch < 0.0)
    {
      dateSinceEpoch = -dateSinceEpoch;
    }

    *v5.i64 = floor(dateSinceEpoch + 0.5);
    v9 = (dateSinceEpoch - *v5.i64) * 1.84467441e19;
    *v6.i64 = *v5.i64 - trunc(*v5.i64 * 5.42101086e-20) * 1.84467441e19;
    v10.f64[0] = NAN;
    v10.f64[1] = NAN;
    v5 = vbslq_s8(vnegq_f64(v10), v6, v5);
    v7 = 2654435761u * *v5.i64;
    if (v9 >= 0.0)
    {
      if (v9 > 0.0)
      {
        v7 += v9;
      }
    }

    else
    {
      v7 -= fabs(v9);
    }
  }

  else
  {
    v7 = 0;
  }

  if (*&self->_has)
  {
    confidenceScore = self->_confidenceScore;
    if (confidenceScore < 0.0)
    {
      confidenceScore = -confidenceScore;
    }

    *v5.i64 = floor(confidenceScore + 0.5);
    v13 = (confidenceScore - *v5.i64) * 1.84467441e19;
    *v6.i64 = *v5.i64 - trunc(*v5.i64 * 5.42101086e-20) * 1.84467441e19;
    v14.f64[0] = NAN;
    v14.f64[1] = NAN;
    v11 = 2654435761u * *vbslq_s8(vnegq_f64(v14), v6, v5).i64;
    if (v13 >= 0.0)
    {
      if (v13 > 0.0)
      {
        v11 += v13;
      }
    }

    else
    {
      v11 -= fabs(v13);
    }
  }

  else
  {
    v11 = 0;
  }

  return v4 ^ v3 ^ v7 ^ v11;
}

- (void)mergeFrom:(id)from
{
  fromCopy = from;
  if ((*(fromCopy + 40) & 4) != 0)
  {
    self->_eventType = *(fromCopy + 6);
    *&self->_has |= 4u;
  }

  if (*(fromCopy + 4))
  {
    v6 = fromCopy;
    [(CSDMessagingSmartHoldingEvent *)self setText:?];
    fromCopy = v6;
  }

  v5 = *(fromCopy + 40);
  if ((v5 & 2) != 0)
  {
    self->_dateSinceEpoch = *(fromCopy + 2);
    *&self->_has |= 2u;
    v5 = *(fromCopy + 40);
  }

  if (v5)
  {
    self->_confidenceScore = *(fromCopy + 1);
    *&self->_has |= 1u;
  }
}

@end