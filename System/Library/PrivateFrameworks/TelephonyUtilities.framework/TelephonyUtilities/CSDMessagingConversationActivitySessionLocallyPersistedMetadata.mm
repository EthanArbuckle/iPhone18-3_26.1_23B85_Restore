@interface CSDMessagingConversationActivitySessionLocallyPersistedMetadata
- (BOOL)isEqual:(id)equal;
- (id)copyWithZone:(_NSZone *)zone;
- (id)description;
- (id)dictionaryRepresentation;
- (unint64_t)hash;
- (void)copyTo:(id)to;
- (void)mergeFrom:(id)from;
- (void)writeTo:(id)to;
@end

@implementation CSDMessagingConversationActivitySessionLocallyPersistedMetadata

- (id)description
{
  v7.receiver = self;
  v7.super_class = CSDMessagingConversationActivitySessionLocallyPersistedMetadata;
  v3 = [(CSDMessagingConversationActivitySessionLocallyPersistedMetadata *)&v7 description];
  dictionaryRepresentation = [(CSDMessagingConversationActivitySessionLocallyPersistedMetadata *)self dictionaryRepresentation];
  v5 = [NSString stringWithFormat:@"%@ %@", v3, dictionaryRepresentation];

  return v5;
}

- (id)dictionaryRepresentation
{
  v3 = +[NSMutableDictionary dictionary];
  if (*&self->_has)
  {
    v4 = [NSNumber numberWithBool:self->_locallyInitiated];
    [v3 setObject:v4 forKey:@"locallyInitiated"];
  }

  return v3;
}

- (void)writeTo:(id)to
{
  if (*&self->_has)
  {
    locallyInitiated = self->_locallyInitiated;
    PBDataWriterWriteBOOLField();
  }
}

- (void)copyTo:(id)to
{
  if (*&self->_has)
  {
    *(to + 8) = self->_locallyInitiated;
    *(to + 12) |= 1u;
  }
}

- (id)copyWithZone:(_NSZone *)zone
{
  result = [objc_msgSend(objc_opt_class() allocWithZone:{zone), "init"}];
  if (*&self->_has)
  {
    *(result + 8) = self->_locallyInitiated;
    *(result + 12) |= 1u;
  }

  return result;
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  if (![equalCopy isMemberOfClass:objc_opt_class()])
  {
    goto LABEL_4;
  }

  v5 = (equalCopy[12] & 1) == 0;
  if (*&self->_has)
  {
    if ((equalCopy[12] & 1) == 0)
    {
LABEL_4:
      v5 = 0;
      goto LABEL_5;
    }

    if (self->_locallyInitiated)
    {
      if ((equalCopy[8] & 1) == 0)
      {
        goto LABEL_4;
      }
    }

    else if (equalCopy[8])
    {
      goto LABEL_4;
    }

    v5 = 1;
  }

LABEL_5:

  return v5;
}

- (unint64_t)hash
{
  if (*&self->_has)
  {
    return 2654435761 * self->_locallyInitiated;
  }

  else
  {
    return 0;
  }
}

- (void)mergeFrom:(id)from
{
  if (*(from + 12))
  {
    self->_locallyInitiated = *(from + 8);
    *&self->_has |= 1u;
  }
}

@end