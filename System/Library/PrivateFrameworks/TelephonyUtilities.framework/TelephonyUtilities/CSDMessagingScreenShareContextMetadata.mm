@interface CSDMessagingScreenShareContextMetadata
- (BOOL)isEqual:(id)a3;
- (id)copyWithZone:(_NSZone *)a3;
- (id)description;
- (id)dictionaryRepresentation;
- (void)copyTo:(id)a3;
- (void)mergeFrom:(id)a3;
- (void)writeTo:(id)a3;
@end

@implementation CSDMessagingScreenShareContextMetadata

- (id)description
{
  v7.receiver = self;
  v7.super_class = CSDMessagingScreenShareContextMetadata;
  v3 = [(CSDMessagingScreenShareContextMetadata *)&v7 description];
  v4 = [(CSDMessagingScreenShareContextMetadata *)self dictionaryRepresentation];
  v5 = [NSString stringWithFormat:@"%@ %@", v3, v4];

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

- (void)writeTo:(id)a3
{
  v4 = a3;
  v5 = v4;
  if (self->_appName)
  {
    PBDataWriterWriteStringField();
    v4 = v5;
  }

  if (self->_bundleIdentifier)
  {
    PBDataWriterWriteStringField();
    v4 = v5;
  }
}

- (void)copyTo:(id)a3
{
  v4 = a3;
  v5 = v4;
  if (self->_appName)
  {
    [v4 setAppName:?];
    v4 = v5;
  }

  if (self->_bundleIdentifier)
  {
    [v5 setBundleIdentifier:?];
    v4 = v5;
  }
}

- (id)copyWithZone:(_NSZone *)a3
{
  v5 = [objc_msgSend(objc_opt_class() allocWithZone:{a3), "init"}];
  v6 = [(NSString *)self->_appName copyWithZone:a3];
  v7 = v5[1];
  v5[1] = v6;

  v8 = [(NSString *)self->_bundleIdentifier copyWithZone:a3];
  v9 = v5[2];
  v5[2] = v8;

  return v5;
}

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  if ([v4 isMemberOfClass:objc_opt_class()] && ((appName = self->_appName, !(appName | v4[1])) || -[NSString isEqual:](appName, "isEqual:")))
  {
    bundleIdentifier = self->_bundleIdentifier;
    if (bundleIdentifier | v4[2])
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

- (void)mergeFrom:(id)a3
{
  v4 = a3;
  v5 = v4;
  if (v4[1])
  {
    [(CSDMessagingScreenShareContextMetadata *)self setAppName:?];
    v4 = v5;
  }

  if (v4[2])
  {
    [(CSDMessagingScreenShareContextMetadata *)self setBundleIdentifier:?];
    v4 = v5;
  }
}

@end