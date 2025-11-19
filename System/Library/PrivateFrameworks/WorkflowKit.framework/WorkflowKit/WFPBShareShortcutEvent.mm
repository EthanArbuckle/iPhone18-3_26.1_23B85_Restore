@interface WFPBShareShortcutEvent
- (BOOL)isEqual:(id)a3;
- (NSString)key;
- (NSString)sharingMode;
- (id)copyWithZone:(_NSZone *)a3;
- (id)description;
- (id)dictionaryRepresentation;
- (int)StringAsSource:(id)a3;
- (int)source;
- (unint64_t)hash;
- (void)copyTo:(id)a3;
- (void)mergeFrom:(id)a3;
- (void)setHasSource:(BOOL)a3;
- (void)writeTo:(id)a3;
@end

@implementation WFPBShareShortcutEvent

- (void)mergeFrom:(id)a3
{
  v4 = a3;
  v6 = v4;
  if (*(v4 + 4))
  {
    [(WFPBShareShortcutEvent *)self setKey:?];
    v4 = v6;
  }

  v5 = *(v4 + 60);
  if ((v5 & 2) != 0)
  {
    self->_source = *(v4 + 14);
    *&self->_has |= 2u;
    v5 = *(v4 + 60);
  }

  if (v5)
  {
    self->_actionCount = *(v4 + 2);
    *&self->_has |= 1u;
  }

  if (*(v4 + 2))
  {
    [(WFPBShareShortcutEvent *)self setAddToSiriBundleIdentifier:?];
    v4 = v6;
  }

  if (*(v4 + 3))
  {
    [(WFPBShareShortcutEvent *)self setGalleryIdentifier:?];
    v4 = v6;
  }

  if (*(v4 + 5))
  {
    [(WFPBShareShortcutEvent *)self setSharingDestinationBundleIdentifier:?];
    v4 = v6;
  }

  if (*(v4 + 6))
  {
    [(WFPBShareShortcutEvent *)self setSharingMode:?];
    v4 = v6;
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

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  if (![v4 isMemberOfClass:objc_opt_class()])
  {
    goto LABEL_22;
  }

  key = self->_key;
  if (key | *(v4 + 4))
  {
    if (![(NSString *)key isEqual:?])
    {
      goto LABEL_22;
    }
  }

  v6 = *(v4 + 60);
  if ((*&self->_has & 2) != 0)
  {
    if ((*(v4 + 60) & 2) == 0 || self->_source != *(v4 + 14))
    {
      goto LABEL_22;
    }
  }

  else if ((*(v4 + 60) & 2) != 0)
  {
LABEL_22:
    v11 = 0;
    goto LABEL_23;
  }

  if (*&self->_has)
  {
    if ((*(v4 + 60) & 1) == 0 || self->_actionCount != *(v4 + 2))
    {
      goto LABEL_22;
    }
  }

  else if (*(v4 + 60))
  {
    goto LABEL_22;
  }

  addToSiriBundleIdentifier = self->_addToSiriBundleIdentifier;
  if (addToSiriBundleIdentifier | *(v4 + 2) && ![(NSString *)addToSiriBundleIdentifier isEqual:?])
  {
    goto LABEL_22;
  }

  galleryIdentifier = self->_galleryIdentifier;
  if (galleryIdentifier | *(v4 + 3))
  {
    if (![(NSString *)galleryIdentifier isEqual:?])
    {
      goto LABEL_22;
    }
  }

  sharingDestinationBundleIdentifier = self->_sharingDestinationBundleIdentifier;
  if (sharingDestinationBundleIdentifier | *(v4 + 5))
  {
    if (![(NSString *)sharingDestinationBundleIdentifier isEqual:?])
    {
      goto LABEL_22;
    }
  }

  sharingMode = self->_sharingMode;
  if (sharingMode | *(v4 + 6))
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

- (id)copyWithZone:(_NSZone *)a3
{
  v5 = [objc_msgSend(objc_opt_class() allocWithZone:{a3), "init"}];
  v6 = [(NSString *)self->_key copyWithZone:a3];
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

  v9 = [(NSString *)self->_addToSiriBundleIdentifier copyWithZone:a3];
  v10 = *(v5 + 16);
  *(v5 + 16) = v9;

  v11 = [(NSString *)self->_galleryIdentifier copyWithZone:a3];
  v12 = *(v5 + 24);
  *(v5 + 24) = v11;

  v13 = [(NSString *)self->_sharingDestinationBundleIdentifier copyWithZone:a3];
  v14 = *(v5 + 40);
  *(v5 + 40) = v13;

  v15 = [(NSString *)self->_sharingMode copyWithZone:a3];
  v16 = *(v5 + 48);
  *(v5 + 48) = v15;

  return v5;
}

- (void)copyTo:(id)a3
{
  v4 = a3;
  v6 = v4;
  if (self->_key)
  {
    [v4 setKey:?];
    v4 = v6;
  }

  has = self->_has;
  if ((has & 2) != 0)
  {
    *(v4 + 14) = self->_source;
    *(v4 + 60) |= 2u;
    has = self->_has;
  }

  if (has)
  {
    *(v4 + 2) = self->_actionCount;
    *(v4 + 60) |= 1u;
  }

  if (self->_addToSiriBundleIdentifier)
  {
    [v6 setAddToSiriBundleIdentifier:?];
    v4 = v6;
  }

  if (self->_galleryIdentifier)
  {
    [v6 setGalleryIdentifier:?];
    v4 = v6;
  }

  if (self->_sharingDestinationBundleIdentifier)
  {
    [v6 setSharingDestinationBundleIdentifier:?];
    v4 = v6;
  }

  if (self->_sharingMode)
  {
    [v6 setSharingMode:?];
    v4 = v6;
  }
}

- (void)writeTo:(id)a3
{
  v4 = a3;
  v8 = v4;
  if (self->_key)
  {
    PBDataWriterWriteStringField();
    v4 = v8;
  }

  has = self->_has;
  if ((has & 2) != 0)
  {
    source = self->_source;
    PBDataWriterWriteInt32Field();
    v4 = v8;
    has = self->_has;
  }

  if (has)
  {
    actionCount = self->_actionCount;
    PBDataWriterWriteUint32Field();
    v4 = v8;
  }

  if (self->_addToSiriBundleIdentifier)
  {
    PBDataWriterWriteStringField();
    v4 = v8;
  }

  if (self->_galleryIdentifier)
  {
    PBDataWriterWriteStringField();
    v4 = v8;
  }

  if (self->_sharingDestinationBundleIdentifier)
  {
    PBDataWriterWriteStringField();
    v4 = v8;
  }

  if (self->_sharingMode)
  {
    PBDataWriterWriteStringField();
    v4 = v8;
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
  v5 = [(WFPBShareShortcutEvent *)self dictionaryRepresentation];
  v6 = [v3 stringWithFormat:@"%@ %@", v4, v5];

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

- (int)StringAsSource:(id)a3
{
  v3 = a3;
  if ([v3 isEqualToString:@"ShortcutSourceUnknown"])
  {
    v4 = -1;
  }

  else if ([v3 isEqualToString:@"ShortcutSourceOnDevice"])
  {
    v4 = 0;
  }

  else if ([v3 isEqualToString:@"ShortcutSourceGallery"])
  {
    v4 = 1;
  }

  else if ([v3 isEqualToString:@"ShortcutSourceAddToSiri"])
  {
    v4 = 2;
  }

  else if ([v3 isEqualToString:@"ShortcutSourceCloudLink"])
  {
    v4 = 3;
  }

  else if ([v3 isEqualToString:@"ShortcutSourceDefaultShortcut"])
  {
    v4 = 4;
  }

  else if ([v3 isEqualToString:@"ShortcutSourceSiriTopLevelShortcut"])
  {
    v4 = 5;
  }

  else if ([v3 isEqualToString:@"ShortcutSourceAutomatorMigration"])
  {
    v4 = 6;
  }

  else if ([v3 isEqualToString:@"ShortcutSourceFilePublic"])
  {
    v4 = 7;
  }

  else if ([v3 isEqualToString:@"ShortcutSourceFileKnownContacts"])
  {
    v4 = 8;
  }

  else if ([v3 isEqualToString:@"ShortcutSourceFilePersonal"])
  {
    v4 = 9;
  }

  else if ([v3 isEqualToString:@"ShortcutSourceEditorDocumentMenu"])
  {
    v4 = 10;
  }

  else if ([v3 isEqualToString:@"ShortcutSourceAppShortcut"])
  {
    v4 = 11;
  }

  else if ([v3 isEqualToString:@"ShortcutSourceActiveStarterShortcut"])
  {
    v4 = 12;
  }

  else
  {
    v4 = -1;
  }

  return v4;
}

- (void)setHasSource:(BOOL)a3
{
  if (a3)
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