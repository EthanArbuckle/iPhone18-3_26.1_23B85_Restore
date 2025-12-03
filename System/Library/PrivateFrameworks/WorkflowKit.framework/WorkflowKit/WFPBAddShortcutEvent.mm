@interface WFPBAddShortcutEvent
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

@implementation WFPBAddShortcutEvent

- (void)mergeFrom:(id)from
{
  fromCopy = from;
  v5 = fromCopy;
  if (*(fromCopy + 4))
  {
    [(WFPBAddShortcutEvent *)self setKey:?];
    fromCopy = v5;
  }

  if (fromCopy[12])
  {
    self->_actionCount = fromCopy[2];
    *&self->_has |= 1u;
  }

  if (*(fromCopy + 2))
  {
    [(WFPBAddShortcutEvent *)self setAddToSiriBundleIdentifier:?];
    fromCopy = v5;
  }

  if (*(fromCopy + 3))
  {
    [(WFPBAddShortcutEvent *)self setGalleryIdentifier:?];
    fromCopy = v5;
  }

  if (*(fromCopy + 5))
  {
    [(WFPBAddShortcutEvent *)self setShortcutSource:?];
    fromCopy = v5;
  }
}

- (unint64_t)hash
{
  v3 = [(NSString *)self->_key hash];
  if (*&self->_has)
  {
    v4 = 2654435761 * self->_actionCount;
  }

  else
  {
    v4 = 0;
  }

  v5 = v4 ^ v3;
  v6 = [(NSString *)self->_addToSiriBundleIdentifier hash];
  v7 = v5 ^ v6 ^ [(NSString *)self->_galleryIdentifier hash];
  return v7 ^ [(NSString *)self->_shortcutSource hash];
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  if (![equalCopy isMemberOfClass:objc_opt_class()])
  {
    goto LABEL_15;
  }

  key = self->_key;
  if (key | *(equalCopy + 4))
  {
    if (![(NSString *)key isEqual:?])
    {
      goto LABEL_15;
    }
  }

  v6 = *(equalCopy + 48);
  if (*&self->_has)
  {
    if ((*(equalCopy + 48) & 1) == 0 || self->_actionCount != *(equalCopy + 2))
    {
      goto LABEL_15;
    }
  }

  else if (*(equalCopy + 48))
  {
LABEL_15:
    v10 = 0;
    goto LABEL_16;
  }

  addToSiriBundleIdentifier = self->_addToSiriBundleIdentifier;
  if (addToSiriBundleIdentifier | *(equalCopy + 2) && ![(NSString *)addToSiriBundleIdentifier isEqual:?])
  {
    goto LABEL_15;
  }

  galleryIdentifier = self->_galleryIdentifier;
  if (galleryIdentifier | *(equalCopy + 3))
  {
    if (![(NSString *)galleryIdentifier isEqual:?])
    {
      goto LABEL_15;
    }
  }

  shortcutSource = self->_shortcutSource;
  if (shortcutSource | *(equalCopy + 5))
  {
    v10 = [(NSString *)shortcutSource isEqual:?];
  }

  else
  {
    v10 = 1;
  }

LABEL_16:

  return v10;
}

- (id)copyWithZone:(_NSZone *)zone
{
  v5 = [objc_msgSend(objc_opt_class() allocWithZone:{zone), "init"}];
  v6 = [(NSString *)self->_key copyWithZone:zone];
  v7 = *(v5 + 32);
  *(v5 + 32) = v6;

  if (*&self->_has)
  {
    *(v5 + 8) = self->_actionCount;
    *(v5 + 48) |= 1u;
  }

  v8 = [(NSString *)self->_addToSiriBundleIdentifier copyWithZone:zone];
  v9 = *(v5 + 16);
  *(v5 + 16) = v8;

  v10 = [(NSString *)self->_galleryIdentifier copyWithZone:zone];
  v11 = *(v5 + 24);
  *(v5 + 24) = v10;

  v12 = [(NSString *)self->_shortcutSource copyWithZone:zone];
  v13 = *(v5 + 40);
  *(v5 + 40) = v12;

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

  if (*&self->_has)
  {
    *(toCopy + 2) = self->_actionCount;
    *(toCopy + 48) |= 1u;
  }

  if (self->_addToSiriBundleIdentifier)
  {
    [v5 setAddToSiriBundleIdentifier:?];
    toCopy = v5;
  }

  if (self->_galleryIdentifier)
  {
    [v5 setGalleryIdentifier:?];
    toCopy = v5;
  }

  if (self->_shortcutSource)
  {
    [v5 setShortcutSource:?];
    toCopy = v5;
  }
}

- (void)writeTo:(id)to
{
  toCopy = to;
  v6 = toCopy;
  if (self->_key)
  {
    PBDataWriterWriteStringField();
    toCopy = v6;
  }

  if (*&self->_has)
  {
    actionCount = self->_actionCount;
    PBDataWriterWriteUint32Field();
    toCopy = v6;
  }

  if (self->_addToSiriBundleIdentifier)
  {
    PBDataWriterWriteStringField();
    toCopy = v6;
  }

  if (self->_galleryIdentifier)
  {
    PBDataWriterWriteStringField();
    toCopy = v6;
  }

  if (self->_shortcutSource)
  {
    PBDataWriterWriteStringField();
    toCopy = v6;
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

  if (*&self->_has)
  {
    v6 = [MEMORY[0x1E696AD98] numberWithUnsignedInt:self->_actionCount];
    [v4 setObject:v6 forKey:@"actionCount"];
  }

  addToSiriBundleIdentifier = self->_addToSiriBundleIdentifier;
  if (addToSiriBundleIdentifier)
  {
    [v4 setObject:addToSiriBundleIdentifier forKey:@"addToSiriBundleIdentifier"];
  }

  galleryIdentifier = self->_galleryIdentifier;
  if (galleryIdentifier)
  {
    [v4 setObject:galleryIdentifier forKey:@"galleryIdentifier"];
  }

  shortcutSource = self->_shortcutSource;
  if (shortcutSource)
  {
    [v4 setObject:shortcutSource forKey:@"shortcutSource"];
  }

  return v4;
}

- (id)description
{
  v3 = MEMORY[0x1E696AEC0];
  v8.receiver = self;
  v8.super_class = WFPBAddShortcutEvent;
  v4 = [(WFPBAddShortcutEvent *)&v8 description];
  dictionaryRepresentation = [(WFPBAddShortcutEvent *)self dictionaryRepresentation];
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
    return @"AddShortcut";
  }
}

@end