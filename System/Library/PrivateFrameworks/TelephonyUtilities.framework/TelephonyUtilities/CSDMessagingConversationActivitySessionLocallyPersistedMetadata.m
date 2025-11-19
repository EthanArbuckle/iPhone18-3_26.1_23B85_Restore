@interface CSDMessagingConversationActivitySessionLocallyPersistedMetadata
- (BOOL)isEqual:(id)a3;
- (id)copyWithZone:(_NSZone *)a3;
- (id)description;
- (id)dictionaryRepresentation;
- (unint64_t)hash;
- (void)copyTo:(id)a3;
- (void)mergeFrom:(id)a3;
- (void)writeTo:(id)a3;
@end

@implementation CSDMessagingConversationActivitySessionLocallyPersistedMetadata

- (id)description
{
  v7.receiver = self;
  v7.super_class = CSDMessagingConversationActivitySessionLocallyPersistedMetadata;
  v3 = [(CSDMessagingConversationActivitySessionLocallyPersistedMetadata *)&v7 description];
  v4 = [(CSDMessagingConversationActivitySessionLocallyPersistedMetadata *)self dictionaryRepresentation];
  v5 = [NSString stringWithFormat:@"%@ %@", v3, v4];

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

- (void)writeTo:(id)a3
{
  if (*&self->_has)
  {
    locallyInitiated = self->_locallyInitiated;
    PBDataWriterWriteBOOLField();
  }
}

- (void)copyTo:(id)a3
{
  if (*&self->_has)
  {
    *(a3 + 8) = self->_locallyInitiated;
    *(a3 + 12) |= 1u;
  }
}

- (id)copyWithZone:(_NSZone *)a3
{
  result = [objc_msgSend(objc_opt_class() allocWithZone:{a3), "init"}];
  if (*&self->_has)
  {
    *(result + 8) = self->_locallyInitiated;
    *(result + 12) |= 1u;
  }

  return result;
}

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  if (![v4 isMemberOfClass:objc_opt_class()])
  {
    goto LABEL_4;
  }

  v5 = (v4[12] & 1) == 0;
  if (*&self->_has)
  {
    if ((v4[12] & 1) == 0)
    {
LABEL_4:
      v5 = 0;
      goto LABEL_5;
    }

    if (self->_locallyInitiated)
    {
      if ((v4[8] & 1) == 0)
      {
        goto LABEL_4;
      }
    }

    else if (v4[8])
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

- (void)mergeFrom:(id)a3
{
  if (*(a3 + 12))
  {
    self->_locallyInitiated = *(a3 + 8);
    *&self->_has |= 1u;
  }
}

@end