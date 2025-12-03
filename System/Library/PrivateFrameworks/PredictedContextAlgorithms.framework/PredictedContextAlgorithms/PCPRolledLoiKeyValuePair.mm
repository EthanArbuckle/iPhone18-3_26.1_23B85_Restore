@interface PCPRolledLoiKeyValuePair
- (BOOL)isEqual:(id)equal;
- (id)copyWithZone:(_NSZone *)zone;
- (id)description;
- (id)dictionaryRepresentation;
- (void)copyTo:(id)to;
- (void)mergeFrom:(id)from;
- (void)writeTo:(id)to;
@end

@implementation PCPRolledLoiKeyValuePair

- (id)description
{
  v3 = MEMORY[0x1E696AEC0];
  v8.receiver = self;
  v8.super_class = PCPRolledLoiKeyValuePair;
  v4 = [(PCPRolledLoiKeyValuePair *)&v8 description];
  dictionaryRepresentation = [(PCPRolledLoiKeyValuePair *)self dictionaryRepresentation];
  v6 = [v3 stringWithFormat:@"%@ %@", v4, dictionaryRepresentation];

  return v6;
}

- (id)dictionaryRepresentation
{
  dictionary = [MEMORY[0x1E695DF90] dictionary];
  v4 = dictionary;
  identifier = self->_identifier;
  if (identifier)
  {
    [dictionary setObject:identifier forKey:@"identifier"];
  }

  analytics = self->_analytics;
  if (analytics)
  {
    dictionaryRepresentation = [(PCPRolledLoiAnalytics *)analytics dictionaryRepresentation];
    [v4 setObject:dictionaryRepresentation forKey:@"analytics"];
  }

  return v4;
}

- (void)writeTo:(id)to
{
  identifier = self->_identifier;
  toCopy = to;
  PBDataWriterWriteDataField();
  analytics = self->_analytics;
  PBDataWriterWriteSubmessage();
}

- (void)copyTo:(id)to
{
  identifier = self->_identifier;
  toCopy = to;
  [toCopy setIdentifier:identifier];
  [toCopy setAnalytics:self->_analytics];
}

- (id)copyWithZone:(_NSZone *)zone
{
  v5 = [objc_msgSend(objc_opt_class() allocWithZone:{zone), "init"}];
  v6 = [(NSData *)self->_identifier copyWithZone:zone];
  v7 = v5[2];
  v5[2] = v6;

  v8 = [(PCPRolledLoiAnalytics *)self->_analytics copyWithZone:zone];
  v9 = v5[1];
  v5[1] = v8;

  return v5;
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  if ([equalCopy isMemberOfClass:objc_opt_class()] && ((identifier = self->_identifier, !(identifier | equalCopy[2])) || -[NSData isEqual:](identifier, "isEqual:")))
  {
    analytics = self->_analytics;
    if (analytics | equalCopy[1])
    {
      v7 = [(PCPRolledLoiAnalytics *)analytics isEqual:?];
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

- (void)mergeFrom:(id)from
{
  fromCopy = from;
  v7 = fromCopy;
  if (fromCopy[2])
  {
    [(PCPRolledLoiKeyValuePair *)self setIdentifier:?];
    fromCopy = v7;
  }

  analytics = self->_analytics;
  v6 = fromCopy[1];
  if (analytics)
  {
    if (v6)
    {
      [(PCPRolledLoiAnalytics *)analytics mergeFrom:?];
    }
  }

  else if (v6)
  {
    [(PCPRolledLoiKeyValuePair *)self setAnalytics:?];
  }

  MEMORY[0x1EEE66BB8]();
}

@end