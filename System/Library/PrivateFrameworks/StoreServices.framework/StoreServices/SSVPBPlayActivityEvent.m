@interface SSVPBPlayActivityEvent
- (BOOL)isEqual:(id)a3;
- (id)containerTypeAsString:(int)a3;
- (id)copyWithZone:(_NSZone *)a3;
- (id)description;
- (id)dictionaryRepresentation;
- (id)displayTypeAsString:(int)a3;
- (id)endReasonTypeAsString:(int)a3;
- (id)eventTypeAsString:(int)a3;
- (id)itemTypeAsString:(int)a3;
- (id)mediaTypeAsString:(int)a3;
- (id)reasonHintTypeAsString:(int)a3;
- (id)sourceTypeAsString:(int)a3;
- (id)systemReleaseTypeAsString:(int)a3;
- (int)StringAsContainerType:(id)a3;
- (int)StringAsDisplayType:(id)a3;
- (int)StringAsEndReasonType:(id)a3;
- (int)StringAsEventType:(id)a3;
- (int)StringAsItemType:(id)a3;
- (int)StringAsMediaType:(id)a3;
- (int)StringAsReasonHintType:(id)a3;
- (int)StringAsSourceType:(id)a3;
- (int)StringAsSystemReleaseType:(id)a3;
- (int)containerType;
- (int)displayType;
- (int)endReasonType;
- (int)eventType;
- (int)itemType;
- (int)mediaType;
- (int)reasonHintType;
- (int)sourceType;
- (int)systemReleaseType;
- (unint64_t)hash;
- (void)copyTo:(id)a3;
- (void)mergeFrom:(id)a3;
- (void)setHasCloudPlaylistID:(BOOL)a3;
- (void)setHasContainerAdamID:(BOOL)a3;
- (void)setHasContainerType:(BOOL)a3;
- (void)setHasDisplayType:(BOOL)a3;
- (void)setHasEndReasonType:(BOOL)a3;
- (void)setHasEquivalencySourceAdamID:(BOOL)a3;
- (void)setHasEventDateTimestamp:(BOOL)a3;
- (void)setHasEventSecondsFromGMT:(BOOL)a3;
- (void)setHasEventType:(BOOL)a3;
- (void)setHasInternalBuild:(BOOL)a3;
- (void)setHasItemCloudID:(BOOL)a3;
- (void)setHasItemDuration:(BOOL)a3;
- (void)setHasItemEndTime:(BOOL)a3;
- (void)setHasItemStartTime:(BOOL)a3;
- (void)setHasItemType:(BOOL)a3;
- (void)setHasMediaType:(BOOL)a3;
- (void)setHasOffline:(BOOL)a3;
- (void)setHasPersistentID:(BOOL)a3;
- (void)setHasPrivateListeningEnabled:(BOOL)a3;
- (void)setHasPurchasedAdamID:(BOOL)a3;
- (void)setHasRadioAdamID:(BOOL)a3;
- (void)setHasReasonHintType:(BOOL)a3;
- (void)setHasSBEnabled:(BOOL)a3;
- (void)setHasSiriInitiated:(BOOL)a3;
- (void)setHasSourceType:(BOOL)a3;
- (void)setHasStationID:(BOOL)a3;
- (void)setHasStoreAccountID:(BOOL)a3;
- (void)setHasSubscriptionAdamID:(BOOL)a3;
- (void)setHasSystemReleaseType:(BOOL)a3;
- (void)setHasTvShowPurchasedAdamID:(BOOL)a3;
- (void)setHasTvShowSubscriptionAdamID:(BOOL)a3;
- (void)writeTo:(id)a3;
@end

@implementation SSVPBPlayActivityEvent

- (int)eventType
{
  if ((*(&self->_has + 2) & 0x20) != 0)
  {
    return self->_eventType;
  }

  else
  {
    return 1;
  }
}

- (void)setHasEventType:(BOOL)a3
{
  if (a3)
  {
    v3 = 0x200000;
  }

  else
  {
    v3 = 0;
  }

  self->_has = (*&self->_has & 0xFFDFFFFF | v3);
}

- (id)eventTypeAsString:(int)a3
{
  if ((a3 - 1) >= 3)
  {
    v4 = [MEMORY[0x1E696AEC0] stringWithFormat:@"(unknown: %i)", *&a3];
  }

  else
  {
    v4 = off_1E84B2B68[a3 - 1];
  }

  return v4;
}

- (int)StringAsEventType:(id)a3
{
  v3 = a3;
  if ([v3 isEqualToString:@"PlayEnd"])
  {
    v4 = 1;
  }

  else if ([v3 isEqualToString:@"PlayStart"])
  {
    v4 = 2;
  }

  else if ([v3 isEqualToString:@"LyricDisplay"])
  {
    v4 = 3;
  }

  else
  {
    v4 = 1;
  }

  return v4;
}

- (int)reasonHintType
{
  if (*(&self->_has + 3))
  {
    return self->_reasonHintType;
  }

  else
  {
    return 0;
  }
}

- (void)setHasReasonHintType:(BOOL)a3
{
  if (a3)
  {
    v3 = 0x1000000;
  }

  else
  {
    v3 = 0;
  }

  self->_has = (*&self->_has & 0xFEFFFFFF | v3);
}

- (id)reasonHintTypeAsString:(int)a3
{
  if (a3)
  {
    if (a3 == 1)
    {
      v4 = @"ContainerChanged";
    }

    else
    {
      v4 = [MEMORY[0x1E696AEC0] stringWithFormat:@"(unknown: %i)", *&a3];
    }
  }

  else
  {
    v4 = @"Unknown";
  }

  return v4;
}

- (int)StringAsReasonHintType:(id)a3
{
  v3 = a3;
  if ([v3 isEqualToString:@"Unknown"])
  {
    v4 = 0;
  }

  else
  {
    v4 = [v3 isEqualToString:@"ContainerChanged"];
  }

  return v4;
}

- (void)setHasSubscriptionAdamID:(BOOL)a3
{
  if (a3)
  {
    v3 = 0x8000;
  }

  else
  {
    v3 = 0;
  }

  self->_has = (*&self->_has & 0xFFFF7FFF | v3);
}

- (void)setHasPurchasedAdamID:(BOOL)a3
{
  if (a3)
  {
    v3 = 2048;
  }

  else
  {
    v3 = 0;
  }

  self->_has = (*&self->_has & 0xFFFFF7FF | v3);
}

- (void)setHasRadioAdamID:(BOOL)a3
{
  if (a3)
  {
    v3 = 4096;
  }

  else
  {
    v3 = 0;
  }

  self->_has = (*&self->_has & 0xFFFFEFFF | v3);
}

- (void)setHasItemCloudID:(BOOL)a3
{
  if (a3)
  {
    v3 = 64;
  }

  else
  {
    v3 = 0;
  }

  self->_has = (*&self->_has & 0xFFFFFFBF | v3);
}

- (void)setHasEquivalencySourceAdamID:(BOOL)a3
{
  if (a3)
  {
    v3 = 8;
  }

  else
  {
    v3 = 0;
  }

  self->_has = (*&self->_has & 0xFFFFFFF7 | v3);
}

- (void)setHasContainerAdamID:(BOOL)a3
{
  if (a3)
  {
    v3 = 4;
  }

  else
  {
    v3 = 0;
  }

  self->_has = (*&self->_has & 0xFFFFFFFB | v3);
}

- (void)setHasStationID:(BOOL)a3
{
  if (a3)
  {
    v3 = 0x2000;
  }

  else
  {
    v3 = 0;
  }

  self->_has = (*&self->_has & 0xFFFFDFFF | v3);
}

- (void)setHasCloudPlaylistID:(BOOL)a3
{
  if (a3)
  {
    v3 = 2;
  }

  else
  {
    v3 = 0;
  }

  self->_has = (*&self->_has & 0xFFFFFFFD | v3);
}

- (int)containerType
{
  if ((*(&self->_has + 2) & 4) != 0)
  {
    return self->_containerType;
  }

  else
  {
    return 0;
  }
}

- (void)setHasContainerType:(BOOL)a3
{
  if (a3)
  {
    v3 = 0x40000;
  }

  else
  {
    v3 = 0;
  }

  self->_has = (*&self->_has & 0xFFFBFFFF | v3);
}

- (id)containerTypeAsString:(int)a3
{
  if (a3 >= 5)
  {
    v4 = [MEMORY[0x1E696AEC0] stringWithFormat:@"(unknown: %i)", *&a3];
  }

  else
  {
    v4 = off_1E84B2B80[a3];
  }

  return v4;
}

- (int)StringAsContainerType:(id)a3
{
  v3 = a3;
  if ([v3 isEqualToString:@"Unknown"])
  {
    v4 = 0;
  }

  else if ([v3 isEqualToString:@"RadioStation"])
  {
    v4 = 1;
  }

  else if ([v3 isEqualToString:@"Playlist"])
  {
    v4 = 2;
  }

  else if ([v3 isEqualToString:@"Album"])
  {
    v4 = 3;
  }

  else if ([v3 isEqualToString:@"Artist"])
  {
    v4 = 4;
  }

  else
  {
    v4 = 0;
  }

  return v4;
}

- (int)endReasonType
{
  if ((*(&self->_has + 2) & 0x10) != 0)
  {
    return self->_endReasonType;
  }

  else
  {
    return 0;
  }
}

- (void)setHasEndReasonType:(BOOL)a3
{
  if (a3)
  {
    v3 = 0x100000;
  }

  else
  {
    v3 = 0;
  }

  self->_has = (*&self->_has & 0xFFEFFFFF | v3);
}

- (id)endReasonTypeAsString:(int)a3
{
  if (a3 >= 0xF)
  {
    v4 = [MEMORY[0x1E696AEC0] stringWithFormat:@"(unknown: %i)", *&a3];
  }

  else
  {
    v4 = off_1E84B2BA8[a3];
  }

  return v4;
}

- (int)StringAsEndReasonType:(id)a3
{
  v3 = a3;
  if ([v3 isEqualToString:@"NotApplicable"])
  {
    v4 = 0;
  }

  else if ([v3 isEqualToString:@"Other"])
  {
    v4 = 1;
  }

  else if ([v3 isEqualToString:@"SkipBackward"])
  {
    v4 = 2;
  }

  else if ([v3 isEqualToString:@"SkipForward"])
  {
    v4 = 3;
  }

  else if ([v3 isEqualToString:@"QueueChange"])
  {
    v4 = 4;
  }

  else if ([v3 isEqualToString:@"ManualPause"])
  {
    v4 = 5;
  }

  else if ([v3 isEqualToString:@"Interruption"])
  {
    v4 = 6;
  }

  else if ([v3 isEqualToString:@"InactivityPause"])
  {
    v4 = 7;
  }

  else if ([v3 isEqualToString:@"InactivitySessionEnd"])
  {
    v4 = 8;
  }

  else if ([v3 isEqualToString:@"NaturalTransition"])
  {
    v4 = 9;
  }

  else if ([v3 isEqualToString:@"Ban"])
  {
    v4 = 10;
  }

  else if ([v3 isEqualToString:@"AssetLoadFailure"])
  {
    v4 = 11;
  }

  else if ([v3 isEqualToString:@"ScrubBegin"])
  {
    v4 = 12;
  }

  else if ([v3 isEqualToString:@"ScrubEnd"])
  {
    v4 = 13;
  }

  else if ([v3 isEqualToString:@"QuickPlay"])
  {
    v4 = 14;
  }

  else
  {
    v4 = 0;
  }

  return v4;
}

- (void)setHasEventDateTimestamp:(BOOL)a3
{
  if (a3)
  {
    v3 = 16;
  }

  else
  {
    v3 = 0;
  }

  self->_has = (*&self->_has & 0xFFFFFFEF | v3);
}

- (void)setHasItemDuration:(BOOL)a3
{
  if (a3)
  {
    v3 = 128;
  }

  else
  {
    v3 = 0;
  }

  self->_has = (*&self->_has & 0xFFFFFF7F | v3);
}

- (void)setHasItemEndTime:(BOOL)a3
{
  if (a3)
  {
    v3 = 256;
  }

  else
  {
    v3 = 0;
  }

  self->_has = (*&self->_has & 0xFFFFFEFF | v3);
}

- (void)setHasItemStartTime:(BOOL)a3
{
  if (a3)
  {
    v3 = 512;
  }

  else
  {
    v3 = 0;
  }

  self->_has = (*&self->_has & 0xFFFFFDFF | v3);
}

- (int)itemType
{
  if ((*(&self->_has + 2) & 0x40) != 0)
  {
    return self->_itemType;
  }

  else
  {
    return 0;
  }
}

- (void)setHasItemType:(BOOL)a3
{
  if (a3)
  {
    v3 = 0x400000;
  }

  else
  {
    v3 = 0;
  }

  self->_has = (*&self->_has & 0xFFBFFFFF | v3);
}

- (id)itemTypeAsString:(int)a3
{
  if (a3 >= 0xA)
  {
    v4 = [MEMORY[0x1E696AEC0] stringWithFormat:@"(unknown: %i)", *&a3];
  }

  else
  {
    v4 = off_1E84B2C20[a3];
  }

  return v4;
}

- (int)StringAsItemType:(id)a3
{
  v3 = a3;
  if ([v3 isEqualToString:@"Unknown"])
  {
    v4 = 0;
  }

  else if ([v3 isEqualToString:@"iTunesStoreContent"])
  {
    v4 = 1;
  }

  else if ([v3 isEqualToString:@"AudioClip"])
  {
    v4 = 2;
  }

  else if ([v3 isEqualToString:@"Ad"])
  {
    v4 = 3;
  }

  else if ([v3 isEqualToString:@"Stream"])
  {
    v4 = 4;
  }

  else if ([v3 isEqualToString:@"TimedMetadataPing"])
  {
    v4 = 5;
  }

  else if ([v3 isEqualToString:@"UploadedContent"])
  {
    v4 = 6;
  }

  else if ([v3 isEqualToString:@"AggregateNonCatalogPlayTime"])
  {
    v4 = 7;
  }

  else if ([v3 isEqualToString:@"Movie"])
  {
    v4 = 8;
  }

  else if ([v3 isEqualToString:@"TVEpisode"])
  {
    v4 = 9;
  }

  else
  {
    v4 = 0;
  }

  return v4;
}

- (int)mediaType
{
  if ((*(&self->_has + 2) & 0x80) != 0)
  {
    return self->_mediaType;
  }

  else
  {
    return 0;
  }
}

- (void)setHasMediaType:(BOOL)a3
{
  if (a3)
  {
    v3 = 0x800000;
  }

  else
  {
    v3 = 0;
  }

  self->_has = (*&self->_has & 0xFF7FFFFF | v3);
}

- (id)mediaTypeAsString:(int)a3
{
  if (a3)
  {
    if (a3 == 1)
    {
      v4 = @"Video";
    }

    else
    {
      v4 = [MEMORY[0x1E696AEC0] stringWithFormat:@"(unknown: %i)", *&a3];
    }
  }

  else
  {
    v4 = @"Audio";
  }

  return v4;
}

- (int)StringAsMediaType:(id)a3
{
  v3 = a3;
  if ([v3 isEqualToString:@"Audio"])
  {
    v4 = 0;
  }

  else
  {
    v4 = [v3 isEqualToString:@"Video"];
  }

  return v4;
}

- (void)setHasOffline:(BOOL)a3
{
  if (a3)
  {
    v3 = 0x10000000;
  }

  else
  {
    v3 = 0;
  }

  self->_has = (*&self->_has & 0xEFFFFFFF | v3);
}

- (void)setHasPersistentID:(BOOL)a3
{
  if (a3)
  {
    v3 = 1024;
  }

  else
  {
    v3 = 0;
  }

  self->_has = (*&self->_has & 0xFFFFFBFF | v3);
}

- (void)setHasSBEnabled:(BOOL)a3
{
  if (a3)
  {
    v3 = 0x40000000;
  }

  else
  {
    v3 = 0;
  }

  self->_has = (*&self->_has & 0xBFFFFFFF | v3);
}

- (int)sourceType
{
  if ((*(&self->_has + 3) & 2) != 0)
  {
    return self->_sourceType;
  }

  else
  {
    return 0;
  }
}

- (void)setHasSourceType:(BOOL)a3
{
  if (a3)
  {
    v3 = 0x2000000;
  }

  else
  {
    v3 = 0;
  }

  self->_has = (*&self->_has & 0xFDFFFFFF | v3);
}

- (id)sourceTypeAsString:(int)a3
{
  if (a3 >= 3)
  {
    v4 = [MEMORY[0x1E696AEC0] stringWithFormat:@"(unknown: %i)", *&a3];
  }

  else
  {
    v4 = off_1E84B2C70[a3];
  }

  return v4;
}

- (int)StringAsSourceType:(id)a3
{
  v3 = a3;
  if ([v3 isEqualToString:@"Device"])
  {
    v4 = 0;
  }

  else if ([v3 isEqualToString:@"PairedWatch"])
  {
    v4 = 1;
  }

  else if ([v3 isEqualToString:@"RemoteControl"])
  {
    v4 = 2;
  }

  else
  {
    v4 = 0;
  }

  return v4;
}

- (void)setHasStoreAccountID:(BOOL)a3
{
  if (a3)
  {
    v3 = 0x4000;
  }

  else
  {
    v3 = 0;
  }

  self->_has = (*&self->_has & 0xFFFFBFFF | v3);
}

- (void)setHasPrivateListeningEnabled:(BOOL)a3
{
  if (a3)
  {
    v3 = 0x20000000;
  }

  else
  {
    v3 = 0;
  }

  self->_has = (*&self->_has & 0xDFFFFFFF | v3);
}

- (void)setHasSiriInitiated:(BOOL)a3
{
  if (a3)
  {
    v3 = 0x80000000;
  }

  else
  {
    v3 = 0;
  }

  self->_has = (v3 & 0x80000000 | *&self->_has & 0x7FFFFFFF);
}

- (int)systemReleaseType
{
  if ((*(&self->_has + 3) & 4) != 0)
  {
    return self->_systemReleaseType;
  }

  else
  {
    return 0;
  }
}

- (void)setHasSystemReleaseType:(BOOL)a3
{
  if (a3)
  {
    v3 = 0x4000000;
  }

  else
  {
    v3 = 0;
  }

  self->_has = (*&self->_has & 0xFBFFFFFF | v3);
}

- (id)systemReleaseTypeAsString:(int)a3
{
  if (a3 >= 5)
  {
    v4 = [MEMORY[0x1E696AEC0] stringWithFormat:@"(unknown: %i)", *&a3];
  }

  else
  {
    v4 = off_1E84B2C88[a3];
  }

  return v4;
}

- (int)StringAsSystemReleaseType:(id)a3
{
  v3 = a3;
  if ([v3 isEqualToString:@"UNKNOWN"])
  {
    v4 = 0;
  }

  else if ([v3 isEqualToString:@"CUSTOMER"])
  {
    v4 = 1;
  }

  else if ([v3 isEqualToString:@"CARRIER"])
  {
    v4 = 2;
  }

  else if ([v3 isEqualToString:@"DEVELOPER"])
  {
    v4 = 3;
  }

  else if ([v3 isEqualToString:@"INTERNAL"])
  {
    v4 = 4;
  }

  else
  {
    v4 = 0;
  }

  return v4;
}

- (int)displayType
{
  if ((*(&self->_has + 2) & 8) != 0)
  {
    return self->_displayType;
  }

  else
  {
    return 0;
  }
}

- (void)setHasDisplayType:(BOOL)a3
{
  if (a3)
  {
    v3 = 0x80000;
  }

  else
  {
    v3 = 0;
  }

  self->_has = (*&self->_has & 0xFFF7FFFF | v3);
}

- (id)displayTypeAsString:(int)a3
{
  if (a3 >= 4)
  {
    v4 = [MEMORY[0x1E696AEC0] stringWithFormat:@"(unknown: %i)", *&a3];
  }

  else
  {
    v4 = off_1E84B2CB0[a3];
  }

  return v4;
}

- (int)StringAsDisplayType:(id)a3
{
  v3 = a3;
  if ([v3 isEqualToString:@"NoDisplayType"])
  {
    v4 = 0;
  }

  else if ([v3 isEqualToString:@"Static"])
  {
    v4 = 1;
  }

  else if ([v3 isEqualToString:@"LineByLine"])
  {
    v4 = 2;
  }

  else if ([v3 isEqualToString:@"WordByWord"])
  {
    v4 = 3;
  }

  else
  {
    v4 = 0;
  }

  return v4;
}

- (void)setHasTvShowPurchasedAdamID:(BOOL)a3
{
  if (a3)
  {
    v3 = 0x10000;
  }

  else
  {
    v3 = 0;
  }

  self->_has = (*&self->_has & 0xFFFEFFFF | v3);
}

- (void)setHasTvShowSubscriptionAdamID:(BOOL)a3
{
  if (a3)
  {
    v3 = 0x20000;
  }

  else
  {
    v3 = 0;
  }

  self->_has = (*&self->_has & 0xFFFDFFFF | v3);
}

- (void)setHasInternalBuild:(BOOL)a3
{
  if (a3)
  {
    v3 = 0x8000000;
  }

  else
  {
    v3 = 0;
  }

  self->_has = (*&self->_has & 0xF7FFFFFF | v3);
}

- (void)setHasEventSecondsFromGMT:(BOOL)a3
{
  if (a3)
  {
    v3 = 32;
  }

  else
  {
    v3 = 0;
  }

  self->_has = (*&self->_has & 0xFFFFFFDF | v3);
}

- (id)description
{
  v3 = MEMORY[0x1E696AEC0];
  v8.receiver = self;
  v8.super_class = SSVPBPlayActivityEvent;
  v4 = [(SSVPBPlayActivityEvent *)&v8 description];
  v5 = [(SSVPBPlayActivityEvent *)self dictionaryRepresentation];
  v6 = [v3 stringWithFormat:@"%@ %@", v4, v5];

  return v6;
}

- (id)dictionaryRepresentation
{
  v3 = [MEMORY[0x1E695DF90] dictionary];
  has = self->_has;
  if ((*&has & 0x200000) != 0)
  {
    v5 = self->_eventType - 1;
    if (v5 >= 3)
    {
      v6 = [MEMORY[0x1E696AEC0] stringWithFormat:@"(unknown: %i)", self->_eventType];
    }

    else
    {
      v6 = off_1E84B2B68[v5];
    }

    [v3 setObject:v6 forKey:@"eventType"];

    has = self->_has;
  }

  if ((*&has & 0x1000000) != 0)
  {
    reasonHintType = self->_reasonHintType;
    if (reasonHintType)
    {
      if (reasonHintType == 1)
      {
        v8 = @"ContainerChanged";
      }

      else
      {
        v8 = [MEMORY[0x1E696AEC0] stringWithFormat:@"(unknown: %i)", self->_reasonHintType];
      }
    }

    else
    {
      v8 = @"Unknown";
    }

    [v3 setObject:v8 forKey:@"reasonHintType"];

    has = self->_has;
  }

  if ((*&has & 0x8000) != 0)
  {
    v23 = [MEMORY[0x1E696AD98] numberWithLongLong:self->_subscriptionAdamID];
    [v3 setObject:v23 forKey:@"subscriptionAdamID"];

    has = self->_has;
    if ((*&has & 0x800) == 0)
    {
LABEL_15:
      if ((*&has & 0x1000) == 0)
      {
        goto LABEL_16;
      }

      goto LABEL_43;
    }
  }

  else if ((*&has & 0x800) == 0)
  {
    goto LABEL_15;
  }

  v24 = [MEMORY[0x1E696AD98] numberWithLongLong:self->_purchasedAdamID];
  [v3 setObject:v24 forKey:@"purchasedAdamID"];

  has = self->_has;
  if ((*&has & 0x1000) == 0)
  {
LABEL_16:
    if ((*&has & 0x40) == 0)
    {
      goto LABEL_18;
    }

    goto LABEL_17;
  }

LABEL_43:
  v25 = [MEMORY[0x1E696AD98] numberWithLongLong:self->_radioAdamID];
  [v3 setObject:v25 forKey:@"radioAdamID"];

  if ((*&self->_has & 0x40) != 0)
  {
LABEL_17:
    v9 = [MEMORY[0x1E696AD98] numberWithUnsignedLongLong:self->_itemCloudID];
    [v3 setObject:v9 forKey:@"itemCloudID"];
  }

LABEL_18:
  lyricsID = self->_lyricsID;
  if (lyricsID)
  {
    [v3 setObject:lyricsID forKey:@"lyricsID"];
  }

  v11 = self->_has;
  if ((*&v11 & 8) != 0)
  {
    v12 = [MEMORY[0x1E696AD98] numberWithLongLong:self->_equivalencySourceAdamID];
    [v3 setObject:v12 forKey:@"equivalencySourceAdamID"];

    v11 = self->_has;
  }

  if ((*&v11 & 4) != 0)
  {
    v13 = [MEMORY[0x1E696AD98] numberWithLongLong:self->_containerAdamID];
    [v3 setObject:v13 forKey:@"containerAdamID"];
  }

  globalPlaylistID = self->_globalPlaylistID;
  if (globalPlaylistID)
  {
    [v3 setObject:globalPlaylistID forKey:@"globalPlaylistID"];
  }

  stationHash = self->_stationHash;
  if (stationHash)
  {
    [v3 setObject:stationHash forKey:@"stationHash"];
  }

  stationStringID = self->_stationStringID;
  if (stationStringID)
  {
    [v3 setObject:stationStringID forKey:@"stationStringID"];
  }

  if ((*(&self->_has + 1) & 0x20) != 0)
  {
    v17 = [MEMORY[0x1E696AD98] numberWithLongLong:self->_stationID];
    [v3 setObject:v17 forKey:@"stationID"];
  }

  cloudAlbumID = self->_cloudAlbumID;
  if (cloudAlbumID)
  {
    [v3 setObject:cloudAlbumID forKey:@"cloudAlbumID"];
  }

  if ((*&self->_has & 2) != 0)
  {
    v19 = [MEMORY[0x1E696AD98] numberWithUnsignedLongLong:self->_cloudPlaylistID];
    [v3 setObject:v19 forKey:@"cloudPlaylistID"];
  }

  playlistVersionHash = self->_playlistVersionHash;
  if (playlistVersionHash)
  {
    [v3 setObject:playlistVersionHash forKey:@"playlistVersionHash"];
  }

  if ((*(&self->_has + 2) & 4) != 0)
  {
    containerType = self->_containerType;
    if (containerType >= 5)
    {
      v22 = [MEMORY[0x1E696AEC0] stringWithFormat:@"(unknown: %i)", self->_containerType];
    }

    else
    {
      v22 = off_1E84B2B80[containerType];
    }

    [v3 setObject:v22 forKey:@"containerType"];
  }

  deviceName = self->_deviceName;
  if (deviceName)
  {
    [v3 setObject:deviceName forKey:@"deviceName"];
  }

  v27 = self->_has;
  if ((*&v27 & 0x100000) != 0)
  {
    endReasonType = self->_endReasonType;
    if (endReasonType >= 0xF)
    {
      v29 = [MEMORY[0x1E696AEC0] stringWithFormat:@"(unknown: %i)", self->_endReasonType];
    }

    else
    {
      v29 = off_1E84B2BA8[endReasonType];
    }

    [v3 setObject:v29 forKey:@"endReasonType"];

    v27 = self->_has;
  }

  if ((*&v27 & 0x10) != 0)
  {
    v30 = [MEMORY[0x1E696AD98] numberWithDouble:self->_eventDateTimestamp];
    [v3 setObject:v30 forKey:@"eventDateTimestamp"];
  }

  featureName = self->_featureName;
  if (featureName)
  {
    [v3 setObject:featureName forKey:@"featureName"];
  }

  v32 = self->_has;
  if ((*&v32 & 0x80) != 0)
  {
    v45 = [MEMORY[0x1E696AD98] numberWithDouble:self->_itemDuration];
    [v3 setObject:v45 forKey:@"itemDuration"];

    v32 = self->_has;
    if ((*&v32 & 0x100) == 0)
    {
LABEL_60:
      if ((*&v32 & 0x200) == 0)
      {
        goto LABEL_61;
      }

      goto LABEL_93;
    }
  }

  else if ((*&v32 & 0x100) == 0)
  {
    goto LABEL_60;
  }

  v46 = [MEMORY[0x1E696AD98] numberWithDouble:self->_itemEndTime];
  [v3 setObject:v46 forKey:@"itemEndTime"];

  v32 = self->_has;
  if ((*&v32 & 0x200) == 0)
  {
LABEL_61:
    if ((*&v32 & 0x400000) == 0)
    {
      goto LABEL_62;
    }

    goto LABEL_94;
  }

LABEL_93:
  v47 = [MEMORY[0x1E696AD98] numberWithDouble:self->_itemStartTime];
  [v3 setObject:v47 forKey:@"itemStartTime"];

  v32 = self->_has;
  if ((*&v32 & 0x400000) == 0)
  {
LABEL_62:
    if ((*&v32 & 0x800000) == 0)
    {
      goto LABEL_63;
    }

    goto LABEL_102;
  }

LABEL_94:
  itemType = self->_itemType;
  if (itemType >= 0xA)
  {
    v49 = [MEMORY[0x1E696AEC0] stringWithFormat:@"(unknown: %i)", self->_itemType];
  }

  else
  {
    v49 = off_1E84B2C20[itemType];
  }

  [v3 setObject:v49 forKey:@"itemType"];

  v32 = self->_has;
  if ((*&v32 & 0x800000) == 0)
  {
LABEL_63:
    if ((*&v32 & 0x10000000) == 0)
    {
      goto LABEL_64;
    }

    goto LABEL_139;
  }

LABEL_102:
  mediaType = self->_mediaType;
  if (mediaType)
  {
    if (mediaType == 1)
    {
      v55 = @"Video";
    }

    else
    {
      v55 = [MEMORY[0x1E696AEC0] stringWithFormat:@"(unknown: %i)", self->_mediaType];
    }
  }

  else
  {
    v55 = @"Audio";
  }

  [v3 setObject:v55 forKey:@"mediaType"];

  v32 = self->_has;
  if ((*&v32 & 0x10000000) == 0)
  {
LABEL_64:
    if ((*&v32 & 0x400) == 0)
    {
      goto LABEL_65;
    }

    goto LABEL_140;
  }

LABEL_139:
  v73 = [MEMORY[0x1E696AD98] numberWithBool:self->_offline];
  [v3 setObject:v73 forKey:@"offline"];

  v32 = self->_has;
  if ((*&v32 & 0x400) == 0)
  {
LABEL_65:
    if ((*&v32 & 0x40000000) == 0)
    {
      goto LABEL_66;
    }

    goto LABEL_141;
  }

LABEL_140:
  v74 = [MEMORY[0x1E696AD98] numberWithLongLong:self->_persistentID];
  [v3 setObject:v74 forKey:@"persistentID"];

  v32 = self->_has;
  if ((*&v32 & 0x40000000) == 0)
  {
LABEL_66:
    if ((*&v32 & 0x2000000) == 0)
    {
      goto LABEL_67;
    }

    goto LABEL_142;
  }

LABEL_141:
  v75 = [MEMORY[0x1E696AD98] numberWithBool:self->_sBEnabled];
  [v3 setObject:v75 forKey:@"SBEnabled"];

  v32 = self->_has;
  if ((*&v32 & 0x2000000) == 0)
  {
LABEL_67:
    if ((*&v32 & 0x4000) == 0)
    {
      goto LABEL_69;
    }

    goto LABEL_68;
  }

LABEL_142:
  sourceType = self->_sourceType;
  if (sourceType >= 3)
  {
    v77 = [MEMORY[0x1E696AEC0] stringWithFormat:@"(unknown: %i)", self->_sourceType];
  }

  else
  {
    v77 = off_1E84B2C70[sourceType];
  }

  [v3 setObject:v77 forKey:@"sourceType"];

  if ((*&self->_has & 0x4000) != 0)
  {
LABEL_68:
    v33 = [MEMORY[0x1E696AD98] numberWithUnsignedLongLong:self->_storeAccountID];
    [v3 setObject:v33 forKey:@"storeAccountID"];
  }

LABEL_69:
  timedMetadata = self->_timedMetadata;
  if (timedMetadata)
  {
    [v3 setObject:timedMetadata forKey:@"timedMetadata"];
  }

  trackInfo = self->_trackInfo;
  if (trackInfo)
  {
    [v3 setObject:trackInfo forKey:@"trackInfo"];
  }

  recommendationData = self->_recommendationData;
  if (recommendationData)
  {
    [v3 setObject:recommendationData forKey:@"recommendationData"];
  }

  storeFrontID = self->_storeFrontID;
  if (storeFrontID)
  {
    [v3 setObject:storeFrontID forKey:@"storeFrontID"];
  }

  buildVersion = self->_buildVersion;
  if (buildVersion)
  {
    [v3 setObject:buildVersion forKey:@"buildVersion"];
  }

  requestingBundleIdentifier = self->_requestingBundleIdentifier;
  if (requestingBundleIdentifier)
  {
    [v3 setObject:requestingBundleIdentifier forKey:@"requestingBundleIdentifier"];
  }

  requestingBundleVersion = self->_requestingBundleVersion;
  if (requestingBundleVersion)
  {
    [v3 setObject:requestingBundleVersion forKey:@"requestingBundleVersion"];
  }

  enqueuerProperties = self->_enqueuerProperties;
  if (enqueuerProperties)
  {
    v42 = [(SSVPBPlayActivityEnqueuerProperties *)enqueuerProperties dictionaryRepresentation];
    [v3 setObject:v42 forKey:@"enqueuerProperties"];
  }

  householdID = self->_householdID;
  if (householdID)
  {
    [v3 setObject:householdID forKey:@"householdID"];
  }

  v44 = self->_has;
  if ((*&v44 & 0x20000000) != 0)
  {
    v50 = [MEMORY[0x1E696AD98] numberWithBool:self->_privateListeningEnabled];
    [v3 setObject:v50 forKey:@"privateListeningEnabled"];

    v44 = self->_has;
    if ((*&v44 & 0x80000000) == 0)
    {
LABEL_89:
      if ((*&v44 & 0x4000000) == 0)
      {
        goto LABEL_107;
      }

      goto LABEL_98;
    }
  }

  else if ((*&v44 & 0x80000000) == 0)
  {
    goto LABEL_89;
  }

  v51 = [MEMORY[0x1E696AD98] numberWithBool:self->_siriInitiated];
  [v3 setObject:v51 forKey:@"siriInitiated"];

  if ((*&self->_has & 0x4000000) == 0)
  {
    goto LABEL_107;
  }

LABEL_98:
  systemReleaseType = self->_systemReleaseType;
  if (systemReleaseType >= 5)
  {
    v53 = [MEMORY[0x1E696AEC0] stringWithFormat:@"(unknown: %i)", self->_systemReleaseType];
  }

  else
  {
    v53 = off_1E84B2C88[systemReleaseType];
  }

  [v3 setObject:v53 forKey:@"systemReleaseType"];

LABEL_107:
  eventTimeZoneName = self->_eventTimeZoneName;
  if (eventTimeZoneName)
  {
    [v3 setObject:eventTimeZoneName forKey:@"eventTimeZoneName"];
  }

  v57 = self->_has;
  if ((*&v57 & 0x80000) != 0)
  {
    displayType = self->_displayType;
    if (displayType >= 4)
    {
      v59 = [MEMORY[0x1E696AEC0] stringWithFormat:@"(unknown: %i)", self->_displayType];
    }

    else
    {
      v59 = off_1E84B2CB0[displayType];
    }

    [v3 setObject:v59 forKey:@"displayType"];

    v57 = self->_has;
  }

  if (*&v57)
  {
    v60 = [MEMORY[0x1E696AD98] numberWithLongLong:self->_characterDisplayedCount];
    [v3 setObject:v60 forKey:@"characterDisplayedCount"];
  }

  lyricLanguage = self->_lyricLanguage;
  if (lyricLanguage)
  {
    [v3 setObject:lyricLanguage forKey:@"lyricLanguage"];
  }

  containerID = self->_containerID;
  if (containerID)
  {
    [v3 setObject:containerID forKey:@"containerID"];
  }

  personalizedContainerID = self->_personalizedContainerID;
  if (personalizedContainerID)
  {
    [v3 setObject:personalizedContainerID forKey:@"personalizedContainerID"];
  }

  storeID = self->_storeID;
  if (storeID)
  {
    [v3 setObject:storeID forKey:@"storeID"];
  }

  externalID = self->_externalID;
  if (externalID)
  {
    [v3 setObject:externalID forKey:@"externalID"];
  }

  v66 = self->_has;
  if ((*&v66 & 0x10000) != 0)
  {
    v70 = [MEMORY[0x1E696AD98] numberWithLongLong:self->_tvShowPurchasedAdamID];
    [v3 setObject:v70 forKey:@"tvShowPurchasedAdamID"];

    v66 = self->_has;
    if ((*&v66 & 0x20000) == 0)
    {
LABEL_128:
      if ((*&v66 & 0x8000000) == 0)
      {
        goto LABEL_129;
      }

LABEL_134:
      v72 = [MEMORY[0x1E696AD98] numberWithBool:self->_internalBuild];
      [v3 setObject:v72 forKey:@"internalBuild"];

      if ((*&self->_has & 0x20) == 0)
      {
        goto LABEL_131;
      }

      goto LABEL_130;
    }
  }

  else if ((*&v66 & 0x20000) == 0)
  {
    goto LABEL_128;
  }

  v71 = [MEMORY[0x1E696AD98] numberWithLongLong:self->_tvShowSubscriptionAdamID];
  [v3 setObject:v71 forKey:@"tvShowSubscriptionAdamID"];

  v66 = self->_has;
  if ((*&v66 & 0x8000000) != 0)
  {
    goto LABEL_134;
  }

LABEL_129:
  if ((*&v66 & 0x20) != 0)
  {
LABEL_130:
    v67 = [MEMORY[0x1E696AD98] numberWithDouble:self->_eventSecondsFromGMT];
    [v3 setObject:v67 forKey:@"eventSecondsFromGMT"];
  }

LABEL_131:
  v68 = v3;

  return v3;
}

- (void)writeTo:(id)a3
{
  v4 = a3;
  v13 = v4;
  if (self->_containerID)
  {
    PBDataWriterWriteStringField();
    v4 = v13;
  }

  if ((*(&self->_has + 2) & 4) != 0)
  {
    PBDataWriterWriteInt32Field();
    v4 = v13;
  }

  if (self->_deviceName)
  {
    PBDataWriterWriteStringField();
    v4 = v13;
  }

  has = self->_has;
  if ((*&has & 0x100000) != 0)
  {
    PBDataWriterWriteInt32Field();
    v4 = v13;
    has = self->_has;
    if ((*&has & 0x10) == 0)
    {
LABEL_9:
      if ((*&has & 0x20) == 0)
      {
        goto LABEL_11;
      }

      goto LABEL_10;
    }
  }

  else if ((*&has & 0x10) == 0)
  {
    goto LABEL_9;
  }

  PBDataWriterWriteDoubleField();
  v4 = v13;
  if ((*&self->_has & 0x20) != 0)
  {
LABEL_10:
    PBDataWriterWriteDoubleField();
    v4 = v13;
  }

LABEL_11:
  if (self->_externalID)
  {
    PBDataWriterWriteStringField();
    v4 = v13;
  }

  if (self->_featureName)
  {
    PBDataWriterWriteStringField();
    v4 = v13;
  }

  v6 = self->_has;
  if ((*&v6 & 0x80) != 0)
  {
    PBDataWriterWriteDoubleField();
    v4 = v13;
    v6 = self->_has;
    if ((*&v6 & 0x100) == 0)
    {
LABEL_17:
      if ((*&v6 & 0x200) == 0)
      {
        goto LABEL_18;
      }

      goto LABEL_100;
    }
  }

  else if ((*&v6 & 0x100) == 0)
  {
    goto LABEL_17;
  }

  PBDataWriterWriteDoubleField();
  v4 = v13;
  v6 = self->_has;
  if ((*&v6 & 0x200) == 0)
  {
LABEL_18:
    if ((*&v6 & 0x400000) == 0)
    {
      goto LABEL_19;
    }

    goto LABEL_101;
  }

LABEL_100:
  PBDataWriterWriteDoubleField();
  v4 = v13;
  v6 = self->_has;
  if ((*&v6 & 0x400000) == 0)
  {
LABEL_19:
    if ((*&v6 & 0x800000) == 0)
    {
      goto LABEL_20;
    }

    goto LABEL_102;
  }

LABEL_101:
  PBDataWriterWriteInt32Field();
  v4 = v13;
  v6 = self->_has;
  if ((*&v6 & 0x800000) == 0)
  {
LABEL_20:
    if ((*&v6 & 0x10000000) == 0)
    {
      goto LABEL_21;
    }

    goto LABEL_103;
  }

LABEL_102:
  PBDataWriterWriteInt32Field();
  v4 = v13;
  v6 = self->_has;
  if ((*&v6 & 0x10000000) == 0)
  {
LABEL_21:
    if ((*&v6 & 0x400) == 0)
    {
      goto LABEL_23;
    }

    goto LABEL_22;
  }

LABEL_103:
  PBDataWriterWriteBOOLField();
  v4 = v13;
  if ((*&self->_has & 0x400) != 0)
  {
LABEL_22:
    PBDataWriterWriteInt64Field();
    v4 = v13;
  }

LABEL_23:
  if (self->_personalizedContainerID)
  {
    PBDataWriterWriteStringField();
    v4 = v13;
  }

  v7 = self->_has;
  if ((*&v7 & 0x40000000) != 0)
  {
    PBDataWriterWriteBOOLField();
    v4 = v13;
    v7 = self->_has;
    if ((*&v7 & 0x2000000) == 0)
    {
LABEL_27:
      if ((*&v7 & 0x4000) == 0)
      {
        goto LABEL_29;
      }

      goto LABEL_28;
    }
  }

  else if ((*&v7 & 0x2000000) == 0)
  {
    goto LABEL_27;
  }

  PBDataWriterWriteInt32Field();
  v4 = v13;
  if ((*&self->_has & 0x4000) != 0)
  {
LABEL_28:
    PBDataWriterWriteUint64Field();
    v4 = v13;
  }

LABEL_29:
  if (self->_storeID)
  {
    PBDataWriterWriteStringField();
    v4 = v13;
  }

  if (self->_timedMetadata)
  {
    PBDataWriterWriteDataField();
    v4 = v13;
  }

  if (self->_trackInfo)
  {
    PBDataWriterWriteDataField();
    v4 = v13;
  }

  if (self->_recommendationData)
  {
    PBDataWriterWriteDataField();
    v4 = v13;
  }

  if (self->_storeFrontID)
  {
    PBDataWriterWriteStringField();
    v4 = v13;
  }

  v8 = self->_has;
  if ((*&v8 & 0x200000) != 0)
  {
    PBDataWriterWriteInt32Field();
    v4 = v13;
    v8 = self->_has;
    if ((*&v8 & 0x8000) == 0)
    {
LABEL_41:
      if ((*&v8 & 0x800) == 0)
      {
        goto LABEL_42;
      }

      goto LABEL_110;
    }
  }

  else if ((*&v8 & 0x8000) == 0)
  {
    goto LABEL_41;
  }

  PBDataWriterWriteInt64Field();
  v4 = v13;
  v8 = self->_has;
  if ((*&v8 & 0x800) == 0)
  {
LABEL_42:
    if ((*&v8 & 0x1000) == 0)
    {
      goto LABEL_43;
    }

    goto LABEL_111;
  }

LABEL_110:
  PBDataWriterWriteInt64Field();
  v4 = v13;
  v8 = self->_has;
  if ((*&v8 & 0x1000) == 0)
  {
LABEL_43:
    if ((*&v8 & 0x40) == 0)
    {
      goto LABEL_45;
    }

    goto LABEL_44;
  }

LABEL_111:
  PBDataWriterWriteInt64Field();
  v4 = v13;
  if ((*&self->_has & 0x40) != 0)
  {
LABEL_44:
    PBDataWriterWriteUint64Field();
    v4 = v13;
  }

LABEL_45:
  if (self->_lyricsID)
  {
    PBDataWriterWriteStringField();
    v4 = v13;
  }

  if ((*&self->_has & 4) != 0)
  {
    PBDataWriterWriteInt64Field();
    v4 = v13;
  }

  if (self->_globalPlaylistID)
  {
    PBDataWriterWriteStringField();
    v4 = v13;
  }

  if (self->_stationHash)
  {
    PBDataWriterWriteStringField();
    v4 = v13;
  }

  if (self->_stationStringID)
  {
    PBDataWriterWriteStringField();
    v4 = v13;
  }

  if ((*(&self->_has + 1) & 0x20) != 0)
  {
    PBDataWriterWriteInt64Field();
    v4 = v13;
  }

  if (self->_cloudAlbumID)
  {
    PBDataWriterWriteStringField();
    v4 = v13;
  }

  v9 = self->_has;
  if ((*&v9 & 2) != 0)
  {
    PBDataWriterWriteUint64Field();
    v4 = v13;
    v9 = self->_has;
  }

  if ((*&v9 & 0x1000000) != 0)
  {
    PBDataWriterWriteInt32Field();
    v4 = v13;
  }

  if (self->_buildVersion)
  {
    PBDataWriterWriteStringField();
    v4 = v13;
  }

  if (self->_playlistVersionHash)
  {
    PBDataWriterWriteStringField();
    v4 = v13;
  }

  if (self->_requestingBundleIdentifier)
  {
    PBDataWriterWriteStringField();
    v4 = v13;
  }

  if (self->_requestingBundleVersion)
  {
    PBDataWriterWriteStringField();
    v4 = v13;
  }

  v10 = self->_has;
  if ((*&v10 & 8) != 0)
  {
    PBDataWriterWriteInt64Field();
    v4 = v13;
    v10 = self->_has;
    if ((*&v10 & 0x8000000) == 0)
    {
LABEL_73:
      if ((*&v10 & 0x10000) == 0)
      {
        goto LABEL_74;
      }

      goto LABEL_115;
    }
  }

  else if ((*&v10 & 0x8000000) == 0)
  {
    goto LABEL_73;
  }

  PBDataWriterWriteBOOLField();
  v4 = v13;
  v10 = self->_has;
  if ((*&v10 & 0x10000) == 0)
  {
LABEL_74:
    if ((*&v10 & 0x20000) == 0)
    {
      goto LABEL_76;
    }

    goto LABEL_75;
  }

LABEL_115:
  PBDataWriterWriteInt64Field();
  v4 = v13;
  if ((*&self->_has & 0x20000) != 0)
  {
LABEL_75:
    PBDataWriterWriteInt64Field();
    v4 = v13;
  }

LABEL_76:
  if (self->_enqueuerProperties)
  {
    PBDataWriterWriteSubmessage();
    v4 = v13;
  }

  if (self->_householdID)
  {
    PBDataWriterWriteStringField();
    v4 = v13;
  }

  v11 = self->_has;
  if ((*&v11 & 0x20000000) != 0)
  {
    PBDataWriterWriteBOOLField();
    v4 = v13;
    v11 = self->_has;
    if ((*&v11 & 0x80000000) == 0)
    {
LABEL_82:
      if ((*&v11 & 0x4000000) == 0)
      {
        goto LABEL_84;
      }

      goto LABEL_83;
    }
  }

  else if ((*&v11 & 0x80000000) == 0)
  {
    goto LABEL_82;
  }

  PBDataWriterWriteBOOLField();
  v4 = v13;
  if ((*&self->_has & 0x4000000) != 0)
  {
LABEL_83:
    PBDataWriterWriteInt32Field();
    v4 = v13;
  }

LABEL_84:
  if (self->_eventTimeZoneName)
  {
    PBDataWriterWriteStringField();
    v4 = v13;
  }

  v12 = self->_has;
  if ((*&v12 & 0x80000) != 0)
  {
    PBDataWriterWriteInt32Field();
    v4 = v13;
    v12 = self->_has;
  }

  if (*&v12)
  {
    PBDataWriterWriteInt64Field();
    v4 = v13;
  }

  if (self->_lyricLanguage)
  {
    PBDataWriterWriteStringField();
    v4 = v13;
  }
}

- (void)copyTo:(id)a3
{
  v4 = a3;
  v13 = v4;
  if (self->_containerID)
  {
    [v4 setContainerID:?];
    v4 = v13;
  }

  if ((*(&self->_has + 2) & 4) != 0)
  {
    *(v4 + 44) = self->_containerType;
    *(v4 + 102) |= 0x40000u;
  }

  if (self->_deviceName)
  {
    [v13 setDeviceName:?];
    v4 = v13;
  }

  has = self->_has;
  if ((*&has & 0x100000) != 0)
  {
    *(v4 + 49) = self->_endReasonType;
    *(v4 + 102) |= 0x100000u;
    has = self->_has;
    if ((*&has & 0x10) == 0)
    {
LABEL_9:
      if ((*&has & 0x20) == 0)
      {
        goto LABEL_11;
      }

      goto LABEL_10;
    }
  }

  else if ((*&has & 0x10) == 0)
  {
    goto LABEL_9;
  }

  *(v4 + 5) = *&self->_eventDateTimestamp;
  *(v4 + 102) |= 0x10u;
  if ((*&self->_has & 0x20) != 0)
  {
LABEL_10:
    *(v4 + 6) = *&self->_eventSecondsFromGMT;
    *(v4 + 102) |= 0x20u;
  }

LABEL_11:
  if (self->_externalID)
  {
    [v13 setExternalID:?];
    v4 = v13;
  }

  if (self->_featureName)
  {
    [v13 setFeatureName:?];
    v4 = v13;
  }

  v6 = self->_has;
  if ((*&v6 & 0x80) != 0)
  {
    *(v4 + 8) = *&self->_itemDuration;
    *(v4 + 102) |= 0x80u;
    v6 = self->_has;
    if ((*&v6 & 0x100) == 0)
    {
LABEL_17:
      if ((*&v6 & 0x200) == 0)
      {
        goto LABEL_18;
      }

      goto LABEL_100;
    }
  }

  else if ((*&v6 & 0x100) == 0)
  {
    goto LABEL_17;
  }

  *(v4 + 9) = *&self->_itemEndTime;
  *(v4 + 102) |= 0x100u;
  v6 = self->_has;
  if ((*&v6 & 0x200) == 0)
  {
LABEL_18:
    if ((*&v6 & 0x400000) == 0)
    {
      goto LABEL_19;
    }

    goto LABEL_101;
  }

LABEL_100:
  *(v4 + 10) = *&self->_itemStartTime;
  *(v4 + 102) |= 0x200u;
  v6 = self->_has;
  if ((*&v6 & 0x400000) == 0)
  {
LABEL_19:
    if ((*&v6 & 0x800000) == 0)
    {
      goto LABEL_20;
    }

    goto LABEL_102;
  }

LABEL_101:
  *(v4 + 64) = self->_itemType;
  *(v4 + 102) |= 0x400000u;
  v6 = self->_has;
  if ((*&v6 & 0x800000) == 0)
  {
LABEL_20:
    if ((*&v6 & 0x10000000) == 0)
    {
      goto LABEL_21;
    }

    goto LABEL_103;
  }

LABEL_102:
  *(v4 + 70) = self->_mediaType;
  *(v4 + 102) |= 0x800000u;
  v6 = self->_has;
  if ((*&v6 & 0x10000000) == 0)
  {
LABEL_21:
    if ((*&v6 & 0x400) == 0)
    {
      goto LABEL_23;
    }

    goto LABEL_22;
  }

LABEL_103:
  *(v4 + 401) = self->_offline;
  *(v4 + 102) |= 0x10000000u;
  if ((*&self->_has & 0x400) != 0)
  {
LABEL_22:
    *(v4 + 11) = self->_persistentID;
    *(v4 + 102) |= 0x400u;
  }

LABEL_23:
  if (self->_personalizedContainerID)
  {
    [v13 setPersonalizedContainerID:?];
    v4 = v13;
  }

  v7 = self->_has;
  if ((*&v7 & 0x40000000) != 0)
  {
    *(v4 + 403) = self->_sBEnabled;
    *(v4 + 102) |= 0x40000000u;
    v7 = self->_has;
    if ((*&v7 & 0x2000000) == 0)
    {
LABEL_27:
      if ((*&v7 & 0x4000) == 0)
      {
        goto LABEL_29;
      }

      goto LABEL_28;
    }
  }

  else if ((*&v7 & 0x2000000) == 0)
  {
    goto LABEL_27;
  }

  *(v4 + 84) = self->_sourceType;
  *(v4 + 102) |= 0x2000000u;
  if ((*&self->_has & 0x4000) != 0)
  {
LABEL_28:
    *(v4 + 15) = self->_storeAccountID;
    *(v4 + 102) |= 0x4000u;
  }

LABEL_29:
  if (self->_storeID)
  {
    [v13 setStoreID:?];
    v4 = v13;
  }

  if (self->_timedMetadata)
  {
    [v13 setTimedMetadata:?];
    v4 = v13;
  }

  if (self->_trackInfo)
  {
    [v13 setTrackInfo:?];
    v4 = v13;
  }

  if (self->_recommendationData)
  {
    [v13 setRecommendationData:?];
    v4 = v13;
  }

  if (self->_storeFrontID)
  {
    [v13 setStoreFrontID:?];
    v4 = v13;
  }

  v8 = self->_has;
  if ((*&v8 & 0x200000) != 0)
  {
    *(v4 + 54) = self->_eventType;
    *(v4 + 102) |= 0x200000u;
    v8 = self->_has;
    if ((*&v8 & 0x8000) == 0)
    {
LABEL_41:
      if ((*&v8 & 0x800) == 0)
      {
        goto LABEL_42;
      }

      goto LABEL_110;
    }
  }

  else if ((*&v8 & 0x8000) == 0)
  {
    goto LABEL_41;
  }

  *(v4 + 16) = self->_subscriptionAdamID;
  *(v4 + 102) |= 0x8000u;
  v8 = self->_has;
  if ((*&v8 & 0x800) == 0)
  {
LABEL_42:
    if ((*&v8 & 0x1000) == 0)
    {
      goto LABEL_43;
    }

    goto LABEL_111;
  }

LABEL_110:
  *(v4 + 12) = self->_purchasedAdamID;
  *(v4 + 102) |= 0x800u;
  v8 = self->_has;
  if ((*&v8 & 0x1000) == 0)
  {
LABEL_43:
    if ((*&v8 & 0x40) == 0)
    {
      goto LABEL_45;
    }

    goto LABEL_44;
  }

LABEL_111:
  *(v4 + 13) = self->_radioAdamID;
  *(v4 + 102) |= 0x1000u;
  if ((*&self->_has & 0x40) != 0)
  {
LABEL_44:
    *(v4 + 7) = self->_itemCloudID;
    *(v4 + 102) |= 0x40u;
  }

LABEL_45:
  if (self->_lyricsID)
  {
    [v13 setLyricsID:?];
    v4 = v13;
  }

  if ((*&self->_has & 4) != 0)
  {
    *(v4 + 3) = self->_containerAdamID;
    *(v4 + 102) |= 4u;
  }

  if (self->_globalPlaylistID)
  {
    [v13 setGlobalPlaylistID:?];
    v4 = v13;
  }

  if (self->_stationHash)
  {
    [v13 setStationHash:?];
    v4 = v13;
  }

  if (self->_stationStringID)
  {
    [v13 setStationStringID:?];
    v4 = v13;
  }

  if ((*(&self->_has + 1) & 0x20) != 0)
  {
    *(v4 + 14) = self->_stationID;
    *(v4 + 102) |= 0x2000u;
  }

  if (self->_cloudAlbumID)
  {
    [v13 setCloudAlbumID:?];
    v4 = v13;
  }

  v9 = self->_has;
  if ((*&v9 & 2) != 0)
  {
    *(v4 + 2) = self->_cloudPlaylistID;
    *(v4 + 102) |= 2u;
    v9 = self->_has;
  }

  if ((*&v9 & 0x1000000) != 0)
  {
    *(v4 + 76) = self->_reasonHintType;
    *(v4 + 102) |= 0x1000000u;
  }

  if (self->_buildVersion)
  {
    [v13 setBuildVersion:?];
    v4 = v13;
  }

  if (self->_playlistVersionHash)
  {
    [v13 setPlaylistVersionHash:?];
    v4 = v13;
  }

  if (self->_requestingBundleIdentifier)
  {
    [v13 setRequestingBundleIdentifier:?];
    v4 = v13;
  }

  if (self->_requestingBundleVersion)
  {
    [v13 setRequestingBundleVersion:?];
    v4 = v13;
  }

  v10 = self->_has;
  if ((*&v10 & 8) != 0)
  {
    *(v4 + 4) = self->_equivalencySourceAdamID;
    *(v4 + 102) |= 8u;
    v10 = self->_has;
    if ((*&v10 & 0x8000000) == 0)
    {
LABEL_73:
      if ((*&v10 & 0x10000) == 0)
      {
        goto LABEL_74;
      }

      goto LABEL_115;
    }
  }

  else if ((*&v10 & 0x8000000) == 0)
  {
    goto LABEL_73;
  }

  *(v4 + 400) = self->_internalBuild;
  *(v4 + 102) |= 0x8000000u;
  v10 = self->_has;
  if ((*&v10 & 0x10000) == 0)
  {
LABEL_74:
    if ((*&v10 & 0x20000) == 0)
    {
      goto LABEL_76;
    }

    goto LABEL_75;
  }

LABEL_115:
  *(v4 + 17) = self->_tvShowPurchasedAdamID;
  *(v4 + 102) |= 0x10000u;
  if ((*&self->_has & 0x20000) != 0)
  {
LABEL_75:
    *(v4 + 18) = self->_tvShowSubscriptionAdamID;
    *(v4 + 102) |= 0x20000u;
  }

LABEL_76:
  if (self->_enqueuerProperties)
  {
    [v13 setEnqueuerProperties:?];
    v4 = v13;
  }

  if (self->_householdID)
  {
    [v13 setHouseholdID:?];
    v4 = v13;
  }

  v11 = self->_has;
  if ((*&v11 & 0x20000000) != 0)
  {
    *(v4 + 402) = self->_privateListeningEnabled;
    *(v4 + 102) |= 0x20000000u;
    v11 = self->_has;
    if ((*&v11 & 0x80000000) == 0)
    {
LABEL_82:
      if ((*&v11 & 0x4000000) == 0)
      {
        goto LABEL_84;
      }

      goto LABEL_83;
    }
  }

  else if ((*&v11 & 0x80000000) == 0)
  {
    goto LABEL_82;
  }

  *(v4 + 404) = self->_siriInitiated;
  *(v4 + 102) |= 0x80000000;
  if ((*&self->_has & 0x4000000) != 0)
  {
LABEL_83:
    *(v4 + 94) = self->_systemReleaseType;
    *(v4 + 102) |= 0x4000000u;
  }

LABEL_84:
  if (self->_eventTimeZoneName)
  {
    [v13 setEventTimeZoneName:?];
    v4 = v13;
  }

  v12 = self->_has;
  if ((*&v12 & 0x80000) != 0)
  {
    *(v4 + 48) = self->_displayType;
    *(v4 + 102) |= 0x80000u;
    v12 = self->_has;
  }

  if (*&v12)
  {
    *(v4 + 1) = self->_characterDisplayedCount;
    *(v4 + 102) |= 1u;
  }

  if (self->_lyricLanguage)
  {
    [v13 setLyricLanguage:?];
    v4 = v13;
  }
}

- (id)copyWithZone:(_NSZone *)a3
{
  v5 = [objc_msgSend(objc_opt_class() allocWithZone:{a3), "init"}];
  v6 = [(NSString *)self->_containerID copyWithZone:a3];
  v7 = *(v5 + 168);
  *(v5 + 168) = v6;

  if ((*(&self->_has + 2) & 4) != 0)
  {
    *(v5 + 176) = self->_containerType;
    *(v5 + 408) |= 0x40000u;
  }

  v8 = [(NSString *)self->_deviceName copyWithZone:a3];
  v9 = *(v5 + 184);
  *(v5 + 184) = v8;

  has = self->_has;
  if ((*&has & 0x100000) != 0)
  {
    *(v5 + 196) = self->_endReasonType;
    *(v5 + 408) |= 0x100000u;
    has = self->_has;
    if ((*&has & 0x10) == 0)
    {
LABEL_5:
      if ((*&has & 0x20) == 0)
      {
        goto LABEL_7;
      }

      goto LABEL_6;
    }
  }

  else if ((*&has & 0x10) == 0)
  {
    goto LABEL_5;
  }

  *(v5 + 40) = self->_eventDateTimestamp;
  *(v5 + 408) |= 0x10u;
  if ((*&self->_has & 0x20) != 0)
  {
LABEL_6:
    *(v5 + 48) = self->_eventSecondsFromGMT;
    *(v5 + 408) |= 0x20u;
  }

LABEL_7:
  v11 = [(NSString *)self->_externalID copyWithZone:a3];
  v12 = *(v5 + 224);
  *(v5 + 224) = v11;

  v13 = [(NSString *)self->_featureName copyWithZone:a3];
  v14 = *(v5 + 232);
  *(v5 + 232) = v13;

  v15 = self->_has;
  if ((*&v15 & 0x80) != 0)
  {
    *(v5 + 64) = self->_itemDuration;
    *(v5 + 408) |= 0x80u;
    v15 = self->_has;
    if ((*&v15 & 0x100) == 0)
    {
LABEL_9:
      if ((*&v15 & 0x200) == 0)
      {
        goto LABEL_10;
      }

      goto LABEL_52;
    }
  }

  else if ((*&v15 & 0x100) == 0)
  {
    goto LABEL_9;
  }

  *(v5 + 72) = self->_itemEndTime;
  *(v5 + 408) |= 0x100u;
  v15 = self->_has;
  if ((*&v15 & 0x200) == 0)
  {
LABEL_10:
    if ((*&v15 & 0x400000) == 0)
    {
      goto LABEL_11;
    }

    goto LABEL_53;
  }

LABEL_52:
  *(v5 + 80) = self->_itemStartTime;
  *(v5 + 408) |= 0x200u;
  v15 = self->_has;
  if ((*&v15 & 0x400000) == 0)
  {
LABEL_11:
    if ((*&v15 & 0x800000) == 0)
    {
      goto LABEL_12;
    }

    goto LABEL_54;
  }

LABEL_53:
  *(v5 + 256) = self->_itemType;
  *(v5 + 408) |= 0x400000u;
  v15 = self->_has;
  if ((*&v15 & 0x800000) == 0)
  {
LABEL_12:
    if ((*&v15 & 0x10000000) == 0)
    {
      goto LABEL_13;
    }

    goto LABEL_55;
  }

LABEL_54:
  *(v5 + 280) = self->_mediaType;
  *(v5 + 408) |= 0x800000u;
  v15 = self->_has;
  if ((*&v15 & 0x10000000) == 0)
  {
LABEL_13:
    if ((*&v15 & 0x400) == 0)
    {
      goto LABEL_15;
    }

    goto LABEL_14;
  }

LABEL_55:
  *(v5 + 401) = self->_offline;
  *(v5 + 408) |= 0x10000000u;
  if ((*&self->_has & 0x400) != 0)
  {
LABEL_14:
    *(v5 + 88) = self->_persistentID;
    *(v5 + 408) |= 0x400u;
  }

LABEL_15:
  v16 = [(NSString *)self->_personalizedContainerID copyWithZone:a3];
  v17 = *(v5 + 288);
  *(v5 + 288) = v16;

  v18 = self->_has;
  if ((*&v18 & 0x40000000) != 0)
  {
    *(v5 + 403) = self->_sBEnabled;
    *(v5 + 408) |= 0x40000000u;
    v18 = self->_has;
    if ((*&v18 & 0x2000000) == 0)
    {
LABEL_17:
      if ((*&v18 & 0x4000) == 0)
      {
        goto LABEL_19;
      }

      goto LABEL_18;
    }
  }

  else if ((*&v18 & 0x2000000) == 0)
  {
    goto LABEL_17;
  }

  *(v5 + 336) = self->_sourceType;
  *(v5 + 408) |= 0x2000000u;
  if ((*&self->_has & 0x4000) != 0)
  {
LABEL_18:
    *(v5 + 120) = self->_storeAccountID;
    *(v5 + 408) |= 0x4000u;
  }

LABEL_19:
  v19 = [(NSString *)self->_storeID copyWithZone:a3];
  v20 = *(v5 + 368);
  *(v5 + 368) = v19;

  v21 = [(NSData *)self->_timedMetadata copyWithZone:a3];
  v22 = *(v5 + 384);
  *(v5 + 384) = v21;

  v23 = [(NSData *)self->_trackInfo copyWithZone:a3];
  v24 = *(v5 + 392);
  *(v5 + 392) = v23;

  v25 = [(NSData *)self->_recommendationData copyWithZone:a3];
  v26 = *(v5 + 312);
  *(v5 + 312) = v25;

  v27 = [(NSString *)self->_storeFrontID copyWithZone:a3];
  v28 = *(v5 + 360);
  *(v5 + 360) = v27;

  v29 = self->_has;
  if ((*&v29 & 0x200000) != 0)
  {
    *(v5 + 216) = self->_eventType;
    *(v5 + 408) |= 0x200000u;
    v29 = self->_has;
    if ((*&v29 & 0x8000) == 0)
    {
LABEL_21:
      if ((*&v29 & 0x800) == 0)
      {
        goto LABEL_22;
      }

      goto LABEL_62;
    }
  }

  else if ((*&v29 & 0x8000) == 0)
  {
    goto LABEL_21;
  }

  *(v5 + 128) = self->_subscriptionAdamID;
  *(v5 + 408) |= 0x8000u;
  v29 = self->_has;
  if ((*&v29 & 0x800) == 0)
  {
LABEL_22:
    if ((*&v29 & 0x1000) == 0)
    {
      goto LABEL_23;
    }

    goto LABEL_63;
  }

LABEL_62:
  *(v5 + 96) = self->_purchasedAdamID;
  *(v5 + 408) |= 0x800u;
  v29 = self->_has;
  if ((*&v29 & 0x1000) == 0)
  {
LABEL_23:
    if ((*&v29 & 0x40) == 0)
    {
      goto LABEL_25;
    }

    goto LABEL_24;
  }

LABEL_63:
  *(v5 + 104) = self->_radioAdamID;
  *(v5 + 408) |= 0x1000u;
  if ((*&self->_has & 0x40) != 0)
  {
LABEL_24:
    *(v5 + 56) = self->_itemCloudID;
    *(v5 + 408) |= 0x40u;
  }

LABEL_25:
  v30 = [(NSString *)self->_lyricsID copyWithZone:a3];
  v31 = *(v5 + 272);
  *(v5 + 272) = v30;

  if ((*&self->_has & 4) != 0)
  {
    *(v5 + 24) = self->_containerAdamID;
    *(v5 + 408) |= 4u;
  }

  v32 = [(NSString *)self->_globalPlaylistID copyWithZone:a3];
  v33 = *(v5 + 240);
  *(v5 + 240) = v32;

  v34 = [(NSString *)self->_stationHash copyWithZone:a3];
  v35 = *(v5 + 344);
  *(v5 + 344) = v34;

  v36 = [(NSString *)self->_stationStringID copyWithZone:a3];
  v37 = *(v5 + 352);
  *(v5 + 352) = v36;

  if ((*(&self->_has + 1) & 0x20) != 0)
  {
    *(v5 + 112) = self->_stationID;
    *(v5 + 408) |= 0x2000u;
  }

  v38 = [(NSString *)self->_cloudAlbumID copyWithZone:a3];
  v39 = *(v5 + 160);
  *(v5 + 160) = v38;

  v40 = self->_has;
  if ((*&v40 & 2) != 0)
  {
    *(v5 + 16) = self->_cloudPlaylistID;
    *(v5 + 408) |= 2u;
    v40 = self->_has;
  }

  if ((*&v40 & 0x1000000) != 0)
  {
    *(v5 + 304) = self->_reasonHintType;
    *(v5 + 408) |= 0x1000000u;
  }

  v41 = [(NSString *)self->_buildVersion copyWithZone:a3];
  v42 = *(v5 + 152);
  *(v5 + 152) = v41;

  v43 = [(NSString *)self->_playlistVersionHash copyWithZone:a3];
  v44 = *(v5 + 296);
  *(v5 + 296) = v43;

  v45 = [(NSString *)self->_requestingBundleIdentifier copyWithZone:a3];
  v46 = *(v5 + 320);
  *(v5 + 320) = v45;

  v47 = [(NSString *)self->_requestingBundleVersion copyWithZone:a3];
  v48 = *(v5 + 328);
  *(v5 + 328) = v47;

  v49 = self->_has;
  if ((*&v49 & 8) != 0)
  {
    *(v5 + 32) = self->_equivalencySourceAdamID;
    *(v5 + 408) |= 8u;
    v49 = self->_has;
    if ((*&v49 & 0x8000000) == 0)
    {
LABEL_35:
      if ((*&v49 & 0x10000) == 0)
      {
        goto LABEL_36;
      }

      goto LABEL_67;
    }
  }

  else if ((*&v49 & 0x8000000) == 0)
  {
    goto LABEL_35;
  }

  *(v5 + 400) = self->_internalBuild;
  *(v5 + 408) |= 0x8000000u;
  v49 = self->_has;
  if ((*&v49 & 0x10000) == 0)
  {
LABEL_36:
    if ((*&v49 & 0x20000) == 0)
    {
      goto LABEL_38;
    }

    goto LABEL_37;
  }

LABEL_67:
  *(v5 + 136) = self->_tvShowPurchasedAdamID;
  *(v5 + 408) |= 0x10000u;
  if ((*&self->_has & 0x20000) != 0)
  {
LABEL_37:
    *(v5 + 144) = self->_tvShowSubscriptionAdamID;
    *(v5 + 408) |= 0x20000u;
  }

LABEL_38:
  v50 = [(SSVPBPlayActivityEnqueuerProperties *)self->_enqueuerProperties copyWithZone:a3];
  v51 = *(v5 + 200);
  *(v5 + 200) = v50;

  v52 = [(NSString *)self->_householdID copyWithZone:a3];
  v53 = *(v5 + 248);
  *(v5 + 248) = v52;

  v54 = self->_has;
  if ((*&v54 & 0x20000000) != 0)
  {
    *(v5 + 402) = self->_privateListeningEnabled;
    *(v5 + 408) |= 0x20000000u;
    v54 = self->_has;
    if ((*&v54 & 0x80000000) == 0)
    {
LABEL_40:
      if ((*&v54 & 0x4000000) == 0)
      {
        goto LABEL_42;
      }

      goto LABEL_41;
    }
  }

  else if ((*&v54 & 0x80000000) == 0)
  {
    goto LABEL_40;
  }

  *(v5 + 404) = self->_siriInitiated;
  *(v5 + 408) |= 0x80000000;
  if ((*&self->_has & 0x4000000) != 0)
  {
LABEL_41:
    *(v5 + 376) = self->_systemReleaseType;
    *(v5 + 408) |= 0x4000000u;
  }

LABEL_42:
  v55 = [(NSString *)self->_eventTimeZoneName copyWithZone:a3];
  v56 = *(v5 + 208);
  *(v5 + 208) = v55;

  v57 = self->_has;
  if ((*&v57 & 0x80000) != 0)
  {
    *(v5 + 192) = self->_displayType;
    *(v5 + 408) |= 0x80000u;
    v57 = self->_has;
  }

  if (*&v57)
  {
    *(v5 + 8) = self->_characterDisplayedCount;
    *(v5 + 408) |= 1u;
  }

  v58 = [(NSString *)self->_lyricLanguage copyWithZone:a3];
  v59 = *(v5 + 264);
  *(v5 + 264) = v58;

  v60 = v5;
  return v60;
}

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  if (![v4 isMemberOfClass:objc_opt_class()])
  {
    goto LABEL_228;
  }

  containerID = self->_containerID;
  if (containerID | *(v4 + 21))
  {
    if (![(NSString *)containerID isEqual:?])
    {
      goto LABEL_228;
    }
  }

  has = self->_has;
  v7 = *(v4 + 102);
  if ((*&has & 0x40000) != 0)
  {
    if ((v7 & 0x40000) == 0 || self->_containerType != *(v4 + 44))
    {
      goto LABEL_228;
    }
  }

  else if ((v7 & 0x40000) != 0)
  {
    goto LABEL_228;
  }

  deviceName = self->_deviceName;
  if (deviceName | *(v4 + 23))
  {
    if (![(NSString *)deviceName isEqual:?])
    {
      goto LABEL_228;
    }

    has = self->_has;
  }

  v9 = *(v4 + 102);
  if ((*&has & 0x100000) != 0)
  {
    if ((v9 & 0x100000) == 0 || self->_endReasonType != *(v4 + 49))
    {
      goto LABEL_228;
    }
  }

  else if ((v9 & 0x100000) != 0)
  {
    goto LABEL_228;
  }

  if ((*&has & 0x10) != 0)
  {
    if ((v9 & 0x10) == 0 || self->_eventDateTimestamp != *(v4 + 5))
    {
      goto LABEL_228;
    }
  }

  else if ((v9 & 0x10) != 0)
  {
    goto LABEL_228;
  }

  if ((*&has & 0x20) != 0)
  {
    if ((v9 & 0x20) == 0 || self->_eventSecondsFromGMT != *(v4 + 6))
    {
      goto LABEL_228;
    }
  }

  else if ((v9 & 0x20) != 0)
  {
    goto LABEL_228;
  }

  externalID = self->_externalID;
  if (externalID | *(v4 + 28) && ![(NSString *)externalID isEqual:?])
  {
    goto LABEL_228;
  }

  featureName = self->_featureName;
  if (featureName | *(v4 + 29))
  {
    if (![(NSString *)featureName isEqual:?])
    {
      goto LABEL_228;
    }
  }

  v12 = self->_has;
  v13 = *(v4 + 102);
  if ((*&v12 & 0x80) != 0)
  {
    if ((v13 & 0x80) == 0 || self->_itemDuration != *(v4 + 8))
    {
      goto LABEL_228;
    }
  }

  else if ((v13 & 0x80) != 0)
  {
    goto LABEL_228;
  }

  if ((*&v12 & 0x100) != 0)
  {
    if ((v13 & 0x100) == 0 || self->_itemEndTime != *(v4 + 9))
    {
      goto LABEL_228;
    }
  }

  else if ((v13 & 0x100) != 0)
  {
    goto LABEL_228;
  }

  if ((*&v12 & 0x200) != 0)
  {
    if ((v13 & 0x200) == 0 || self->_itemStartTime != *(v4 + 10))
    {
      goto LABEL_228;
    }
  }

  else if ((v13 & 0x200) != 0)
  {
    goto LABEL_228;
  }

  if ((*&v12 & 0x400000) != 0)
  {
    if ((v13 & 0x400000) == 0 || self->_itemType != *(v4 + 64))
    {
      goto LABEL_228;
    }
  }

  else if ((v13 & 0x400000) != 0)
  {
    goto LABEL_228;
  }

  if ((*&v12 & 0x800000) != 0)
  {
    if ((v13 & 0x800000) == 0 || self->_mediaType != *(v4 + 70))
    {
      goto LABEL_228;
    }
  }

  else if ((v13 & 0x800000) != 0)
  {
    goto LABEL_228;
  }

  if ((*&v12 & 0x10000000) != 0)
  {
    if ((v13 & 0x10000000) == 0)
    {
      goto LABEL_228;
    }

    if (self->_offline)
    {
      if ((*(v4 + 401) & 1) == 0)
      {
        goto LABEL_228;
      }
    }

    else if (*(v4 + 401))
    {
      goto LABEL_228;
    }
  }

  else if ((v13 & 0x10000000) != 0)
  {
    goto LABEL_228;
  }

  if ((*&v12 & 0x400) != 0)
  {
    if ((v13 & 0x400) == 0 || self->_persistentID != *(v4 + 11))
    {
      goto LABEL_228;
    }
  }

  else if ((v13 & 0x400) != 0)
  {
    goto LABEL_228;
  }

  personalizedContainerID = self->_personalizedContainerID;
  if (personalizedContainerID | *(v4 + 36))
  {
    if (![(NSString *)personalizedContainerID isEqual:?])
    {
      goto LABEL_228;
    }

    v12 = self->_has;
  }

  v15 = *(v4 + 102);
  if ((*&v12 & 0x40000000) != 0)
  {
    if ((v15 & 0x40000000) == 0)
    {
      goto LABEL_228;
    }

    if (self->_sBEnabled)
    {
      if ((*(v4 + 403) & 1) == 0)
      {
        goto LABEL_228;
      }
    }

    else if (*(v4 + 403))
    {
      goto LABEL_228;
    }
  }

  else if ((v15 & 0x40000000) != 0)
  {
    goto LABEL_228;
  }

  if ((*&v12 & 0x2000000) != 0)
  {
    if ((v15 & 0x2000000) == 0 || self->_sourceType != *(v4 + 84))
    {
      goto LABEL_228;
    }
  }

  else if ((v15 & 0x2000000) != 0)
  {
    goto LABEL_228;
  }

  if ((*&v12 & 0x4000) != 0)
  {
    if ((v15 & 0x4000) == 0 || self->_storeAccountID != *(v4 + 15))
    {
      goto LABEL_228;
    }
  }

  else if ((v15 & 0x4000) != 0)
  {
    goto LABEL_228;
  }

  storeID = self->_storeID;
  if (storeID | *(v4 + 46) && ![(NSString *)storeID isEqual:?])
  {
    goto LABEL_228;
  }

  timedMetadata = self->_timedMetadata;
  if (timedMetadata | *(v4 + 48))
  {
    if (![(NSData *)timedMetadata isEqual:?])
    {
      goto LABEL_228;
    }
  }

  trackInfo = self->_trackInfo;
  if (trackInfo | *(v4 + 49))
  {
    if (![(NSData *)trackInfo isEqual:?])
    {
      goto LABEL_228;
    }
  }

  recommendationData = self->_recommendationData;
  if (recommendationData | *(v4 + 39))
  {
    if (![(NSData *)recommendationData isEqual:?])
    {
      goto LABEL_228;
    }
  }

  storeFrontID = self->_storeFrontID;
  if (storeFrontID | *(v4 + 45))
  {
    if (![(NSString *)storeFrontID isEqual:?])
    {
      goto LABEL_228;
    }
  }

  v21 = self->_has;
  v22 = *(v4 + 102);
  if ((*&v21 & 0x200000) != 0)
  {
    if ((v22 & 0x200000) == 0 || self->_eventType != *(v4 + 54))
    {
      goto LABEL_228;
    }
  }

  else if ((v22 & 0x200000) != 0)
  {
    goto LABEL_228;
  }

  if ((*&v21 & 0x8000) != 0)
  {
    if ((v22 & 0x8000) == 0 || self->_subscriptionAdamID != *(v4 + 16))
    {
      goto LABEL_228;
    }
  }

  else if ((v22 & 0x8000) != 0)
  {
    goto LABEL_228;
  }

  if ((*&v21 & 0x800) != 0)
  {
    if ((v22 & 0x800) == 0 || self->_purchasedAdamID != *(v4 + 12))
    {
      goto LABEL_228;
    }
  }

  else if ((v22 & 0x800) != 0)
  {
    goto LABEL_228;
  }

  if ((*&v21 & 0x1000) != 0)
  {
    if ((v22 & 0x1000) == 0 || self->_radioAdamID != *(v4 + 13))
    {
      goto LABEL_228;
    }
  }

  else if ((v22 & 0x1000) != 0)
  {
    goto LABEL_228;
  }

  if ((*&v21 & 0x40) != 0)
  {
    if ((v22 & 0x40) == 0 || self->_itemCloudID != *(v4 + 7))
    {
      goto LABEL_228;
    }
  }

  else if ((v22 & 0x40) != 0)
  {
    goto LABEL_228;
  }

  lyricsID = self->_lyricsID;
  if (lyricsID | *(v4 + 34))
  {
    if (![(NSString *)lyricsID isEqual:?])
    {
      goto LABEL_228;
    }

    v21 = self->_has;
  }

  v24 = *(v4 + 102);
  if ((*&v21 & 4) != 0)
  {
    if ((v24 & 4) == 0 || self->_containerAdamID != *(v4 + 3))
    {
      goto LABEL_228;
    }
  }

  else if ((v24 & 4) != 0)
  {
    goto LABEL_228;
  }

  globalPlaylistID = self->_globalPlaylistID;
  if (globalPlaylistID | *(v4 + 30) && ![(NSString *)globalPlaylistID isEqual:?])
  {
    goto LABEL_228;
  }

  stationHash = self->_stationHash;
  if (stationHash | *(v4 + 43))
  {
    if (![(NSString *)stationHash isEqual:?])
    {
      goto LABEL_228;
    }
  }

  stationStringID = self->_stationStringID;
  if (stationStringID | *(v4 + 44))
  {
    if (![(NSString *)stationStringID isEqual:?])
    {
      goto LABEL_228;
    }
  }

  v28 = self->_has;
  v29 = *(v4 + 102);
  if ((*&v28 & 0x2000) != 0)
  {
    if ((v29 & 0x2000) == 0 || self->_stationID != *(v4 + 14))
    {
      goto LABEL_228;
    }
  }

  else if ((v29 & 0x2000) != 0)
  {
    goto LABEL_228;
  }

  cloudAlbumID = self->_cloudAlbumID;
  if (cloudAlbumID | *(v4 + 20))
  {
    if (![(NSString *)cloudAlbumID isEqual:?])
    {
      goto LABEL_228;
    }

    v28 = self->_has;
  }

  v31 = *(v4 + 102);
  if ((*&v28 & 2) != 0)
  {
    if ((v31 & 2) == 0 || self->_cloudPlaylistID != *(v4 + 2))
    {
      goto LABEL_228;
    }
  }

  else if ((v31 & 2) != 0)
  {
    goto LABEL_228;
  }

  if ((*&v28 & 0x1000000) != 0)
  {
    if ((v31 & 0x1000000) == 0 || self->_reasonHintType != *(v4 + 76))
    {
      goto LABEL_228;
    }
  }

  else if ((v31 & 0x1000000) != 0)
  {
    goto LABEL_228;
  }

  buildVersion = self->_buildVersion;
  if (buildVersion | *(v4 + 19) && ![(NSString *)buildVersion isEqual:?])
  {
    goto LABEL_228;
  }

  playlistVersionHash = self->_playlistVersionHash;
  if (playlistVersionHash | *(v4 + 37))
  {
    if (![(NSString *)playlistVersionHash isEqual:?])
    {
      goto LABEL_228;
    }
  }

  requestingBundleIdentifier = self->_requestingBundleIdentifier;
  if (requestingBundleIdentifier | *(v4 + 40))
  {
    if (![(NSString *)requestingBundleIdentifier isEqual:?])
    {
      goto LABEL_228;
    }
  }

  requestingBundleVersion = self->_requestingBundleVersion;
  if (requestingBundleVersion | *(v4 + 41))
  {
    if (![(NSString *)requestingBundleVersion isEqual:?])
    {
      goto LABEL_228;
    }
  }

  v36 = self->_has;
  v37 = *(v4 + 102);
  if ((*&v36 & 8) != 0)
  {
    if ((v37 & 8) == 0 || self->_equivalencySourceAdamID != *(v4 + 4))
    {
      goto LABEL_228;
    }
  }

  else if ((v37 & 8) != 0)
  {
    goto LABEL_228;
  }

  if ((*&v36 & 0x8000000) != 0)
  {
    if ((v37 & 0x8000000) == 0)
    {
      goto LABEL_228;
    }

    if (self->_internalBuild)
    {
      if ((*(v4 + 400) & 1) == 0)
      {
        goto LABEL_228;
      }
    }

    else if (*(v4 + 400))
    {
      goto LABEL_228;
    }
  }

  else if ((v37 & 0x8000000) != 0)
  {
    goto LABEL_228;
  }

  if ((*&v36 & 0x10000) != 0)
  {
    if ((v37 & 0x10000) == 0 || self->_tvShowPurchasedAdamID != *(v4 + 17))
    {
      goto LABEL_228;
    }
  }

  else if ((v37 & 0x10000) != 0)
  {
    goto LABEL_228;
  }

  if ((*&v36 & 0x20000) != 0)
  {
    if ((v37 & 0x20000) == 0 || self->_tvShowSubscriptionAdamID != *(v4 + 18))
    {
      goto LABEL_228;
    }
  }

  else if ((v37 & 0x20000) != 0)
  {
    goto LABEL_228;
  }

  enqueuerProperties = self->_enqueuerProperties;
  if (enqueuerProperties | *(v4 + 25) && ![(SSVPBPlayActivityEnqueuerProperties *)enqueuerProperties isEqual:?])
  {
    goto LABEL_228;
  }

  householdID = self->_householdID;
  if (householdID | *(v4 + 31))
  {
    if (![(NSString *)householdID isEqual:?])
    {
      goto LABEL_228;
    }
  }

  v40 = self->_has;
  v41 = *(v4 + 102);
  if ((*&v40 & 0x20000000) != 0)
  {
    if ((v41 & 0x20000000) == 0)
    {
      goto LABEL_228;
    }

    if (self->_privateListeningEnabled)
    {
      if ((*(v4 + 402) & 1) == 0)
      {
        goto LABEL_228;
      }
    }

    else if (*(v4 + 402))
    {
      goto LABEL_228;
    }
  }

  else if ((v41 & 0x20000000) != 0)
  {
    goto LABEL_228;
  }

  if ((*&v40 & 0x80000000) != 0)
  {
    if ((v41 & 0x80000000) == 0)
    {
      goto LABEL_228;
    }

    if (self->_siriInitiated)
    {
      if ((*(v4 + 404) & 1) == 0)
      {
        goto LABEL_228;
      }
    }

    else if (*(v4 + 404))
    {
      goto LABEL_228;
    }
  }

  else if (v41 < 0)
  {
    goto LABEL_228;
  }

  if ((*&v40 & 0x4000000) != 0)
  {
    if ((v41 & 0x4000000) == 0 || self->_systemReleaseType != *(v4 + 94))
    {
      goto LABEL_228;
    }
  }

  else if ((v41 & 0x4000000) != 0)
  {
    goto LABEL_228;
  }

  eventTimeZoneName = self->_eventTimeZoneName;
  if (eventTimeZoneName | *(v4 + 26))
  {
    if ([(NSString *)eventTimeZoneName isEqual:?])
    {
      v40 = self->_has;
      goto LABEL_214;
    }

LABEL_228:
    v45 = 0;
    goto LABEL_229;
  }

LABEL_214:
  v43 = *(v4 + 102);
  if ((*&v40 & 0x80000) != 0)
  {
    if ((v43 & 0x80000) == 0 || self->_displayType != *(v4 + 48))
    {
      goto LABEL_228;
    }
  }

  else if ((v43 & 0x80000) != 0)
  {
    goto LABEL_228;
  }

  if (*&v40)
  {
    if ((v43 & 1) == 0 || self->_characterDisplayedCount != *(v4 + 1))
    {
      goto LABEL_228;
    }
  }

  else if (v43)
  {
    goto LABEL_228;
  }

  lyricLanguage = self->_lyricLanguage;
  if (lyricLanguage | *(v4 + 33))
  {
    v45 = [(NSString *)lyricLanguage isEqual:?];
  }

  else
  {
    v45 = 1;
  }

LABEL_229:

  return v45;
}

- (unint64_t)hash
{
  v91 = [(NSString *)self->_containerID hash];
  if ((*(&self->_has + 2) & 4) != 0)
  {
    v90 = 2654435761 * self->_containerType;
  }

  else
  {
    v90 = 0;
  }

  v89 = [(NSString *)self->_deviceName hash];
  has = self->_has;
  if ((*&has & 0x100000) != 0)
  {
    v88 = 2654435761 * self->_endReasonType;
    if ((*&has & 0x10) != 0)
    {
LABEL_6:
      eventDateTimestamp = self->_eventDateTimestamp;
      if (eventDateTimestamp < 0.0)
      {
        eventDateTimestamp = -eventDateTimestamp;
      }

      *v3.i64 = floor(eventDateTimestamp + 0.5);
      v7 = (eventDateTimestamp - *v3.i64) * 1.84467441e19;
      *v4.i64 = *v3.i64 - trunc(*v3.i64 * 5.42101086e-20) * 1.84467441e19;
      v8.f64[0] = NAN;
      v8.f64[1] = NAN;
      v3 = vbslq_s8(vnegq_f64(v8), v4, v3);
      v9 = 2654435761u * *v3.i64;
      if (v7 >= 0.0)
      {
        if (v7 > 0.0)
        {
          v9 += v7;
        }
      }

      else
      {
        v9 -= fabs(v7);
      }

      v87 = v9;
      if ((*&has & 0x20) == 0)
      {
        goto LABEL_22;
      }

      goto LABEL_12;
    }
  }

  else
  {
    v88 = 0;
    if ((*&has & 0x10) != 0)
    {
      goto LABEL_6;
    }
  }

  v87 = 0;
  if ((*&has & 0x20) == 0)
  {
LABEL_22:
    v86 = 0;
    goto LABEL_23;
  }

LABEL_12:
  eventSecondsFromGMT = self->_eventSecondsFromGMT;
  if (eventSecondsFromGMT < 0.0)
  {
    eventSecondsFromGMT = -eventSecondsFromGMT;
  }

  *v3.i64 = floor(eventSecondsFromGMT + 0.5);
  v11 = (eventSecondsFromGMT - *v3.i64) * 1.84467441e19;
  *v4.i64 = *v3.i64 - trunc(*v3.i64 * 5.42101086e-20) * 1.84467441e19;
  v12.f64[0] = NAN;
  v12.f64[1] = NAN;
  v3.i64[0] = vbslq_s8(vnegq_f64(v12), v4, v3).i64[0];
  v13 = 2654435761u * *v3.i64;
  v14 = v13 + v11;
  if (v11 <= 0.0)
  {
    v14 = 2654435761u * *v3.i64;
  }

  v15 = v13 - fabs(v11);
  if (v11 >= 0.0)
  {
    v15 = v14;
  }

  v86 = v15;
LABEL_23:
  v85 = [(NSString *)self->_externalID hash];
  v84 = [(NSString *)self->_featureName hash];
  v18 = self->_has;
  if ((*&v18 & 0x80) != 0)
  {
    itemDuration = self->_itemDuration;
    if (itemDuration < 0.0)
    {
      itemDuration = -itemDuration;
    }

    *v16.i64 = floor(itemDuration + 0.5);
    v21 = (itemDuration - *v16.i64) * 1.84467441e19;
    *v17.i64 = *v16.i64 - trunc(*v16.i64 * 5.42101086e-20) * 1.84467441e19;
    v22.f64[0] = NAN;
    v22.f64[1] = NAN;
    v16 = vbslq_s8(vnegq_f64(v22), v17, v16);
    v19 = 2654435761u * *v16.i64;
    if (v21 >= 0.0)
    {
      if (v21 > 0.0)
      {
        v19 += v21;
      }
    }

    else
    {
      v19 -= fabs(v21);
    }
  }

  else
  {
    v19 = 0;
  }

  if ((*&v18 & 0x100) != 0)
  {
    itemEndTime = self->_itemEndTime;
    if (itemEndTime < 0.0)
    {
      itemEndTime = -itemEndTime;
    }

    *v16.i64 = floor(itemEndTime + 0.5);
    v25 = (itemEndTime - *v16.i64) * 1.84467441e19;
    *v17.i64 = *v16.i64 - trunc(*v16.i64 * 5.42101086e-20) * 1.84467441e19;
    v26.f64[0] = NAN;
    v26.f64[1] = NAN;
    v16 = vbslq_s8(vnegq_f64(v26), v17, v16);
    v23 = 2654435761u * *v16.i64;
    if (v25 >= 0.0)
    {
      if (v25 > 0.0)
      {
        v23 += v25;
      }
    }

    else
    {
      v23 -= fabs(v25);
    }
  }

  else
  {
    v23 = 0;
  }

  if ((*&v18 & 0x200) != 0)
  {
    itemStartTime = self->_itemStartTime;
    if (itemStartTime < 0.0)
    {
      itemStartTime = -itemStartTime;
    }

    *v16.i64 = floor(itemStartTime + 0.5);
    v28 = (itemStartTime - *v16.i64) * 1.84467441e19;
    *v17.i64 = *v16.i64 - trunc(*v16.i64 * 5.42101086e-20) * 1.84467441e19;
    v29.f64[0] = NAN;
    v29.f64[1] = NAN;
    v30 = 2654435761u * *vbslq_s8(vnegq_f64(v29), v17, v16).i64;
    if (v28 >= 0.0)
    {
      if (v28 > 0.0)
      {
        v30 += v28;
      }
    }

    else
    {
      v30 -= fabs(v28);
    }

    v81 = v30;
    if ((*&v18 & 0x400000) != 0)
    {
LABEL_41:
      v80 = 2654435761 * self->_itemType;
      if ((*&v18 & 0x800000) != 0)
      {
        goto LABEL_42;
      }

LABEL_52:
      v79 = 0;
      if ((*&v18 & 0x10000000) != 0)
      {
        goto LABEL_43;
      }

      goto LABEL_53;
    }
  }

  else
  {
    v81 = 0;
    if ((*&v18 & 0x400000) != 0)
    {
      goto LABEL_41;
    }
  }

  v80 = 0;
  if ((*&v18 & 0x800000) == 0)
  {
    goto LABEL_52;
  }

LABEL_42:
  v79 = 2654435761 * self->_mediaType;
  if ((*&v18 & 0x10000000) != 0)
  {
LABEL_43:
    v78 = 2654435761 * self->_offline;
    goto LABEL_54;
  }

LABEL_53:
  v78 = 0;
LABEL_54:
  v82 = v23;
  v83 = v19;
  if ((*&v18 & 0x400) != 0)
  {
    v77 = 2654435761 * self->_persistentID;
  }

  else
  {
    v77 = 0;
  }

  v76 = [(NSString *)self->_personalizedContainerID hash];
  v31 = self->_has;
  if ((*&v31 & 0x40000000) == 0)
  {
    v75 = 0;
    if ((*&v31 & 0x2000000) != 0)
    {
      goto LABEL_59;
    }

LABEL_62:
    v74 = 0;
    if ((*&v31 & 0x4000) != 0)
    {
      goto LABEL_60;
    }

    goto LABEL_63;
  }

  v75 = 2654435761 * self->_sBEnabled;
  if ((*&v31 & 0x2000000) == 0)
  {
    goto LABEL_62;
  }

LABEL_59:
  v74 = 2654435761 * self->_sourceType;
  if ((*&v31 & 0x4000) != 0)
  {
LABEL_60:
    v73 = 2654435761u * self->_storeAccountID;
    goto LABEL_64;
  }

LABEL_63:
  v73 = 0;
LABEL_64:
  v72 = [(NSString *)self->_storeID hash];
  v71 = [(NSData *)self->_timedMetadata hash];
  v70 = [(NSData *)self->_trackInfo hash];
  v69 = [(NSData *)self->_recommendationData hash];
  v68 = [(NSString *)self->_storeFrontID hash];
  v32 = self->_has;
  if ((*&v32 & 0x200000) != 0)
  {
    v67 = 2654435761 * self->_eventType;
    if ((*&v32 & 0x8000) != 0)
    {
LABEL_66:
      v66 = 2654435761 * self->_subscriptionAdamID;
      if ((*&v32 & 0x800) != 0)
      {
        goto LABEL_67;
      }

      goto LABEL_72;
    }
  }

  else
  {
    v67 = 0;
    if ((*&v32 & 0x8000) != 0)
    {
      goto LABEL_66;
    }
  }

  v66 = 0;
  if ((*&v32 & 0x800) != 0)
  {
LABEL_67:
    v65 = 2654435761 * self->_purchasedAdamID;
    if ((*&v32 & 0x1000) != 0)
    {
      goto LABEL_68;
    }

LABEL_73:
    v64 = 0;
    if ((*&v32 & 0x40) != 0)
    {
      goto LABEL_69;
    }

    goto LABEL_74;
  }

LABEL_72:
  v65 = 0;
  if ((*&v32 & 0x1000) == 0)
  {
    goto LABEL_73;
  }

LABEL_68:
  v64 = 2654435761 * self->_radioAdamID;
  if ((*&v32 & 0x40) != 0)
  {
LABEL_69:
    v63 = 2654435761u * self->_itemCloudID;
    goto LABEL_75;
  }

LABEL_74:
  v63 = 0;
LABEL_75:
  v62 = [(NSString *)self->_lyricsID hash];
  if ((*&self->_has & 4) != 0)
  {
    v61 = 2654435761 * self->_containerAdamID;
  }

  else
  {
    v61 = 0;
  }

  v60 = [(NSString *)self->_globalPlaylistID hash];
  v59 = [(NSString *)self->_stationHash hash];
  v58 = [(NSString *)self->_stationStringID hash];
  if ((*(&self->_has + 1) & 0x20) != 0)
  {
    v57 = 2654435761 * self->_stationID;
  }

  else
  {
    v57 = 0;
  }

  v56 = [(NSString *)self->_cloudAlbumID hash];
  v33 = self->_has;
  if ((*&v33 & 2) != 0)
  {
    v55 = 2654435761u * self->_cloudPlaylistID;
    if ((*&v33 & 0x1000000) != 0)
    {
      goto LABEL_83;
    }
  }

  else
  {
    v55 = 0;
    if ((*&v33 & 0x1000000) != 0)
    {
LABEL_83:
      v54 = 2654435761 * self->_reasonHintType;
      goto LABEL_86;
    }
  }

  v54 = 0;
LABEL_86:
  v53 = [(NSString *)self->_buildVersion hash];
  v52 = [(NSString *)self->_playlistVersionHash hash];
  v51 = [(NSString *)self->_requestingBundleIdentifier hash];
  v50 = [(NSString *)self->_requestingBundleVersion hash];
  v34 = self->_has;
  if ((*&v34 & 8) != 0)
  {
    v49 = 2654435761 * self->_equivalencySourceAdamID;
    if ((*&v34 & 0x8000000) != 0)
    {
LABEL_88:
      v48 = 2654435761 * self->_internalBuild;
      if ((*&v34 & 0x10000) != 0)
      {
        goto LABEL_89;
      }

LABEL_93:
      v35 = 0;
      if ((*&v34 & 0x20000) != 0)
      {
        goto LABEL_90;
      }

      goto LABEL_94;
    }
  }

  else
  {
    v49 = 0;
    if ((*&v34 & 0x8000000) != 0)
    {
      goto LABEL_88;
    }
  }

  v48 = 0;
  if ((*&v34 & 0x10000) == 0)
  {
    goto LABEL_93;
  }

LABEL_89:
  v35 = 2654435761 * self->_tvShowPurchasedAdamID;
  if ((*&v34 & 0x20000) != 0)
  {
LABEL_90:
    v36 = 2654435761 * self->_tvShowSubscriptionAdamID;
    goto LABEL_95;
  }

LABEL_94:
  v36 = 0;
LABEL_95:
  v37 = [(SSVPBPlayActivityEnqueuerProperties *)self->_enqueuerProperties hash];
  v38 = [(NSString *)self->_householdID hash];
  v39 = self->_has;
  if ((*&v39 & 0x20000000) == 0)
  {
    v40 = 0;
    if ((*&v39 & 0x80000000) != 0)
    {
      goto LABEL_97;
    }

LABEL_100:
    v41 = 0;
    if ((*&v39 & 0x4000000) != 0)
    {
      goto LABEL_98;
    }

    goto LABEL_101;
  }

  v40 = 2654435761 * self->_privateListeningEnabled;
  if ((*&v39 & 0x80000000) == 0)
  {
    goto LABEL_100;
  }

LABEL_97:
  v41 = 2654435761 * self->_siriInitiated;
  if ((*&v39 & 0x4000000) != 0)
  {
LABEL_98:
    v42 = 2654435761 * self->_systemReleaseType;
    goto LABEL_102;
  }

LABEL_101:
  v42 = 0;
LABEL_102:
  v43 = [(NSString *)self->_eventTimeZoneName hash];
  v44 = self->_has;
  if ((*&v44 & 0x80000) != 0)
  {
    v45 = 2654435761 * self->_displayType;
    if (*&v44)
    {
      goto LABEL_104;
    }

LABEL_106:
    v46 = 0;
    return v90 ^ v91 ^ v89 ^ v88 ^ v87 ^ v86 ^ v85 ^ v84 ^ v83 ^ v82 ^ v81 ^ v80 ^ v79 ^ v78 ^ v77 ^ v76 ^ v75 ^ v74 ^ v73 ^ v72 ^ v71 ^ v70 ^ v69 ^ v68 ^ v67 ^ v66 ^ v65 ^ v64 ^ v63 ^ v62 ^ v61 ^ v60 ^ v59 ^ v58 ^ v57 ^ v56 ^ v55 ^ v54 ^ v53 ^ v52 ^ v51 ^ v50 ^ v49 ^ v48 ^ v35 ^ v36 ^ v37 ^ v38 ^ v40 ^ v41 ^ v42 ^ v43 ^ v45 ^ v46 ^ [(NSString *)self->_lyricLanguage hash];
  }

  v45 = 0;
  if ((*&v44 & 1) == 0)
  {
    goto LABEL_106;
  }

LABEL_104:
  v46 = 2654435761 * self->_characterDisplayedCount;
  return v90 ^ v91 ^ v89 ^ v88 ^ v87 ^ v86 ^ v85 ^ v84 ^ v83 ^ v82 ^ v81 ^ v80 ^ v79 ^ v78 ^ v77 ^ v76 ^ v75 ^ v74 ^ v73 ^ v72 ^ v71 ^ v70 ^ v69 ^ v68 ^ v67 ^ v66 ^ v65 ^ v64 ^ v63 ^ v62 ^ v61 ^ v60 ^ v59 ^ v58 ^ v57 ^ v56 ^ v55 ^ v54 ^ v53 ^ v52 ^ v51 ^ v50 ^ v49 ^ v48 ^ v35 ^ v36 ^ v37 ^ v38 ^ v40 ^ v41 ^ v42 ^ v43 ^ v45 ^ v46 ^ [(NSString *)self->_lyricLanguage hash];
}

- (void)mergeFrom:(id)a3
{
  v4 = a3;
  v15 = v4;
  if (*(v4 + 21))
  {
    [(SSVPBPlayActivityEvent *)self setContainerID:?];
    v4 = v15;
  }

  if ((*(v4 + 410) & 4) != 0)
  {
    self->_containerType = *(v4 + 44);
    *&self->_has |= 0x40000u;
  }

  if (*(v4 + 23))
  {
    [(SSVPBPlayActivityEvent *)self setDeviceName:?];
    v4 = v15;
  }

  v5 = *(v4 + 102);
  if ((v5 & 0x100000) != 0)
  {
    self->_endReasonType = *(v4 + 49);
    *&self->_has |= 0x100000u;
    v5 = *(v4 + 102);
    if ((v5 & 0x10) == 0)
    {
LABEL_9:
      if ((v5 & 0x20) == 0)
      {
        goto LABEL_11;
      }

      goto LABEL_10;
    }
  }

  else if ((v5 & 0x10) == 0)
  {
    goto LABEL_9;
  }

  self->_eventDateTimestamp = *(v4 + 5);
  *&self->_has |= 0x10u;
  if ((*(v4 + 102) & 0x20) != 0)
  {
LABEL_10:
    self->_eventSecondsFromGMT = *(v4 + 6);
    *&self->_has |= 0x20u;
  }

LABEL_11:
  if (*(v4 + 28))
  {
    [(SSVPBPlayActivityEvent *)self setExternalID:?];
    v4 = v15;
  }

  if (*(v4 + 29))
  {
    [(SSVPBPlayActivityEvent *)self setFeatureName:?];
    v4 = v15;
  }

  v6 = *(v4 + 102);
  if ((v6 & 0x80) != 0)
  {
    self->_itemDuration = *(v4 + 8);
    *&self->_has |= 0x80u;
    v6 = *(v4 + 102);
    if ((v6 & 0x100) == 0)
    {
LABEL_17:
      if ((v6 & 0x200) == 0)
      {
        goto LABEL_18;
      }

      goto LABEL_84;
    }
  }

  else if ((v6 & 0x100) == 0)
  {
    goto LABEL_17;
  }

  self->_itemEndTime = *(v4 + 9);
  *&self->_has |= 0x100u;
  v6 = *(v4 + 102);
  if ((v6 & 0x200) == 0)
  {
LABEL_18:
    if ((v6 & 0x400000) == 0)
    {
      goto LABEL_19;
    }

    goto LABEL_85;
  }

LABEL_84:
  self->_itemStartTime = *(v4 + 10);
  *&self->_has |= 0x200u;
  v6 = *(v4 + 102);
  if ((v6 & 0x400000) == 0)
  {
LABEL_19:
    if ((v6 & 0x800000) == 0)
    {
      goto LABEL_20;
    }

    goto LABEL_86;
  }

LABEL_85:
  self->_itemType = *(v4 + 64);
  *&self->_has |= 0x400000u;
  v6 = *(v4 + 102);
  if ((v6 & 0x800000) == 0)
  {
LABEL_20:
    if ((v6 & 0x10000000) == 0)
    {
      goto LABEL_21;
    }

    goto LABEL_87;
  }

LABEL_86:
  self->_mediaType = *(v4 + 70);
  *&self->_has |= 0x800000u;
  v6 = *(v4 + 102);
  if ((v6 & 0x10000000) == 0)
  {
LABEL_21:
    if ((v6 & 0x400) == 0)
    {
      goto LABEL_23;
    }

    goto LABEL_22;
  }

LABEL_87:
  self->_offline = *(v4 + 401);
  *&self->_has |= 0x10000000u;
  if ((*(v4 + 102) & 0x400) != 0)
  {
LABEL_22:
    self->_persistentID = *(v4 + 11);
    *&self->_has |= 0x400u;
  }

LABEL_23:
  if (*(v4 + 36))
  {
    [(SSVPBPlayActivityEvent *)self setPersonalizedContainerID:?];
    v4 = v15;
  }

  v7 = *(v4 + 102);
  if ((v7 & 0x40000000) != 0)
  {
    self->_sBEnabled = *(v4 + 403);
    *&self->_has |= 0x40000000u;
    v7 = *(v4 + 102);
    if ((v7 & 0x2000000) == 0)
    {
LABEL_27:
      if ((v7 & 0x4000) == 0)
      {
        goto LABEL_29;
      }

      goto LABEL_28;
    }
  }

  else if ((v7 & 0x2000000) == 0)
  {
    goto LABEL_27;
  }

  self->_sourceType = *(v4 + 84);
  *&self->_has |= 0x2000000u;
  if ((*(v4 + 102) & 0x4000) != 0)
  {
LABEL_28:
    self->_storeAccountID = *(v4 + 15);
    *&self->_has |= 0x4000u;
  }

LABEL_29:
  if (*(v4 + 46))
  {
    [(SSVPBPlayActivityEvent *)self setStoreID:?];
    v4 = v15;
  }

  if (*(v4 + 48))
  {
    [(SSVPBPlayActivityEvent *)self setTimedMetadata:?];
    v4 = v15;
  }

  if (*(v4 + 49))
  {
    [(SSVPBPlayActivityEvent *)self setTrackInfo:?];
    v4 = v15;
  }

  if (*(v4 + 39))
  {
    [(SSVPBPlayActivityEvent *)self setRecommendationData:?];
    v4 = v15;
  }

  if (*(v4 + 45))
  {
    [(SSVPBPlayActivityEvent *)self setStoreFrontID:?];
    v4 = v15;
  }

  v8 = *(v4 + 102);
  if ((v8 & 0x200000) != 0)
  {
    self->_eventType = *(v4 + 54);
    *&self->_has |= 0x200000u;
    v8 = *(v4 + 102);
    if ((v8 & 0x8000) == 0)
    {
LABEL_41:
      if ((v8 & 0x800) == 0)
      {
        goto LABEL_42;
      }

      goto LABEL_94;
    }
  }

  else if ((v8 & 0x8000) == 0)
  {
    goto LABEL_41;
  }

  self->_subscriptionAdamID = *(v4 + 16);
  *&self->_has |= 0x8000u;
  v8 = *(v4 + 102);
  if ((v8 & 0x800) == 0)
  {
LABEL_42:
    if ((v8 & 0x1000) == 0)
    {
      goto LABEL_43;
    }

    goto LABEL_95;
  }

LABEL_94:
  self->_purchasedAdamID = *(v4 + 12);
  *&self->_has |= 0x800u;
  v8 = *(v4 + 102);
  if ((v8 & 0x1000) == 0)
  {
LABEL_43:
    if ((v8 & 0x40) == 0)
    {
      goto LABEL_45;
    }

    goto LABEL_44;
  }

LABEL_95:
  self->_radioAdamID = *(v4 + 13);
  *&self->_has |= 0x1000u;
  if ((*(v4 + 102) & 0x40) != 0)
  {
LABEL_44:
    self->_itemCloudID = *(v4 + 7);
    *&self->_has |= 0x40u;
  }

LABEL_45:
  if (*(v4 + 34))
  {
    [(SSVPBPlayActivityEvent *)self setLyricsID:?];
    v4 = v15;
  }

  if ((*(v4 + 408) & 4) != 0)
  {
    self->_containerAdamID = *(v4 + 3);
    *&self->_has |= 4u;
  }

  if (*(v4 + 30))
  {
    [(SSVPBPlayActivityEvent *)self setGlobalPlaylistID:?];
    v4 = v15;
  }

  if (*(v4 + 43))
  {
    [(SSVPBPlayActivityEvent *)self setStationHash:?];
    v4 = v15;
  }

  if (*(v4 + 44))
  {
    [(SSVPBPlayActivityEvent *)self setStationStringID:?];
    v4 = v15;
  }

  if ((*(v4 + 409) & 0x20) != 0)
  {
    self->_stationID = *(v4 + 14);
    *&self->_has |= 0x2000u;
  }

  if (*(v4 + 20))
  {
    [(SSVPBPlayActivityEvent *)self setCloudAlbumID:?];
    v4 = v15;
  }

  v9 = *(v4 + 102);
  if ((v9 & 2) != 0)
  {
    self->_cloudPlaylistID = *(v4 + 2);
    *&self->_has |= 2u;
    v9 = *(v4 + 102);
  }

  if ((v9 & 0x1000000) != 0)
  {
    self->_reasonHintType = *(v4 + 76);
    *&self->_has |= 0x1000000u;
  }

  if (*(v4 + 19))
  {
    [(SSVPBPlayActivityEvent *)self setBuildVersion:?];
    v4 = v15;
  }

  if (*(v4 + 37))
  {
    [(SSVPBPlayActivityEvent *)self setPlaylistVersionHash:?];
    v4 = v15;
  }

  if (*(v4 + 40))
  {
    [(SSVPBPlayActivityEvent *)self setRequestingBundleIdentifier:?];
    v4 = v15;
  }

  if (*(v4 + 41))
  {
    [(SSVPBPlayActivityEvent *)self setRequestingBundleVersion:?];
    v4 = v15;
  }

  v10 = *(v4 + 102);
  if ((v10 & 8) != 0)
  {
    self->_equivalencySourceAdamID = *(v4 + 4);
    *&self->_has |= 8u;
    v10 = *(v4 + 102);
    if ((v10 & 0x8000000) == 0)
    {
LABEL_73:
      if ((v10 & 0x10000) == 0)
      {
        goto LABEL_74;
      }

      goto LABEL_99;
    }
  }

  else if ((v10 & 0x8000000) == 0)
  {
    goto LABEL_73;
  }

  self->_internalBuild = *(v4 + 400);
  *&self->_has |= 0x8000000u;
  v10 = *(v4 + 102);
  if ((v10 & 0x10000) == 0)
  {
LABEL_74:
    if ((v10 & 0x20000) == 0)
    {
      goto LABEL_76;
    }

    goto LABEL_75;
  }

LABEL_99:
  self->_tvShowPurchasedAdamID = *(v4 + 17);
  *&self->_has |= 0x10000u;
  if ((*(v4 + 102) & 0x20000) != 0)
  {
LABEL_75:
    self->_tvShowSubscriptionAdamID = *(v4 + 18);
    *&self->_has |= 0x20000u;
  }

LABEL_76:
  enqueuerProperties = self->_enqueuerProperties;
  v12 = *(v4 + 25);
  if (enqueuerProperties)
  {
    if (!v12)
    {
      goto LABEL_104;
    }

    [(SSVPBPlayActivityEnqueuerProperties *)enqueuerProperties mergeFrom:?];
  }

  else
  {
    if (!v12)
    {
      goto LABEL_104;
    }

    [(SSVPBPlayActivityEvent *)self setEnqueuerProperties:?];
  }

  v4 = v15;
LABEL_104:
  if (*(v4 + 31))
  {
    [(SSVPBPlayActivityEvent *)self setHouseholdID:?];
    v4 = v15;
  }

  v13 = *(v4 + 102);
  if ((v13 & 0x20000000) != 0)
  {
    self->_privateListeningEnabled = *(v4 + 402);
    *&self->_has |= 0x20000000u;
    v13 = *(v4 + 102);
    if ((v13 & 0x80000000) == 0)
    {
LABEL_108:
      if ((v13 & 0x4000000) == 0)
      {
        goto LABEL_110;
      }

      goto LABEL_109;
    }
  }

  else if ((v13 & 0x80000000) == 0)
  {
    goto LABEL_108;
  }

  self->_siriInitiated = *(v4 + 404);
  *&self->_has |= 0x80000000;
  if ((*(v4 + 102) & 0x4000000) != 0)
  {
LABEL_109:
    self->_systemReleaseType = *(v4 + 94);
    *&self->_has |= 0x4000000u;
  }

LABEL_110:
  if (*(v4 + 26))
  {
    [(SSVPBPlayActivityEvent *)self setEventTimeZoneName:?];
    v4 = v15;
  }

  v14 = *(v4 + 102);
  if ((v14 & 0x80000) != 0)
  {
    self->_displayType = *(v4 + 48);
    *&self->_has |= 0x80000u;
    v14 = *(v4 + 102);
  }

  if (v14)
  {
    self->_characterDisplayedCount = *(v4 + 1);
    *&self->_has |= 1u;
  }

  if (*(v4 + 33))
  {
    [(SSVPBPlayActivityEvent *)self setLyricLanguage:?];
    v4 = v15;
  }
}

@end