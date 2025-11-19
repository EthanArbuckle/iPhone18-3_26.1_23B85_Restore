@interface _ICLLPlaybackItem
- (BOOL)isEqual:(id)a3;
- (id)copyWithZone:(_NSZone *)a3;
- (id)description;
- (id)dictionaryRepresentation;
- (unint64_t)hash;
- (void)writeTo:(id)a3;
@end

@implementation _ICLLPlaybackItem

- (unint64_t)hash
{
  v3 = [(NSString *)self->_itemId hash];
  v4 = [(NSString *)self->_mediaId hash];
  if (*&self->_has)
  {
    v5 = 2654435761 * self->_contributingParticipantId;
  }

  else
  {
    v5 = 0;
  }

  v6 = [(_ICLLPlaybackItemContainer *)self->_container hash];
  if ((*&self->_has & 4) != 0)
  {
    v7 = 2654435761 * self->_isExplicit;
  }

  else
  {
    v7 = 0;
  }

  v8 = [(_ICLLMediaInfo *)self->_mediaInfo hash];
  if ((*&self->_has & 2) != 0)
  {
    v9 = 2654435761 * self->_sectionType;
  }

  else
  {
    v9 = 0;
  }

  return v4 ^ v3 ^ v5 ^ v6 ^ v7 ^ v8 ^ v9;
}

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  if (![v4 isMemberOfClass:objc_opt_class()])
  {
    goto LABEL_24;
  }

  itemId = self->_itemId;
  if (itemId | *(v4 + 3))
  {
    if (![(NSString *)itemId isEqual:?])
    {
      goto LABEL_24;
    }
  }

  mediaId = self->_mediaId;
  if (mediaId | *(v4 + 4))
  {
    if (![(NSString *)mediaId isEqual:?])
    {
      goto LABEL_24;
    }
  }

  has = self->_has;
  v8 = *(v4 + 56);
  if (has)
  {
    if ((*(v4 + 56) & 1) == 0 || self->_contributingParticipantId != *(v4 + 1))
    {
      goto LABEL_24;
    }
  }

  else if (*(v4 + 56))
  {
    goto LABEL_24;
  }

  container = self->_container;
  if (container | *(v4 + 2))
  {
    if (![(_ICLLPlaybackItemContainer *)container isEqual:?])
    {
      goto LABEL_24;
    }

    has = self->_has;
    v8 = *(v4 + 56);
  }

  if ((has & 4) != 0)
  {
    if ((v8 & 4) == 0)
    {
      goto LABEL_24;
    }

    if (self->_isExplicit)
    {
      if ((*(v4 + 52) & 1) == 0)
      {
        goto LABEL_24;
      }
    }

    else if (*(v4 + 52))
    {
      goto LABEL_24;
    }
  }

  else if ((v8 & 4) != 0)
  {
    goto LABEL_24;
  }

  mediaInfo = self->_mediaInfo;
  if (!(mediaInfo | *(v4 + 5)))
  {
    goto LABEL_19;
  }

  if (![(_ICLLMediaInfo *)mediaInfo isEqual:?])
  {
LABEL_24:
    v11 = 0;
    goto LABEL_25;
  }

  has = self->_has;
  v8 = *(v4 + 56);
LABEL_19:
  v11 = (v8 & 2) == 0;
  if ((has & 2) != 0)
  {
    if ((v8 & 2) == 0 || self->_sectionType != *(v4 + 12))
    {
      goto LABEL_24;
    }

    v11 = 1;
  }

LABEL_25:

  return v11;
}

- (id)copyWithZone:(_NSZone *)a3
{
  v5 = [objc_msgSend(objc_opt_class() allocWithZone:{a3), "init"}];
  v6 = [(NSString *)self->_itemId copyWithZone:a3];
  v7 = *(v5 + 24);
  *(v5 + 24) = v6;

  v8 = [(NSString *)self->_mediaId copyWithZone:a3];
  v9 = *(v5 + 32);
  *(v5 + 32) = v8;

  if (*&self->_has)
  {
    *(v5 + 8) = self->_contributingParticipantId;
    *(v5 + 56) |= 1u;
  }

  v10 = [(_ICLLPlaybackItemContainer *)self->_container copyWithZone:a3];
  v11 = *(v5 + 16);
  *(v5 + 16) = v10;

  if ((*&self->_has & 4) != 0)
  {
    *(v5 + 52) = self->_isExplicit;
    *(v5 + 56) |= 4u;
  }

  v12 = [(_ICLLMediaInfo *)self->_mediaInfo copyWithZone:a3];
  v13 = *(v5 + 40);
  *(v5 + 40) = v12;

  if ((*&self->_has & 2) != 0)
  {
    *(v5 + 48) = self->_sectionType;
    *(v5 + 56) |= 2u;
  }

  return v5;
}

- (void)writeTo:(id)a3
{
  v4 = a3;
  v5 = v4;
  if (self->_itemId)
  {
    PBDataWriterWriteStringField();
    v4 = v5;
  }

  if (self->_mediaId)
  {
    PBDataWriterWriteStringField();
    v4 = v5;
  }

  if (*&self->_has)
  {
    PBDataWriterWriteInt64Field();
    v4 = v5;
  }

  if (self->_container)
  {
    PBDataWriterWriteSubmessage();
    v4 = v5;
  }

  if ((*&self->_has & 4) != 0)
  {
    PBDataWriterWriteBOOLField();
    v4 = v5;
  }

  if (self->_mediaInfo)
  {
    PBDataWriterWriteSubmessage();
    v4 = v5;
  }

  if ((*&self->_has & 2) != 0)
  {
    PBDataWriterWriteInt32Field();
    v4 = v5;
  }
}

- (id)dictionaryRepresentation
{
  v3 = [MEMORY[0x1E695DF90] dictionary];
  v4 = v3;
  itemId = self->_itemId;
  if (itemId)
  {
    [v3 setObject:itemId forKey:@"itemId"];
  }

  mediaId = self->_mediaId;
  if (mediaId)
  {
    [v4 setObject:mediaId forKey:@"mediaId"];
  }

  if (*&self->_has)
  {
    v7 = [MEMORY[0x1E696AD98] numberWithLongLong:self->_contributingParticipantId];
    [v4 setObject:v7 forKey:@"contributingParticipantId"];
  }

  container = self->_container;
  if (container)
  {
    v9 = [(_ICLLPlaybackItemContainer *)container dictionaryRepresentation];
    [v4 setObject:v9 forKey:@"container"];
  }

  if ((*&self->_has & 4) != 0)
  {
    v10 = [MEMORY[0x1E696AD98] numberWithBool:self->_isExplicit];
    [v4 setObject:v10 forKey:@"isExplicit"];
  }

  mediaInfo = self->_mediaInfo;
  if (mediaInfo)
  {
    v12 = [(_ICLLMediaInfo *)mediaInfo dictionaryRepresentation];
    [v4 setObject:v12 forKey:@"mediaInfo"];
  }

  if ((*&self->_has & 2) != 0)
  {
    v13 = [MEMORY[0x1E696AD98] numberWithInt:self->_sectionType];
    [v4 setObject:v13 forKey:@"sectionType"];
  }

  return v4;
}

- (id)description
{
  v3 = MEMORY[0x1E696AEC0];
  v8.receiver = self;
  v8.super_class = _ICLLPlaybackItem;
  v4 = [(_ICLLPlaybackItem *)&v8 description];
  v5 = [(_ICLLPlaybackItem *)self dictionaryRepresentation];
  v6 = [v3 stringWithFormat:@"%@ %@", v4, v5];

  return v6;
}

@end