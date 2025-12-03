@interface WFPBShareShortcutEvent
- (BOOL)isEqual:(id)equal;
- (NSString)key;
- (NSString)sharingMode;
- (id)copyWithZone:(_NSZone *)zone;
- (id)description;
- (id)dictionaryRepresentation;
- (int)StringAsSource:(id)source;
- (int)source;
- (unint64_t)hash;
- (void)copyTo:(id)to;
- (void)mergeFrom:(id)from;
- (void)setHasSource:(BOOL)source;
- (void)writeTo:(id)to;
@end

@implementation WFPBShareShortcutEvent

- (void)mergeFrom:(id)from
{
  fromCopy = from;
  v6 = fromCopy;
  if (*(fromCopy + 4))
  {
    [(WFPBShareShortcutEvent *)self setKey:?];
    fromCopy = v6;
  }

  v5 = *(fromCopy + 60);
  if ((v5 & 2) != 0)
  {
    self->_source = *(fromCopy + 14);
    *&self->_has |= 2u;
    v5 = *(fromCopy + 60);
  }

  if (v5)
  {
    self->_actionCount = *(fromCopy + 2);
    *&self->_has |= 1u;
  }

  if (*(fromCopy + 2))
  {
    [(WFPBShareShortcutEvent *)self setAddToSiriBundleIdentifier:?];
    fromCopy = v6;
  }

  if (*(fromCopy + 3))
  {
    [(WFPBShareShortcutEvent *)self setGalleryIdentifier:?];
    fromCopy = v6;
  }

  if (*(fromCopy + 5))
  {
    [(WFPBShareShortcutEvent *)self setSharingDestinationBundleIdentifier:?];
    fromCopy = v6;
  }

  if (*(fromCopy + 6))
  {
    [(WFPBShareShortcutEvent *)self setSharingMode:?];
    fromCopy = v6;
  }
}

- (unint64_t)hash
{
  v3 = [(NSString *)self->_key hash];
  if ((*&self->_has & 2) != 0)
  {
    v4 = 2654435761 * self->_source;
    if (*&self->_has)
    {
      goto LABEL_3;
    }

LABEL_5:
    v5 = 0;
    goto LABEL_6;
  }

  v4 = 0;
  if ((*&self->_has & 1) == 0)
  {
    goto LABEL_5;
  }

LABEL_3:
  v5 = 2654435761 * self->_actionCount;
LABEL_6:
  v6 = v4 ^ v3 ^ v5 ^ [(NSString *)self->_addToSiriBundleIdentifier hash];
  v7 = [(NSString *)self->_galleryIdentifier hash];
  v8 = v7 ^ [(NSString *)self->_sharingDestinationBundleIdentifier hash];
  return v6 ^ v8 ^ [(NSString *)self->_sharingMode hash];
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  if (![equalCopy isMemberOfClass:objc_opt_class()])
  {
    goto LABEL_22;
  }

  key = self->_key;
  if (key | *(equalCopy + 4))
  {
    if (![(NSString *)key isEqual:?])
    {
      goto LABEL_22;
    }
  }

  v6 = *(equalCopy + 60);
  if ((*&self->_has & 2) != 0)
  {
    if ((*(equalCopy + 60) & 2) == 0 || self->_source != *(equalCopy + 14))
    {
      goto LABEL_22;
    }
  }

  else if ((*(equalCopy + 60) & 2) != 0)
  {
LABEL_22:
    v11 = 0;
    goto LABEL_23;
  }

  if (*&self->_has)
  {
    if ((*(equalCopy + 60) & 1) == 0 || self->_actionCount != *(equalCopy + 2))
    {
      goto LABEL_22;
    }
  }

  else if (*(equalCopy + 60))
  {
    goto LABEL_22;
  }

  addToSiriBundleIdentifier = self->_addToSiriBundleIdentifier;
  if (addToSiriBundleIdentifier | *(equalCopy + 2) && ![(NSString *)addToSiriBundleIdentifier isEqual:?])
  {
    goto LABEL_22;
  }

  galleryIdentifier = self->_galleryIdentifier;
  if (galleryIdentifier | *(equalCopy + 3))
  {
    if (![(NSString *)galleryIdentifier isEqual:?])
    {
      goto LABEL_22;
    }
  }

  sharingDestinationBundleIdentifier = self->_sharingDestinationBundleIdentifier;
  if (sharingDestinationBundleIdentifier | *(equalCopy + 5))
  {
    if (![(NSString *)sharingDestinationBundleIdentifier isEqual:?])
    {
      goto LABEL_22;
    }
  }

  sharingMode = self->_sharingMode;
  if (sharingMode | *(equalCopy + 6))
  {
    v11 = [(NSString *)sharingMode isEqual:?];
  }

  else
  {
    v11 = 1;
  }

LABEL_23:

  return v11;
}

- (id)copyWithZone:(_NSZone *)zone
{
  v5 = [objc_msgSend(objc_opt_class() allocWithZone:{zone), "init"}];
  v6 = [(NSString *)self->_key copyWithZone:zone];
  v7 = *(v5 + 32);
  *(v5 + 32) = v6;

  has = self->_has;
  if ((has & 2) != 0)
  {
    *(v5 + 56) = self->_source;
    *(v5 + 60) |= 2u;
    has = self->_has;
  }

  if (has)
  {
    *(v5 + 8) = self->_actionCount;
    *(v5 + 60) |= 1u;
  }

  v9 = [(NSString *)self->_addToSiriBundleIdentifier copyWithZone:zone];
  v10 = *(v5 + 16);
  *(v5 + 16) = v9;

  v11 = [(NSString *)self->_galleryIdentifier copyWithZone:zone];
  v12 = *(v5 + 24);
  *(v5 + 24) = v11;

  v13 = [(NSString *)self->_sharingDestinationBundleIdentifier copyWithZone:zone];
  v14 = *(v5 + 40);
  *(v5 + 40) = v13;

  v15 = [(NSString *)self->_sharingMode copyWithZone:zone];
  v16 = *(v5 + 48);
  *(v5 + 48) = v15;

  return v5;
}

- (void)copyTo:(id)to
{
  toCopy = to;
  v6 = toCopy;
  if (self->_key)
  {
    [toCopy setKey:?];
    toCopy = v6;
  }

  has = self->_has;
  if ((has & 2) != 0)
  {
    *(toCopy + 14) = self->_source;
    *(toCopy + 60) |= 2u;
    has = self->_has;
  }

  if (has)
  {
    *(toCopy + 2) = self->_actionCount;
    *(toCopy + 60) |= 1u;
  }

  if (self->_addToSiriBundleIdentifier)
  {
    [v6 setAddToSiriBundleIdentifier:?];
    toCopy = v6;
  }

  if (self->_galleryIdentifier)
  {
    [v6 setGalleryIdentifier:?];
    toCopy = v6;
  }

  if (self->_sharingDestinationBundleIdentifier)
  {
    [v6 setSharingDestinationBundleIdentifier:?];
    toCopy = v6;
  }

  if (self->_sharingMode)
  {
    [v6 setSharingMode:?];
    toCopy = v6;
  }
}

- (void)writeTo:(id)to
{
  toCopy = to;
  v8 = toCopy;
  if (self->_key)
  {
    PBDataWriterWriteStringField();
    toCopy = v8;
  }

  has = self->_has;
  if ((has & 2) != 0)
  {
    source = self->_source;
    PBDataWriterWriteInt32Field();
    toCopy = v8;
    has = self->_has;
  }

  if (has)
  {
    actionCount = self->_actionCount;
    PBDataWriterWriteUint32Field();
    toCopy = v8;
  }

  if (self->_addToSiriBundleIdentifier)
  {
    PBDataWriterWriteStringField();
    toCopy = v8;
  }

  if (self->_galleryIdentifier)
  {
    PBDataWriterWriteStringField();
    toCopy = v8;
  }

  if (self->_sharingDestinationBundleIdentifier)
  {
    PBDataWriterWriteStringField();
    toCopy = v8;
  }

  if (self->_sharingMode)
  {
    PBDataWriterWriteStringField();
    toCopy = v8;
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

  has = self->_has;
  if ((has & 2) != 0)
  {
    v7 = self->_source + 1;
    if (v7 >= 0xE)
    {
      v8 = [MEMORY[0x1E696AEC0] stringWithFormat:@"(unknown: %i)", self->_source];
    }

    else
    {
      v8 = off_1E837DEF8[v7];
    }

    [v4 setObject:v8 forKey:@"source"];

    has = self->_has;
  }

  if (has)
  {
    v9 = [MEMORY[0x1E696AD98] numberWithUnsignedInt:self->_actionCount];
    [v4 setObject:v9 forKey:@"actionCount"];
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

  sharingDestinationBundleIdentifier = self->_sharingDestinationBundleIdentifier;
  if (sharingDestinationBundleIdentifier)
  {
    [v4 setObject:sharingDestinationBundleIdentifier forKey:@"sharingDestinationBundleIdentifier"];
  }

  sharingMode = self->_sharingMode;
  if (sharingMode)
  {
    [v4 setObject:sharingMode forKey:@"sharingMode"];
  }

  return v4;
}

- (id)description
{
  v3 = MEMORY[0x1E696AEC0];
  v8.receiver = self;
  v8.super_class = WFPBShareShortcutEvent;
  v4 = [(WFPBShareShortcutEvent *)&v8 description];
  dictionaryRepresentation = [(WFPBShareShortcutEvent *)self dictionaryRepresentation];
  v6 = [v3 stringWithFormat:@"%@ %@", v4, dictionaryRepresentation];

  return v6;
}

- (NSString)sharingMode
{
  if (self->_sharingMode)
  {
    return self->_sharingMode;
  }

  else
  {
    return @"ShortcutSharingModeUnknown";
  }
}

- (int)StringAsSource:(id)source
{
  sourceCopy = source;
  if ([sourceCopy isEqualToString:@"ShortcutSourceUnknown"])
  {
    v4 = -1;
  }

  else if ([sourceCopy isEqualToString:@"ShortcutSourceOnDevice"])
  {
    v4 = 0;
  }

  else if ([sourceCopy isEqualToString:@"ShortcutSourceGallery"])
  {
    v4 = 1;
  }

  else if ([sourceCopy isEqualToString:@"ShortcutSourceAddToSiri"])
  {
    v4 = 2;
  }

  else if ([sourceCopy isEqualToString:@"ShortcutSourceCloudLink"])
  {
    v4 = 3;
  }

  else if ([sourceCopy isEqualToString:@"ShortcutSourceDefaultShortcut"])
  {
    v4 = 4;
  }

  else if ([sourceCopy isEqualToString:@"ShortcutSourceSiriTopLevelShortcut"])
  {
    v4 = 5;
  }

  else if ([sourceCopy isEqualToString:@"ShortcutSourceAutomatorMigration"])
  {
    v4 = 6;
  }

  else if ([sourceCopy isEqualToString:@"ShortcutSourceFilePublic"])
  {
    v4 = 7;
  }

  else if ([sourceCopy isEqualToString:@"ShortcutSourceFileKnownContacts"])
  {
    v4 = 8;
  }

  else if ([sourceCopy isEqualToString:@"ShortcutSourceFilePersonal"])
  {
    v4 = 9;
  }

  else if ([sourceCopy isEqualToString:@"ShortcutSourceEditorDocumentMenu"])
  {
    v4 = 10;
  }

  else if ([sourceCopy isEqualToString:@"ShortcutSourceAppShortcut"])
  {
    v4 = 11;
  }

  else if ([sourceCopy isEqualToString:@"ShortcutSourceActiveStarterShortcut"])
  {
    v4 = 12;
  }

  else
  {
    v4 = -1;
  }

  return v4;
}

- (void)setHasSource:(BOOL)source
{
  if (source)
  {
    v3 = 2;
  }

  else
  {
    v3 = 0;
  }

  *&self->_has = *&self->_has & 0xFD | v3;
}

- (int)source
{
  if ((*&self->_has & 2) != 0)
  {
    return self->_source;
  }

  else
  {
    return -1;
  }
}

- (NSString)key
{
  if (self->_key)
  {
    return self->_key;
  }

  else
  {
    return @"ShareShortcut";
  }
}

@end