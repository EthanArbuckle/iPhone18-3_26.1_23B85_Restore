@interface CSDMessagingConversationActivityMetadata
- (BOOL)isEqual:(id)equal;
- (id)copyWithZone:(_NSZone *)zone;
- (id)description;
- (id)dictionaryRepresentation;
- (unint64_t)hash;
- (void)copyTo:(id)to;
- (void)mergeFrom:(id)from;
- (void)setHasPreferredBroadcastingAttributes:(BOOL)attributes;
- (void)setHasSupportsActivityPreviews:(BOOL)previews;
- (void)setHasSupportsContinuationOnTV:(BOOL)v;
- (void)writeTo:(id)to;
@end

@implementation CSDMessagingConversationActivityMetadata

- (void)setHasSupportsContinuationOnTV:(BOOL)v
{
  if (v)
  {
    v3 = 8;
  }

  else
  {
    v3 = 0;
  }

  *&self->_has = *&self->_has & 0xF7 | v3;
}

- (void)setHasPreferredBroadcastingAttributes:(BOOL)attributes
{
  if (attributes)
  {
    v3 = 2;
  }

  else
  {
    v3 = 0;
  }

  *&self->_has = *&self->_has & 0xFD | v3;
}

- (void)setHasSupportsActivityPreviews:(BOOL)previews
{
  if (previews)
  {
    v3 = 4;
  }

  else
  {
    v3 = 0;
  }

  *&self->_has = *&self->_has & 0xFB | v3;
}

- (id)description
{
  v7.receiver = self;
  v7.super_class = CSDMessagingConversationActivityMetadata;
  v3 = [(CSDMessagingConversationActivityMetadata *)&v7 description];
  dictionaryRepresentation = [(CSDMessagingConversationActivityMetadata *)self dictionaryRepresentation];
  v5 = [NSString stringWithFormat:@"%@ %@", v3, dictionaryRepresentation];

  return v5;
}

- (id)dictionaryRepresentation
{
  v3 = +[NSMutableDictionary dictionary];
  v4 = v3;
  fallbackURL = self->_fallbackURL;
  if (fallbackURL)
  {
    [v3 setObject:fallbackURL forKey:@"fallbackURL"];
  }

  if ((*&self->_has & 8) != 0)
  {
    v6 = [NSNumber numberWithBool:self->_supportsContinuationOnTV];
    [v4 setObject:v6 forKey:@"supportsContinuationOnTV"];
  }

  title = self->_title;
  if (title)
  {
    [v4 setObject:title forKey:@"title"];
  }

  subtitle = self->_subtitle;
  if (subtitle)
  {
    [v4 setObject:subtitle forKey:@"subtitle"];
  }

  image = self->_image;
  if (image)
  {
    [v4 setObject:image forKey:@"image"];
  }

  if ((*&self->_has & 2) != 0)
  {
    v10 = [NSNumber numberWithUnsignedInt:self->_preferredBroadcastingAttributes];
    [v4 setObject:v10 forKey:@"preferredBroadcastingAttributes"];
  }

  sceneAssociationBehavior = self->_sceneAssociationBehavior;
  if (sceneAssociationBehavior)
  {
    dictionaryRepresentation = [(CSDMessagingConversationActivitySceneAssociationBehavior *)sceneAssociationBehavior dictionaryRepresentation];
    [v4 setObject:dictionaryRepresentation forKey:@"sceneAssociationBehavior"];
  }

  has = self->_has;
  if ((has & 4) != 0)
  {
    v14 = [NSNumber numberWithBool:self->_supportsActivityPreviews];
    [v4 setObject:v14 forKey:@"supportsActivityPreviews"];

    has = self->_has;
  }

  if (has)
  {
    v15 = [NSNumber numberWithUnsignedInt:self->_lifetimePolicy];
    [v4 setObject:v15 forKey:@"lifetimePolicy"];
  }

  return v4;
}

- (void)writeTo:(id)to
{
  toCopy = to;
  v10 = toCopy;
  if (self->_fallbackURL)
  {
    PBDataWriterWriteStringField();
    toCopy = v10;
  }

  if ((*&self->_has & 8) != 0)
  {
    supportsContinuationOnTV = self->_supportsContinuationOnTV;
    PBDataWriterWriteBOOLField();
    toCopy = v10;
  }

  if (self->_title)
  {
    PBDataWriterWriteStringField();
    toCopy = v10;
  }

  if (self->_subtitle)
  {
    PBDataWriterWriteStringField();
    toCopy = v10;
  }

  if (self->_image)
  {
    PBDataWriterWriteDataField();
    toCopy = v10;
  }

  if ((*&self->_has & 2) != 0)
  {
    preferredBroadcastingAttributes = self->_preferredBroadcastingAttributes;
    PBDataWriterWriteUint32Field();
    toCopy = v10;
  }

  if (self->_sceneAssociationBehavior)
  {
    PBDataWriterWriteSubmessage();
    toCopy = v10;
  }

  has = self->_has;
  if ((has & 4) != 0)
  {
    supportsActivityPreviews = self->_supportsActivityPreviews;
    PBDataWriterWriteBOOLField();
    toCopy = v10;
    has = self->_has;
  }

  if (has)
  {
    lifetimePolicy = self->_lifetimePolicy;
    PBDataWriterWriteUint32Field();
    toCopy = v10;
  }
}

- (void)copyTo:(id)to
{
  toCopy = to;
  v6 = toCopy;
  if (self->_fallbackURL)
  {
    [toCopy setFallbackURL:?];
    toCopy = v6;
  }

  if ((*&self->_has & 8) != 0)
  {
    *(toCopy + 57) = self->_supportsContinuationOnTV;
    *(toCopy + 60) |= 8u;
  }

  if (self->_title)
  {
    [v6 setTitle:?];
    toCopy = v6;
  }

  if (self->_subtitle)
  {
    [v6 setSubtitle:?];
    toCopy = v6;
  }

  if (self->_image)
  {
    [v6 setImage:?];
    toCopy = v6;
  }

  if ((*&self->_has & 2) != 0)
  {
    *(toCopy + 7) = self->_preferredBroadcastingAttributes;
    *(toCopy + 60) |= 2u;
  }

  if (self->_sceneAssociationBehavior)
  {
    [v6 setSceneAssociationBehavior:?];
    toCopy = v6;
  }

  has = self->_has;
  if ((has & 4) != 0)
  {
    *(toCopy + 56) = self->_supportsActivityPreviews;
    *(toCopy + 60) |= 4u;
    has = self->_has;
  }

  if (has)
  {
    *(toCopy + 6) = self->_lifetimePolicy;
    *(toCopy + 60) |= 1u;
  }
}

- (id)copyWithZone:(_NSZone *)zone
{
  v5 = [objc_msgSend(objc_opt_class() allocWithZone:{zone), "init"}];
  v6 = [(NSString *)self->_fallbackURL copyWithZone:zone];
  v7 = v5[1];
  v5[1] = v6;

  if ((*&self->_has & 8) != 0)
  {
    *(v5 + 57) = self->_supportsContinuationOnTV;
    *(v5 + 60) |= 8u;
  }

  v8 = [(NSString *)self->_title copyWithZone:zone];
  v9 = v5[6];
  v5[6] = v8;

  v10 = [(NSString *)self->_subtitle copyWithZone:zone];
  v11 = v5[5];
  v5[5] = v10;

  v12 = [(NSData *)self->_image copyWithZone:zone];
  v13 = v5[2];
  v5[2] = v12;

  if ((*&self->_has & 2) != 0)
  {
    *(v5 + 7) = self->_preferredBroadcastingAttributes;
    *(v5 + 60) |= 2u;
  }

  v14 = [(CSDMessagingConversationActivitySceneAssociationBehavior *)self->_sceneAssociationBehavior copyWithZone:zone];
  v15 = v5[4];
  v5[4] = v14;

  has = self->_has;
  if ((has & 4) != 0)
  {
    *(v5 + 56) = self->_supportsActivityPreviews;
    *(v5 + 60) |= 4u;
    has = self->_has;
  }

  if (has)
  {
    *(v5 + 6) = self->_lifetimePolicy;
    *(v5 + 60) |= 1u;
  }

  return v5;
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  if (![equalCopy isMemberOfClass:objc_opt_class()])
  {
    goto LABEL_16;
  }

  fallbackURL = self->_fallbackURL;
  if (fallbackURL | *(equalCopy + 1))
  {
    if (![(NSString *)fallbackURL isEqual:?])
    {
      goto LABEL_16;
    }
  }

  v6 = *(equalCopy + 60);
  if ((*&self->_has & 8) != 0)
  {
    if ((*(equalCopy + 60) & 8) == 0)
    {
      goto LABEL_16;
    }

    v14 = *(equalCopy + 57);
    if (self->_supportsContinuationOnTV)
    {
      if ((*(equalCopy + 57) & 1) == 0)
      {
        goto LABEL_16;
      }
    }

    else if (*(equalCopy + 57))
    {
      goto LABEL_16;
    }
  }

  else if ((*(equalCopy + 60) & 8) != 0)
  {
    goto LABEL_16;
  }

  title = self->_title;
  if (title | *(equalCopy + 6) && ![(NSString *)title isEqual:?])
  {
    goto LABEL_16;
  }

  subtitle = self->_subtitle;
  if (subtitle | *(equalCopy + 5))
  {
    if (![(NSString *)subtitle isEqual:?])
    {
      goto LABEL_16;
    }
  }

  image = self->_image;
  if (image | *(equalCopy + 2))
  {
    if (![(NSData *)image isEqual:?])
    {
      goto LABEL_16;
    }
  }

  has = self->_has;
  v11 = *(equalCopy + 60);
  if ((has & 2) != 0)
  {
    if ((*(equalCopy + 60) & 2) == 0 || self->_preferredBroadcastingAttributes != *(equalCopy + 7))
    {
      goto LABEL_16;
    }
  }

  else if ((*(equalCopy + 60) & 2) != 0)
  {
    goto LABEL_16;
  }

  sceneAssociationBehavior = self->_sceneAssociationBehavior;
  if (sceneAssociationBehavior | *(equalCopy + 4))
  {
    if (![(CSDMessagingConversationActivitySceneAssociationBehavior *)sceneAssociationBehavior isEqual:?])
    {
      goto LABEL_16;
    }

    has = self->_has;
  }

  if ((has & 4) != 0)
  {
    if ((*(equalCopy + 60) & 4) == 0)
    {
      goto LABEL_16;
    }

    v16 = *(equalCopy + 56);
    if (self->_supportsActivityPreviews)
    {
      if ((*(equalCopy + 56) & 1) == 0)
      {
        goto LABEL_16;
      }
    }

    else if (*(equalCopy + 56))
    {
      goto LABEL_16;
    }
  }

  else if ((*(equalCopy + 60) & 4) != 0)
  {
    goto LABEL_16;
  }

  v12 = (*(equalCopy + 60) & 1) == 0;
  if ((has & 1) == 0)
  {
    goto LABEL_17;
  }

  if ((*(equalCopy + 60) & 1) != 0 && self->_lifetimePolicy == *(equalCopy + 6))
  {
    v12 = 1;
    goto LABEL_17;
  }

LABEL_16:
  v12 = 0;
LABEL_17:

  return v12;
}

- (unint64_t)hash
{
  v3 = [(NSString *)self->_fallbackURL hash];
  if ((*&self->_has & 8) != 0)
  {
    v4 = 2654435761 * self->_supportsContinuationOnTV;
  }

  else
  {
    v4 = 0;
  }

  v5 = [(NSString *)self->_title hash];
  v6 = [(NSString *)self->_subtitle hash];
  v7 = [(NSData *)self->_image hash];
  if ((*&self->_has & 2) != 0)
  {
    v8 = 2654435761 * self->_preferredBroadcastingAttributes;
  }

  else
  {
    v8 = 0;
  }

  v9 = [(CSDMessagingConversationActivitySceneAssociationBehavior *)self->_sceneAssociationBehavior hash];
  if ((*&self->_has & 4) != 0)
  {
    v10 = 2654435761 * self->_supportsActivityPreviews;
    if (*&self->_has)
    {
      goto LABEL_9;
    }

LABEL_11:
    v11 = 0;
    return v4 ^ v3 ^ v5 ^ v6 ^ v7 ^ v8 ^ v9 ^ v10 ^ v11;
  }

  v10 = 0;
  if ((*&self->_has & 1) == 0)
  {
    goto LABEL_11;
  }

LABEL_9:
  v11 = 2654435761 * self->_lifetimePolicy;
  return v4 ^ v3 ^ v5 ^ v6 ^ v7 ^ v8 ^ v9 ^ v10 ^ v11;
}

- (void)mergeFrom:(id)from
{
  fromCopy = from;
  v8 = fromCopy;
  if (*(fromCopy + 1))
  {
    [(CSDMessagingConversationActivityMetadata *)self setFallbackURL:?];
    fromCopy = v8;
  }

  if ((*(fromCopy + 60) & 8) != 0)
  {
    self->_supportsContinuationOnTV = *(fromCopy + 57);
    *&self->_has |= 8u;
  }

  if (*(fromCopy + 6))
  {
    [(CSDMessagingConversationActivityMetadata *)self setTitle:?];
    fromCopy = v8;
  }

  if (*(fromCopy + 5))
  {
    [(CSDMessagingConversationActivityMetadata *)self setSubtitle:?];
    fromCopy = v8;
  }

  if (*(fromCopy + 2))
  {
    [(CSDMessagingConversationActivityMetadata *)self setImage:?];
    fromCopy = v8;
  }

  if ((*(fromCopy + 60) & 2) != 0)
  {
    self->_preferredBroadcastingAttributes = *(fromCopy + 7);
    *&self->_has |= 2u;
  }

  sceneAssociationBehavior = self->_sceneAssociationBehavior;
  v6 = *(fromCopy + 4);
  if (sceneAssociationBehavior)
  {
    if (!v6)
    {
      goto LABEL_19;
    }

    [(CSDMessagingConversationActivitySceneAssociationBehavior *)sceneAssociationBehavior mergeFrom:?];
  }

  else
  {
    if (!v6)
    {
      goto LABEL_19;
    }

    [(CSDMessagingConversationActivityMetadata *)self setSceneAssociationBehavior:?];
  }

  fromCopy = v8;
LABEL_19:
  v7 = *(fromCopy + 60);
  if ((v7 & 4) != 0)
  {
    self->_supportsActivityPreviews = *(fromCopy + 56);
    *&self->_has |= 4u;
    v7 = *(fromCopy + 60);
  }

  if (v7)
  {
    self->_lifetimePolicy = *(fromCopy + 6);
    *&self->_has |= 1u;
  }
}

@end