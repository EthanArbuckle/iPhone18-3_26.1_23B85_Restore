@interface PCPRolledLoiKeyValuePair
- (BOOL)isEqual:(id)a3;
- (id)copyWithZone:(_NSZone *)a3;
- (id)description;
- (id)dictionaryRepresentation;
- (void)copyTo:(id)a3;
- (void)mergeFrom:(id)a3;
- (void)writeTo:(id)a3;
@end

@implementation PCPRolledLoiKeyValuePair

- (id)description
{
  v3 = MEMORY[0x1E696AEC0];
  v8.receiver = self;
  v8.super_class = PCPRolledLoiKeyValuePair;
  v4 = [(PCPRolledLoiKeyValuePair *)&v8 description];
  v5 = [(PCPRolledLoiKeyValuePair *)self dictionaryRepresentation];
  v6 = [v3 stringWithFormat:@"%@ %@", v4, v5];

  return v6;
}

- (id)dictionaryRepresentation
{
  v3 = [MEMORY[0x1E695DF90] dictionary];
  v4 = v3;
  identifier = self->_identifier;
  if (identifier)
  {
    [v3 setObject:identifier forKey:@"identifier"];
  }

  analytics = self->_analytics;
  if (analytics)
  {
    v7 = [(PCPRolledLoiAnalytics *)analytics dictionaryRepresentation];
    [v4 setObject:v7 forKey:@"analytics"];
  }

  return v4;
}

- (void)writeTo:(id)a3
{
  identifier = self->_identifier;
  v6 = a3;
  PBDataWriterWriteDataField();
  analytics = self->_analytics;
  PBDataWriterWriteSubmessage();
}

- (void)copyTo:(id)a3
{
  identifier = self->_identifier;
  v5 = a3;
  [v5 setIdentifier:identifier];
  [v5 setAnalytics:self->_analytics];
}

- (id)copyWithZone:(_NSZone *)a3
{
  v5 = [objc_msgSend(objc_opt_class() allocWithZone:{a3), "init"}];
  v6 = [(NSData *)self->_identifier copyWithZone:a3];
  v7 = v5[2];
  v5[2] = v6;

  v8 = [(PCPRolledLoiAnalytics *)self->_analytics copyWithZone:a3];
  v9 = v5[1];
  v5[1] = v8;

  return v5;
}

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  if ([v4 isMemberOfClass:objc_opt_class()] && ((identifier = self->_identifier, !(identifier | v4[2])) || -[NSData isEqual:](identifier, "isEqual:")))
  {
    analytics = self->_analytics;
    if (analytics | v4[1])
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

- (void)mergeFrom:(id)a3
{
  v4 = a3;
  v7 = v4;
  if (v4[2])
  {
    [(PCPRolledLoiKeyValuePair *)self setIdentifier:?];
    v4 = v7;
  }

  analytics = self->_analytics;
  v6 = v4[1];
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