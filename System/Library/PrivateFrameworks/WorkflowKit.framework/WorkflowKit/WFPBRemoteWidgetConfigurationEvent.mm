@interface WFPBRemoteWidgetConfigurationEvent
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

@implementation WFPBRemoteWidgetConfigurationEvent

- (void)mergeFrom:(id)from
{
  fromCopy = from;
  if (fromCopy[2])
  {
    [(WFPBRemoteWidgetConfigurationEvent *)self setKey:?];
  }

  if (fromCopy[1])
  {
    [(WFPBRemoteWidgetConfigurationEvent *)self setBundleIdentifier:?];
  }

  if (fromCopy[4])
  {
    [(WFPBRemoteWidgetConfigurationEvent *)self setWidgetIdentifier:?];
  }

  if (fromCopy[3])
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

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  if ([equalCopy isMemberOfClass:objc_opt_class()] && ((key = self->_key, !(key | equalCopy[2])) || -[NSString isEqual:](key, "isEqual:")) && ((bundleIdentifier = self->_bundleIdentifier, !(bundleIdentifier | equalCopy[1])) || -[NSString isEqual:](bundleIdentifier, "isEqual:")) && ((widgetIdentifier = self->_widgetIdentifier, !(widgetIdentifier | equalCopy[4])) || -[NSString isEqual:](widgetIdentifier, "isEqual:")))
  {
    sizeClass = self->_sizeClass;
    if (sizeClass | equalCopy[3])
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

- (id)copyWithZone:(_NSZone *)zone
{
  v5 = [objc_msgSend(objc_opt_class() allocWithZone:{zone), "init"}];
  v6 = [(NSString *)self->_key copyWithZone:zone];
  v7 = v5[2];
  v5[2] = v6;

  v8 = [(NSString *)self->_bundleIdentifier copyWithZone:zone];
  v9 = v5[1];
  v5[1] = v8;

  v10 = [(NSString *)self->_widgetIdentifier copyWithZone:zone];
  v11 = v5[4];
  v5[4] = v10;

  v12 = [(NSString *)self->_sizeClass copyWithZone:zone];
  v13 = v5[3];
  v5[3] = v12;

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

  if (self->_bundleIdentifier)
  {
    [v5 setBundleIdentifier:?];
    toCopy = v5;
  }

  if (self->_widgetIdentifier)
  {
    [v5 setWidgetIdentifier:?];
    toCopy = v5;
  }

  if (self->_sizeClass)
  {
    [v5 setSizeClass:?];
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

  if (self->_bundleIdentifier)
  {
    PBDataWriterWriteStringField();
    toCopy = v5;
  }

  if (self->_widgetIdentifier)
  {
    PBDataWriterWriteStringField();
    toCopy = v5;
  }

  if (self->_sizeClass)
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
  dictionaryRepresentation = [(WFPBRemoteWidgetConfigurationEvent *)self dictionaryRepresentation];
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
    return @"SetupRemoteWidgetConfigurationEvent";
  }
}

@end