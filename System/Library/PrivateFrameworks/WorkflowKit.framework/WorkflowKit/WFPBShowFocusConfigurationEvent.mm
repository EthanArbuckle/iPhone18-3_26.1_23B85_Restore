@interface WFPBShowFocusConfigurationEvent
- (BOOL)isEqual:(id)equal;
- (NSString)key;
- (id)copyWithZone:(_NSZone *)zone;
- (id)description;
- (id)dictionaryRepresentation;
- (unint64_t)hash;
- (void)copyTo:(id)to;
- (void)mergeFrom:(id)from;
- (void)writeTo:(id)to;
@end

@implementation WFPBShowFocusConfigurationEvent

- (void)mergeFrom:(id)from
{
  fromCopy = from;
  if (fromCopy[3])
  {
    [(WFPBShowFocusConfigurationEvent *)self setKey:?];
  }

  if (fromCopy[1])
  {
    [(WFPBShowFocusConfigurationEvent *)self setAppBundleIdentifier:?];
  }

  if (fromCopy[2])
  {
    [(WFPBShowFocusConfigurationEvent *)self setIntentType:?];
  }

  if (fromCopy[4])
  {
    [(WFPBShowFocusConfigurationEvent *)self setSystemFilterType:?];
  }
}

- (unint64_t)hash
{
  v3 = [(NSString *)self->_key hash];
  v4 = [(NSString *)self->_appBundleIdentifier hash]^ v3;
  v5 = [(NSString *)self->_intentType hash];
  return v4 ^ v5 ^ [(NSString *)self->_systemFilterType hash];
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  if ([equalCopy isMemberOfClass:objc_opt_class()] && ((key = self->_key, !(key | equalCopy[3])) || -[NSString isEqual:](key, "isEqual:")) && ((appBundleIdentifier = self->_appBundleIdentifier, !(appBundleIdentifier | equalCopy[1])) || -[NSString isEqual:](appBundleIdentifier, "isEqual:")) && ((intentType = self->_intentType, !(intentType | equalCopy[2])) || -[NSString isEqual:](intentType, "isEqual:")))
  {
    systemFilterType = self->_systemFilterType;
    if (systemFilterType | equalCopy[4])
    {
      v9 = [(NSString *)systemFilterType isEqual:?];
    }

    else
    {
      v9 = 1;
    }
  }

  else
  {
    v9 = 0;
  }

  return v9;
}

- (id)copyWithZone:(_NSZone *)zone
{
  v5 = [objc_msgSend(objc_opt_class() allocWithZone:{zone), "init"}];
  v6 = [(NSString *)self->_key copyWithZone:zone];
  v7 = v5[3];
  v5[3] = v6;

  v8 = [(NSString *)self->_appBundleIdentifier copyWithZone:zone];
  v9 = v5[1];
  v5[1] = v8;

  v10 = [(NSString *)self->_intentType copyWithZone:zone];
  v11 = v5[2];
  v5[2] = v10;

  v12 = [(NSString *)self->_systemFilterType copyWithZone:zone];
  v13 = v5[4];
  v5[4] = v12;

  return v5;
}

- (void)copyTo:(id)to
{
  toCopy = to;
  v5 = toCopy;
  if (self->_key)
  {
    [toCopy setKey:?];
    toCopy = v5;
  }

  if (self->_appBundleIdentifier)
  {
    [v5 setAppBundleIdentifier:?];
    toCopy = v5;
  }

  if (self->_intentType)
  {
    [v5 setIntentType:?];
    toCopy = v5;
  }

  if (self->_systemFilterType)
  {
    [v5 setSystemFilterType:?];
    toCopy = v5;
  }
}

- (void)writeTo:(id)to
{
  toCopy = to;
  v5 = toCopy;
  if (self->_key)
  {
    PBDataWriterWriteStringField();
    toCopy = v5;
  }

  if (self->_appBundleIdentifier)
  {
    PBDataWriterWriteStringField();
    toCopy = v5;
  }

  if (self->_intentType)
  {
    PBDataWriterWriteStringField();
    toCopy = v5;
  }

  if (self->_systemFilterType)
  {
    PBDataWriterWriteStringField();
    toCopy = v5;
  }
}

- (id)dictionaryRepresentation
{
  dictionary = [MEMORY[0x1E695DF90] dictionary];
  v4 = dictionary;
  key = self->_key;
  if (key)
  {
    [dictionary setObject:key forKey:@"key"];
  }

  appBundleIdentifier = self->_appBundleIdentifier;
  if (appBundleIdentifier)
  {
    [v4 setObject:appBundleIdentifier forKey:@"appBundleIdentifier"];
  }

  intentType = self->_intentType;
  if (intentType)
  {
    [v4 setObject:intentType forKey:@"intentType"];
  }

  systemFilterType = self->_systemFilterType;
  if (systemFilterType)
  {
    [v4 setObject:systemFilterType forKey:@"systemFilterType"];
  }

  return v4;
}

- (id)description
{
  v3 = MEMORY[0x1E696AEC0];
  v8.receiver = self;
  v8.super_class = WFPBShowFocusConfigurationEvent;
  v4 = [(WFPBShowFocusConfigurationEvent *)&v8 description];
  dictionaryRepresentation = [(WFPBShowFocusConfigurationEvent *)self dictionaryRepresentation];
  v6 = [v3 stringWithFormat:@"%@ %@", v4, dictionaryRepresentation];

  return v6;
}

- (NSString)key
{
  if (self->_key)
  {
    return self->_key;
  }

  else
  {
    return @"ShowFocusConfigurationEvent";
  }
}

@end