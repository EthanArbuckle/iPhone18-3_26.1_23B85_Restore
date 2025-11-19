@interface WFPBSetupGalleryShortcutEvent
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

@implementation WFPBSetupGalleryShortcutEvent

- (void)mergeFrom:(id)a3
{
  v4 = a3;
  v5 = v4;
  if (*(v4 + 4))
  {
    [(WFPBSetupGalleryShortcutEvent *)self setKey:?];
    v4 = v5;
  }

  if (*(v4 + 2))
  {
    [(WFPBSetupGalleryShortcutEvent *)self setGalleryCategoryIdentifier:?];
    v4 = v5;
  }

  if (*(v4 + 3))
  {
    [(WFPBSetupGalleryShortcutEvent *)self setGalleryIdentifier:?];
    v4 = v5;
  }

  if (*(v4 + 1))
  {
    [(WFPBSetupGalleryShortcutEvent *)self setAddToSiriBundleIdentifier:?];
    v4 = v5;
  }

  if (v4[44])
  {
    self->_completed = v4[40];
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

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  if (![v4 isMemberOfClass:objc_opt_class()])
  {
    goto LABEL_12;
  }

  key = self->_key;
  if (key | *(v4 + 4))
  {
    if (![(NSString *)key isEqual:?])
    {
      goto LABEL_12;
    }
  }

  galleryCategoryIdentifier = self->_galleryCategoryIdentifier;
  if (galleryCategoryIdentifier | *(v4 + 2))
  {
    if (![(NSString *)galleryCategoryIdentifier isEqual:?])
    {
      goto LABEL_12;
    }
  }

  galleryIdentifier = self->_galleryIdentifier;
  if (galleryIdentifier | *(v4 + 3))
  {
    if (![(NSString *)galleryIdentifier isEqual:?])
    {
      goto LABEL_12;
    }
  }

  addToSiriBundleIdentifier = self->_addToSiriBundleIdentifier;
  if (addToSiriBundleIdentifier | *(v4 + 1))
  {
    if (![(NSString *)addToSiriBundleIdentifier isEqual:?])
    {
      goto LABEL_12;
    }
  }

  v9 = (*(v4 + 44) & 1) == 0;
  if (*&self->_has)
  {
    if ((*(v4 + 44) & 1) == 0)
    {
LABEL_12:
      v9 = 0;
      goto LABEL_13;
    }

    if (self->_completed)
    {
      if ((*(v4 + 40) & 1) == 0)
      {
        goto LABEL_12;
      }
    }

    else if (*(v4 + 40))
    {
      goto LABEL_12;
    }

    v9 = 1;
  }

LABEL_13:

  return v9;
}

- (id)copyWithZone:(_NSZone *)a3
{
  v5 = [objc_msgSend(objc_opt_class() allocWithZone:{a3), "init"}];
  v6 = [(NSString *)self->_key copyWithZone:a3];
  v7 = *(v5 + 32);
  *(v5 + 32) = v6;

  v8 = [(NSString *)self->_galleryCategoryIdentifier copyWithZone:a3];
  v9 = *(v5 + 16);
  *(v5 + 16) = v8;

  v10 = [(NSString *)self->_galleryIdentifier copyWithZone:a3];
  v11 = *(v5 + 24);
  *(v5 + 24) = v10;

  v12 = [(NSString *)self->_addToSiriBundleIdentifier copyWithZone:a3];
  v13 = *(v5 + 8);
  *(v5 + 8) = v12;

  if (*&self->_has)
  {
    *(v5 + 40) = self->_completed;
    *(v5 + 44) |= 1u;
  }

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

  if (self->_galleryCategoryIdentifier)
  {
    [v5 setGalleryCategoryIdentifier:?];
    v4 = v5;
  }

  if (self->_galleryIdentifier)
  {
    [v5 setGalleryIdentifier:?];
    v4 = v5;
  }

  if (self->_addToSiriBundleIdentifier)
  {
    [v5 setAddToSiriBundleIdentifier:?];
    v4 = v5;
  }

  if (*&self->_has)
  {
    v4[40] = self->_completed;
    v4[44] |= 1u;
  }
}

- (void)writeTo:(id)a3
{
  v4 = a3;
  v6 = v4;
  if (self->_key)
  {
    PBDataWriterWriteStringField();
    v4 = v6;
  }

  if (self->_galleryCategoryIdentifier)
  {
    PBDataWriterWriteStringField();
    v4 = v6;
  }

  if (self->_galleryIdentifier)
  {
    PBDataWriterWriteStringField();
    v4 = v6;
  }

  if (self->_addToSiriBundleIdentifier)
  {
    PBDataWriterWriteStringField();
    v4 = v6;
  }

  if (*&self->_has)
  {
    completed = self->_completed;
    PBDataWriterWriteBOOLField();
    v4 = v6;
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
  v5 = [(WFPBSetupGalleryShortcutEvent *)self dictionaryRepresentation];
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
    return @"SetupGalleryShortcut";
  }
}

@end