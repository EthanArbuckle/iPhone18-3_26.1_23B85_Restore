@interface WFPBDeleteShortcutEvent
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

@implementation WFPBDeleteShortcutEvent

- (void)mergeFrom:(id)a3
{
  v4 = a3;
  v5 = v4;
  if (*(v4 + 4))
  {
    [(WFPBDeleteShortcutEvent *)self setKey:?];
    v4 = v5;
  }

  if (v4[12])
  {
    self->_actionCount = v4[2];
    *&self->_has |= 1u;
  }

  if (*(v4 + 2))
  {
    [(WFPBDeleteShortcutEvent *)self setAddToSiriBundleIdentifier:?];
    v4 = v5;
  }

  if (*(v4 + 3))
  {
    [(WFPBDeleteShortcutEvent *)self setGalleryIdentifier:?];
    v4 = v5;
  }

  if (*(v4 + 5))
  {
    [(WFPBDeleteShortcutEvent *)self setShortcutSource:?];
    v4 = v5;
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

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  if (![v4 isMemberOfClass:objc_opt_class()])
  {
    goto LABEL_15;
  }

  key = self->_key;
  if (key | *(v4 + 4))
  {
    if (![(NSString *)key isEqual:?])
    {
      goto LABEL_15;
    }
  }

  v6 = *(v4 + 48);
  if (*&self->_has)
  {
    if ((*(v4 + 48) & 1) == 0 || self->_actionCount != *(v4 + 2))
    {
      goto LABEL_15;
    }
  }

  else if (*(v4 + 48))
  {
LABEL_15:
    v10 = 0;
    goto LABEL_16;
  }

  addToSiriBundleIdentifier = self->_addToSiriBundleIdentifier;
  if (addToSiriBundleIdentifier | *(v4 + 2) && ![(NSString *)addToSiriBundleIdentifier isEqual:?])
  {
    goto LABEL_15;
  }

  galleryIdentifier = self->_galleryIdentifier;
  if (galleryIdentifier | *(v4 + 3))
  {
    if (![(NSString *)galleryIdentifier isEqual:?])
    {
      goto LABEL_15;
    }
  }

  shortcutSource = self->_shortcutSource;
  if (shortcutSource | *(v4 + 5))
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

- (id)copyWithZone:(_NSZone *)a3
{
  v5 = [objc_msgSend(objc_opt_class() allocWithZone:{a3), "init"}];
  v6 = [(NSString *)self->_key copyWithZone:a3];
  v7 = *(v5 + 32);
  *(v5 + 32) = v6;

  if (*&self->_has)
  {
    *(v5 + 8) = self->_actionCount;
    *(v5 + 48) |= 1u;
  }

  v8 = [(NSString *)self->_addToSiriBundleIdentifier copyWithZone:a3];
  v9 = *(v5 + 16);
  *(v5 + 16) = v8;

  v10 = [(NSString *)self->_galleryIdentifier copyWithZone:a3];
  v11 = *(v5 + 24);
  *(v5 + 24) = v10;

  v12 = [(NSString *)self->_shortcutSource copyWithZone:a3];
  v13 = *(v5 + 40);
  *(v5 + 40) = v12;

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

  if (*&self->_has)
  {
    *(v4 + 2) = self->_actionCount;
    *(v4 + 48) |= 1u;
  }

  if (self->_addToSiriBundleIdentifier)
  {
    [v5 setAddToSiriBundleIdentifier:?];
    v4 = v5;
  }

  if (self->_galleryIdentifier)
  {
    [v5 setGalleryIdentifier:?];
    v4 = v5;
  }

  if (self->_shortcutSource)
  {
    [v5 setShortcutSource:?];
    v4 = v5;
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

  if (*&self->_has)
  {
    actionCount = self->_actionCount;
    PBDataWriterWriteUint32Field();
    v4 = v6;
  }

  if (self->_addToSiriBundleIdentifier)
  {
    PBDataWriterWriteStringField();
    v4 = v6;
  }

  if (self->_galleryIdentifier)
  {
    PBDataWriterWriteStringField();
    v4 = v6;
  }

  if (self->_shortcutSource)
  {
    PBDataWriterWriteStringField();
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
  v8.super_class = WFPBDeleteShortcutEvent;
  v4 = [(WFPBDeleteShortcutEvent *)&v8 description];
  v5 = [(WFPBDeleteShortcutEvent *)self dictionaryRepresentation];
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
    return @"DeleteShortcut";
  }
}

@end