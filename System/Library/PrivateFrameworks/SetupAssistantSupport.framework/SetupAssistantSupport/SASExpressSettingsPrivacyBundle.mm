@interface SASExpressSettingsPrivacyBundle
- (BOOL)isEqual:(id)a3;
- (id)copyWithZone:(_NSZone *)a3;
- (id)description;
- (id)dictionaryRepresentation;
- (void)copyTo:(id)a3;
- (void)mergeFrom:(id)a3;
- (void)writeTo:(id)a3;
@end

@implementation SASExpressSettingsPrivacyBundle

- (id)description
{
  v3 = MEMORY[0x277CCACA8];
  v8.receiver = self;
  v8.super_class = SASExpressSettingsPrivacyBundle;
  v4 = [(SASExpressSettingsPrivacyBundle *)&v8 description];
  v5 = [(SASExpressSettingsPrivacyBundle *)self dictionaryRepresentation];
  v6 = [v3 stringWithFormat:@"%@ %@", v4, v5];

  return v6;
}

- (id)dictionaryRepresentation
{
  v3 = [MEMORY[0x277CBEB38] dictionary];
  v4 = v3;
  identifier = self->_identifier;
  if (identifier)
  {
    [v3 setObject:identifier forKey:@"identifier"];
  }

  v6 = [MEMORY[0x277CCABB0] numberWithUnsignedLongLong:self->_contentVersion];
  [v4 setObject:v6 forKey:@"contentVersion"];

  return v4;
}

- (void)writeTo:(id)a3
{
  v4 = a3;
  if (!self->_identifier)
  {
    [SASExpressSettingsPrivacyBundle writeTo:];
  }

  v6 = v4;
  PBDataWriterWriteStringField();
  contentVersion = self->_contentVersion;
  PBDataWriterWriteUint64Field();
}

- (void)copyTo:(id)a3
{
  identifier = self->_identifier;
  v5 = a3;
  [v5 setIdentifier:identifier];
  v5[1] = self->_contentVersion;
}

- (id)copyWithZone:(_NSZone *)a3
{
  v5 = [objc_msgSend(objc_opt_class() allocWithZone:{a3), "init"}];
  v6 = [(NSString *)self->_identifier copyWithZone:a3];
  v7 = v5[2];
  v5[2] = v6;

  v5[1] = self->_contentVersion;
  return v5;
}

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  v6 = [v4 isMemberOfClass:objc_opt_class()] && ((identifier = self->_identifier, !(identifier | v4[2])) || -[NSString isEqual:](identifier, "isEqual:")) && self->_contentVersion == v4[1];

  return v6;
}

- (void)mergeFrom:(id)a3
{
  v4 = a3;
  if (v4[2])
  {
    v5 = v4;
    [(SASExpressSettingsPrivacyBundle *)self setIdentifier:?];
    v4 = v5;
  }

  self->_contentVersion = v4[1];
}

@end