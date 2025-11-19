@interface PPPBLabeledSocialProfile
- (BOOL)isEqual:(id)a3;
- (id)copyWithZone:(_NSZone *)a3;
- (id)description;
- (id)dictionaryRepresentation;
- (unint64_t)hash;
- (void)copyTo:(id)a3;
- (void)mergeFrom:(id)a3;
- (void)writeTo:(id)a3;
@end

@implementation PPPBLabeledSocialProfile

- (void)mergeFrom:(id)a3
{
  v4 = a3;
  if (v4[1])
  {
    [(PPPBLabeledSocialProfile *)self setLabel:?];
  }

  if (v4[3])
  {
    [(PPPBLabeledSocialProfile *)self setUrlString:?];
  }

  if (v4[5])
  {
    [(PPPBLabeledSocialProfile *)self setUsername:?];
  }

  if (v4[4])
  {
    [(PPPBLabeledSocialProfile *)self setUserIdentifier:?];
  }

  if (v4[2])
  {
    [(PPPBLabeledSocialProfile *)self setService:?];
  }
}

- (unint64_t)hash
{
  v3 = [(NSString *)self->_label hash];
  v4 = [(NSString *)self->_urlString hash]^ v3;
  v5 = [(NSString *)self->_username hash];
  v6 = v4 ^ v5 ^ [(NSString *)self->_userIdentifier hash];
  return v6 ^ [(NSString *)self->_service hash];
}

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  if ([v4 isMemberOfClass:objc_opt_class()] && ((label = self->_label, !(label | v4[1])) || -[NSString isEqual:](label, "isEqual:")) && ((urlString = self->_urlString, !(urlString | v4[3])) || -[NSString isEqual:](urlString, "isEqual:")) && ((username = self->_username, !(username | v4[5])) || -[NSString isEqual:](username, "isEqual:")) && ((userIdentifier = self->_userIdentifier, !(userIdentifier | v4[4])) || -[NSString isEqual:](userIdentifier, "isEqual:")))
  {
    service = self->_service;
    if (service | v4[2])
    {
      v10 = [(NSString *)service isEqual:?];
    }

    else
    {
      v10 = 1;
    }
  }

  else
  {
    v10 = 0;
  }

  return v10;
}

- (id)copyWithZone:(_NSZone *)a3
{
  v5 = [objc_msgSend(objc_opt_class() allocWithZone:{a3), "init"}];
  v6 = [(NSString *)self->_label copyWithZone:a3];
  v7 = v5[1];
  v5[1] = v6;

  v8 = [(NSString *)self->_urlString copyWithZone:a3];
  v9 = v5[3];
  v5[3] = v8;

  v10 = [(NSString *)self->_username copyWithZone:a3];
  v11 = v5[5];
  v5[5] = v10;

  v12 = [(NSString *)self->_userIdentifier copyWithZone:a3];
  v13 = v5[4];
  v5[4] = v12;

  v14 = [(NSString *)self->_service copyWithZone:a3];
  v15 = v5[2];
  v5[2] = v14;

  return v5;
}

- (void)copyTo:(id)a3
{
  v4 = a3;
  v5 = v4;
  if (self->_label)
  {
    [v4 setLabel:?];
    v4 = v5;
  }

  if (self->_urlString)
  {
    [v5 setUrlString:?];
    v4 = v5;
  }

  if (self->_username)
  {
    [v5 setUsername:?];
    v4 = v5;
  }

  if (self->_userIdentifier)
  {
    [v5 setUserIdentifier:?];
    v4 = v5;
  }

  if (self->_service)
  {
    [v5 setService:?];
    v4 = v5;
  }
}

- (void)writeTo:(id)a3
{
  v4 = a3;
  v5 = v4;
  if (self->_label)
  {
    PBDataWriterWriteStringField();
    v4 = v5;
  }

  if (self->_urlString)
  {
    PBDataWriterWriteStringField();
    v4 = v5;
  }

  if (self->_username)
  {
    PBDataWriterWriteStringField();
    v4 = v5;
  }

  if (self->_userIdentifier)
  {
    PBDataWriterWriteStringField();
    v4 = v5;
  }

  if (self->_service)
  {
    PBDataWriterWriteStringField();
    v4 = v5;
  }
}

- (id)dictionaryRepresentation
{
  v3 = [MEMORY[0x277CBEB38] dictionary];
  v4 = v3;
  label = self->_label;
  if (label)
  {
    [v3 setObject:label forKey:@"label"];
  }

  urlString = self->_urlString;
  if (urlString)
  {
    [v4 setObject:urlString forKey:@"urlString"];
  }

  username = self->_username;
  if (username)
  {
    [v4 setObject:username forKey:@"username"];
  }

  userIdentifier = self->_userIdentifier;
  if (userIdentifier)
  {
    [v4 setObject:userIdentifier forKey:@"userIdentifier"];
  }

  service = self->_service;
  if (service)
  {
    [v4 setObject:service forKey:@"service"];
  }

  return v4;
}

- (id)description
{
  v3 = MEMORY[0x277CCACA8];
  v8.receiver = self;
  v8.super_class = PPPBLabeledSocialProfile;
  v4 = [(PPPBLabeledSocialProfile *)&v8 description];
  v5 = [(PPPBLabeledSocialProfile *)self dictionaryRepresentation];
  v6 = [v3 stringWithFormat:@"%@ %@", v4, v5];

  return v6;
}

@end