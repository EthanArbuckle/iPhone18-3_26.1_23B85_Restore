@interface ABSPBAccountsSyncObject
- (BOOL)isEqual:(id)a3;
- (id)copyWithZone:(_NSZone *)a3;
- (id)description;
- (id)dictionaryRepresentation;
- (unint64_t)hash;
- (void)copyTo:(id)a3;
- (void)mergeFrom:(id)a3;
- (void)writeTo:(id)a3;
@end

@implementation ABSPBAccountsSyncObject

- (id)description
{
  v7.receiver = self;
  v7.super_class = ABSPBAccountsSyncObject;
  v3 = [(ABSPBAccountsSyncObject *)&v7 description];
  v4 = [(ABSPBAccountsSyncObject *)self dictionaryRepresentation];
  v5 = [NSString stringWithFormat:@"%@ %@", v3, v4];

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

- (void)writeTo:(id)a3
{
  v4 = a3;
  v6 = v4;
  if (*&self->_has)
  {
    localContainerEnabled = self->_localContainerEnabled;
    PBDataWriterWriteBOOLField();
    v4 = v6;
  }

  if (self->_primaryiCloudAccountCardDAVAccountExternalIdentifier)
  {
    PBDataWriterWriteStringField();
    v4 = v6;
  }
}

- (void)copyTo:(id)a3
{
  v4 = a3;
  if (*&self->_has)
  {
    v4[16] = self->_localContainerEnabled;
    v4[20] |= 1u;
  }

  if (self->_primaryiCloudAccountCardDAVAccountExternalIdentifier)
  {
    v5 = v4;
    [v4 setPrimaryiCloudAccountCardDAVAccountExternalIdentifier:?];
    v4 = v5;
  }
}

- (id)copyWithZone:(_NSZone *)a3
{
  v5 = [objc_msgSend(objc_opt_class() allocWithZone:{a3), "init"}];
  v6 = v5;
  if (*&self->_has)
  {
    *(v5 + 16) = self->_localContainerEnabled;
    *(v5 + 20) |= 1u;
  }

  v7 = [(NSString *)self->_primaryiCloudAccountCardDAVAccountExternalIdentifier copyWithZone:a3];
  v8 = v6[1];
  v6[1] = v7;

  return v6;
}

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  if (![v4 isMemberOfClass:objc_opt_class()])
  {
    goto LABEL_7;
  }

  v5 = *(v4 + 20);
  if ((*&self->_has & 1) == 0)
  {
    goto LABEL_3;
  }

  if ((*(v4 + 20) & 1) == 0)
  {
    goto LABEL_7;
  }

  v5 = *(v4 + 16);
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

  if ((*(v4 + 16) & 1) == 0)
  {
    goto LABEL_7;
  }

LABEL_4:
  primaryiCloudAccountCardDAVAccountExternalIdentifier = self->_primaryiCloudAccountCardDAVAccountExternalIdentifier;
  if (primaryiCloudAccountCardDAVAccountExternalIdentifier | *(v4 + 1))
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

- (void)mergeFrom:(id)a3
{
  v4 = a3;
  if (v4[20])
  {
    self->_localContainerEnabled = v4[16];
    *&self->_has |= 1u;
  }

  if (*(v4 + 1))
  {
    v5 = v4;
    [(ABSPBAccountsSyncObject *)self setPrimaryiCloudAccountCardDAVAccountExternalIdentifier:?];
    v4 = v5;
  }
}

@end