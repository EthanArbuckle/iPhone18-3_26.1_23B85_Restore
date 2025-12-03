@interface PPPBLabeledSocialProfile
- (BOOL)isEqual:(id)equal;
- (id)copyWithZone:(_NSZone *)zone;
- (id)description;
- (id)dictionaryRepresentation;
- (unint64_t)hash;
- (void)copyTo:(id)to;
- (void)mergeFrom:(id)from;
- (void)writeTo:(id)to;
@end

@implementation PPPBLabeledSocialProfile

- (void)mergeFrom:(id)from
{
  fromCopy = from;
  if (fromCopy[1])
  {
    [(PPPBLabeledSocialProfile *)self setLabel:?];
  }

  if (fromCopy[3])
  {
    [(PPPBLabeledSocialProfile *)self setUrlString:?];
  }

  if (fromCopy[5])
  {
    [(PPPBLabeledSocialProfile *)self setUsername:?];
  }

  if (fromCopy[4])
  {
    [(PPPBLabeledSocialProfile *)self setUserIdentifier:?];
  }

  if (fromCopy[2])
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

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  if ([equalCopy isMemberOfClass:objc_opt_class()] && ((label = self->_label, !(label | equalCopy[1])) || -[NSString isEqual:](label, "isEqual:")) && ((urlString = self->_urlString, !(urlString | equalCopy[3])) || -[NSString isEqual:](urlString, "isEqual:")) && ((username = self->_username, !(username | equalCopy[5])) || -[NSString isEqual:](username, "isEqual:")) && ((userIdentifier = self->_userIdentifier, !(userIdentifier | equalCopy[4])) || -[NSString isEqual:](userIdentifier, "isEqual:")))
  {
    service = self->_service;
    if (service | equalCopy[2])
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

- (id)copyWithZone:(_NSZone *)zone
{
  v5 = [objc_msgSend(objc_opt_class() allocWithZone:{zone), "init"}];
  v6 = [(NSString *)self->_label copyWithZone:zone];
  v7 = v5[1];
  v5[1] = v6;

  v8 = [(NSString *)self->_urlString copyWithZone:zone];
  v9 = v5[3];
  v5[3] = v8;

  v10 = [(NSString *)self->_username copyWithZone:zone];
  v11 = v5[5];
  v5[5] = v10;

  v12 = [(NSString *)self->_userIdentifier copyWithZone:zone];
  v13 = v5[4];
  v5[4] = v12;

  v14 = [(NSString *)self->_service copyWithZone:zone];
  v15 = v5[2];
  v5[2] = v14;

  return v5;
}

- (void)copyTo:(id)to
{
  toCopy = to;
  v5 = toCopy;
  if (self->_label)
  {
    [toCopy setLabel:?];
    toCopy = v5;
  }

  if (self->_urlString)
  {
    [v5 setUrlString:?];
    toCopy = v5;
  }

  if (self->_username)
  {
    [v5 setUsername:?];
    toCopy = v5;
  }

  if (self->_userIdentifier)
  {
    [v5 setUserIdentifier:?];
    toCopy = v5;
  }

  if (self->_service)
  {
    [v5 setService:?];
    toCopy = v5;
  }
}

- (void)writeTo:(id)to
{
  toCopy = to;
  v5 = toCopy;
  if (self->_label)
  {
    PBDataWriterWriteStringField();
    toCopy = v5;
  }

  if (self->_urlString)
  {
    PBDataWriterWriteStringField();
    toCopy = v5;
  }

  if (self->_username)
  {
    PBDataWriterWriteStringField();
    toCopy = v5;
  }

  if (self->_userIdentifier)
  {
    PBDataWriterWriteStringField();
    toCopy = v5;
  }

  if (self->_service)
  {
    PBDataWriterWriteStringField();
    toCopy = v5;
  }
}

- (id)dictionaryRepresentation
{
  dictionary = [MEMORY[0x277CBEB38] dictionary];
  v4 = dictionary;
  label = self->_label;
  if (label)
  {
    [dictionary setObject:label forKey:@"label"];
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
  dictionaryRepresentation = [(PPPBLabeledSocialProfile *)self dictionaryRepresentation];
  v6 = [v3 stringWithFormat:@"%@ %@", v4, dictionaryRepresentation];

  return v6;
}

@end