@interface ICAppleMusicAPITokenCollection
- (BOOL)isEqual:(id)equal;
- (id)copyWithZone:(_NSZone *)zone;
- (id)description;
- (id)dictionaryRepresentation;
- (id)privacyConsciousDescription;
- (id)privacyConsciousDictionaryRepresentation;
- (void)mergeFrom:(id)from;
- (void)writeTo:(id)to;
@end

@implementation ICAppleMusicAPITokenCollection

- (id)privacyConsciousDescription
{
  v7.receiver = self;
  v7.super_class = ICAppleMusicAPITokenCollection;
  v3 = [(ICAppleMusicAPITokenCollection *)&v7 description];
  privacyConsciousDictionaryRepresentation = [(ICAppleMusicAPITokenCollection *)self privacyConsciousDictionaryRepresentation];
  v5 = [NSString stringWithFormat:@"%@ %@", v3, privacyConsciousDictionaryRepresentation];

  return v5;
}

- (id)privacyConsciousDictionaryRepresentation
{
  v3 = +[ICDeviceInfo currentDeviceInfo];
  isInternalBuild = [v3 isInternalBuild];

  v5 = +[NSMutableDictionary dictionary];
  if (![(ICAppleMusicAPITokenCollection *)self hasDeveloperToken])
  {
    if (![(ICAppleMusicAPITokenCollection *)self hasUserToken])
    {
      goto LABEL_10;
    }

    if (isInternalBuild)
    {
      goto LABEL_7;
    }

LABEL_9:
    [v5 setObject:@"<redacted>" forKey:@"userToken"];
    goto LABEL_10;
  }

  if ((isInternalBuild & 1) == 0)
  {
    [v5 setObject:@"<redacted>" forKey:@"developerToken"];
    if (![(ICAppleMusicAPITokenCollection *)self hasUserToken])
    {
      goto LABEL_10;
    }

    goto LABEL_9;
  }

  developerToken = [(ICAppleMusicAPITokenCollection *)self developerToken];
  [v5 setObject:developerToken forKey:@"developerToken"];

  if ([(ICAppleMusicAPITokenCollection *)self hasUserToken])
  {
LABEL_7:
    userToken = [(ICAppleMusicAPITokenCollection *)self userToken];
    [v5 setObject:userToken forKey:@"userToken"];
  }

LABEL_10:

  return v5;
}

- (void)mergeFrom:(id)from
{
  fromCopy = from;
  v5 = fromCopy;
  if (fromCopy[1])
  {
    [(ICAppleMusicAPITokenCollection *)self setDeveloperToken:?];
    fromCopy = v5;
  }

  if (fromCopy[2])
  {
    [(ICAppleMusicAPITokenCollection *)self setUserToken:?];
    fromCopy = v5;
  }
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  if ([equalCopy isMemberOfClass:objc_opt_class()] && ((developerToken = self->_developerToken, !(developerToken | equalCopy[1])) || -[NSString isEqual:](developerToken, "isEqual:")))
  {
    userToken = self->_userToken;
    if (userToken | equalCopy[2])
    {
      v7 = [(NSString *)userToken isEqual:?];
    }

    else
    {
      v7 = 1;
    }
  }

  else
  {
    v7 = 0;
  }

  return v7;
}

- (id)copyWithZone:(_NSZone *)zone
{
  v5 = [objc_msgSend(objc_opt_class() allocWithZone:{zone), "init"}];
  v6 = [(NSString *)self->_developerToken copyWithZone:zone];
  v7 = v5[1];
  v5[1] = v6;

  v8 = [(NSString *)self->_userToken copyWithZone:zone];
  v9 = v5[2];
  v5[2] = v8;

  return v5;
}

- (void)writeTo:(id)to
{
  toCopy = to;
  v5 = toCopy;
  if (self->_developerToken)
  {
    PBDataWriterWriteStringField();
    toCopy = v5;
  }

  if (self->_userToken)
  {
    PBDataWriterWriteStringField();
    toCopy = v5;
  }
}

- (id)dictionaryRepresentation
{
  v3 = +[NSMutableDictionary dictionary];
  v4 = v3;
  developerToken = self->_developerToken;
  if (developerToken)
  {
    [v3 setObject:developerToken forKey:@"developerToken"];
  }

  userToken = self->_userToken;
  if (userToken)
  {
    [v4 setObject:userToken forKey:@"userToken"];
  }

  return v4;
}

- (id)description
{
  v7.receiver = self;
  v7.super_class = ICAppleMusicAPITokenCollection;
  v3 = [(ICAppleMusicAPITokenCollection *)&v7 description];
  dictionaryRepresentation = [(ICAppleMusicAPITokenCollection *)self dictionaryRepresentation];
  v5 = [NSString stringWithFormat:@"%@ %@", v3, dictionaryRepresentation];

  return v5;
}

@end