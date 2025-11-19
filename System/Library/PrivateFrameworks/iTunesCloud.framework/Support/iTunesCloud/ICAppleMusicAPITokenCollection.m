@interface ICAppleMusicAPITokenCollection
- (BOOL)isEqual:(id)a3;
- (id)copyWithZone:(_NSZone *)a3;
- (id)description;
- (id)dictionaryRepresentation;
- (id)privacyConsciousDescription;
- (id)privacyConsciousDictionaryRepresentation;
- (void)mergeFrom:(id)a3;
- (void)writeTo:(id)a3;
@end

@implementation ICAppleMusicAPITokenCollection

- (id)privacyConsciousDescription
{
  v7.receiver = self;
  v7.super_class = ICAppleMusicAPITokenCollection;
  v3 = [(ICAppleMusicAPITokenCollection *)&v7 description];
  v4 = [(ICAppleMusicAPITokenCollection *)self privacyConsciousDictionaryRepresentation];
  v5 = [NSString stringWithFormat:@"%@ %@", v3, v4];

  return v5;
}

- (id)privacyConsciousDictionaryRepresentation
{
  v3 = +[ICDeviceInfo currentDeviceInfo];
  v4 = [v3 isInternalBuild];

  v5 = +[NSMutableDictionary dictionary];
  if (![(ICAppleMusicAPITokenCollection *)self hasDeveloperToken])
  {
    if (![(ICAppleMusicAPITokenCollection *)self hasUserToken])
    {
      goto LABEL_10;
    }

    if (v4)
    {
      goto LABEL_7;
    }

LABEL_9:
    [v5 setObject:@"<redacted>" forKey:@"userToken"];
    goto LABEL_10;
  }

  if ((v4 & 1) == 0)
  {
    [v5 setObject:@"<redacted>" forKey:@"developerToken"];
    if (![(ICAppleMusicAPITokenCollection *)self hasUserToken])
    {
      goto LABEL_10;
    }

    goto LABEL_9;
  }

  v6 = [(ICAppleMusicAPITokenCollection *)self developerToken];
  [v5 setObject:v6 forKey:@"developerToken"];

  if ([(ICAppleMusicAPITokenCollection *)self hasUserToken])
  {
LABEL_7:
    v7 = [(ICAppleMusicAPITokenCollection *)self userToken];
    [v5 setObject:v7 forKey:@"userToken"];
  }

LABEL_10:

  return v5;
}

- (void)mergeFrom:(id)a3
{
  v4 = a3;
  v5 = v4;
  if (v4[1])
  {
    [(ICAppleMusicAPITokenCollection *)self setDeveloperToken:?];
    v4 = v5;
  }

  if (v4[2])
  {
    [(ICAppleMusicAPITokenCollection *)self setUserToken:?];
    v4 = v5;
  }
}

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  if ([v4 isMemberOfClass:objc_opt_class()] && ((developerToken = self->_developerToken, !(developerToken | v4[1])) || -[NSString isEqual:](developerToken, "isEqual:")))
  {
    userToken = self->_userToken;
    if (userToken | v4[2])
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

- (id)copyWithZone:(_NSZone *)a3
{
  v5 = [objc_msgSend(objc_opt_class() allocWithZone:{a3), "init"}];
  v6 = [(NSString *)self->_developerToken copyWithZone:a3];
  v7 = v5[1];
  v5[1] = v6;

  v8 = [(NSString *)self->_userToken copyWithZone:a3];
  v9 = v5[2];
  v5[2] = v8;

  return v5;
}

- (void)writeTo:(id)a3
{
  v4 = a3;
  v5 = v4;
  if (self->_developerToken)
  {
    PBDataWriterWriteStringField();
    v4 = v5;
  }

  if (self->_userToken)
  {
    PBDataWriterWriteStringField();
    v4 = v5;
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
  v4 = [(ICAppleMusicAPITokenCollection *)self dictionaryRepresentation];
  v5 = [NSString stringWithFormat:@"%@ %@", v3, v4];

  return v5;
}

@end