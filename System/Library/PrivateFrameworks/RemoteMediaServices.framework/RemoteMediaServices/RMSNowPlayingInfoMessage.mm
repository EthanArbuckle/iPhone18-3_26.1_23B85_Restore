@interface RMSNowPlayingInfoMessage
- (BOOL)isEqual:(id)a3;
- (id)copyWithZone:(_NSZone *)a3;
- (id)description;
- (id)dictionaryRepresentation;
- (unint64_t)hash;
- (void)copyTo:(id)a3;
- (void)mergeFrom:(id)a3;
- (void)setHasCanSkipNext:(BOOL)a3;
- (void)setHasCanSkipPrevious:(BOOL)a3;
- (void)setHasCanWishlist:(BOOL)a3;
- (void)setHasHasChapterData:(BOOL)a3;
- (void)setHasItemID:(BOOL)a3;
- (void)setHasLikeable:(BOOL)a3;
- (void)setHasLikedState:(BOOL)a3;
- (void)setHasMediaKind:(BOOL)a3;
- (void)setHasPlaybackState:(BOOL)a3;
- (void)setHasRevisionNumber:(BOOL)a3;
- (void)setHasScrubbableState:(BOOL)a3;
- (void)setHasTimeRemaining:(BOOL)a3;
- (void)setHasTimestamp:(BOOL)a3;
- (void)setHasTotalDuration:(BOOL)a3;
- (void)writeTo:(id)a3;
@end

@implementation RMSNowPlayingInfoMessage

- (void)setHasItemID:(BOOL)a3
{
  if (a3)
  {
    v3 = 2;
  }

  else
  {
    v3 = 0;
  }

  *&self->_has = *&self->_has & 0xFFFD | v3;
}

- (void)setHasTimestamp:(BOOL)a3
{
  if (a3)
  {
    v3 = 8;
  }

  else
  {
    v3 = 0;
  }

  *&self->_has = *&self->_has & 0xFFF7 | v3;
}

- (void)setHasTimeRemaining:(BOOL)a3
{
  if (a3)
  {
    v3 = 4;
  }

  else
  {
    v3 = 0;
  }

  *&self->_has = *&self->_has & 0xFFFB | v3;
}

- (void)setHasTotalDuration:(BOOL)a3
{
  if (a3)
  {
    v3 = 16;
  }

  else
  {
    v3 = 0;
  }

  *&self->_has = *&self->_has & 0xFFEF | v3;
}

- (void)setHasRevisionNumber:(BOOL)a3
{
  if (a3)
  {
    v3 = 256;
  }

  else
  {
    v3 = 0;
  }

  *&self->_has = *&self->_has & 0xFEFF | v3;
}

- (void)setHasMediaKind:(BOOL)a3
{
  if (a3)
  {
    v3 = 64;
  }

  else
  {
    v3 = 0;
  }

  *&self->_has = *&self->_has & 0xFFBF | v3;
}

- (void)setHasPlaybackState:(BOOL)a3
{
  if (a3)
  {
    v3 = 128;
  }

  else
  {
    v3 = 0;
  }

  *&self->_has = *&self->_has & 0xFF7F | v3;
}

- (void)setHasLikedState:(BOOL)a3
{
  if (a3)
  {
    v3 = 32;
  }

  else
  {
    v3 = 0;
  }

  *&self->_has = *&self->_has & 0xFFDF | v3;
}

- (void)setHasScrubbableState:(BOOL)a3
{
  if (a3)
  {
    v3 = 512;
  }

  else
  {
    v3 = 0;
  }

  *&self->_has = *&self->_has & 0xFDFF | v3;
}

- (void)setHasCanSkipNext:(BOOL)a3
{
  if (a3)
  {
    v3 = 1024;
  }

  else
  {
    v3 = 0;
  }

  *&self->_has = *&self->_has & 0xFBFF | v3;
}

- (void)setHasCanSkipPrevious:(BOOL)a3
{
  if (a3)
  {
    v3 = 2048;
  }

  else
  {
    v3 = 0;
  }

  *&self->_has = *&self->_has & 0xF7FF | v3;
}

- (void)setHasLikeable:(BOOL)a3
{
  if (a3)
  {
    v3 = 0x4000;
  }

  else
  {
    v3 = 0;
  }

  *&self->_has = *&self->_has & 0xBFFF | v3;
}

- (void)setHasCanWishlist:(BOOL)a3
{
  if (a3)
  {
    v3 = 4096;
  }

  else
  {
    v3 = 0;
  }

  *&self->_has = *&self->_has & 0xEFFF | v3;
}

- (void)setHasHasChapterData:(BOOL)a3
{
  if (a3)
  {
    v3 = 0x2000;
  }

  else
  {
    v3 = 0;
  }

  *&self->_has = *&self->_has & 0xDFFF | v3;
}

- (id)description
{
  v3 = MEMORY[0x277CCACA8];
  v8.receiver = self;
  v8.super_class = RMSNowPlayingInfoMessage;
  v4 = [(RMSNowPlayingInfoMessage *)&v8 description];
  v5 = [(RMSNowPlayingInfoMessage *)self dictionaryRepresentation];
  v6 = [v3 stringWithFormat:@"%@ %@", v4, v5];

  return v6;
}

- (id)dictionaryRepresentation
{
  v3 = [MEMORY[0x277CBEB38] dictionary];
  has = self->_has;
  if ((has & 2) != 0)
  {
    v5 = [MEMORY[0x277CCABB0] numberWithUnsignedLongLong:self->_itemID];
    [v3 setObject:v5 forKey:@"itemID"];

    has = self->_has;
  }

  if (has)
  {
    v6 = [MEMORY[0x277CCABB0] numberWithUnsignedLongLong:self->_databaseID];
    [v3 setObject:v6 forKey:@"databaseID"];
  }

  trackName = self->_trackName;
  if (trackName)
  {
    [v3 setObject:trackName forKey:@"trackName"];
  }

  artistName = self->_artistName;
  if (artistName)
  {
    [v3 setObject:artistName forKey:@"artistName"];
  }

  albumName = self->_albumName;
  if (albumName)
  {
    [v3 setObject:albumName forKey:@"albumName"];
  }

  v10 = self->_has;
  if ((v10 & 8) != 0)
  {
    v13 = [MEMORY[0x277CCABB0] numberWithDouble:self->_timestamp];
    [v3 setObject:v13 forKey:@"timestamp"];

    v10 = self->_has;
    if ((v10 & 4) == 0)
    {
LABEL_13:
      if ((v10 & 0x10) == 0)
      {
        goto LABEL_14;
      }

      goto LABEL_30;
    }
  }

  else if ((v10 & 4) == 0)
  {
    goto LABEL_13;
  }

  v14 = [MEMORY[0x277CCABB0] numberWithDouble:self->_timeRemaining];
  [v3 setObject:v14 forKey:@"timeRemaining"];

  v10 = self->_has;
  if ((v10 & 0x10) == 0)
  {
LABEL_14:
    if ((v10 & 0x100) == 0)
    {
      goto LABEL_15;
    }

    goto LABEL_31;
  }

LABEL_30:
  v15 = [MEMORY[0x277CCABB0] numberWithDouble:self->_totalDuration];
  [v3 setObject:v15 forKey:@"totalDuration"];

  v10 = self->_has;
  if ((v10 & 0x100) == 0)
  {
LABEL_15:
    if ((v10 & 0x40) == 0)
    {
      goto LABEL_16;
    }

    goto LABEL_32;
  }

LABEL_31:
  v16 = [MEMORY[0x277CCABB0] numberWithUnsignedInt:self->_revisionNumber];
  [v3 setObject:v16 forKey:@"revisionNumber"];

  v10 = self->_has;
  if ((v10 & 0x40) == 0)
  {
LABEL_16:
    if ((v10 & 0x80) == 0)
    {
      goto LABEL_17;
    }

    goto LABEL_33;
  }

LABEL_32:
  v17 = [MEMORY[0x277CCABB0] numberWithInt:self->_mediaKind];
  [v3 setObject:v17 forKey:@"mediaKind"];

  v10 = self->_has;
  if ((v10 & 0x80) == 0)
  {
LABEL_17:
    if ((v10 & 0x20) == 0)
    {
      goto LABEL_18;
    }

    goto LABEL_34;
  }

LABEL_33:
  v18 = [MEMORY[0x277CCABB0] numberWithInt:self->_playbackState];
  [v3 setObject:v18 forKey:@"playbackState"];

  v10 = self->_has;
  if ((v10 & 0x20) == 0)
  {
LABEL_18:
    if ((v10 & 0x200) == 0)
    {
      goto LABEL_19;
    }

    goto LABEL_35;
  }

LABEL_34:
  v19 = [MEMORY[0x277CCABB0] numberWithInt:self->_likedState];
  [v3 setObject:v19 forKey:@"likedState"];

  v10 = self->_has;
  if ((v10 & 0x200) == 0)
  {
LABEL_19:
    if ((v10 & 0x400) == 0)
    {
      goto LABEL_20;
    }

    goto LABEL_36;
  }

LABEL_35:
  v20 = [MEMORY[0x277CCABB0] numberWithInt:self->_scrubbableState];
  [v3 setObject:v20 forKey:@"scrubbableState"];

  v10 = self->_has;
  if ((v10 & 0x400) == 0)
  {
LABEL_20:
    if ((v10 & 0x800) == 0)
    {
      goto LABEL_21;
    }

    goto LABEL_37;
  }

LABEL_36:
  v21 = [MEMORY[0x277CCABB0] numberWithBool:self->_canSkipNext];
  [v3 setObject:v21 forKey:@"canSkipNext"];

  v10 = self->_has;
  if ((v10 & 0x800) == 0)
  {
LABEL_21:
    if ((v10 & 0x4000) == 0)
    {
      goto LABEL_22;
    }

    goto LABEL_38;
  }

LABEL_37:
  v22 = [MEMORY[0x277CCABB0] numberWithBool:self->_canSkipPrevious];
  [v3 setObject:v22 forKey:@"canSkipPrevious"];

  v10 = self->_has;
  if ((v10 & 0x4000) == 0)
  {
LABEL_22:
    if ((v10 & 0x1000) == 0)
    {
      goto LABEL_23;
    }

    goto LABEL_39;
  }

LABEL_38:
  v23 = [MEMORY[0x277CCABB0] numberWithBool:self->_likeable];
  [v3 setObject:v23 forKey:@"likeable"];

  v10 = self->_has;
  if ((v10 & 0x1000) == 0)
  {
LABEL_23:
    if ((v10 & 0x2000) == 0)
    {
      goto LABEL_25;
    }

    goto LABEL_24;
  }

LABEL_39:
  v24 = [MEMORY[0x277CCABB0] numberWithBool:self->_canWishlist];
  [v3 setObject:v24 forKey:@"canWishlist"];

  if ((*&self->_has & 0x2000) != 0)
  {
LABEL_24:
    v11 = [MEMORY[0x277CCABB0] numberWithBool:self->_hasChapterData];
    [v3 setObject:v11 forKey:@"hasChapterData"];
  }

LABEL_25:

  return v3;
}

- (void)writeTo:(id)a3
{
  v6 = a3;
  has = self->_has;
  if ((has & 2) != 0)
  {
    PBDataWriterWriteUint64Field();
    has = self->_has;
  }

  if (has)
  {
    PBDataWriterWriteUint64Field();
  }

  if (self->_trackName)
  {
    PBDataWriterWriteStringField();
  }

  if (self->_artistName)
  {
    PBDataWriterWriteStringField();
  }

  if (self->_albumName)
  {
    PBDataWriterWriteStringField();
  }

  v5 = self->_has;
  if ((v5 & 8) != 0)
  {
    PBDataWriterWriteDoubleField();
    v5 = self->_has;
    if ((v5 & 4) == 0)
    {
LABEL_13:
      if ((v5 & 0x10) == 0)
      {
        goto LABEL_14;
      }

      goto LABEL_30;
    }
  }

  else if ((v5 & 4) == 0)
  {
    goto LABEL_13;
  }

  PBDataWriterWriteDoubleField();
  v5 = self->_has;
  if ((v5 & 0x10) == 0)
  {
LABEL_14:
    if ((v5 & 0x100) == 0)
    {
      goto LABEL_15;
    }

    goto LABEL_31;
  }

LABEL_30:
  PBDataWriterWriteDoubleField();
  v5 = self->_has;
  if ((v5 & 0x100) == 0)
  {
LABEL_15:
    if ((v5 & 0x40) == 0)
    {
      goto LABEL_16;
    }

    goto LABEL_32;
  }

LABEL_31:
  PBDataWriterWriteUint32Field();
  v5 = self->_has;
  if ((v5 & 0x40) == 0)
  {
LABEL_16:
    if ((v5 & 0x80) == 0)
    {
      goto LABEL_17;
    }

    goto LABEL_33;
  }

LABEL_32:
  PBDataWriterWriteInt32Field();
  v5 = self->_has;
  if ((v5 & 0x80) == 0)
  {
LABEL_17:
    if ((v5 & 0x20) == 0)
    {
      goto LABEL_18;
    }

    goto LABEL_34;
  }

LABEL_33:
  PBDataWriterWriteInt32Field();
  v5 = self->_has;
  if ((v5 & 0x20) == 0)
  {
LABEL_18:
    if ((v5 & 0x200) == 0)
    {
      goto LABEL_19;
    }

    goto LABEL_35;
  }

LABEL_34:
  PBDataWriterWriteInt32Field();
  v5 = self->_has;
  if ((v5 & 0x200) == 0)
  {
LABEL_19:
    if ((v5 & 0x400) == 0)
    {
      goto LABEL_20;
    }

    goto LABEL_36;
  }

LABEL_35:
  PBDataWriterWriteInt32Field();
  v5 = self->_has;
  if ((v5 & 0x400) == 0)
  {
LABEL_20:
    if ((v5 & 0x800) == 0)
    {
      goto LABEL_21;
    }

    goto LABEL_37;
  }

LABEL_36:
  PBDataWriterWriteBOOLField();
  v5 = self->_has;
  if ((v5 & 0x800) == 0)
  {
LABEL_21:
    if ((v5 & 0x4000) == 0)
    {
      goto LABEL_22;
    }

    goto LABEL_38;
  }

LABEL_37:
  PBDataWriterWriteBOOLField();
  v5 = self->_has;
  if ((v5 & 0x4000) == 0)
  {
LABEL_22:
    if ((v5 & 0x1000) == 0)
    {
      goto LABEL_23;
    }

    goto LABEL_39;
  }

LABEL_38:
  PBDataWriterWriteBOOLField();
  v5 = self->_has;
  if ((v5 & 0x1000) == 0)
  {
LABEL_23:
    if ((v5 & 0x2000) == 0)
    {
      goto LABEL_25;
    }

    goto LABEL_24;
  }

LABEL_39:
  PBDataWriterWriteBOOLField();
  if ((*&self->_has & 0x2000) != 0)
  {
LABEL_24:
    PBDataWriterWriteBOOLField();
  }

LABEL_25:
}

- (void)copyTo:(id)a3
{
  v4 = a3;
  has = self->_has;
  if ((has & 2) != 0)
  {
    v4[2] = self->_itemID;
    *(v4 + 52) |= 2u;
    has = self->_has;
  }

  if (has)
  {
    v4[1] = self->_databaseID;
    *(v4 + 52) |= 1u;
  }

  v7 = v4;
  if (self->_trackName)
  {
    [v4 setTrackName:?];
    v4 = v7;
  }

  if (self->_artistName)
  {
    [v7 setArtistName:?];
    v4 = v7;
  }

  if (self->_albumName)
  {
    [v7 setAlbumName:?];
    v4 = v7;
  }

  v6 = self->_has;
  if ((v6 & 8) != 0)
  {
    v4[4] = *&self->_timestamp;
    *(v4 + 52) |= 8u;
    v6 = self->_has;
    if ((v6 & 4) == 0)
    {
LABEL_13:
      if ((v6 & 0x10) == 0)
      {
        goto LABEL_14;
      }

      goto LABEL_30;
    }
  }

  else if ((v6 & 4) == 0)
  {
    goto LABEL_13;
  }

  v4[3] = *&self->_timeRemaining;
  *(v4 + 52) |= 4u;
  v6 = self->_has;
  if ((v6 & 0x10) == 0)
  {
LABEL_14:
    if ((v6 & 0x100) == 0)
    {
      goto LABEL_15;
    }

    goto LABEL_31;
  }

LABEL_30:
  v4[5] = *&self->_totalDuration;
  *(v4 + 52) |= 0x10u;
  v6 = self->_has;
  if ((v6 & 0x100) == 0)
  {
LABEL_15:
    if ((v6 & 0x40) == 0)
    {
      goto LABEL_16;
    }

    goto LABEL_32;
  }

LABEL_31:
  *(v4 + 19) = self->_revisionNumber;
  *(v4 + 52) |= 0x100u;
  v6 = self->_has;
  if ((v6 & 0x40) == 0)
  {
LABEL_16:
    if ((v6 & 0x80) == 0)
    {
      goto LABEL_17;
    }

    goto LABEL_33;
  }

LABEL_32:
  *(v4 + 17) = self->_mediaKind;
  *(v4 + 52) |= 0x40u;
  v6 = self->_has;
  if ((v6 & 0x80) == 0)
  {
LABEL_17:
    if ((v6 & 0x20) == 0)
    {
      goto LABEL_18;
    }

    goto LABEL_34;
  }

LABEL_33:
  *(v4 + 18) = self->_playbackState;
  *(v4 + 52) |= 0x80u;
  v6 = self->_has;
  if ((v6 & 0x20) == 0)
  {
LABEL_18:
    if ((v6 & 0x200) == 0)
    {
      goto LABEL_19;
    }

    goto LABEL_35;
  }

LABEL_34:
  *(v4 + 16) = self->_likedState;
  *(v4 + 52) |= 0x20u;
  v6 = self->_has;
  if ((v6 & 0x200) == 0)
  {
LABEL_19:
    if ((v6 & 0x400) == 0)
    {
      goto LABEL_20;
    }

    goto LABEL_36;
  }

LABEL_35:
  *(v4 + 20) = self->_scrubbableState;
  *(v4 + 52) |= 0x200u;
  v6 = self->_has;
  if ((v6 & 0x400) == 0)
  {
LABEL_20:
    if ((v6 & 0x800) == 0)
    {
      goto LABEL_21;
    }

    goto LABEL_37;
  }

LABEL_36:
  *(v4 + 96) = self->_canSkipNext;
  *(v4 + 52) |= 0x400u;
  v6 = self->_has;
  if ((v6 & 0x800) == 0)
  {
LABEL_21:
    if ((v6 & 0x4000) == 0)
    {
      goto LABEL_22;
    }

    goto LABEL_38;
  }

LABEL_37:
  *(v4 + 97) = self->_canSkipPrevious;
  *(v4 + 52) |= 0x800u;
  v6 = self->_has;
  if ((v6 & 0x4000) == 0)
  {
LABEL_22:
    if ((v6 & 0x1000) == 0)
    {
      goto LABEL_23;
    }

    goto LABEL_39;
  }

LABEL_38:
  *(v4 + 100) = self->_likeable;
  *(v4 + 52) |= 0x4000u;
  v6 = self->_has;
  if ((v6 & 0x1000) == 0)
  {
LABEL_23:
    if ((v6 & 0x2000) == 0)
    {
      goto LABEL_25;
    }

    goto LABEL_24;
  }

LABEL_39:
  *(v4 + 98) = self->_canWishlist;
  *(v4 + 52) |= 0x1000u;
  if ((*&self->_has & 0x2000) != 0)
  {
LABEL_24:
    *(v4 + 99) = self->_hasChapterData;
    *(v4 + 52) |= 0x2000u;
  }

LABEL_25:
}

- (id)copyWithZone:(_NSZone *)a3
{
  v5 = [objc_msgSend(objc_opt_class() allocWithZone:{a3), "init"}];
  v6 = v5;
  has = self->_has;
  if ((has & 2) != 0)
  {
    *(v5 + 16) = self->_itemID;
    *(v5 + 104) |= 2u;
    has = self->_has;
  }

  if (has)
  {
    *(v5 + 8) = self->_databaseID;
    *(v5 + 104) |= 1u;
  }

  v8 = [(NSString *)self->_trackName copyWithZone:a3];
  v9 = *(v6 + 88);
  *(v6 + 88) = v8;

  v10 = [(NSString *)self->_artistName copyWithZone:a3];
  v11 = *(v6 + 56);
  *(v6 + 56) = v10;

  v12 = [(NSString *)self->_albumName copyWithZone:a3];
  v13 = *(v6 + 48);
  *(v6 + 48) = v12;

  v14 = self->_has;
  if ((v14 & 8) != 0)
  {
    *(v6 + 32) = self->_timestamp;
    *(v6 + 104) |= 8u;
    v14 = self->_has;
    if ((v14 & 4) == 0)
    {
LABEL_7:
      if ((v14 & 0x10) == 0)
      {
        goto LABEL_8;
      }

      goto LABEL_22;
    }
  }

  else if ((v14 & 4) == 0)
  {
    goto LABEL_7;
  }

  *(v6 + 24) = self->_timeRemaining;
  *(v6 + 104) |= 4u;
  v14 = self->_has;
  if ((v14 & 0x10) == 0)
  {
LABEL_8:
    if ((v14 & 0x100) == 0)
    {
      goto LABEL_9;
    }

    goto LABEL_23;
  }

LABEL_22:
  *(v6 + 40) = self->_totalDuration;
  *(v6 + 104) |= 0x10u;
  v14 = self->_has;
  if ((v14 & 0x100) == 0)
  {
LABEL_9:
    if ((v14 & 0x40) == 0)
    {
      goto LABEL_10;
    }

    goto LABEL_24;
  }

LABEL_23:
  *(v6 + 76) = self->_revisionNumber;
  *(v6 + 104) |= 0x100u;
  v14 = self->_has;
  if ((v14 & 0x40) == 0)
  {
LABEL_10:
    if ((v14 & 0x80) == 0)
    {
      goto LABEL_11;
    }

    goto LABEL_25;
  }

LABEL_24:
  *(v6 + 68) = self->_mediaKind;
  *(v6 + 104) |= 0x40u;
  v14 = self->_has;
  if ((v14 & 0x80) == 0)
  {
LABEL_11:
    if ((v14 & 0x20) == 0)
    {
      goto LABEL_12;
    }

    goto LABEL_26;
  }

LABEL_25:
  *(v6 + 72) = self->_playbackState;
  *(v6 + 104) |= 0x80u;
  v14 = self->_has;
  if ((v14 & 0x20) == 0)
  {
LABEL_12:
    if ((v14 & 0x200) == 0)
    {
      goto LABEL_13;
    }

    goto LABEL_27;
  }

LABEL_26:
  *(v6 + 64) = self->_likedState;
  *(v6 + 104) |= 0x20u;
  v14 = self->_has;
  if ((v14 & 0x200) == 0)
  {
LABEL_13:
    if ((v14 & 0x400) == 0)
    {
      goto LABEL_14;
    }

    goto LABEL_28;
  }

LABEL_27:
  *(v6 + 80) = self->_scrubbableState;
  *(v6 + 104) |= 0x200u;
  v14 = self->_has;
  if ((v14 & 0x400) == 0)
  {
LABEL_14:
    if ((v14 & 0x800) == 0)
    {
      goto LABEL_15;
    }

    goto LABEL_29;
  }

LABEL_28:
  *(v6 + 96) = self->_canSkipNext;
  *(v6 + 104) |= 0x400u;
  v14 = self->_has;
  if ((v14 & 0x800) == 0)
  {
LABEL_15:
    if ((v14 & 0x4000) == 0)
    {
      goto LABEL_16;
    }

    goto LABEL_30;
  }

LABEL_29:
  *(v6 + 97) = self->_canSkipPrevious;
  *(v6 + 104) |= 0x800u;
  v14 = self->_has;
  if ((v14 & 0x4000) == 0)
  {
LABEL_16:
    if ((v14 & 0x1000) == 0)
    {
      goto LABEL_17;
    }

LABEL_31:
    *(v6 + 98) = self->_canWishlist;
    *(v6 + 104) |= 0x1000u;
    if ((*&self->_has & 0x2000) == 0)
    {
      return v6;
    }

    goto LABEL_18;
  }

LABEL_30:
  *(v6 + 100) = self->_likeable;
  *(v6 + 104) |= 0x4000u;
  v14 = self->_has;
  if ((v14 & 0x1000) != 0)
  {
    goto LABEL_31;
  }

LABEL_17:
  if ((v14 & 0x2000) != 0)
  {
LABEL_18:
    *(v6 + 99) = self->_hasChapterData;
    *(v6 + 104) |= 0x2000u;
  }

  return v6;
}

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  if (![v4 isMemberOfClass:objc_opt_class()])
  {
    goto LABEL_97;
  }

  has = self->_has;
  v6 = *(v4 + 52);
  if ((has & 2) != 0)
  {
    if ((v6 & 2) == 0 || self->_itemID != *(v4 + 2))
    {
      goto LABEL_97;
    }
  }

  else if ((v6 & 2) != 0)
  {
    goto LABEL_97;
  }

  if (has)
  {
    if ((v6 & 1) == 0 || self->_databaseID != *(v4 + 1))
    {
      goto LABEL_97;
    }
  }

  else if (v6)
  {
    goto LABEL_97;
  }

  trackName = self->_trackName;
  if (trackName | *(v4 + 11) && ![(NSString *)trackName isEqual:?])
  {
    goto LABEL_97;
  }

  artistName = self->_artistName;
  if (artistName | *(v4 + 7))
  {
    if (![(NSString *)artistName isEqual:?])
    {
      goto LABEL_97;
    }
  }

  albumName = self->_albumName;
  if (albumName | *(v4 + 6))
  {
    if (![(NSString *)albumName isEqual:?])
    {
      goto LABEL_97;
    }
  }

  v10 = self->_has;
  v11 = *(v4 + 52);
  if ((v10 & 8) != 0)
  {
    if ((v11 & 8) == 0 || self->_timestamp != *(v4 + 4))
    {
      goto LABEL_97;
    }
  }

  else if ((v11 & 8) != 0)
  {
    goto LABEL_97;
  }

  if ((v10 & 4) != 0)
  {
    if ((v11 & 4) == 0 || self->_timeRemaining != *(v4 + 3))
    {
      goto LABEL_97;
    }
  }

  else if ((v11 & 4) != 0)
  {
    goto LABEL_97;
  }

  if ((v10 & 0x10) != 0)
  {
    if ((v11 & 0x10) == 0 || self->_totalDuration != *(v4 + 5))
    {
      goto LABEL_97;
    }
  }

  else if ((v11 & 0x10) != 0)
  {
    goto LABEL_97;
  }

  if ((*&self->_has & 0x100) != 0)
  {
    if ((*(v4 + 52) & 0x100) == 0 || self->_revisionNumber != *(v4 + 19))
    {
      goto LABEL_97;
    }
  }

  else if ((*(v4 + 52) & 0x100) != 0)
  {
    goto LABEL_97;
  }

  if ((v10 & 0x40) != 0)
  {
    if ((v11 & 0x40) == 0 || self->_mediaKind != *(v4 + 17))
    {
      goto LABEL_97;
    }
  }

  else if ((v11 & 0x40) != 0)
  {
    goto LABEL_97;
  }

  if ((v10 & 0x80) != 0)
  {
    if ((v11 & 0x80) == 0 || self->_playbackState != *(v4 + 18))
    {
      goto LABEL_97;
    }
  }

  else if ((v11 & 0x80) != 0)
  {
    goto LABEL_97;
  }

  if ((v10 & 0x20) != 0)
  {
    if ((v11 & 0x20) == 0 || self->_likedState != *(v4 + 16))
    {
      goto LABEL_97;
    }
  }

  else if ((v11 & 0x20) != 0)
  {
    goto LABEL_97;
  }

  if ((*&self->_has & 0x200) != 0)
  {
    if ((*(v4 + 52) & 0x200) == 0 || self->_scrubbableState != *(v4 + 20))
    {
      goto LABEL_97;
    }
  }

  else if ((*(v4 + 52) & 0x200) != 0)
  {
    goto LABEL_97;
  }

  if ((*&self->_has & 0x400) != 0)
  {
    if ((*(v4 + 52) & 0x400) == 0)
    {
      goto LABEL_97;
    }

    if (self->_canSkipNext)
    {
      if ((*(v4 + 96) & 1) == 0)
      {
        goto LABEL_97;
      }
    }

    else if (*(v4 + 96))
    {
      goto LABEL_97;
    }
  }

  else if ((*(v4 + 52) & 0x400) != 0)
  {
    goto LABEL_97;
  }

  if ((*&self->_has & 0x800) != 0)
  {
    if ((*(v4 + 52) & 0x800) == 0)
    {
      goto LABEL_97;
    }

    if (self->_canSkipPrevious)
    {
      if ((*(v4 + 97) & 1) == 0)
      {
        goto LABEL_97;
      }
    }

    else if (*(v4 + 97))
    {
      goto LABEL_97;
    }
  }

  else if ((*(v4 + 52) & 0x800) != 0)
  {
    goto LABEL_97;
  }

  if ((*&self->_has & 0x4000) != 0)
  {
    if ((*(v4 + 52) & 0x4000) == 0)
    {
      goto LABEL_97;
    }

    if (self->_likeable)
    {
      if ((*(v4 + 100) & 1) == 0)
      {
        goto LABEL_97;
      }
    }

    else if (*(v4 + 100))
    {
      goto LABEL_97;
    }
  }

  else if ((*(v4 + 52) & 0x4000) != 0)
  {
    goto LABEL_97;
  }

  if ((*&self->_has & 0x1000) != 0)
  {
    if ((*(v4 + 52) & 0x1000) == 0)
    {
      goto LABEL_97;
    }

    if (self->_canWishlist)
    {
      if ((*(v4 + 98) & 1) == 0)
      {
        goto LABEL_97;
      }
    }

    else if (*(v4 + 98))
    {
      goto LABEL_97;
    }
  }

  else if ((*(v4 + 52) & 0x1000) != 0)
  {
    goto LABEL_97;
  }

  if ((*&self->_has & 0x2000) != 0)
  {
    if ((*(v4 + 52) & 0x2000) != 0)
    {
      if (self->_hasChapterData)
      {
        if (*(v4 + 99))
        {
          goto LABEL_99;
        }
      }

      else if (!*(v4 + 99))
      {
LABEL_99:
        v12 = 1;
        goto LABEL_98;
      }
    }

LABEL_97:
    v12 = 0;
    goto LABEL_98;
  }

  v12 = (v11 & 0x2000) == 0;
LABEL_98:

  return v12;
}

- (unint64_t)hash
{
  has = self->_has;
  if ((has & 2) != 0)
  {
    v4 = 2654435761u * self->_itemID;
    if (has)
    {
      goto LABEL_3;
    }
  }

  else
  {
    v4 = 0;
    if (has)
    {
LABEL_3:
      v5 = 2654435761u * self->_databaseID;
      goto LABEL_6;
    }
  }

  v5 = 0;
LABEL_6:
  v6 = [(NSString *)self->_trackName hash];
  v7 = [(NSString *)self->_artistName hash];
  v8 = [(NSString *)self->_albumName hash];
  v11 = self->_has;
  if ((v11 & 8) != 0)
  {
    timestamp = self->_timestamp;
    if (timestamp < 0.0)
    {
      timestamp = -timestamp;
    }

    *v9.i64 = floor(timestamp + 0.5);
    v14 = (timestamp - *v9.i64) * 1.84467441e19;
    *v10.i64 = *v9.i64 - trunc(*v9.i64 * 5.42101086e-20) * 1.84467441e19;
    v15.f64[0] = NAN;
    v15.f64[1] = NAN;
    v9 = vbslq_s8(vnegq_f64(v15), v10, v9);
    v12 = 2654435761u * *v9.i64;
    if (v14 >= 0.0)
    {
      if (v14 > 0.0)
      {
        v12 += v14;
      }
    }

    else
    {
      v12 -= fabs(v14);
    }
  }

  else
  {
    v12 = 0;
  }

  if ((v11 & 4) != 0)
  {
    timeRemaining = self->_timeRemaining;
    if (timeRemaining < 0.0)
    {
      timeRemaining = -timeRemaining;
    }

    *v9.i64 = floor(timeRemaining + 0.5);
    v18 = (timeRemaining - *v9.i64) * 1.84467441e19;
    *v10.i64 = *v9.i64 - trunc(*v9.i64 * 5.42101086e-20) * 1.84467441e19;
    v19.f64[0] = NAN;
    v19.f64[1] = NAN;
    v9 = vbslq_s8(vnegq_f64(v19), v10, v9);
    v16 = 2654435761u * *v9.i64;
    if (v18 >= 0.0)
    {
      if (v18 > 0.0)
      {
        v16 += v18;
      }
    }

    else
    {
      v16 -= fabs(v18);
    }
  }

  else
  {
    v16 = 0;
  }

  if ((v11 & 0x10) != 0)
  {
    totalDuration = self->_totalDuration;
    if (totalDuration < 0.0)
    {
      totalDuration = -totalDuration;
    }

    *v9.i64 = floor(totalDuration + 0.5);
    v22 = (totalDuration - *v9.i64) * 1.84467441e19;
    *v10.i64 = *v9.i64 - trunc(*v9.i64 * 5.42101086e-20) * 1.84467441e19;
    v23.f64[0] = NAN;
    v23.f64[1] = NAN;
    v20 = 2654435761u * *vbslq_s8(vnegq_f64(v23), v10, v9).i64;
    if (v22 >= 0.0)
    {
      if (v22 > 0.0)
      {
        v20 += v22;
      }
    }

    else
    {
      v20 -= fabs(v22);
    }
  }

  else
  {
    v20 = 0;
  }

  if ((*&self->_has & 0x100) != 0)
  {
    v24 = 2654435761 * self->_revisionNumber;
    if ((v11 & 0x40) != 0)
    {
LABEL_32:
      v25 = 2654435761 * self->_mediaKind;
      if ((v11 & 0x80) != 0)
      {
        goto LABEL_33;
      }

      goto LABEL_43;
    }
  }

  else
  {
    v24 = 0;
    if ((v11 & 0x40) != 0)
    {
      goto LABEL_32;
    }
  }

  v25 = 0;
  if ((v11 & 0x80) != 0)
  {
LABEL_33:
    v26 = 2654435761 * self->_playbackState;
    if ((v11 & 0x20) != 0)
    {
      goto LABEL_34;
    }

    goto LABEL_44;
  }

LABEL_43:
  v26 = 0;
  if ((v11 & 0x20) != 0)
  {
LABEL_34:
    v27 = 2654435761 * self->_likedState;
    if ((*&self->_has & 0x200) != 0)
    {
      goto LABEL_35;
    }

    goto LABEL_45;
  }

LABEL_44:
  v27 = 0;
  if ((*&self->_has & 0x200) != 0)
  {
LABEL_35:
    v28 = 2654435761 * self->_scrubbableState;
    if ((*&self->_has & 0x400) != 0)
    {
      goto LABEL_36;
    }

    goto LABEL_46;
  }

LABEL_45:
  v28 = 0;
  if ((*&self->_has & 0x400) != 0)
  {
LABEL_36:
    v29 = 2654435761 * self->_canSkipNext;
    if ((*&self->_has & 0x800) != 0)
    {
      goto LABEL_37;
    }

    goto LABEL_47;
  }

LABEL_46:
  v29 = 0;
  if ((*&self->_has & 0x800) != 0)
  {
LABEL_37:
    v30 = 2654435761 * self->_canSkipPrevious;
    if ((*&self->_has & 0x4000) != 0)
    {
      goto LABEL_38;
    }

    goto LABEL_48;
  }

LABEL_47:
  v30 = 0;
  if ((*&self->_has & 0x4000) != 0)
  {
LABEL_38:
    v31 = 2654435761 * self->_likeable;
    if ((*&self->_has & 0x1000) != 0)
    {
      goto LABEL_39;
    }

LABEL_49:
    v32 = 0;
    if ((*&self->_has & 0x2000) != 0)
    {
      goto LABEL_40;
    }

LABEL_50:
    v33 = 0;
    return v5 ^ v4 ^ v6 ^ v7 ^ v8 ^ v12 ^ v16 ^ v20 ^ v24 ^ v25 ^ v26 ^ v27 ^ v28 ^ v29 ^ v30 ^ v31 ^ v32 ^ v33;
  }

LABEL_48:
  v31 = 0;
  if ((*&self->_has & 0x1000) == 0)
  {
    goto LABEL_49;
  }

LABEL_39:
  v32 = 2654435761 * self->_canWishlist;
  if ((*&self->_has & 0x2000) == 0)
  {
    goto LABEL_50;
  }

LABEL_40:
  v33 = 2654435761 * self->_hasChapterData;
  return v5 ^ v4 ^ v6 ^ v7 ^ v8 ^ v12 ^ v16 ^ v20 ^ v24 ^ v25 ^ v26 ^ v27 ^ v28 ^ v29 ^ v30 ^ v31 ^ v32 ^ v33;
}

- (void)mergeFrom:(id)a3
{
  v4 = a3;
  v5 = *(v4 + 52);
  if ((v5 & 2) != 0)
  {
    self->_itemID = *(v4 + 2);
    *&self->_has |= 2u;
    v5 = *(v4 + 52);
  }

  if (v5)
  {
    self->_databaseID = *(v4 + 1);
    *&self->_has |= 1u;
  }

  v7 = v4;
  if (*(v4 + 11))
  {
    [(RMSNowPlayingInfoMessage *)self setTrackName:?];
    v4 = v7;
  }

  if (*(v4 + 7))
  {
    [(RMSNowPlayingInfoMessage *)self setArtistName:?];
    v4 = v7;
  }

  if (*(v4 + 6))
  {
    [(RMSNowPlayingInfoMessage *)self setAlbumName:?];
    v4 = v7;
  }

  v6 = *(v4 + 52);
  if ((v6 & 8) != 0)
  {
    self->_timestamp = *(v4 + 4);
    *&self->_has |= 8u;
    v6 = *(v4 + 52);
    if ((v6 & 4) == 0)
    {
LABEL_13:
      if ((v6 & 0x10) == 0)
      {
        goto LABEL_14;
      }

      goto LABEL_30;
    }
  }

  else if ((v6 & 4) == 0)
  {
    goto LABEL_13;
  }

  self->_timeRemaining = *(v4 + 3);
  *&self->_has |= 4u;
  v6 = *(v4 + 52);
  if ((v6 & 0x10) == 0)
  {
LABEL_14:
    if ((v6 & 0x100) == 0)
    {
      goto LABEL_15;
    }

    goto LABEL_31;
  }

LABEL_30:
  self->_totalDuration = *(v4 + 5);
  *&self->_has |= 0x10u;
  v6 = *(v4 + 52);
  if ((v6 & 0x100) == 0)
  {
LABEL_15:
    if ((v6 & 0x40) == 0)
    {
      goto LABEL_16;
    }

    goto LABEL_32;
  }

LABEL_31:
  self->_revisionNumber = *(v4 + 19);
  *&self->_has |= 0x100u;
  v6 = *(v4 + 52);
  if ((v6 & 0x40) == 0)
  {
LABEL_16:
    if ((v6 & 0x80) == 0)
    {
      goto LABEL_17;
    }

    goto LABEL_33;
  }

LABEL_32:
  self->_mediaKind = *(v4 + 17);
  *&self->_has |= 0x40u;
  v6 = *(v4 + 52);
  if ((v6 & 0x80) == 0)
  {
LABEL_17:
    if ((v6 & 0x20) == 0)
    {
      goto LABEL_18;
    }

    goto LABEL_34;
  }

LABEL_33:
  self->_playbackState = *(v4 + 18);
  *&self->_has |= 0x80u;
  v6 = *(v4 + 52);
  if ((v6 & 0x20) == 0)
  {
LABEL_18:
    if ((v6 & 0x200) == 0)
    {
      goto LABEL_19;
    }

    goto LABEL_35;
  }

LABEL_34:
  self->_likedState = *(v4 + 16);
  *&self->_has |= 0x20u;
  v6 = *(v4 + 52);
  if ((v6 & 0x200) == 0)
  {
LABEL_19:
    if ((v6 & 0x400) == 0)
    {
      goto LABEL_20;
    }

    goto LABEL_36;
  }

LABEL_35:
  self->_scrubbableState = *(v4 + 20);
  *&self->_has |= 0x200u;
  v6 = *(v4 + 52);
  if ((v6 & 0x400) == 0)
  {
LABEL_20:
    if ((v6 & 0x800) == 0)
    {
      goto LABEL_21;
    }

    goto LABEL_37;
  }

LABEL_36:
  self->_canSkipNext = *(v4 + 96);
  *&self->_has |= 0x400u;
  v6 = *(v4 + 52);
  if ((v6 & 0x800) == 0)
  {
LABEL_21:
    if ((v6 & 0x4000) == 0)
    {
      goto LABEL_22;
    }

    goto LABEL_38;
  }

LABEL_37:
  self->_canSkipPrevious = *(v4 + 97);
  *&self->_has |= 0x800u;
  v6 = *(v4 + 52);
  if ((v6 & 0x4000) == 0)
  {
LABEL_22:
    if ((v6 & 0x1000) == 0)
    {
      goto LABEL_23;
    }

    goto LABEL_39;
  }

LABEL_38:
  self->_likeable = *(v4 + 100);
  *&self->_has |= 0x4000u;
  v6 = *(v4 + 52);
  if ((v6 & 0x1000) == 0)
  {
LABEL_23:
    if ((v6 & 0x2000) == 0)
    {
      goto LABEL_25;
    }

    goto LABEL_24;
  }

LABEL_39:
  self->_canWishlist = *(v4 + 98);
  *&self->_has |= 0x1000u;
  if ((*(v4 + 52) & 0x2000) != 0)
  {
LABEL_24:
    self->_hasChapterData = *(v4 + 99);
    *&self->_has |= 0x2000u;
  }

LABEL_25:
}

@end