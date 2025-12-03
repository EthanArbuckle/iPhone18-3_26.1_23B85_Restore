@interface PPStorableFeedbackItem
- (BOOL)isEqual:(id)equal;
- (id)copyWithZone:(_NSZone *)zone;
- (id)description;
- (id)dictionaryRepresentation;
- (unint64_t)hash;
- (void)copyTo:(id)to;
- (void)mergeFrom:(id)from;
- (void)writeTo:(id)to;
@end

@implementation PPStorableFeedbackItem

- (void)mergeFrom:(id)from
{
  fromCopy = from;
  if (fromCopy[6])
  {
    self->_feedbackType = fromCopy[2];
    *&self->_has |= 1u;
  }

  if (*(fromCopy + 2))
  {
    v5 = fromCopy;
    [(PPStorableFeedbackItem *)self setItemString:?];
    fromCopy = v5;
  }
}

- (unint64_t)hash
{
  if (*&self->_has)
  {
    v2 = 2654435761 * self->_feedbackType;
  }

  else
  {
    v2 = 0;
  }

  return [(NSString *)self->_itemString hash]^ v2;
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  if (![equalCopy isMemberOfClass:objc_opt_class()])
  {
    goto LABEL_9;
  }

  v5 = *(equalCopy + 24);
  if (*&self->_has)
  {
    if ((*(equalCopy + 24) & 1) == 0 || self->_feedbackType != *(equalCopy + 2))
    {
      goto LABEL_9;
    }
  }

  else if (*(equalCopy + 24))
  {
LABEL_9:
    v7 = 0;
    goto LABEL_10;
  }

  itemString = self->_itemString;
  if (itemString | *(equalCopy + 2))
  {
    v7 = [(NSString *)itemString isEqual:?];
  }

  else
  {
    v7 = 1;
  }

LABEL_10:

  return v7;
}

- (id)copyWithZone:(_NSZone *)zone
{
  v5 = [objc_msgSend(objc_opt_class() allocWithZone:{zone), "init"}];
  v6 = v5;
  if (*&self->_has)
  {
    *(v5 + 8) = self->_feedbackType;
    *(v5 + 24) |= 1u;
  }

  v7 = [(NSString *)self->_itemString copyWithZone:zone];
  v8 = v6[2];
  v6[2] = v7;

  return v6;
}

- (void)copyTo:(id)to
{
  toCopy = to;
  if (*&self->_has)
  {
    toCopy[2] = self->_feedbackType;
    *(toCopy + 24) |= 1u;
  }

  if (self->_itemString)
  {
    v5 = toCopy;
    [toCopy setItemString:?];
    toCopy = v5;
  }
}

- (void)writeTo:(id)to
{
  toCopy = to;
  v6 = toCopy;
  if (*&self->_has)
  {
    feedbackType = self->_feedbackType;
    PBDataWriterWriteUint32Field();
    toCopy = v6;
  }

  if (self->_itemString)
  {
    PBDataWriterWriteStringField();
    toCopy = v6;
  }
}

- (id)dictionaryRepresentation
{
  dictionary = [MEMORY[0x277CBEB38] dictionary];
  if (*&self->_has)
  {
    v4 = [MEMORY[0x277CCABB0] numberWithUnsignedInt:self->_feedbackType];
    [dictionary setObject:v4 forKey:@"feedbackType"];
  }

  itemString = self->_itemString;
  if (itemString)
  {
    [dictionary setObject:itemString forKey:@"itemString"];
  }

  return dictionary;
}

- (id)description
{
  v3 = MEMORY[0x277CCACA8];
  v8.receiver = self;
  v8.super_class = PPStorableFeedbackItem;
  v4 = [(PPStorableFeedbackItem *)&v8 description];
  dictionaryRepresentation = [(PPStorableFeedbackItem *)self dictionaryRepresentation];
  v6 = [v3 stringWithFormat:@"%@ %@", v4, dictionaryRepresentation];

  return v6;
}

@end