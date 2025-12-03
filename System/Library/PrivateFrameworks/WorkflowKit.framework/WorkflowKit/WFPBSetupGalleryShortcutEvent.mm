@interface WFPBSetupGalleryShortcutEvent
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

@implementation WFPBSetupGalleryShortcutEvent

- (void)mergeFrom:(id)from
{
  fromCopy = from;
  v5 = fromCopy;
  if (*(fromCopy + 4))
  {
    [(WFPBSetupGalleryShortcutEvent *)self setKey:?];
    fromCopy = v5;
  }

  if (*(fromCopy + 2))
  {
    [(WFPBSetupGalleryShortcutEvent *)self setGalleryCategoryIdentifier:?];
    fromCopy = v5;
  }

  if (*(fromCopy + 3))
  {
    [(WFPBSetupGalleryShortcutEvent *)self setGalleryIdentifier:?];
    fromCopy = v5;
  }

  if (*(fromCopy + 1))
  {
    [(WFPBSetupGalleryShortcutEvent *)self setAddToSiriBundleIdentifier:?];
    fromCopy = v5;
  }

  if (fromCopy[44])
  {
    self->_completed = fromCopy[40];
    *&self->_has |= 1u;
  }
}

- (unint64_t)hash
{
  v3 = [(NSString *)self->_key hash];
  v4 = [(NSString *)self->_galleryCategoryIdentifier hash];
  v5 = [(NSString *)self->_galleryIdentifier hash];
  v6 = [(NSString *)self->_addToSiriBundleIdentifier hash];
  if (*&self->_has)
  {
    v7 = 2654435761 * self->_completed;
  }

  else
  {
    v7 = 0;
  }

  return v4 ^ v3 ^ v5 ^ v6 ^ v7;
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  if (![equalCopy isMemberOfClass:objc_opt_class()])
  {
    goto LABEL_12;
  }

  key = self->_key;
  if (key | *(equalCopy + 4))
  {
    if (![(NSString *)key isEqual:?])
    {
      goto LABEL_12;
    }
  }

  galleryCategoryIdentifier = self->_galleryCategoryIdentifier;
  if (galleryCategoryIdentifier | *(equalCopy + 2))
  {
    if (![(NSString *)galleryCategoryIdentifier isEqual:?])
    {
      goto LABEL_12;
    }
  }

  galleryIdentifier = self->_galleryIdentifier;
  if (galleryIdentifier | *(equalCopy + 3))
  {
    if (![(NSString *)galleryIdentifier isEqual:?])
    {
      goto LABEL_12;
    }
  }

  addToSiriBundleIdentifier = self->_addToSiriBundleIdentifier;
  if (addToSiriBundleIdentifier | *(equalCopy + 1))
  {
    if (![(NSString *)addToSiriBundleIdentifier isEqual:?])
    {
      goto LABEL_12;
    }
  }

  v9 = (*(equalCopy + 44) & 1) == 0;
  if (*&self->_has)
  {
    if ((*(equalCopy + 44) & 1) == 0)
    {
LABEL_12:
      v9 = 0;
      goto LABEL_13;
    }

    if (self->_completed)
    {
      if ((*(equalCopy + 40) & 1) == 0)
      {
        goto LABEL_12;
      }
    }

    else if (*(equalCopy + 40))
    {
      goto LABEL_12;
    }

    v9 = 1;
  }

LABEL_13:

  return v9;
}

- (id)copyWithZone:(_NSZone *)zone
{
  v5 = [objc_msgSend(objc_opt_class() allocWithZone:{zone), "init"}];
  v6 = [(NSString *)self->_key copyWithZone:zone];
  v7 = *(v5 + 32);
  *(v5 + 32) = v6;

  v8 = [(NSString *)self->_galleryCategoryIdentifier copyWithZone:zone];
  v9 = *(v5 + 16);
  *(v5 + 16) = v8;

  v10 = [(NSString *)self->_galleryIdentifier copyWithZone:zone];
  v11 = *(v5 + 24);
  *(v5 + 24) = v10;

  v12 = [(NSString *)self->_addToSiriBundleIdentifier copyWithZone:zone];
  v13 = *(v5 + 8);
  *(v5 + 8) = v12;

  if (*&self->_has)
  {
    *(v5 + 40) = self->_completed;
    *(v5 + 44) |= 1u;
  }

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

  if (self->_galleryCategoryIdentifier)
  {
    [v5 setGalleryCategoryIdentifier:?];
    toCopy = v5;
  }

  if (self->_galleryIdentifier)
  {
    [v5 setGalleryIdentifier:?];
    toCopy = v5;
  }

  if (self->_addToSiriBundleIdentifier)
  {
    [v5 setAddToSiriBundleIdentifier:?];
    toCopy = v5;
  }

  if (*&self->_has)
  {
    toCopy[40] = self->_completed;
    toCopy[44] |= 1u;
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

  if (self->_galleryCategoryIdentifier)
  {
    PBDataWriterWriteStringField();
    toCopy = v6;
  }

  if (self->_galleryIdentifier)
  {
    PBDataWriterWriteStringField();
    toCopy = v6;
  }

  if (self->_addToSiriBundleIdentifier)
  {
    PBDataWriterWriteStringField();
    toCopy = v6;
  }

  if (*&self->_has)
  {
    completed = self->_completed;
    PBDataWriterWriteBOOLField();
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

  galleryCategoryIdentifier = self->_galleryCategoryIdentifier;
  if (galleryCategoryIdentifier)
  {
    [v4 setObject:galleryCategoryIdentifier forKey:@"galleryCategoryIdentifier"];
  }

  galleryIdentifier = self->_galleryIdentifier;
  if (galleryIdentifier)
  {
    [v4 setObject:galleryIdentifier forKey:@"galleryIdentifier"];
  }

  addToSiriBundleIdentifier = self->_addToSiriBundleIdentifier;
  if (addToSiriBundleIdentifier)
  {
    [v4 setObject:addToSiriBundleIdentifier forKey:@"addToSiriBundleIdentifier"];
  }

  if (*&self->_has)
  {
    v9 = [MEMORY[0x1E696AD98] numberWithBool:self->_completed];
    [v4 setObject:v9 forKey:@"completed"];
  }

  return v4;
}

- (id)description
{
  v3 = MEMORY[0x1E696AEC0];
  v8.receiver = self;
  v8.super_class = WFPBSetupGalleryShortcutEvent;
  v4 = [(WFPBSetupGalleryShortcutEvent *)&v8 description];
  dictionaryRepresentation = [(WFPBSetupGalleryShortcutEvent *)self dictionaryRepresentation];
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
    return @"SetupGalleryShortcut";
  }
}

@end