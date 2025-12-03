@interface ISOPBSubscriptionLabelMessage
- (BOOL)isEqual:(id)equal;
- (id)copyWithZone:(_NSZone *)zone;
- (id)description;
- (id)dictionaryRepresentation;
- (int)StringAsLabel:(id)label;
- (int)label;
- (unint64_t)hash;
- (void)copyTo:(id)to;
- (void)mergeFrom:(id)from;
- (void)setHasLabel:(BOOL)label;
- (void)writeTo:(id)to;
@end

@implementation ISOPBSubscriptionLabelMessage

- (int)label
{
  if ((*&self->_has & 2) != 0)
  {
    return self->_label;
  }

  else
  {
    return 0;
  }
}

- (void)setHasLabel:(BOOL)label
{
  if (label)
  {
    v3 = 2;
  }

  else
  {
    v3 = 0;
  }

  *&self->_has = *&self->_has & 0xFD | v3;
}

- (int)StringAsLabel:(id)label
{
  labelCopy = label;
  if ([labelCopy isEqualToString:@"LABEL_UNKNOWN"])
  {
    v4 = 0;
  }

  else if ([labelCopy isEqualToString:@"CLICK"])
  {
    v4 = 1;
  }

  else if ([labelCopy isEqualToString:@"CLEAR"])
  {
    v4 = 2;
  }

  else
  {
    v4 = 0;
  }

  return v4;
}

- (id)description
{
  v3 = MEMORY[0x277CCACA8];
  v8.receiver = self;
  v8.super_class = ISOPBSubscriptionLabelMessage;
  v4 = [(ISOPBSubscriptionLabelMessage *)&v8 description];
  dictionaryRepresentation = [(ISOPBSubscriptionLabelMessage *)self dictionaryRepresentation];
  v6 = [v3 stringWithFormat:@"%@ %@", v4, dictionaryRepresentation];

  return v6;
}

- (id)dictionaryRepresentation
{
  dictionary = [MEMORY[0x277CBEB38] dictionary];
  has = self->_has;
  if (has)
  {
    v5 = [MEMORY[0x277CCABB0] numberWithLongLong:self->_minsUntilICloudNotificationOpened];
    [dictionary setObject:v5 forKey:@"minsUntilICloudNotificationOpened"];

    has = self->_has;
  }

  if ((has & 2) != 0)
  {
    label = self->_label;
    if (label >= 3)
    {
      v7 = [MEMORY[0x277CCACA8] stringWithFormat:@"(unknown: %i)", self->_label];
    }

    else
    {
      v7 = off_27A66B1E0[label];
    }

    [dictionary setObject:v7 forKey:@"label"];
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
    minsUntilICloudNotificationOpened = self->_minsUntilICloudNotificationOpened;
    PBDataWriterWriteInt64Field();
    toCopy = v8;
    has = self->_has;
  }

  if ((has & 2) != 0)
  {
    label = self->_label;
    PBDataWriterWriteInt32Field();
    toCopy = v8;
  }
}

- (void)copyTo:(id)to
{
  toCopy = to;
  has = self->_has;
  if (has)
  {
    toCopy[1] = self->_minsUntilICloudNotificationOpened;
    *(toCopy + 20) |= 1u;
    has = self->_has;
  }

  if ((has & 2) != 0)
  {
    *(toCopy + 4) = self->_label;
    *(toCopy + 20) |= 2u;
  }
}

- (id)copyWithZone:(_NSZone *)zone
{
  result = [objc_msgSend(objc_opt_class() allocWithZone:{zone), "init"}];
  has = self->_has;
  if (has)
  {
    *(result + 1) = self->_minsUntilICloudNotificationOpened;
    *(result + 20) |= 1u;
    has = self->_has;
  }

  if ((has & 2) != 0)
  {
    *(result + 4) = self->_label;
    *(result + 20) |= 2u;
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
    if ((*(equalCopy + 20) & 1) == 0 || self->_minsUntilICloudNotificationOpened != *(equalCopy + 1))
    {
      goto LABEL_11;
    }
  }

  else if (*(equalCopy + 20))
  {
LABEL_11:
    v5 = 0;
    goto LABEL_12;
  }

  v5 = (*(equalCopy + 20) & 2) == 0;
  if ((*&self->_has & 2) != 0)
  {
    if ((*(equalCopy + 20) & 2) == 0 || self->_label != *(equalCopy + 4))
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
    v2 = 2654435761 * self->_minsUntilICloudNotificationOpened;
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
  v3 = 2654435761 * self->_label;
  return v3 ^ v2;
}

- (void)mergeFrom:(id)from
{
  fromCopy = from;
  v5 = *(fromCopy + 20);
  if (v5)
  {
    self->_minsUntilICloudNotificationOpened = *(fromCopy + 1);
    *&self->_has |= 1u;
    v5 = *(fromCopy + 20);
  }

  if ((v5 & 2) != 0)
  {
    self->_label = *(fromCopy + 4);
    *&self->_has |= 2u;
  }
}

@end