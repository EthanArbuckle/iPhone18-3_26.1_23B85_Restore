@interface WFPBGallerySessionAddShortcutEvent
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

@implementation WFPBGallerySessionAddShortcutEvent

- (void)mergeFrom:(id)from
{
  fromCopy = from;
  v5 = fromCopy;
  if (fromCopy[1])
  {
    [(WFPBGallerySessionAddShortcutEvent *)self setKey:?];
    fromCopy = v5;
  }

  if (fromCopy[2])
  {
    [(WFPBGallerySessionAddShortcutEvent *)self setSessionIdentifier:?];
    fromCopy = v5;
  }

  if (fromCopy[3])
  {
    [(WFPBGallerySessionAddShortcutEvent *)self setShortcutIdentifier:?];
    fromCopy = v5;
  }
}

- (unint64_t)hash
{
  v3 = [(NSString *)self->_key hash];
  v4 = [(NSString *)self->_sessionIdentifier hash]^ v3;
  return v4 ^ [(NSString *)self->_shortcutIdentifier hash];
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  if ([equalCopy isMemberOfClass:objc_opt_class()] && ((key = self->_key, !(key | equalCopy[1])) || -[NSString isEqual:](key, "isEqual:")) && ((sessionIdentifier = self->_sessionIdentifier, !(sessionIdentifier | equalCopy[2])) || -[NSString isEqual:](sessionIdentifier, "isEqual:")))
  {
    shortcutIdentifier = self->_shortcutIdentifier;
    if (shortcutIdentifier | equalCopy[3])
    {
      v8 = [(NSString *)shortcutIdentifier isEqual:?];
    }

    else
    {
      v8 = 1;
    }
  }

  else
  {
    v8 = 0;
  }

  return v8;
}

- (id)copyWithZone:(_NSZone *)zone
{
  v5 = [objc_msgSend(objc_opt_class() allocWithZone:{zone), "init"}];
  v6 = [(NSString *)self->_key copyWithZone:zone];
  v7 = v5[1];
  v5[1] = v6;

  v8 = [(NSString *)self->_sessionIdentifier copyWithZone:zone];
  v9 = v5[2];
  v5[2] = v8;

  v10 = [(NSString *)self->_shortcutIdentifier copyWithZone:zone];
  v11 = v5[3];
  v5[3] = v10;

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

  if (self->_sessionIdentifier)
  {
    [v5 setSessionIdentifier:?];
    toCopy = v5;
  }

  if (self->_shortcutIdentifier)
  {
    [v5 setShortcutIdentifier:?];
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

  if (self->_sessionIdentifier)
  {
    PBDataWriterWriteStringField();
    toCopy = v5;
  }

  if (self->_shortcutIdentifier)
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

  sessionIdentifier = self->_sessionIdentifier;
  if (sessionIdentifier)
  {
    [v4 setObject:sessionIdentifier forKey:@"sessionIdentifier"];
  }

  shortcutIdentifier = self->_shortcutIdentifier;
  if (shortcutIdentifier)
  {
    [v4 setObject:shortcutIdentifier forKey:@"shortcutIdentifier"];
  }

  return v4;
}

- (id)description
{
  v3 = MEMORY[0x1E696AEC0];
  v8.receiver = self;
  v8.super_class = WFPBGallerySessionAddShortcutEvent;
  v4 = [(WFPBGallerySessionAddShortcutEvent *)&v8 description];
  dictionaryRepresentation = [(WFPBGallerySessionAddShortcutEvent *)self dictionaryRepresentation];
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
    return @"GallerySessionAddShortcut";
  }
}

@end