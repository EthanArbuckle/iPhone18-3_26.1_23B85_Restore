@interface CSDMessagingConversationActivityMetadata
- (BOOL)isEqual:(id)a3;
- (id)copyWithZone:(_NSZone *)a3;
- (id)description;
- (id)dictionaryRepresentation;
- (unint64_t)hash;
- (void)copyTo:(id)a3;
- (void)mergeFrom:(id)a3;
- (void)setHasPreferredBroadcastingAttributes:(BOOL)a3;
- (void)setHasSupportsActivityPreviews:(BOOL)a3;
- (void)setHasSupportsContinuationOnTV:(BOOL)a3;
- (void)writeTo:(id)a3;
@end

@implementation CSDMessagingConversationActivityMetadata

- (void)setHasSupportsContinuationOnTV:(BOOL)a3
{
  if (a3)
  {
    v3 = 8;
  }

  else
  {
    v3 = 0;
  }

  *&self->_has = *&self->_has & 0xF7 | v3;
}

- (void)setHasPreferredBroadcastingAttributes:(BOOL)a3
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

- (void)setHasSupportsActivityPreviews:(BOOL)a3
{
  if (a3)
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
  v4 = [(CSDMessagingConversationActivityMetadata *)self dictionaryRepresentation];
  v5 = [NSString stringWithFormat:@"%@ %@", v3, v4];

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
    v12 = [(CSDMessagingConversationActivitySceneAssociationBehavior *)sceneAssociationBehavior dictionaryRepresentation];
    [v4 setObject:v12 forKey:@"sceneAssociationBehavior"];
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

- (void)writeTo:(id)a3
{
  v4 = a3;
  v10 = v4;
  if (self->_fallbackURL)
  {
    PBDataWriterWriteStringField();
    v4 = v10;
  }

  if ((*&self->_has & 8) != 0)
  {
    supportsContinuationOnTV = self->_supportsContinuationOnTV;
    PBDataWriterWriteBOOLField();
    v4 = v10;
  }

  if (self->_title)
  {
    PBDataWriterWriteStringField();
    v4 = v10;
  }

  if (self->_subtitle)
  {
    PBDataWriterWriteStringField();
    v4 = v10;
  }

  if (self->_image)
  {
    PBDataWriterWriteDataField();
    v4 = v10;
  }

  if ((*&self->_has & 2) != 0)
  {
    preferredBroadcastingAttributes = self->_preferredBroadcastingAttributes;
    PBDataWriterWriteUint32Field();
    v4 = v10;
  }

  if (self->_sceneAssociationBehavior)
  {
    PBDataWriterWriteSubmessage();
    v4 = v10;
  }

  has = self->_has;
  if ((has & 4) != 0)
  {
    supportsActivityPreviews = self->_supportsActivityPreviews;
    PBDataWriterWriteBOOLField();
    v4 = v10;
    has = self->_has;
  }

  if (has)
  {
    lifetimePolicy = self->_lifetimePolicy;
    PBDataWriterWriteUint32Field();
    v4 = v10;
  }
}

- (void)copyTo:(id)a3
{
  v4 = a3;
  v6 = v4;
  if (self->_fallbackURL)
  {
    [v4 setFallbackURL:?];
    v4 = v6;
  }

  if ((*&self->_has & 8) != 0)
  {
    *(v4 + 57) = self->_supportsContinuationOnTV;
    *(v4 + 60) |= 8u;
  }

  if (self->_title)
  {
    [v6 setTitle:?];
    v4 = v6;
  }

  if (self->_subtitle)
  {
    [v6 setSubtitle:?];
    v4 = v6;
  }

  if (self->_image)
  {
    [v6 setImage:?];
    v4 = v6;
  }

  if ((*&self->_has & 2) != 0)
  {
    *(v4 + 7) = self->_preferredBroadcastingAttributes;
    *(v4 + 60) |= 2u;
  }

  if (self->_sceneAssociationBehavior)
  {
    [v6 setSceneAssociationBehavior:?];
    v4 = v6;
  }

  has = self->_has;
  if ((has & 4) != 0)
  {
    *(v4 + 56) = self->_supportsActivityPreviews;
    *(v4 + 60) |= 4u;
    has = self->_has;
  }

  if (has)
  {
    *(v4 + 6) = self->_lifetimePolicy;
    *(v4 + 60) |= 1u;
  }
}

- (id)copyWithZone:(_NSZone *)a3
{
  v5 = [objc_msgSend(objc_opt_class() allocWithZone:{a3), "init"}];
  v6 = [(NSString *)self->_fallbackURL copyWithZone:a3];
  v7 = v5[1];
  v5[1] = v6;

  if ((*&self->_has & 8) != 0)
  {
    *(v5 + 57) = self->_supportsContinuationOnTV;
    *(v5 + 60) |= 8u;
  }

  v8 = [(NSString *)self->_title copyWithZone:a3];
  v9 = v5[6];
  v5[6] = v8;

  v10 = [(NSString *)self->_subtitle copyWithZone:a3];
  v11 = v5[5];
  v5[5] = v10;

  v12 = [(NSData *)self->_image copyWithZone:a3];
  v13 = v5[2];
  v5[2] = v12;

  if ((*&self->_has & 2) != 0)
  {
    *(v5 + 7) = self->_preferredBroadcastingAttributes;
    *(v5 + 60) |= 2u;
  }

  v14 = [(CSDMessagingConversationActivitySceneAssociationBehavior *)self->_sceneAssociationBehavior copyWithZone:a3];
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

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  if (![v4 isMemberOfClass:objc_opt_class()])
  {
    goto LABEL_16;
  }

  fallbackURL = self->_fallbackURL;
  if (fallbackURL | *(v4 + 1))
  {
    if (![(NSString *)fallbackURL isEqual:?])
    {
      goto LABEL_16;
    }
  }

  v6 = *(v4 + 60);
  if ((*&self->_has & 8) != 0)
  {
    if ((*(v4 + 60) & 8) == 0)
    {
      goto LABEL_16;
    }

    v14 = *(v4 + 57);
    if (self->_supportsContinuationOnTV)
    {
      if ((*(v4 + 57) & 1) == 0)
      {
        goto LABEL_16;
      }
    }

    else if (*(v4 + 57))
    {
      goto LABEL_16;
    }
  }

  else if ((*(v4 + 60) & 8) != 0)
  {
    goto LABEL_16;
  }

  title = self->_title;
  if (title | *(v4 + 6) && ![(NSString *)title isEqual:?])
  {
    goto LABEL_16;
  }

  subtitle = self->_subtitle;
  if (subtitle | *(v4 + 5))
  {
    if (![(NSString *)subtitle isEqual:?])
    {
      goto LABEL_16;
    }
  }

  image = self->_image;
  if (image | *(v4 + 2))
  {
    if (![(NSData *)image isEqual:?])
    {
      goto LABEL_16;
    }
  }

  has = self->_has;
  v11 = *(v4 + 60);
  if ((has & 2) != 0)
  {
    if ((*(v4 + 60) & 2) == 0 || self->_preferredBroadcastingAttributes != *(v4 + 7))
    {
      goto LABEL_16;
    }
  }

  else if ((*(v4 + 60) & 2) != 0)
  {
    goto LABEL_16;
  }

  sceneAssociationBehavior = self->_sceneAssociationBehavior;
  if (sceneAssociationBehavior | *(v4 + 4))
  {
    if (![(CSDMessagingConversationActivitySceneAssociationBehavior *)sceneAssociationBehavior isEqual:?])
    {
      goto LABEL_16;
    }

    has = self->_has;
  }

  if ((has & 4) != 0)
  {
    if ((*(v4 + 60) & 4) == 0)
    {
      goto LABEL_16;
    }

    v16 = *(v4 + 56);
    if (self->_supportsActivityPreviews)
    {
      if ((*(v4 + 56) & 1) == 0)
      {
        goto LABEL_16;
      }
    }

    else if (*(v4 + 56))
    {
      goto LABEL_16;
    }
  }

  else if ((*(v4 + 60) & 4) != 0)
  {
    goto LABEL_16;
  }

  v12 = (*(v4 + 60) & 1) == 0;
  if ((has & 1) == 0)
  {
    goto LABEL_17;
  }

  if ((*(v4 + 60) & 1) != 0 && self->_lifetimePolicy == *(v4 + 6))
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

- (void)mergeFrom:(id)a3
{
  v4 = a3;
  v8 = v4;
  if (*(v4 + 1))
  {
    [(CSDMessagingConversationActivityMetadata *)self setFallbackURL:?];
    v4 = v8;
  }

  if ((*(v4 + 60) & 8) != 0)
  {
    self->_supportsContinuationOnTV = *(v4 + 57);
    *&self->_has |= 8u;
  }

  if (*(v4 + 6))
  {
    [(CSDMessagingConversationActivityMetadata *)self setTitle:?];
    v4 = v8;
  }

  if (*(v4 + 5))
  {
    [(CSDMessagingConversationActivityMetadata *)self setSubtitle:?];
    v4 = v8;
  }

  if (*(v4 + 2))
  {
    [(CSDMessagingConversationActivityMetadata *)self setImage:?];
    v4 = v8;
  }

  if ((*(v4 + 60) & 2) != 0)
  {
    self->_preferredBroadcastingAttributes = *(v4 + 7);
    *&self->_has |= 2u;
  }

  sceneAssociationBehavior = self->_sceneAssociationBehavior;
  v6 = *(v4 + 4);
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

  v4 = v8;
LABEL_19:
  v7 = *(v4 + 60);
  if ((v7 & 4) != 0)
  {
    self->_supportsActivityPreviews = *(v4 + 56);
    *&self->_has |= 4u;
    v7 = *(v4 + 60);
  }

  if (v7)
  {
    self->_lifetimePolicy = *(v4 + 6);
    *&self->_has |= 1u;
  }
}

@end