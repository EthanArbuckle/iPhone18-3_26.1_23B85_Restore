@interface CSDMessagingSharePlayAvailable
- (BOOL)isEqual:(id)a3;
- (id)copyWithZone:(_NSZone *)a3;
- (id)description;
- (id)dictionaryRepresentation;
- (int)StringAsState:(id)a3;
- (unint64_t)hash;
- (void)copyTo:(id)a3;
- (void)mergeFrom:(id)a3;
- (void)setHasSupportsRequestToScreenShare:(BOOL)a3;
- (void)writeTo:(id)a3;
@end

@implementation CSDMessagingSharePlayAvailable

- (int)StringAsState:(id)a3
{
  v3 = a3;
  if ([v3 isEqualToString:@"Unknown"])
  {
    v4 = 0;
  }

  else if ([v3 isEqualToString:@"Available"])
  {
    v4 = 1;
  }

  else if ([v3 isEqualToString:@"UnavailableSinceConferenced"])
  {
    v4 = 2;
  }

  else
  {
    v4 = 0;
  }

  return v4;
}

- (void)setHasSupportsRequestToScreenShare:(BOOL)a3
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

- (id)description
{
  v7.receiver = self;
  v7.super_class = CSDMessagingSharePlayAvailable;
  v3 = [(CSDMessagingSharePlayAvailable *)&v7 description];
  v4 = [(CSDMessagingSharePlayAvailable *)self dictionaryRepresentation];
  v5 = [NSString stringWithFormat:@"%@ %@", v3, v4];

  return v5;
}

- (id)dictionaryRepresentation
{
  v3 = +[NSMutableDictionary dictionary];
  if (*&self->_has)
  {
    v4 = [NSNumber numberWithUnsignedInt:self->_version];
    [v3 setObject:v4 forKey:@"version"];
  }

  state = self->_state;
  if (state >= 3)
  {
    v6 = [NSString stringWithFormat:@"(unknown: %i)", self->_state];
  }

  else
  {
    v6 = off_10061E7B8[state];
  }

  [v3 setObject:v6 forKey:@"state"];

  if ((*&self->_has & 2) != 0)
  {
    v7 = [NSNumber numberWithBool:self->_supportsRequestToScreenShare];
    [v3 setObject:v7 forKey:@"supportsRequestToScreenShare"];
  }

  return v3;
}

- (void)writeTo:(id)a3
{
  v7 = a3;
  if (*&self->_has)
  {
    version = self->_version;
    PBDataWriterWriteUint32Field();
  }

  state = self->_state;
  PBDataWriterWriteInt32Field();
  if ((*&self->_has & 2) != 0)
  {
    supportsRequestToScreenShare = self->_supportsRequestToScreenShare;
    PBDataWriterWriteBOOLField();
  }
}

- (void)copyTo:(id)a3
{
  v4 = a3;
  if (*&self->_has)
  {
    v4[3] = self->_version;
    *(v4 + 20) |= 1u;
  }

  v4[2] = self->_state;
  if ((*&self->_has & 2) != 0)
  {
    *(v4 + 16) = self->_supportsRequestToScreenShare;
    *(v4 + 20) |= 2u;
  }
}

- (id)copyWithZone:(_NSZone *)a3
{
  result = [objc_msgSend(objc_opt_class() allocWithZone:{a3), "init"}];
  if (*&self->_has)
  {
    *(result + 3) = self->_version;
    *(result + 20) |= 1u;
  }

  *(result + 2) = self->_state;
  if ((*&self->_has & 2) != 0)
  {
    *(result + 16) = self->_supportsRequestToScreenShare;
    *(result + 20) |= 2u;
  }

  return result;
}

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  if (![v4 isMemberOfClass:objc_opt_class()])
  {
    goto LABEL_10;
  }

  if (*&self->_has)
  {
    if ((*(v4 + 20) & 1) == 0 || self->_version != *(v4 + 3))
    {
      goto LABEL_10;
    }
  }

  else if (*(v4 + 20))
  {
    goto LABEL_10;
  }

  if (self->_state != *(v4 + 2))
  {
    goto LABEL_10;
  }

  v5 = (*(v4 + 20) & 2) == 0;
  if ((*&self->_has & 2) != 0)
  {
    if ((*(v4 + 20) & 2) != 0)
    {
      if (self->_supportsRequestToScreenShare)
      {
        if ((*(v4 + 16) & 1) == 0)
        {
          goto LABEL_10;
        }
      }

      else if (*(v4 + 16))
      {
        goto LABEL_10;
      }

      v5 = 1;
      goto LABEL_11;
    }

LABEL_10:
    v5 = 0;
  }

LABEL_11:

  return v5;
}

- (unint64_t)hash
{
  if (*&self->_has)
  {
    v2 = 2654435761 * self->_version;
  }

  else
  {
    v2 = 0;
  }

  if ((*&self->_has & 2) != 0)
  {
    v3 = 2654435761 * self->_supportsRequestToScreenShare;
  }

  else
  {
    v3 = 0;
  }

  return (2654435761 * self->_state) ^ v2 ^ v3;
}

- (void)mergeFrom:(id)a3
{
  v4 = a3;
  if (*(v4 + 20))
  {
    self->_version = *(v4 + 3);
    *&self->_has |= 1u;
  }

  self->_state = *(v4 + 2);
  if ((*(v4 + 20) & 2) != 0)
  {
    self->_supportsRequestToScreenShare = *(v4 + 16);
    *&self->_has |= 2u;
  }
}

@end