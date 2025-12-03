@interface CSDMessagingScreenShareContextMetadata
- (BOOL)isEqual:(id)equal;
- (id)copyWithZone:(_NSZone *)zone;
- (id)description;
- (id)dictionaryRepresentation;
- (void)copyTo:(id)to;
- (void)mergeFrom:(id)from;
- (void)writeTo:(id)to;
@end

@implementation CSDMessagingScreenShareContextMetadata

- (id)description
{
  v7.receiver = self;
  v7.super_class = CSDMessagingScreenShareContextMetadata;
  v3 = [(CSDMessagingScreenShareContextMetadata *)&v7 description];
  dictionaryRepresentation = [(CSDMessagingScreenShareContextMetadata *)self dictionaryRepresentation];
  v5 = [NSString stringWithFormat:@"%@ %@", v3, dictionaryRepresentation];

  return v5;
}

- (id)dictionaryRepresentation
{
  v3 = +[NSMutableDictionary dictionary];
  v4 = v3;
  appName = self->_appName;
  if (appName)
  {
    [v3 setObject:appName forKey:@"appName"];
  }

  bundleIdentifier = self->_bundleIdentifier;
  if (bundleIdentifier)
  {
    [v4 setObject:bundleIdentifier forKey:@"bundleIdentifier"];
  }

  return v4;
}

- (void)writeTo:(id)to
{
  toCopy = to;
  v5 = toCopy;
  if (self->_appName)
  {
    PBDataWriterWriteStringField();
    toCopy = v5;
  }

  if (self->_bundleIdentifier)
  {
    PBDataWriterWriteStringField();
    toCopy = v5;
  }
}

- (void)copyTo:(id)to
{
  toCopy = to;
  v5 = toCopy;
  if (self->_appName)
  {
    [toCopy setAppName:?];
    toCopy = v5;
  }

  if (self->_bundleIdentifier)
  {
    [v5 setBundleIdentifier:?];
    toCopy = v5;
  }
}

- (id)copyWithZone:(_NSZone *)zone
{
  v5 = [objc_msgSend(objc_opt_class() allocWithZone:{zone), "init"}];
  v6 = [(NSString *)self->_appName copyWithZone:zone];
  v7 = v5[1];
  v5[1] = v6;

  v8 = [(NSString *)self->_bundleIdentifier copyWithZone:zone];
  v9 = v5[2];
  v5[2] = v8;

  return v5;
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  if ([equalCopy isMemberOfClass:objc_opt_class()] && ((appName = self->_appName, !(appName | equalCopy[1])) || -[NSString isEqual:](appName, "isEqual:")))
  {
    bundleIdentifier = self->_bundleIdentifier;
    if (bundleIdentifier | equalCopy[2])
    {
      v7 = [(NSString *)bundleIdentifier isEqual:?];
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
  v5 = fromCopy;
  if (fromCopy[1])
  {
    [(CSDMessagingScreenShareContextMetadata *)self setAppName:?];
    fromCopy = v5;
  }

  if (fromCopy[2])
  {
    [(CSDMessagingScreenShareContextMetadata *)self setBundleIdentifier:?];
    fromCopy = v5;
  }
}

@end