@interface PPPBFeedbackItem
- (BOOL)isEqual:(id)equal;
- (id)copyWithZone:(_NSZone *)zone;
- (id)description;
- (id)dictionaryRepresentation;
- (int)feedbackType;
- (unint64_t)hash;
- (void)copyTo:(id)to;
- (void)mergeFrom:(id)from;
- (void)writeTo:(id)to;
@end

@implementation PPPBFeedbackItem

- (void)mergeFrom:(id)from
{
  if (*(from + 12))
  {
    self->_feedbackType = *(from + 2);
    *&self->_has |= 1u;
  }
}

- (unint64_t)hash
{
  if (*&self->_has)
  {
    return 2654435761 * self->_feedbackType;
  }

  else
  {
    return 0;
  }
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  if (![equalCopy isMemberOfClass:objc_opt_class()])
  {
    goto LABEL_6;
  }

  v5 = (*(equalCopy + 12) & 1) == 0;
  if (*&self->_has)
  {
    if ((*(equalCopy + 12) & 1) != 0 && self->_feedbackType == *(equalCopy + 2))
    {
      v5 = 1;
      goto LABEL_7;
    }

LABEL_6:
    v5 = 0;
  }

LABEL_7:

  return v5;
}

- (id)copyWithZone:(_NSZone *)zone
{
  result = [objc_msgSend(objc_opt_class() allocWithZone:{zone), "init"}];
  if (*&self->_has)
  {
    *(result + 2) = self->_feedbackType;
    *(result + 12) |= 1u;
  }

  return result;
}

- (void)copyTo:(id)to
{
  if (*&self->_has)
  {
    *(to + 2) = self->_feedbackType;
    *(to + 12) |= 1u;
  }
}

- (void)writeTo:(id)to
{
  if (*&self->_has)
  {
    feedbackType = self->_feedbackType;
    PBDataWriterWriteInt32Field();
  }
}

- (id)dictionaryRepresentation
{
  dictionary = [MEMORY[0x277CBEB38] dictionary];
  if (*&self->_has)
  {
    v4 = [MEMORY[0x277CCABB0] numberWithInt:self->_feedbackType];
    [dictionary setObject:v4 forKey:@"feedbackType"];
  }

  return dictionary;
}

- (id)description
{
  v3 = MEMORY[0x277CCACA8];
  v8.receiver = self;
  v8.super_class = PPPBFeedbackItem;
  v4 = [(PPPBFeedbackItem *)&v8 description];
  dictionaryRepresentation = [(PPPBFeedbackItem *)self dictionaryRepresentation];
  v6 = [v3 stringWithFormat:@"%@ %@", v4, dictionaryRepresentation];

  return v6;
}

- (int)feedbackType
{
  if (*&self->_has)
  {
    return self->_feedbackType;
  }

  else
  {
    return 0;
  }
}

@end