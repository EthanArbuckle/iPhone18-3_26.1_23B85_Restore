@interface AWDFaceTimeCallInterruptionEnded
- (BOOL)isEqual:(id)equal;
- (id)copyWithZone:(_NSZone *)zone;
- (id)description;
- (id)dictionaryRepresentation;
- (unint64_t)hash;
- (void)copyTo:(id)to;
- (void)dealloc;
- (void)mergeFrom:(id)from;
- (void)setHasInterruptionDuration:(BOOL)duration;
- (void)setHasIsAudioResumed:(BOOL)resumed;
- (void)setHasIsVideo:(BOOL)video;
- (void)setHasIsVideoResumed:(BOOL)resumed;
- (void)setHasLinkQuality:(BOOL)quality;
- (void)setHasOnLockScreen:(BOOL)screen;
- (void)writeTo:(id)to;
@end

@implementation AWDFaceTimeCallInterruptionEnded

- (void)dealloc
{
  [(AWDFaceTimeCallInterruptionEnded *)self setGuid:0];
  v3.receiver = self;
  v3.super_class = AWDFaceTimeCallInterruptionEnded;
  [(AWDFaceTimeCallInterruptionEnded *)&v3 dealloc];
}

- (void)setHasInterruptionDuration:(BOOL)duration
{
  if (duration)
  {
    v3 = 2;
  }

  else
  {
    v3 = 0;
  }

  *&self->_has = *&self->_has & 0xFD | v3;
}

- (void)setHasIsVideoResumed:(BOOL)resumed
{
  if (resumed)
  {
    v3 = 16;
  }

  else
  {
    v3 = 0;
  }

  *&self->_has = *&self->_has & 0xEF | v3;
}

- (void)setHasIsAudioResumed:(BOOL)resumed
{
  if (resumed)
  {
    v3 = 4;
  }

  else
  {
    v3 = 0;
  }

  *&self->_has = *&self->_has & 0xFB | v3;
}

- (void)setHasLinkQuality:(BOOL)quality
{
  if (quality)
  {
    v3 = 32;
  }

  else
  {
    v3 = 0;
  }

  *&self->_has = *&self->_has & 0xDF | v3;
}

- (void)setHasIsVideo:(BOOL)video
{
  if (video)
  {
    v3 = 8;
  }

  else
  {
    v3 = 0;
  }

  *&self->_has = *&self->_has & 0xF7 | v3;
}

- (void)setHasOnLockScreen:(BOOL)screen
{
  if (screen)
  {
    v3 = 64;
  }

  else
  {
    v3 = 0;
  }

  *&self->_has = *&self->_has & 0xBF | v3;
}

- (id)description
{
  v3.receiver = self;
  v3.super_class = AWDFaceTimeCallInterruptionEnded;
  return [MEMORY[0x29EDBA0F8] stringWithFormat:@"%@ %@", -[AWDFaceTimeCallInterruptionEnded description](&v3, sel_description), -[AWDFaceTimeCallInterruptionEnded dictionaryRepresentation](self, "dictionaryRepresentation")];
}

- (id)dictionaryRepresentation
{
  dictionary = [MEMORY[0x29EDB8E00] dictionary];
  v4 = dictionary;
  guid = self->_guid;
  if (guid)
  {
    [dictionary setObject:guid forKey:@"guid"];
  }

  has = self->_has;
  if (has)
  {
    [v4 setObject:objc_msgSend(MEMORY[0x29EDBA070] forKey:{"numberWithUnsignedLongLong:", self->_timestamp), @"timestamp"}];
    has = self->_has;
    if ((has & 2) == 0)
    {
LABEL_5:
      if ((has & 0x10) == 0)
      {
        goto LABEL_6;
      }

      goto LABEL_14;
    }
  }

  else if ((*&self->_has & 2) == 0)
  {
    goto LABEL_5;
  }

  [v4 setObject:objc_msgSend(MEMORY[0x29EDBA070] forKey:{"numberWithUnsignedInt:", self->_interruptionDuration), @"interruptionDuration"}];
  has = self->_has;
  if ((has & 0x10) == 0)
  {
LABEL_6:
    if ((has & 4) == 0)
    {
      goto LABEL_7;
    }

    goto LABEL_15;
  }

LABEL_14:
  [v4 setObject:objc_msgSend(MEMORY[0x29EDBA070] forKey:{"numberWithUnsignedInt:", self->_isVideoResumed), @"isVideoResumed"}];
  has = self->_has;
  if ((has & 4) == 0)
  {
LABEL_7:
    if ((has & 0x20) == 0)
    {
      goto LABEL_8;
    }

    goto LABEL_16;
  }

LABEL_15:
  [v4 setObject:objc_msgSend(MEMORY[0x29EDBA070] forKey:{"numberWithUnsignedInt:", self->_isAudioResumed), @"isAudioResumed"}];
  has = self->_has;
  if ((has & 0x20) == 0)
  {
LABEL_8:
    if ((has & 8) == 0)
    {
      goto LABEL_9;
    }

LABEL_17:
    [v4 setObject:objc_msgSend(MEMORY[0x29EDBA070] forKey:{"numberWithUnsignedInt:", self->_isVideo), @"isVideo"}];
    if ((*&self->_has & 0x40) == 0)
    {
      return v4;
    }

    goto LABEL_10;
  }

LABEL_16:
  [v4 setObject:objc_msgSend(MEMORY[0x29EDBA070] forKey:{"numberWithInt:", self->_linkQuality), @"linkQuality"}];
  has = self->_has;
  if ((has & 8) != 0)
  {
    goto LABEL_17;
  }

LABEL_9:
  if ((has & 0x40) != 0)
  {
LABEL_10:
    [v4 setObject:objc_msgSend(MEMORY[0x29EDBA070] forKey:{"numberWithUnsignedInt:", self->_onLockScreen), @"onLockScreen"}];
  }

  return v4;
}

- (void)writeTo:(id)to
{
  if (self->_guid)
  {
    PBDataWriterWriteStringField();
  }

  has = self->_has;
  if (has)
  {
    timestamp = self->_timestamp;
    PBDataWriterWriteUint64Field();
    has = self->_has;
    if ((has & 2) == 0)
    {
LABEL_5:
      if ((has & 0x10) == 0)
      {
        goto LABEL_6;
      }

      goto LABEL_13;
    }
  }

  else if ((*&self->_has & 2) == 0)
  {
    goto LABEL_5;
  }

  interruptionDuration = self->_interruptionDuration;
  PBDataWriterWriteUint32Field();
  has = self->_has;
  if ((has & 0x10) == 0)
  {
LABEL_6:
    if ((has & 4) == 0)
    {
      goto LABEL_7;
    }

    goto LABEL_14;
  }

LABEL_13:
  isVideoResumed = self->_isVideoResumed;
  PBDataWriterWriteUint32Field();
  has = self->_has;
  if ((has & 4) == 0)
  {
LABEL_7:
    if ((has & 0x20) == 0)
    {
      goto LABEL_8;
    }

    goto LABEL_15;
  }

LABEL_14:
  isAudioResumed = self->_isAudioResumed;
  PBDataWriterWriteUint32Field();
  has = self->_has;
  if ((has & 0x20) == 0)
  {
LABEL_8:
    if ((has & 8) == 0)
    {
      goto LABEL_9;
    }

LABEL_16:
    isVideo = self->_isVideo;
    PBDataWriterWriteUint32Field();
    if ((*&self->_has & 0x40) == 0)
    {
      return;
    }

    goto LABEL_17;
  }

LABEL_15:
  linkQuality = self->_linkQuality;
  PBDataWriterWriteInt32Field();
  has = self->_has;
  if ((has & 8) != 0)
  {
    goto LABEL_16;
  }

LABEL_9:
  if ((has & 0x40) == 0)
  {
    return;
  }

LABEL_17:
  onLockScreen = self->_onLockScreen;

  PBDataWriterWriteUint32Field();
}

- (void)copyTo:(id)to
{
  if (self->_guid)
  {
    [to setGuid:?];
  }

  has = self->_has;
  if (has)
  {
    *(to + 1) = self->_timestamp;
    *(to + 48) |= 1u;
    has = self->_has;
    if ((has & 2) == 0)
    {
LABEL_5:
      if ((has & 0x10) == 0)
      {
        goto LABEL_6;
      }

      goto LABEL_14;
    }
  }

  else if ((*&self->_has & 2) == 0)
  {
    goto LABEL_5;
  }

  *(to + 6) = self->_interruptionDuration;
  *(to + 48) |= 2u;
  has = self->_has;
  if ((has & 0x10) == 0)
  {
LABEL_6:
    if ((has & 4) == 0)
    {
      goto LABEL_7;
    }

    goto LABEL_15;
  }

LABEL_14:
  *(to + 9) = self->_isVideoResumed;
  *(to + 48) |= 0x10u;
  has = self->_has;
  if ((has & 4) == 0)
  {
LABEL_7:
    if ((has & 0x20) == 0)
    {
      goto LABEL_8;
    }

    goto LABEL_16;
  }

LABEL_15:
  *(to + 7) = self->_isAudioResumed;
  *(to + 48) |= 4u;
  has = self->_has;
  if ((has & 0x20) == 0)
  {
LABEL_8:
    if ((has & 8) == 0)
    {
      goto LABEL_9;
    }

    goto LABEL_17;
  }

LABEL_16:
  *(to + 10) = self->_linkQuality;
  *(to + 48) |= 0x20u;
  has = self->_has;
  if ((has & 8) == 0)
  {
LABEL_9:
    if ((has & 0x40) == 0)
    {
      return;
    }

    goto LABEL_10;
  }

LABEL_17:
  *(to + 8) = self->_isVideo;
  *(to + 48) |= 8u;
  if ((*&self->_has & 0x40) == 0)
  {
    return;
  }

LABEL_10:
  *(to + 11) = self->_onLockScreen;
  *(to + 48) |= 0x40u;
}

- (id)copyWithZone:(_NSZone *)zone
{
  v5 = [objc_msgSend(objc_opt_class() allocWithZone:{zone), "init"}];

  *(v5 + 16) = [(NSString *)self->_guid copyWithZone:zone];
  has = self->_has;
  if (has)
  {
    *(v5 + 8) = self->_timestamp;
    *(v5 + 48) |= 1u;
    has = self->_has;
    if ((has & 2) == 0)
    {
LABEL_3:
      if ((has & 0x10) == 0)
      {
        goto LABEL_4;
      }

      goto LABEL_12;
    }
  }

  else if ((*&self->_has & 2) == 0)
  {
    goto LABEL_3;
  }

  *(v5 + 24) = self->_interruptionDuration;
  *(v5 + 48) |= 2u;
  has = self->_has;
  if ((has & 0x10) == 0)
  {
LABEL_4:
    if ((has & 4) == 0)
    {
      goto LABEL_5;
    }

    goto LABEL_13;
  }

LABEL_12:
  *(v5 + 36) = self->_isVideoResumed;
  *(v5 + 48) |= 0x10u;
  has = self->_has;
  if ((has & 4) == 0)
  {
LABEL_5:
    if ((has & 0x20) == 0)
    {
      goto LABEL_6;
    }

    goto LABEL_14;
  }

LABEL_13:
  *(v5 + 28) = self->_isAudioResumed;
  *(v5 + 48) |= 4u;
  has = self->_has;
  if ((has & 0x20) == 0)
  {
LABEL_6:
    if ((has & 8) == 0)
    {
      goto LABEL_7;
    }

LABEL_15:
    *(v5 + 32) = self->_isVideo;
    *(v5 + 48) |= 8u;
    if ((*&self->_has & 0x40) == 0)
    {
      return v5;
    }

    goto LABEL_8;
  }

LABEL_14:
  *(v5 + 40) = self->_linkQuality;
  *(v5 + 48) |= 0x20u;
  has = self->_has;
  if ((has & 8) != 0)
  {
    goto LABEL_15;
  }

LABEL_7:
  if ((has & 0x40) != 0)
  {
LABEL_8:
    *(v5 + 44) = self->_onLockScreen;
    *(v5 + 48) |= 0x40u;
  }

  return v5;
}

- (BOOL)isEqual:(id)equal
{
  v5 = [equal isMemberOfClass:objc_opt_class()];
  if (v5)
  {
    guid = self->_guid;
    if (!(guid | *(equal + 2)) || (v5 = [(NSString *)guid isEqual:?]) != 0)
    {
      if (*&self->_has)
      {
        if ((*(equal + 48) & 1) == 0 || self->_timestamp != *(equal + 1))
        {
          goto LABEL_38;
        }
      }

      else if (*(equal + 48))
      {
LABEL_38:
        LOBYTE(v5) = 0;
        return v5;
      }

      if ((*&self->_has & 2) != 0)
      {
        if ((*(equal + 48) & 2) == 0 || self->_interruptionDuration != *(equal + 6))
        {
          goto LABEL_38;
        }
      }

      else if ((*(equal + 48) & 2) != 0)
      {
        goto LABEL_38;
      }

      if ((*&self->_has & 0x10) != 0)
      {
        if ((*(equal + 48) & 0x10) == 0 || self->_isVideoResumed != *(equal + 9))
        {
          goto LABEL_38;
        }
      }

      else if ((*(equal + 48) & 0x10) != 0)
      {
        goto LABEL_38;
      }

      if ((*&self->_has & 4) != 0)
      {
        if ((*(equal + 48) & 4) == 0 || self->_isAudioResumed != *(equal + 7))
        {
          goto LABEL_38;
        }
      }

      else if ((*(equal + 48) & 4) != 0)
      {
        goto LABEL_38;
      }

      if ((*&self->_has & 0x20) != 0)
      {
        if ((*(equal + 48) & 0x20) == 0 || self->_linkQuality != *(equal + 10))
        {
          goto LABEL_38;
        }
      }

      else if ((*(equal + 48) & 0x20) != 0)
      {
        goto LABEL_38;
      }

      if ((*&self->_has & 8) != 0)
      {
        if ((*(equal + 48) & 8) == 0 || self->_isVideo != *(equal + 8))
        {
          goto LABEL_38;
        }
      }

      else if ((*(equal + 48) & 8) != 0)
      {
        goto LABEL_38;
      }

      LOBYTE(v5) = (*(equal + 48) & 0x40) == 0;
      if ((*&self->_has & 0x40) != 0)
      {
        if ((*(equal + 48) & 0x40) == 0 || self->_onLockScreen != *(equal + 11))
        {
          goto LABEL_38;
        }

        LOBYTE(v5) = 1;
      }
    }
  }

  return v5;
}

- (unint64_t)hash
{
  v3 = [(NSString *)self->_guid hash];
  if (*&self->_has)
  {
    v4 = 2654435761u * self->_timestamp;
    if ((*&self->_has & 2) != 0)
    {
LABEL_3:
      v5 = 2654435761 * self->_interruptionDuration;
      if ((*&self->_has & 0x10) != 0)
      {
        goto LABEL_4;
      }

      goto LABEL_11;
    }
  }

  else
  {
    v4 = 0;
    if ((*&self->_has & 2) != 0)
    {
      goto LABEL_3;
    }
  }

  v5 = 0;
  if ((*&self->_has & 0x10) != 0)
  {
LABEL_4:
    v6 = 2654435761 * self->_isVideoResumed;
    if ((*&self->_has & 4) != 0)
    {
      goto LABEL_5;
    }

    goto LABEL_12;
  }

LABEL_11:
  v6 = 0;
  if ((*&self->_has & 4) != 0)
  {
LABEL_5:
    v7 = 2654435761 * self->_isAudioResumed;
    if ((*&self->_has & 0x20) != 0)
    {
      goto LABEL_6;
    }

    goto LABEL_13;
  }

LABEL_12:
  v7 = 0;
  if ((*&self->_has & 0x20) != 0)
  {
LABEL_6:
    v8 = 2654435761 * self->_linkQuality;
    if ((*&self->_has & 8) != 0)
    {
      goto LABEL_7;
    }

LABEL_14:
    v9 = 0;
    if ((*&self->_has & 0x40) != 0)
    {
      goto LABEL_8;
    }

LABEL_15:
    v10 = 0;
    return v4 ^ v3 ^ v5 ^ v6 ^ v7 ^ v8 ^ v9 ^ v10;
  }

LABEL_13:
  v8 = 0;
  if ((*&self->_has & 8) == 0)
  {
    goto LABEL_14;
  }

LABEL_7:
  v9 = 2654435761 * self->_isVideo;
  if ((*&self->_has & 0x40) == 0)
  {
    goto LABEL_15;
  }

LABEL_8:
  v10 = 2654435761 * self->_onLockScreen;
  return v4 ^ v3 ^ v5 ^ v6 ^ v7 ^ v8 ^ v9 ^ v10;
}

- (void)mergeFrom:(id)from
{
  if (*(from + 2))
  {
    [(AWDFaceTimeCallInterruptionEnded *)self setGuid:?];
  }

  v5 = *(from + 48);
  if (v5)
  {
    self->_timestamp = *(from + 1);
    *&self->_has |= 1u;
    v5 = *(from + 48);
    if ((v5 & 2) == 0)
    {
LABEL_5:
      if ((v5 & 0x10) == 0)
      {
        goto LABEL_6;
      }

      goto LABEL_14;
    }
  }

  else if ((*(from + 48) & 2) == 0)
  {
    goto LABEL_5;
  }

  self->_interruptionDuration = *(from + 6);
  *&self->_has |= 2u;
  v5 = *(from + 48);
  if ((v5 & 0x10) == 0)
  {
LABEL_6:
    if ((v5 & 4) == 0)
    {
      goto LABEL_7;
    }

    goto LABEL_15;
  }

LABEL_14:
  self->_isVideoResumed = *(from + 9);
  *&self->_has |= 0x10u;
  v5 = *(from + 48);
  if ((v5 & 4) == 0)
  {
LABEL_7:
    if ((v5 & 0x20) == 0)
    {
      goto LABEL_8;
    }

    goto LABEL_16;
  }

LABEL_15:
  self->_isAudioResumed = *(from + 7);
  *&self->_has |= 4u;
  v5 = *(from + 48);
  if ((v5 & 0x20) == 0)
  {
LABEL_8:
    if ((v5 & 8) == 0)
    {
      goto LABEL_9;
    }

    goto LABEL_17;
  }

LABEL_16:
  self->_linkQuality = *(from + 10);
  *&self->_has |= 0x20u;
  v5 = *(from + 48);
  if ((v5 & 8) == 0)
  {
LABEL_9:
    if ((v5 & 0x40) == 0)
    {
      return;
    }

    goto LABEL_10;
  }

LABEL_17:
  self->_isVideo = *(from + 8);
  *&self->_has |= 8u;
  if ((*(from + 48) & 0x40) == 0)
  {
    return;
  }

LABEL_10:
  self->_onLockScreen = *(from + 11);
  *&self->_has |= 0x40u;
}

@end