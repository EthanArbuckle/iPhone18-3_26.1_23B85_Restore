@interface SASExpressSettingsPrivacyBundle
- (BOOL)isEqual:(id)equal;
- (id)copyWithZone:(_NSZone *)zone;
- (id)description;
- (id)dictionaryRepresentation;
- (void)copyTo:(id)to;
- (void)mergeFrom:(id)from;
- (void)writeTo:(id)to;
@end

@implementation SASExpressSettingsPrivacyBundle

- (id)description
{
  v3 = MEMORY[0x277CCACA8];
  v8.receiver = self;
  v8.super_class = SASExpressSettingsPrivacyBundle;
  v4 = [(SASExpressSettingsPrivacyBundle *)&v8 description];
  dictionaryRepresentation = [(SASExpressSettingsPrivacyBundle *)self dictionaryRepresentation];
  v6 = [v3 stringWithFormat:@"%@ %@", v4, dictionaryRepresentation];

  return v6;
}

- (id)dictionaryRepresentation
{
  dictionary = [MEMORY[0x277CBEB38] dictionary];
  v4 = dictionary;
  identifier = self->_identifier;
  if (identifier)
  {
    [dictionary setObject:identifier forKey:@"identifier"];
  }

  v6 = [MEMORY[0x277CCABB0] numberWithUnsignedLongLong:self->_contentVersion];
  [v4 setObject:v6 forKey:@"contentVersion"];

  return v4;
}

- (void)writeTo:(id)to
{
  toCopy = to;
  if (!self->_identifier)
  {
    [SASExpressSettingsPrivacyBundle writeTo:];
  }

  v6 = toCopy;
  PBDataWriterWriteStringField();
  contentVersion = self->_contentVersion;
  PBDataWriterWriteUint64Field();
}

- (void)copyTo:(id)to
{
  identifier = self->_identifier;
  toCopy = to;
  [toCopy setIdentifier:identifier];
  toCopy[1] = self->_contentVersion;
}

- (id)copyWithZone:(_NSZone *)zone
{
  v5 = [objc_msgSend(objc_opt_class() allocWithZone:{zone), "init"}];
  v6 = [(NSString *)self->_identifier copyWithZone:zone];
  v7 = v5[2];
  v5[2] = v6;

  v5[1] = self->_contentVersion;
  return v5;
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  v6 = [equalCopy isMemberOfClass:objc_opt_class()] && ((identifier = self->_identifier, !(identifier | equalCopy[2])) || -[NSString isEqual:](identifier, "isEqual:")) && self->_contentVersion == equalCopy[1];

  return v6;
}

- (void)mergeFrom:(id)from
{
  fromCopy = from;
  if (fromCopy[2])
  {
    v5 = fromCopy;
    [(SASExpressSettingsPrivacyBundle *)self setIdentifier:?];
    fromCopy = v5;
  }

  self->_contentVersion = fromCopy[1];
}

@end