@interface WFPBShowFocusConfigurationEvent
- (BOOL)isEqual:(id)a3;
- (NSString)key;
- (id)copyWithZone:(_NSZone *)a3;
- (id)description;
- (id)dictionaryRepresentation;
- (unint64_t)hash;
- (void)copyTo:(id)a3;
- (void)mergeFrom:(id)a3;
- (void)writeTo:(id)a3;
@end

@implementation WFPBShowFocusConfigurationEvent

- (void)mergeFrom:(id)a3
{
  v4 = a3;
  if (v4[3])
  {
    [(WFPBShowFocusConfigurationEvent *)self setKey:?];
  }

  if (v4[1])
  {
    [(WFPBShowFocusConfigurationEvent *)self setAppBundleIdentifier:?];
  }

  if (v4[2])
  {
    [(WFPBShowFocusConfigurationEvent *)self setIntentType:?];
  }

  if (v4[4])
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

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  if ([v4 isMemberOfClass:objc_opt_class()] && ((key = self->_key, !(key | v4[3])) || -[NSString isEqual:](key, "isEqual:")) && ((appBundleIdentifier = self->_appBundleIdentifier, !(appBundleIdentifier | v4[1])) || -[NSString isEqual:](appBundleIdentifier, "isEqual:")) && ((intentType = self->_intentType, !(intentType | v4[2])) || -[NSString isEqual:](intentType, "isEqual:")))
  {
    systemFilterType = self->_systemFilterType;
    if (systemFilterType | v4[4])
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

- (id)copyWithZone:(_NSZone *)a3
{
  v5 = [objc_msgSend(objc_opt_class() allocWithZone:{a3), "init"}];
  v6 = [(NSString *)self->_key copyWithZone:a3];
  v7 = v5[3];
  v5[3] = v6;

  v8 = [(NSString *)self->_appBundleIdentifier copyWithZone:a3];
  v9 = v5[1];
  v5[1] = v8;

  v10 = [(NSString *)self->_intentType copyWithZone:a3];
  v11 = v5[2];
  v5[2] = v10;

  v12 = [(NSString *)self->_systemFilterType copyWithZone:a3];
  v13 = v5[4];
  v5[4] = v12;

  return v5;
}

- (void)copyTo:(id)a3
{
  v4 = a3;
  v5 = v4;
  if (self->_key)
  {
    [v4 setKey:?];
    v4 = v5;
  }

  if (self->_appBundleIdentifier)
  {
    [v5 setAppBundleIdentifier:?];
    v4 = v5;
  }

  if (self->_intentType)
  {
    [v5 setIntentType:?];
    v4 = v5;
  }

  if (self->_systemFilterType)
  {
    [v5 setSystemFilterType:?];
    v4 = v5;
  }
}

- (void)writeTo:(id)a3
{
  v4 = a3;
  v5 = v4;
  if (self->_key)
  {
    PBDataWriterWriteStringField();
    v4 = v5;
  }

  if (self->_appBundleIdentifier)
  {
    PBDataWriterWriteStringField();
    v4 = v5;
  }

  if (self->_intentType)
  {
    PBDataWriterWriteStringField();
    v4 = v5;
  }

  if (self->_systemFilterType)
  {
    PBDataWriterWriteStringField();
    v4 = v5;
  }
}

- (id)dictionaryRepresentation
{
  v3 = [MEMORY[0x1E695DF90] dictionary];
  v4 = v3;
  key = self->_key;
  if (key)
  {
    [v3 setObject:key forKey:@"key"];
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
  v5 = [(WFPBShowFocusConfigurationEvent *)self dictionaryRepresentation];
  v6 = [v3 stringWithFormat:@"%@ %@", v4, v5];

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