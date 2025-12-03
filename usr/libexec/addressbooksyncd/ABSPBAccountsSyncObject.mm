@interface ABSPBAccountsSyncObject
- (BOOL)isEqual:(id)equal;
- (id)copyWithZone:(_NSZone *)zone;
- (id)description;
- (id)dictionaryRepresentation;
- (unint64_t)hash;
- (void)copyTo:(id)to;
- (void)mergeFrom:(id)from;
- (void)writeTo:(id)to;
@end

@implementation ABSPBAccountsSyncObject

- (id)description
{
  v7.receiver = self;
  v7.super_class = ABSPBAccountsSyncObject;
  v3 = [(ABSPBAccountsSyncObject *)&v7 description];
  dictionaryRepresentation = [(ABSPBAccountsSyncObject *)self dictionaryRepresentation];
  v5 = [NSString stringWithFormat:@"%@ %@", v3, dictionaryRepresentation];

  return v5;
}

- (id)dictionaryRepresentation
{
  v3 = +[NSMutableDictionary dictionary];
  if (*&self->_has)
  {
    v4 = [NSNumber numberWithBool:self->_localContainerEnabled];
    [v3 setObject:v4 forKey:@"localContainerEnabled"];
  }

  primaryiCloudAccountCardDAVAccountExternalIdentifier = self->_primaryiCloudAccountCardDAVAccountExternalIdentifier;
  if (primaryiCloudAccountCardDAVAccountExternalIdentifier)
  {
    [v3 setObject:primaryiCloudAccountCardDAVAccountExternalIdentifier forKey:@"primaryiCloudAccountCardDAVAccountExternalIdentifier"];
  }

  return v3;
}

- (void)writeTo:(id)to
{
  toCopy = to;
  v6 = toCopy;
  if (*&self->_has)
  {
    localContainerEnabled = self->_localContainerEnabled;
    PBDataWriterWriteBOOLField();
    toCopy = v6;
  }

  if (self->_primaryiCloudAccountCardDAVAccountExternalIdentifier)
  {
    PBDataWriterWriteStringField();
    toCopy = v6;
  }
}

- (void)copyTo:(id)to
{
  toCopy = to;
  if (*&self->_has)
  {
    toCopy[16] = self->_localContainerEnabled;
    toCopy[20] |= 1u;
  }

  if (self->_primaryiCloudAccountCardDAVAccountExternalIdentifier)
  {
    v5 = toCopy;
    [toCopy setPrimaryiCloudAccountCardDAVAccountExternalIdentifier:?];
    toCopy = v5;
  }
}

- (id)copyWithZone:(_NSZone *)zone
{
  v5 = [objc_msgSend(objc_opt_class() allocWithZone:{zone), "init"}];
  v6 = v5;
  if (*&self->_has)
  {
    *(v5 + 16) = self->_localContainerEnabled;
    *(v5 + 20) |= 1u;
  }

  v7 = [(NSString *)self->_primaryiCloudAccountCardDAVAccountExternalIdentifier copyWithZone:zone];
  v8 = v6[1];
  v6[1] = v7;

  return v6;
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  if (![equalCopy isMemberOfClass:objc_opt_class()])
  {
    goto LABEL_7;
  }

  v5 = *(equalCopy + 20);
  if ((*&self->_has & 1) == 0)
  {
    goto LABEL_3;
  }

  if ((*(equalCopy + 20) & 1) == 0)
  {
    goto LABEL_7;
  }

  v5 = *(equalCopy + 16);
  if (!self->_localContainerEnabled)
  {
LABEL_3:
    if ((v5 & 1) == 0)
    {
      goto LABEL_4;
    }

LABEL_7:
    v7 = 0;
    goto LABEL_8;
  }

  if ((*(equalCopy + 16) & 1) == 0)
  {
    goto LABEL_7;
  }

LABEL_4:
  primaryiCloudAccountCardDAVAccountExternalIdentifier = self->_primaryiCloudAccountCardDAVAccountExternalIdentifier;
  if (primaryiCloudAccountCardDAVAccountExternalIdentifier | *(equalCopy + 1))
  {
    v7 = [(NSString *)primaryiCloudAccountCardDAVAccountExternalIdentifier isEqual:?];
  }

  else
  {
    v7 = 1;
  }

LABEL_8:

  return v7;
}

- (unint64_t)hash
{
  if (*&self->_has)
  {
    v2 = 2654435761 * self->_localContainerEnabled;
  }

  else
  {
    v2 = 0;
  }

  return [(NSString *)self->_primaryiCloudAccountCardDAVAccountExternalIdentifier hash]^ v2;
}

- (void)mergeFrom:(id)from
{
  fromCopy = from;
  if (fromCopy[20])
  {
    self->_localContainerEnabled = fromCopy[16];
    *&self->_has |= 1u;
  }

  if (*(fromCopy + 1))
  {
    v5 = fromCopy;
    [(ABSPBAccountsSyncObject *)self setPrimaryiCloudAccountCardDAVAccountExternalIdentifier:?];
    fromCopy = v5;
  }
}

@end