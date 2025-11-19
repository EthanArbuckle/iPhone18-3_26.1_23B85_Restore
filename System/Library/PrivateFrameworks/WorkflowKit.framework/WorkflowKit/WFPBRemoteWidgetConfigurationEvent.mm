@interface WFPBRemoteWidgetConfigurationEvent
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

@implementation WFPBRemoteWidgetConfigurationEvent

- (void)mergeFrom:(id)a3
{
  v4 = a3;
  if (v4[2])
  {
    [(WFPBRemoteWidgetConfigurationEvent *)self setKey:?];
  }

  if (v4[1])
  {
    [(WFPBRemoteWidgetConfigurationEvent *)self setBundleIdentifier:?];
  }

  if (v4[4])
  {
    [(WFPBRemoteWidgetConfigurationEvent *)self setWidgetIdentifier:?];
  }

  if (v4[3])
  {
    [(WFPBRemoteWidgetConfigurationEvent *)self setSizeClass:?];
  }
}

- (unint64_t)hash
{
  v3 = [(NSString *)self->_key hash];
  v4 = [(NSString *)self->_bundleIdentifier hash]^ v3;
  v5 = [(NSString *)self->_widgetIdentifier hash];
  return v4 ^ v5 ^ [(NSString *)self->_sizeClass hash];
}

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  if ([v4 isMemberOfClass:objc_opt_class()] && ((key = self->_key, !(key | v4[2])) || -[NSString isEqual:](key, "isEqual:")) && ((bundleIdentifier = self->_bundleIdentifier, !(bundleIdentifier | v4[1])) || -[NSString isEqual:](bundleIdentifier, "isEqual:")) && ((widgetIdentifier = self->_widgetIdentifier, !(widgetIdentifier | v4[4])) || -[NSString isEqual:](widgetIdentifier, "isEqual:")))
  {
    sizeClass = self->_sizeClass;
    if (sizeClass | v4[3])
    {
      v9 = [(NSString *)sizeClass isEqual:?];
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
  v7 = v5[2];
  v5[2] = v6;

  v8 = [(NSString *)self->_bundleIdentifier copyWithZone:a3];
  v9 = v5[1];
  v5[1] = v8;

  v10 = [(NSString *)self->_widgetIdentifier copyWithZone:a3];
  v11 = v5[4];
  v5[4] = v10;

  v12 = [(NSString *)self->_sizeClass copyWithZone:a3];
  v13 = v5[3];
  v5[3] = v12;

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

  if (self->_bundleIdentifier)
  {
    [v5 setBundleIdentifier:?];
    v4 = v5;
  }

  if (self->_widgetIdentifier)
  {
    [v5 setWidgetIdentifier:?];
    v4 = v5;
  }

  if (self->_sizeClass)
  {
    [v5 setSizeClass:?];
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

  if (self->_bundleIdentifier)
  {
    PBDataWriterWriteStringField();
    v4 = v5;
  }

  if (self->_widgetIdentifier)
  {
    PBDataWriterWriteStringField();
    v4 = v5;
  }

  if (self->_sizeClass)
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

  bundleIdentifier = self->_bundleIdentifier;
  if (bundleIdentifier)
  {
    [v4 setObject:bundleIdentifier forKey:@"bundleIdentifier"];
  }

  widgetIdentifier = self->_widgetIdentifier;
  if (widgetIdentifier)
  {
    [v4 setObject:widgetIdentifier forKey:@"widgetIdentifier"];
  }

  sizeClass = self->_sizeClass;
  if (sizeClass)
  {
    [v4 setObject:sizeClass forKey:@"sizeClass"];
  }

  return v4;
}

- (id)description
{
  v3 = MEMORY[0x1E696AEC0];
  v8.receiver = self;
  v8.super_class = WFPBRemoteWidgetConfigurationEvent;
  v4 = [(WFPBRemoteWidgetConfigurationEvent *)&v8 description];
  v5 = [(WFPBRemoteWidgetConfigurationEvent *)self dictionaryRepresentation];
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
    return @"SetupRemoteWidgetConfigurationEvent";
  }
}

@end