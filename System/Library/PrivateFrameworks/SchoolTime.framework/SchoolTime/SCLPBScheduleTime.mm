@interface SCLPBScheduleTime
- (BOOL)isEqual:(id)equal;
- (id)copyWithZone:(_NSZone *)zone;
- (id)description;
- (id)dictionaryRepresentation;
- (unint64_t)hash;
- (void)copyTo:(id)to;
- (void)mergeFrom:(id)from;
- (void)setHasMinute:(BOOL)minute;
- (void)writeTo:(id)to;
@end

@implementation SCLPBScheduleTime

- (void)setHasMinute:(BOOL)minute
{
  if (minute)
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
  v3 = MEMORY[0x277CCACA8];
  v8.receiver = self;
  v8.super_class = SCLPBScheduleTime;
  v4 = [(SCLPBScheduleTime *)&v8 description];
  dictionaryRepresentation = [(SCLPBScheduleTime *)self dictionaryRepresentation];
  v6 = [v3 stringWithFormat:@"%@ %@", v4, dictionaryRepresentation];

  return v6;
}

- (id)dictionaryRepresentation
{
  dictionary = [MEMORY[0x277CBEB38] dictionary];
  has = self->_has;
  if (has)
  {
    v5 = [MEMORY[0x277CCABB0] numberWithUnsignedInt:self->_hour];
    [dictionary setObject:v5 forKey:@"hour"];

    has = self->_has;
  }

  if ((has & 2) != 0)
  {
    v6 = [MEMORY[0x277CCABB0] numberWithUnsignedInt:self->_minute];
    [dictionary setObject:v6 forKey:@"minute"];
  }

  return dictionary;
}

- (void)writeTo:(id)to
{
  toCopy = to;
  has = self->_has;
  v8 = toCopy;
  if (has)
  {
    hour = self->_hour;
    PBDataWriterWriteUint32Field();
    toCopy = v8;
    has = self->_has;
  }

  if ((has & 2) != 0)
  {
    minute = self->_minute;
    PBDataWriterWriteUint32Field();
    toCopy = v8;
  }
}

- (void)copyTo:(id)to
{
  toCopy = to;
  has = self->_has;
  if (has)
  {
    toCopy[2] = self->_hour;
    *(toCopy + 16) |= 1u;
    has = self->_has;
  }

  if ((has & 2) != 0)
  {
    toCopy[3] = self->_minute;
    *(toCopy + 16) |= 2u;
  }
}

- (id)copyWithZone:(_NSZone *)zone
{
  result = [objc_msgSend(objc_opt_class() allocWithZone:{zone), "init"}];
  has = self->_has;
  if (has)
  {
    *(result + 2) = self->_hour;
    *(result + 16) |= 1u;
    has = self->_has;
  }

  if ((has & 2) != 0)
  {
    *(result + 3) = self->_minute;
    *(result + 16) |= 2u;
  }

  return result;
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  if (![equalCopy isMemberOfClass:objc_opt_class()])
  {
    goto LABEL_11;
  }

  if (*&self->_has)
  {
    if ((*(equalCopy + 16) & 1) == 0 || self->_hour != *(equalCopy + 2))
    {
      goto LABEL_11;
    }
  }

  else if (*(equalCopy + 16))
  {
LABEL_11:
    v5 = 0;
    goto LABEL_12;
  }

  v5 = (*(equalCopy + 16) & 2) == 0;
  if ((*&self->_has & 2) != 0)
  {
    if ((*(equalCopy + 16) & 2) == 0 || self->_minute != *(equalCopy + 3))
    {
      goto LABEL_11;
    }

    v5 = 1;
  }

LABEL_12:

  return v5;
}

- (unint64_t)hash
{
  if (*&self->_has)
  {
    v2 = 2654435761 * self->_hour;
    if ((*&self->_has & 2) != 0)
    {
      goto LABEL_3;
    }

LABEL_5:
    v3 = 0;
    return v3 ^ v2;
  }

  v2 = 0;
  if ((*&self->_has & 2) == 0)
  {
    goto LABEL_5;
  }

LABEL_3:
  v3 = 2654435761 * self->_minute;
  return v3 ^ v2;
}

- (void)mergeFrom:(id)from
{
  fromCopy = from;
  v5 = *(fromCopy + 16);
  if (v5)
  {
    self->_hour = *(fromCopy + 2);
    *&self->_has |= 1u;
    v5 = *(fromCopy + 16);
  }

  if ((v5 & 2) != 0)
  {
    self->_minute = *(fromCopy + 3);
    *&self->_has |= 2u;
  }
}

@end